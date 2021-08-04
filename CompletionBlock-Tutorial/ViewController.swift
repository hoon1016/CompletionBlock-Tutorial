//
//  ViewController.swift
//  CompletionBlock-Tutorial
//
//  Created by 임재훈 on 2021/08/03.
//

import UIKit

import KRProgressHUD

class ViewController: UIViewController {

    @IBOutlet var mainTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController - viewDidLoad() 호출됨")
        
        KRProgressHUD.show(withMessage: "Loding")
        sayHi(completion: { result in
            print("컴플레션 블락으로 넘겨받았음:\(result)")
            
            KRProgressHUD.showSuccess(withMessage: "Success")
            
            self.mainTitle.text = result
        })
        
    }


    fileprivate func sayHi(completion: @escaping(String) -> ()){
        print("ViewController - sayHiDidLoad() 호출됨")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
               //call any function
            //print("하이!")
            completion("Main Screen")
        }
    }
    
}

