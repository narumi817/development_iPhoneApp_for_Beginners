//
//  UIImageExtentions.swift
//  CameraApp
//
//  Created by 水越成美 on 2020/09/24.
//  Copyright © 2020 水越成美. All rights reserved.
//

import UIKit

extension UIImage {
    func redraw() -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format)
            .image { context in
                draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
