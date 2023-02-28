package app.storelab.demo

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform