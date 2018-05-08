//
//  ViewController.swift
//  Color Magic
//
//  Created by Hunter Trey Ritter on 5/6/18.
//  Copyright © 2018 Hunter Trey Ritter. All rights reserved.
//

import UIKit

class ColorPresenterVC: UIViewController, ColorTransferDelegate {

    @IBOutlet weak var colorNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withName colorName: String) {
        view.backgroundColor = color
        colorNameLbl.text = colorName
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "presentColorPickerVC"{
            guard let colorPickerVC = segue.destination as? ColorPickerVC
                else { return }
            colorPickerVC.delegate = self
        }
    }
}

