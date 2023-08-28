import ProjectDescription

let podName = "DateTools"

let project = Project(
    name: podName,
    organizationName: "runtastic GmbH",
    targets: [
        Target(
            name: podName,
            platform: .iOS,
            product: .framework,
            bundleId: "com.runtastic.iphone.\(podName)",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
            infoPlist: .default,
            sources:    ["DateTools/**/*.{h,m}"],
            resources:  ["DateTools/DateTools.bundle"],
            headers: .headers(
                public: ["DateTools/**/*.{h}"]
            )
        ),
    ],
    schemes: [
        Scheme(
            name: podName,
            shared: false,
            buildAction: .buildAction(targets: [TargetReference(stringLiteral: podName)]),
            runAction: .runAction(executable: TargetReference(stringLiteral: podName))
        ),
    ],
    additionalFiles: [
        "Project.swift",
    ]
)
