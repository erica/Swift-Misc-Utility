# Swift-Misc-Utility

Everything extra that used to be in Swift-General-Utility has moved here except the core enum

### Applicative

Inline functional `Applicative` protocol that supports applying a closure to an instance, returning the instance. 

*Note:* Types must conform to the protocol to inherit the behavior, as non-nominal types like `Any` cannot be extended.

### RuntimeError

A stringity error type representing runtime errors.

### Side effect utility

Enables debugging within method chains and condition cascades.

### SynchronousData

Request synchronous data using `URLSession`.

### Type Utilities

#### Collection utility

* Partition split.

#### Result utility

* Initializes a `Result` from a completion handler's `(data?, error?)`.

#### String utility

* Trim a string


## Installation

PROJECT > Swift Packages > Install:

```
https://github.com/erica/https://github.com/erica/Swift-Misc-Utility
```

SwiftPM:

```
dependencies: [
.package(url: "https://github.com/erica/Swift-Misc-Utility", from: "x.x.x"), // replace with version
],
targets: [
    .target(
        name: "TARGET-NAME",
        dependencies: [
           .product(name: "MiscUtility", package: "Swift-Misc-Utility"),
        ],
    ),
],
```
