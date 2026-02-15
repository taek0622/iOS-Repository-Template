# iOS-Repository-Template
이 레포지토리는 iOS 프로젝트에 사용하기 위한 템플릿 레포지토리입니다.

## 템플릿 사용 방법

아래의 세가지 방법 중 하나를 선택하여 사용하시면 됩니다.

### 방법 1. Fork해서 사용하기

1. 이 Repository를 Fork한다.
2. [New](https://github.com/new) 버튼을 눌러서 새 Repository를 생성한다.
3. Repository Template에서 이 Repository Template을 선택한다.

### 방법 2. Fork 없이 사용하기

1. [Use this template](https://github.com/taek0622/iOS-Repository-Template/generate) 버튼을 눌러서 새 Repository를 만든다.

### 방법 3. Github Template 없이 사용하기 (비추천)

1. 이 Repository를 클론한다.

   `git clone https://github.com/taek0622/iOS-Repository-Template.git`

2. 숨겨져있는 `.git` 디렉토리를 찾아 삭제한다.

   `rm -rf .git`

3. 새로운 깃 Repository를 생성한다.

   `git init`

4. 첫번째 commit을 생성한다.

   `git commit -a -m "Initial commit"`
   



## 태그 구성

이 레포지토리의 이슈 템플릿은 크게 아래의 9가지 태그를 사용합니다.

- `type: feature`: 새로운 기능 추가
- `type: enhancement`: 기존 기능 개선
- `type: refactor`: 동작 변경 없는 리팩토링 작업
- `type: chore`: 동작 변경 없는 설정 관리 작업(빌드/CI/의존성/스크립트 등)
- `type: design`: UI/UX 디자인 변경(화면/컴포넌트/인터랙션)
- `type: docs`: 문서 작업(README/가이드/API 등)
- `type: test`: 테스트 추가/보강/수정
- `type: spike`: 조사/프로토타입/기술 검증



## .gitmessage 사용 방법

- 프로젝트를 Clone 받은 후 터미널 상에서 프로젝트 경로로 들어가서 아래의 명령어를 사용하여 `.gitmessage` 사용
```shell
git config --global commit.template .github/.gitmessage
```
- 위의 명령어 실행 후 `git commit`을 할 때는 아래와 같이 사용할 수 있음

```bash
> git add .
> git commit
```

<img alt="스크린샷1" src="https://github.com/user-attachments/assets/f1d59b6d-adc5-4c22-a2a6-1305c99e2287">

<img alt="스크린샷2" src="https://github.com/user-attachments/assets/62c43a2e-d3d3-49ce-9850-dddd85592013">

```bash
git push
```



## 사용 가능한 범위
- Repository Template을 사용했을 때, 복사되는 범위는 현재 프로젝트의 디렉토리 및 구조, 브랜치 등까지 입니다. Issue나 Pull request의 Labels, Wiki, Project, Actions 등은 복사되지 않습니다.
