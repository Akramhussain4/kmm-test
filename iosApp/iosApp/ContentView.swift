import SwiftUI
import shared

struct ContentView: View {
    
    @State var photos: [PicsumDto] = []
    var body: some View {
        List{
            ForEach (photos, id: \.self){
                Text($0.authorName)
            }
        }
        .onAppear {
            PicsumDemoSDK().getPicsumPhotos { photos, error in
                self.photos = photos ?? []
            }
          }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
