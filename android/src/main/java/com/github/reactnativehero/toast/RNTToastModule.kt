package com.github.reactnativehero.toast

import com.facebook.react.bridge.*
import com.github.herokotlin.toast.Toast
import java.util.HashMap

class RNTToastModule(private val reactContext: ReactApplicationContext) : ReactContextBaseJavaModule(reactContext) {

    private var toast: Toast? = null

    override fun getName(): String {
        return "RNTToast"
    }

    override fun getConstants(): Map<String, Any>? {

        val constants: MutableMap<String, Any> = HashMap()

        constants["TYPE_SUCCESS"] = "success"
        constants["TYPE_ERROR"] = "error"
        constants["TYPE_TEXT"] = "text"

        constants["DURATION_LONG"] = "long"
        constants["DURATION_SHORT"] = "short"

        constants["POSITION_TOP"] = "top"
        constants["POSITION_CENTER"] = "center"
        constants["POSITION_BOTTOM"] = "bottom"

        return constants

    }

    @ReactMethod
    fun show(options: ReadableMap) {

        if (toast == null) {
            toast = Toast(reactContext)
        }

        toast?.show(
            options.getString("text")!!,
            options.getString("type")!!,
            options.getString("duration")!!,
            options.getString("position")!!
        )

    }

}