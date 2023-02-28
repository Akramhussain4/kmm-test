package app.storelab.demo.android

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import app.storelab.demo.PicsumDto
import app.storelab.demo.PicsumDemoSDK
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

class MainViewModel : ViewModel() {

    private val picsumDemoSDK = PicsumDemoSDK()

    private val _state = MutableStateFlow(PicsumState())
    val state = _state.asStateFlow()

    init {
        viewModelScope.launch(Dispatchers.IO) {
            val data = picsumDemoSDK.getPicsumPhotos()
            _state.update { it.copy(photos = data) }
        }
    }
}

data class PicsumState(
    val photos: List<PicsumDto> = emptyList(),
)