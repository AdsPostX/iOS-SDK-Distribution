//
//  ViewController.swift
//  DemoApp
//
//  Created by shivang vyas on 27/10/22.
//

import UIKit
import AdsPostX

class ViewController: UIViewController {

    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var switchPrefetch: UISwitch!
    @IBOutlet weak var switchTransparent: UISwitch!
    
    private var isSuccess = false
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func btnInitOfferTapped(_ sender: Any) {
        var attributes: [String: Any] = [:]
        attributes["firstname"] = "john"
        attributes["lastname"] = "dev"
        loadingIndicator.startAnimating()
        AdsPostx.initWith(accountId: "25",attributes: attributes,shouldPrefetch: switchPrefetch.isOn) { [weak self] result in
            DispatchQueue.main.async {
                self?.loadingIndicator.stopAnimating()
            }
            
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
        var attributes: [String: Any] = [:]
        attributes["firstname"] = "john"
        attributes["lastname"] = "dev"
        attributes["email"] = "johndev@gmail.com"
        
            if(self.isSuccess) {
                AdsPostx.showOffers(
                    presentationStyle: .popup,
                    transparent: switchTransparent.isOn,
                    margins: (top: UInt(5), bottom: UInt(5), left: UInt(5), right: UInt(5))
                ) {
                    print("on load")
                } onError: { error in
                    print(error.description)
                } onDismiss: {
                    print("on dismiss")
                }
            }
    }
    
}

