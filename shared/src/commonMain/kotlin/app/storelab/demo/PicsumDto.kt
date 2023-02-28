package app.storelab.demo

import kotlinx.serialization.SerialName
import kotlinx.serialization.Serializable

@Serializable
data class PicsumDto(
    @SerialName("id")
    val id: String,
    @SerialName("author")
    val authorName: String,
    @SerialName("width")
    val width: Double,
    @SerialName("height")
    val height: Double,
    @SerialName("url")
    val url: String,
    @SerialName("download_url")
    val downloadURL: String,
)