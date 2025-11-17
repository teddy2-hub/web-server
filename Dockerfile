# 1. Node.js 20버전
FROM node:20

# 2. 컨테이너 안에서 작업할 디렉토리 저장하기 
WORKDIR /usr/src/app

# 3. 의존성 파일 설치를 위한 package 파일 복사
COPY package*.json ./

# 4. 의존성 설치
RUN npm install

# 5. 소스 코드 전체 복사하기
COPY . .

# 6. 