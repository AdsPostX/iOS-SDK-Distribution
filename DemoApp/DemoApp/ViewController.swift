//
//  ViewController.swift
//  DemoApp
//
//  Created by shivang vyas on 27/10/22.
//

import UIKit
import AdsPostX

class ViewController: UIViewController {

    private var isSuccess = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var attributes: [String: Any] = [:]
        attributes["firstname"] = "john"
        attributes["lastname"] = "dev"
        // Do any additional setup after loading the view.
        AdsPostx.initWith(accountId: "25") { [weak self] result in
            switch (result) {
            case .success:
                self?.isSuccess = true
                print("Init sdk success")
            case .failure(let error):
                self?.isSuccess = false
                if let error = error as? AdsPostxError {
                    print("Init sdk failed with \(error.description)")
                }
            }
        }
    }

    @IBAction func buttonShowOfferTapped(_ sender: Any) {
        AdsPostx.SetEnvironment(.test)
        
            if(self.isSuccess) {
                AdsPostx.showOffers(presentationStyle: .popup) {
                    print("on load")
                } onError: { error in
                    print(error.description)
                } onDismiss: {
                    print("on dismiss")
                }
            }
    }
    
}

