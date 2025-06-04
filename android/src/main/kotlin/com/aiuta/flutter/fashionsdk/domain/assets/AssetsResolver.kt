package com.aiuta.flutter.fashionsdk.domain.assets

import android.content.res.AssetFileDescriptor
import android.content.res.AssetManager
import android.graphics.drawable.Drawable
import androidx.compose.ui.text.font.FontFamily
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.resources.AiutaSolveDrawableException
import com.aiuta.flutter.fashionsdk.domain.mappers.configuration.ui.theme.typography.toNative
import com.aiuta.flutter.fashionsdk.domain.models.configuration.ui.theme.typography.FlutterAiutaFont
import io.flutter.FlutterInjector

object AssetsResolver {
    private val loader by lazy { FlutterInjector.instance().flutterLoader() }

    fun resolveDrawable(
        assetManager: AssetManager,
        path: String
    ): Drawable {
        return try {
            val drawableKey = getResourceKey(path)

            val logoRes = assetManager.openFd(drawableKey)
            val stream = AssetFileDescriptor.AutoCloseInputStream(logoRes)
            val drawable = Drawable.createFromStream(stream, null)

            checkNotNull(drawable) {
                "AssetsResolver: failed to solve drawable from path $path"
            }
        } catch (e: Exception) {
            throw AiutaSolveDrawableException(path)
        }
    }

    fun resolveFontFamily(
        assetManager: AssetManager,
        fonts: List<FlutterAiutaFont>
    ): FontFamily {
        return FontFamily(
            fonts.map { flutterFont ->
                flutterFont.toNative(
                    resourceKey = getResourceKey(flutterFont.filePath),
                    assetManager = assetManager,
                )
            }
        )
    }

    private fun getResourceKey(path: String): String {
        return loader.getLookupKeyForAsset(path)
    }
}