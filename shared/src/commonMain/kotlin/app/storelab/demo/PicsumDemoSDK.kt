package app.storelab.demo

class PicsumDemoSDK() {

    private val api = PicsumApi()


    @Throws(Exception::class)
    suspend fun getPicsumPhotos(): List<PicsumDto> {
        return api.getAllPhotos()
    }
}