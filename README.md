# SLLogKitura

<p align="center">
<a href="http://swift.org">
<img src="https://img.shields.io/badge/Swift-4.0-brightgreen.svg" alt="Language" />
</a>
<a href="https://raw.githubusercontent.com/shial4/SLLog/master/LICENSE">
<img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License" />
</a>
</p>

SLLogKitura is a simple handler for Kitura LoggerAPI.
Just plug and play. Easy way to pass kitura log to SLLoger.

## 🔧 Installation

Add the following dependency to your `Package.swift` file:
```swift
.package(url: "https://github.com/SLLog/SLLogKitura", from: "1.0.0"),
```
## 💊 How To Start

### 1 Import

On top of your file import:
```swift
import SLLogKitura
```
### Setup SLLoger
```swift
SLLog.addProvider(SLLogKitura())
```
