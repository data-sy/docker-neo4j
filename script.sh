# Docker 이미지 빌드
docker build -t mmt2024/mmt-neo4j:2.0.0 . --no-cache
docker push mmt2024/mmt-neo4j:2.0.0

# Docker 컨테이너 실행
docker run -d --name mmt-neo4j --network mmt-network mmt2024/mmt-neo4j:2.0.0

# 로그 확인
docker logs -f mmt-neo4j

# 컨테이너 명령어 실행
docker exec -it mmt-neo4j cypher-shell -u neo4j -p myneo4jpw -f /var/lib/neo4j/import/init.cypher

# # 데이터 조회
# MATCH (n) RETURN n;
# # 나가기
# :exit
