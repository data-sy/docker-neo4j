#!/bin/bash

# 환경 변수 설정 (비밀번호 등)
export NEO4J_AUTH=neo4j/myneo4jpw

# Neo4j 서버 실행
neo4j

# Neo4j 초기화 스크립트 실행
cypher-shell -u neo4j -p myneo4jpw -f /var/lib/neo4j/import/init.cypher
