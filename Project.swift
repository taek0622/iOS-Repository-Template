import ProjectDescription

let project = Project(
    name: "#[WRITE_YOUR_PROJECT_NAME]",
    targets: [
        .target(
            name: "#[WRITE_YOUR_PROJECT_NAME]",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.projectname",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "App/Sources",
                "App/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "#[WRITE_YOUR_PROJECT_NAME]Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.projectnameTests",
            infoPlist: .default,
            buildableFolders: [
                "App/Tests"
            ],
            dependencies: [.target(name: "#[WRITE_YOUR_PROJECT_NAME]")]
        ),
    ]
)
