# @react-native-hero/toast

## Getting started

Install the library using either Yarn:

```
yarn add @react-native-hero/toast
```

or npm:

```
npm install --save @react-native-hero/toast
```

## Link

- React Native v0.60+

For iOS, use `cocoapods` to link the package.

run the following command:

```
$ cd ios && pod install
```

For android, the package will be linked automatically on build.

- React Native <= 0.59

run the following command to link the package:

```
$ react-native link @react-native-hero/toast
```

## Example

```js
import {
  TYPE,
  DURATION,
  POSITION,
  show,
} from '@react-native-hero/toast'

show({
  text: 'hello',
  // optional
  // as shown below, these are the default values
  type: TYPE.TEXT,
  duration: DURATION.SHORT,
  POSITION: POSITION.CENTER,
})
```
