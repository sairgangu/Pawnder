//
//  SizeConstants.swift
//  Pawnder
//
//  Created by Sai Gangu on 11/25/24.
//

import SwiftUI

struct SizeConstants {
    static var screenCutoffWidth: CGFloat {
        (UIScreen.main.bounds.width / 2)*0.8
    }
    static var screenCutoffHeight: CGFloat { // New screen cutoff for height
           (UIScreen.main.bounds.height / 2) * 0.8
       }
    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }
    static var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}
