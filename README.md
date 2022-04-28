# jungle-gcc
정글 5주차를 위한 gcc 도커 이미지


## 사용방법
### 1. 이미지 실행하기
- 아래 커맨드를 통해 gcc컴파일러가 설치된 컨테이너를 실행시
```
git clone https://github.com/gon2gon2/jungle-gcc.git
cd jungle-gcc
docker build -t jungle-gcc .
docker run --name -itd jungle-gcc
```

### 2. vscode extension 설치하기
- 아래 extension을 설치해주세요.
  - [도커extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
  - [remote-containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)


### 3. vscode에서 컨테이너 접속하기
1. vscode의 왼쪽에서 docker extension을 클릭합니다.
2. CONTAINERS 탭에서 현재 실행중인 컨테이너를 우클릭합니다.
3. `Attach visual studio code`를 선택합니다. (새로운 vscode 윈도우가 생길 수 있습니다)
4. 원하는 디렉토리에서 프로젝트를 clone하고 시작합니다.

![image](https://user-images.githubusercontent.com/62205620/165768380-bf59cb64-253c-44b0-9dbe-9c2f1d1285f3.png)
