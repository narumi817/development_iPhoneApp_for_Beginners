//
//  Coordinator.swift
//  CameraApp
//
//  Created by 水越成美 on 2020/09/10.
//  Copyright © 2020 水越成美. All rights reserved.
//

import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var parent:ImagePicker
    
    init(_ parent:ImagePicker) {
        self.parent = parent
    }
    
    // [Use Photo]ボタンをタップしたタイミングで呼び出される
    // 撮影した画像は info に格納される
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // 画像を取り出す : UIImagePickerController.InfoKey.originalImage
        // 画像を UIImage型にキャストしてる
        let uiImage = info[.originalImage] as! UIImage
        // 写真ライブラリに画像を保存 (2つ目以降の引数は保存後に実行する処理が指定できる)
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil)
        parent.image = Image(uiImage: uiImage.redraw())
        parent.isPicking = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        parent.isPicking = false
    }
}
