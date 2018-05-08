//
//  ColorTransferDelegate.swift
//  Color Magic
//
//  Created by Hunter Trey Ritter on 5/6/18.
//  Copyright © 2018 Hunter Trey Ritter. All rights reserved.
//

import Foundation
import UIKit

protocol ColorTransferDelegate {
    func userDidChoose(color:UIColor, withName colorName: String)
}
