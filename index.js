
import { NativeModules } from 'react-native'

const { RNTToast } = NativeModules

export const TYPE = {
  SUCCESS: RNTToast.TYPE_SUCCESS,
  ERROR: RNTToast.TYPE_ERROR,
  TEXT: RNTToast.TYPE_TEXT,
}

export const DURATION = {
  LONG: RNTToast.DURATION_LONG,
  SHORT: RNTToast.DURATION_SHORT,
}

export const POSITION = {
  TOP: RNTToast.POSITION_TOP,
  CENTER: RNTToast.POSITION_CENTER,
  BOTTOM: RNTToast.POSITION_BOTTOM,
}

export function show(options) {
  RNTToast.show({
    type: options.type || RNTToast.TYPE_TEXT,
    text: options.text || 'undefined',
    duration: options.duration || RNTToast.DURATION_SHORT,
    position: options.position || RNTToast.POSITION_CENTER,
  })
}