//
//  TransitionViewController.swift
//  SeSAC7Week3
//
//  Created by andev on 7/15/25.
//

import UIKit

class TransitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func presentBtnTapped(_ sender: UIButton) {
        
        //1. 어떤 스토리보드에
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //2. 어떤 뷰컨트롤러를
        let viewController = storyboard.instantiateViewController(withIdentifier: "GreenViewController") as! GreenViewController
        
        //viewController.testLabel.text = "TEST"
        
        //2.5. 방식 설정(옵션)
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .flipHorizontal
        
        //3. 전환할 지
        present(viewController, animated: true)
    }
    
    @IBAction func pushBtnTapped(_ sender: UIButton) {
        //1. 어떤 스토리보드에
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //2. 어떤 뷰컨트롤러를
        let viewController = storyboard.instantiateViewController(withIdentifier: "GrayViewController") as! GrayViewController
        
        //3. 전환할 지
        navigationController?.pushViewController(viewController, animated: true)
    }
}
