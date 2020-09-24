//
//  ImagePicker.swift
//  CameraApp
//
//  Created by 水越成美 on 2020/09/10.
//  Copyright © 2020 水越成美. All rights reserved.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image:Image?
    @Binding var isPicking:Bool
    // UIViewControllerRepresentableプロトコルで宣言されているメソッド
    // UI部品(UIImagePickerController)の調整役のインスタンスを作るためのメソッド
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        // delegate : 代理人 - あるクラスだけでは処理できないことをそのクラスの代わりに行うクラス
        // Context型はcoordinatorプロパティを持つ - makeCoordinatorで返したインスタンスが格納される
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(image: .constant(nil), isPicking: .constant(true))
    }
}
