//
//  ViewController.swift
//  MyDream
//
//  Created by 이재한 on 2021/03/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UIButton!       //
    @IBOutlet weak var flashImageView: UIImageView!
    
    var isOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func switchTapped(_ sender: Any) {  //switch를 눌렀을 때
        isOn = !isOn
        
        if isOn == true {
            switchButton.setImage(#imageLiteral(resourceName: "onSwitch"), for: .normal)
            flashImageView.image = #imageLiteral(resourceName: "onBG")
        }
        else {
            switchButton.setImage(#imageLiteral(resourceName: "offSwitch"), for: .normal)
            flashImageView.image = #imageLiteral(resourceName: "offBG")
        }
        
//        flashImageView.image = isOn ? #imageLiteral(resourceName: "onBG") : #imageLiteral(resourceName: "offBG")
//        switchButton.setImage(isOn ? #imageLiteral(resourceName: "onSwitch") : #imageLiteral(resourceName: "offSwitch"), for: .normal)

    }

}

