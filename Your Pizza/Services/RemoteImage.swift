//
//  RemoteImage.swift
//  Your Pizza
//
//  Created by Welliton da Conceicao de Araujo on 16/09/23.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String) {
        Service.shared.fetchImage(fromURLString: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("icon").resizable()
    }
}

struct YourPizzaRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
        
            .onAppear {
                imageLoader.load(fromURLString: urlString)
            }
    }
    
}
