
## How to Install

> 만약 `git`, `gcc`가 안 설치되어 있다면, 따로 설치해주어야 합니다.

아래의 명령을 수행하고 나면, 서버가 자동으로 실행되어 있습니다.

```shell
# 인스턴스에 접속하여 본 레포지토리를 Clone 합니다.
git clone https://github.com/soomoongcup/soomoongcup-deploy.git
cd soomoongcup-deploy
./entrypoint.sh
```

서버가 실행 된 후, [localhost](http://localhost/) 에 접속해서 사용하시면 됩니다.

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
