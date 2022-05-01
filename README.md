# jungle-gcc
정글 5주차를 위한 gcc 도커 이미지


## 사용방법
### 1. 도커 설치하기
- 자신의 OS에 맞는 docker를 설치합니다.
- 윈도우는 아래 두가지를 설치해주세요.
    - [wsl커널업데이트](https://docs.microsoft.com/windows/wsl/wsl2-kernel)
    - [도커-윈도우](https://docs.docker.com/desktop/windows/install/)
- 맥은 도커만 설치하시면 됩니다.
    - [도커-맥](https://docs.docker.com/desktop/mac/install/)

### 2. 이미지 실행하기
- 아래 커맨드를 통해 gcc컴파일러가 설치된 컨테이너를 실행시킵니다.
```
git clone https://github.com/gon2gon2/jungle-gcc.git
cd jungle-gcc
docker build -t jungle-gcc .
docker run -itd --name jungle-gcc --restart=always jungle-gcc
```
- 만약 기존에 사용하던 디렉토리 구조를 컨테이너 내부에서도 사용하고 싶다면 -v옵션을 사용하여 로컬의 저장공간과 컨테이너의 저장공간을 연결할 수 있습니다.
- 저는 `docker run -itd -v /home/gon2gon2/rbtree:/home/rbtree --name jungle-gcc --restart=always jungle-gcc`
- 아래에서 원하시는 방식으로 하면 되겠습니다.(절대경로를 사용하세요)
```
-v {FOLDER_1}/{FORDER_2}/{FOLDER_3}:{FOLDER_1}/{FORDER_2}/{FOLDER_3} : 아예 일치해도 ok
-v {FOLDER_1}/{FORDER_2}/{FOLDER_3}:{FOLDER_4}/{FORDER_5} : 다른 경로를 해도 ok
```

### 3. vscode extension 설치하기
- 아래 extension을 설치해주세요.
  - [도커extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
  - [remote-containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)


### 4. vscode에서 컨테이너 접속하기
1. vscode의 왼쪽에서 docker extension을 클릭합니다.
2. CONTAINERS 탭에서 현재 실행중인 컨테이너를 우클릭합니다.
3. `Attach visual studio code`를 선택합니다. (새로운 vscode 윈도우가 생길 수 있습니다)

![image](https://user-images.githubusercontent.com/62205620/165768380-bf59cb64-253c-44b0-9dbe-9c2f1d1285f3.png)

### 5. 새 프로젝트 시작!
- 정글 웹사이트를 참고해 clone 등을 진행하고 프로젝트를 시작합니다!


## Release
### 04 29 2022
#### features
- gh auth login 가능
- vscode에서 c 디버깅모드 가능
#### bug fix
- 기존 gcc이미지에서는 vscode debug모드 사용 시 gcc나 gdb를 찾지 못하는 에러가 있어 베이스 이미지를 ubuntu 20.04로 교체하였습니다.
- https://github.com/gon2gon2/jungle-gcc/issues/1 gh 설치 과정을 DOCKERFILE에서 RUN 명령어로 수행했을 때는 에러가 나서 어쩔 수 없이 별도의 스크립트 파일로 분리했습니다.
