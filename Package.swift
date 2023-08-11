// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "DateToolsSwift",
    targets: [
        Target(name: "DateToolsSwift")
    ]
)
package.exclude = ["DateTools", "Examples", "Tests", "DateToolsSwift/Examples"]
