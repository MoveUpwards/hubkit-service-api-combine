<p align="center">
   <a href="https://developer.apple.com/swift/">
      <img src="https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat" alt="Swift 5.0">
   </a>
   <a href="https://github.com/apple/swift-package-manager">
      <img src="https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg" alt="SPM">
   </a>
</p>

# Hubkit

Check https://app.hubkit.cloud

## Installation

### Swift Package Manager

To integrate using Apple's [Swift Package Manager](https://swift.org/package-manager/), add the following as a dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/MoveUpwards/HubKit.git", from: "1.0.0")
]
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate Hubkit into your project manually. Simply drag the `Sources` Folder into your Xcode project.

## Usage

```swift
import Foundation
import HubKit

final class HubKitService {
    var account: HKAccount?

    init() {
        // Set your config and api key
        Hubkit.default
            .set(project: "YOUR-PROJECT-IDENTIFIER")
            .set(config: Config(baseURL: plateform.baseUrl))
            .set(apiKey: HKApiKeyToken(apiKey: "PROJECT-API-KEY"))

        // Check the current user
        Hubkit.me(success: { [weak self] account in
            self?.account = account
        }, failure: { error in
            print(error.localizedDescription)
        })
    }
}
```

## Contributing
Contributions are very welcome 🙌

## License

```
Hubkit
Copyright (c) 2019 Move Upwards contact@moveupwards.dev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
