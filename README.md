## 로컬에서 구동하는 방법

### 준비 단계

Docker와 docker-compose를 재량껏 설치한다.

### 서버 실행

준비가 완료된 이후에, 이 레포지토리의 최상위 디렉토리에서 아래의 명령을 실행하면 된다.

```shell
docker compose up -d
```

서버가 실행 된 후, [localhost](http://localhost/) 에 접속해서 사용하면 된다.

### 서버 종료

만약 종료하고 싶다면, 이 레포지토리의 최상위 디렉토리에서 아래의 명령을 실행하면 된다.

```shell
docker compose down
```

### 실제로 배포중이던 서버를 로컬에 그대로 재현하고 싶다면...

실제로 배포 중인 서버의 `/root/data` 폴더만 복사해 이 레포지토리의 `/data` 폴더에 붙여 넣어주면 된다.


## 실제 서버에 배포하는 방법 (Ubuntu)

> 만약 `git`, `gcc`가 안 설치되어 있다면, 따로 설치해주어야 한다.

아래의 명령을 수행한다.

```shell
git clone https://github.com/soomoongcup/soomoongcup-deploy.git
cd soomoongcup-deploy
./entrypoint.sh
```

위 코드를 실행하면 아래와 같은 동작들이 자동으로 수행된다.

1. Docker와 Docker-compose를 설치한다.
2. 개선된 벡엔드와 채점 서버의 Docker Image를 빌드한다.
3. 빌드한 이미지를 사용하여 다음의 네 가지 서버를 호스팅한다
    * PostgreSQL(데이터 베이스 서버)
    * Redis(In-Memory DB Cache)
    * Backend+Frontend(웹 서버)
    * Judge(채점 서버)


> 서버의 기본 관리자 ID/PW는 `root`/`rootroot` 입니다.


## 알아서 해야할 것

* 만약 서버 인스턴스에 `git`, `gcc`가 설치되어 있지 않다면 알아서 설치하기
* 배포할 도메인 주소 알아서 구하기
* 서버 인스턴스 알아서 구하기
* 참가자 알아서 구하기
* 후원 단체 알아서 구하기
* 문제 알아서 출제하기


## Infrastructure

-   서버 OS: Ubuntu 20.04 이상

| 개최 시기      | Cloud Provider            | Instance Type                   | Storage   |
| -------------- | ------------------------- | ------------------------------- | --------- |
| 2024년도 1학기 | AWS(Amazon Web Service)   | t3.xlarge(vCPU 4, 메모리 16Gib) | gp3(30GB) |
| 2024년도 2학기 | NCP(Naver Cloud Platform) | s8-g3(vCPU 8EA, Memory 32GB)    | 40 GB     |
