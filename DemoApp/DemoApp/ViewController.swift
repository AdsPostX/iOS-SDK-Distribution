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
        
        if(isSuccess) {
            do {
                var attributes: [String: Any] = [:]
                attributes["firstname"] = "john"
                attributes["lastname"] = "dev"
                
                try AdsPostx.showOffers(
                    presentationStyle: .popup,
                                        transparent: true,
                                        margins: (top: 10, bottom: 10, left: 10, right: 10)
                                        ) {
                    print("On load")
                } onDismiss: {
                    print("On dismiss")
                }
            } catch (let error) {
                if let error = error as? AdsPostxError {
                    print("Init sdk failed with \(error.description)")
                }
            }
            

        }
    }
    
}

