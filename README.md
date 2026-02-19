# edfapg_sdk

Kotlin Multiplatform payment SDK distribution repository for Android and iOS consumers.

## What this repository provides

- Android Maven artifacts (published to GitHub Pages Maven).
- iOS binary XCFramework package (published through Swift Package Manager).
- Release tags and release assets for each SDK version.

## Versioning

Use explicit versions when integrating the SDK.

- Android artifact: `com.edfapay:edfapg_sdk:<version>`
- iOS package: `https://github.com/hassanwasfy/edfapg_sdk`

Current example version in this repo: `0.0.1`

---

## Android integration

### Option 1: Public GitHub Pages Maven (recommended for shared environments)

Add the repository:

```kotlin
dependencyResolutionManagement {
    repositories {
        maven("https://hassanwasfy.github.io/edfapg_sdk/maven")
        google()
        mavenCentral()
    }
}
```

Add the dependency:

```kotlin
dependencies {
    implementation("com.edfapay:edfapg_sdk:0.0.1")
}
```

### Option 2: Local Maven (for local testing)

If the SDK was published locally from source:

```bash
./gradlew :library:publishToMavenLocal
```

Then in host Android project:

```kotlin
dependencyResolutionManagement {
    repositories {
        mavenLocal()
        google()
        mavenCentral()
    }
}
```

```kotlin
dependencies {
    implementation("com.edfapay:edfapg_sdk:0.0.1")
}
```

---

## iOS integration (Swift Package Manager)

### Add package in Xcode

1. Open your iOS project in Xcode.
2. Go to `File` -> `Add Package Dependencies...`
3. Use package URL:
   - `https://github.com/hassanwasfy/edfapg_sdk`
4. Select an exact version (for example `0.0.1`).
5. Add product `edfapg_sdk` to your app target.

### Import in Swift

```swift
import edfapg_sdk
```

---

## Minimal host usage

### Android

```kotlin
class MainApp : Application() {
    override fun onCreate() {
        super.onCreate()
        EdfaPgSdk.init(
            baseUrl = "ADD BASE URL HERE",
            apiKey = "ADD API KEY HERE"
        )
    }
}
```

### iOS (Swift)

```swift
import SwiftUI
import edfapg_sdk

@main
struct iOSApp: App {
    init() {
        EdfaPgSdk.shared.doInit(
            apiKey: "ADD API KEY HERE",
            baseUrl: "ADD BASE URL HERE"
        )
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

---

## Troubleshooting

- If iOS fails to resolve, remove old package `paymentgateway_sdk` from Xcode package dependencies.
- Reset package caches from Xcode: `File` -> `Packages` -> `Reset Package Caches`.
- Ensure Android hosts include the exact GitHub Pages Maven URL shown above.
- Make sure the requested version is already published in this repository.

---

## Links

- Repository: `https://github.com/hassanwasfy/edfapg_sdk`
- Android Maven index: `https://hassanwasfy.github.io/edfapg_sdk`
