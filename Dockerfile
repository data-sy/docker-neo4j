# Neo4j 5.12 버전을 베이스 이미지로 사용
FROM neo4j:5.12

# 초기화 스크립트 복사 및 권한 설정
COPY ./init/ /var/lib/neo4j/import/
# COPY ./compose-script.sh /var/lib/neo4j/compose-script.sh

USER root
RUN chown -R neo4j:neo4j /var/lib/neo4j/import/ /data/
# /var/lib/neo4j/compose-script.sh
# RUN chmod +x /var/lib/neo4j/compose-script.sh 
USER neo4j

# 환경 변수 설정 (비밀번호 등)
ENV NEO4J_AUTH=neo4j/myneo4jpw

# Neo4j 서버 실행 포트
EXPOSE 7474 7473 7687

# 컨테이너 실행 시 실행될 명령
CMD ["neo4j"]
