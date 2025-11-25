# LoopsOnOptionals

Mini library to extend optional chains to include for-loops.

Example when using the [SwiftXML](https://github.com/stefanspringer1/SwiftXML) library:

Suppose an element can have multiple `<metadata>` children, but for some reason only the first one is relevant, and you want to iterate over its `<item>` children, but it is also ok if there is no `<metadata>` at all:

```swift
for metaDataItem in element.firstChild("metadata")?.children("item") {
    ...
}
```

Of course, especially in this simple case you can express the same as follows, without using the `LoopsOnOptionals` package:

```swift
if let metadata = element.firstChild("metadata") {
    for metaDataItem in metadata {
        ...
    }
}
```

But even more so in more complex situations, the introduction of such a `if let` (or `case let`) expression makes the code harder to understand.
