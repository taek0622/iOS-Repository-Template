# iOS-Repository-Template

이 레포지토리는 iOS 프로젝트에 사용하기 위한 템플릿 레포지토리입니다.

프로젝트에 Tuist를 기본으로 사용하게 설정했으며, 필요에 따라 Tuist 대신 다른 프로젝트 관리 도구를 사용하거나, 별도의 프로젝트 관리 도구를 사용하지 않아도 괜찮습니다.

다른 프로젝트 관리 도구를 사용하거나, 프로젝트 관리 도구를 사용하지 않을 때에는 `.gitignore` 파일의 수정이 필요할 수 있습니다.

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

## 프로젝트 구성

```text
iOS-Repository-Template/
├── .git/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   ├── bug.yml
│   │   ├── chore.yml
│   │   ├── config.yml
│   │   ├── design.yml
│   │   ├── docs.yml
│   │   ├── enhancement.yml
│   │   ├── feature.yml
│   │   ├── refactor.yml
│   │   ├── spike.yml
│   │   └── test.yml
│   ├── .gitmessage
│   ├── CODEOWNERS
│   └── PULL_REQUEST_TEMPLATE.md
├── App/
│   ├── Resources/
│   ├── Sources/
│   │   ├── ContentView.swift
│   │   └── WRITEYOURPROJECTApp.swift
│   └── Tests/
├── Tuist/
│   ├── .swiftpm
│   └── Package.swift
├── .gitignore
├── mise.toml
├── Project.swift
├── README.md
└── Tuist.swift
```

## Tuist 프로젝트 수정 방법

Tuist 프로젝트 사용시 몇 가지 수정해야 하는 부분이 있습니다.

원하는 프로젝트 이름을 적절한 이름으로 변경합니다.

아래의 예시에서는 이해하기 쉬운 설명을 위해 `NewProjectName`라고 가정하고 설명했습니다.

- `Project.swift` 내용 수정
    - 파일 내부에서 `#[WRITE_YOUR_PROJECT_NAME]`이라고 적혀있는 부분을 모두 본인의 `NewProjectName`으로 변경합니다.
    - `dev.tuist.projectname`와 `dev.tuist.projectnameTests`라고 적힌 `bundleId`를 모두 자신이 원하는 bundleId로 적절하게 변경합니다. (ex. `com.example.newprojectname`) 이때, 프로젝트와 테스트의 bundleId가 같으면 안됩니다.
- `Tuist/Package.swift` 내용 수정
    - 파일 내부에서 `#[WRITE_YOUR_PROJECT_NAME]`라고 적힌 부분을 `NewProjectName`으로 변경합니다.

- `App/Sources/WRITEYOURPROJECTApp.swift` 수정
    - `WRITEYOURPROJECTApp.swift` 부분을 `NewProjectNameApp.swift`로 변경합니다.
    - 파일 내부의 struct 이름도 `NewProjectNameApp`으로 변경합니다.
- `App/Tests/WRITEYOURPROJECTTests.swift` 수정
    - `WRITEYOURPROJECTTests.swift` 부분을 `NewProjectNameTests.swift`로 변경합니다.
    - 파일 내부의 import는 `import NewProjectName`로, struct 이름은 `NewProjectNameTests`로 변경합니다.

이후 아래의 명령어로 프로젝트를 시작합니다.

```bash
tuist generate
```

## 레이블 구성

이 레포지토리의 이슈 템플릿은 크게 아래의 9가지 레이블을 사용합니다.
깃허브에서 기본적으로 이러한 레이블을 추가해주지 않으므로, 처음 한 번은 직접 아래의 레이블들을 레포지토리에 추가해주셔야 합니다.

- `type: feature`: 새로운 기능 추가
- `type: enhancement`: 기존 기능 개선
- `type: refactor`: 동작 변경 없는 리팩토링 작업
- `type: chore`: 동작 변경 없는 설정 관리 작업(빌드/CI/의존성/스크립트 등)
- `type: design`: UI/UX 디자인 변경(화면/컴포넌트/인터랙션)
- `type: bug`: 버그 재현/원인/수정 범위 기록
- `type: docs`: 문서 작업(README/가이드/API 등)
- `type: test`: 테스트 추가/보강/수정
- `type: spike`: 조사/프로토타입/기술 검증

## 질문/논의 사용 방법

이슈의 질문/논의 버튼을 사용하기 위해 설정 및 수정해야 하는 부분입니다.

- 레포지토리 Settings의 General에서 `Discussions` 체크 박스 체크
- `.github/ISSUE_TEMPLATE/config.yml` 내용 수정
    - `url`의 `<OWNER>`를 자신의 github id 혹은 organization id로 변경합니다.
    - `<REPO>`를 현재 레포지토리 이름으로 변경합니다.

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
> git push
```

## CODEOWNERS 사용 방법

CODEOWNERS 파일을 통해 리포지토리의 코드를 담당하는 개인 또는 팀을 정의할 수 있습니다.
설정시 Pull Request를 작성할 때 리뷰어에 해당 사용자가 자동으로 추가됩니다.

- `.github/CODEOWNERS` 수정
    - `@[your_github_id]`에서 `[your_github_id]`를 리뷰어의 아이디로 변경합니다.
    - 리뷰어가 여러 사람인 경우 `@사용자1 @사용자2`와 같이 연달아 작성합니다.
    - 단, 리포지토리가 Private일 경우 작동하지 않을 수 있습니다.

## 사용 가능한 범위

- Repository Template을 사용했을 때, 복사되는 범위는 현재 프로젝트의 디렉토리 및 구조, 브랜치 등까지 입니다. Issue나 Pull request의 Labels, Wiki, Project, Actions 등은 복사되지 않습니다.
