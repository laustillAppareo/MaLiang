//
//  Eraser.swift
//  MaLiang_Example
//
//  Created by Harley-xk on 2019/4/7.
//  Copyright © 2019 Harley-xk. All rights reserved.
//

import Foundation
import UIKit
import Metal

open class Eraser: Brush {
    
    open override func setupBlendOptions(for attachment: MTLRenderPipelineColorAttachmentDescriptor) {
            attachment.isBlendingEnabled = true
            attachment.alphaBlendOperation = .min
            attachment.rgbBlendOperation = .min
            attachment.sourceRGBBlendFactor = .zero
            attachment.sourceAlphaBlendFactor = .one
            attachment.destinationRGBBlendFactor = .oneMinusSourceAlpha
            attachment.destinationAlphaBlendFactor = .zero
    }
}
