<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

`utils_plus` is a Flutter package that provides a collection of useful extensions for common Dart and Flutter types. It aims to simplify and enhance your development experience by offering convenient methods and utilities.

## Features

Contains various extentions for
- String
- num
- int
- List
- DateTime
- Enum

## Getting started

To use this package, add `utils_plus` to your `pubspec.yaml` file:

```yaml
dependencies:
  utils_plus: ^1.0.0

```

## Usage

Check out the [example](https://github.com/niteshneupane/utils_plus/tree/main/example) directory for detailed examples:



```dart
enum UserType{
    admin,
    superAdmin,
    normal;
}
final a = UserType.superAdmin;
print(a.toFormattedString) // Returns 'Super Admin'

```

