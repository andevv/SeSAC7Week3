//
//  ViewController.swift
//  SeSAC7Week3
//
//  Created by andev on 7/11/25.
//

import UIKit
import Toast

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print(1)
        print(2)
        print(3)
        print(4)
        print(5)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        view.makeToast("안녕하세요 토스트입니다.", duration: 2, position: .center)
    }

}

