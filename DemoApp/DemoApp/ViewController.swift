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
    
    private var isLoadSuccess = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AdsPostx.SetEnvironment(.test)
    }
    
    @IBAction func btnInitOfferTapped(_ sender: Any) {
        AdsPostx.initWith(accountId: "25") { result in
            switch result {
            case .success():
                print("SDK init success")
            case .failure(let error):
                if let error = error as? AdsPostxError {
                    print("Init sdk failed with \(error.description)")
                }
            }
        }
    }
    
    @IBAction func buttonLoadOfferTapped(_ sender: Any) {
        var attributes: [String: Any] = [:]
        attributes["firstname"] = "john"
        attributes["lastname"] = "dev"
        loadingIndicator.startAnimating()
        isLoadSuccess = false
        AdsPostx.load(attributes: attributes) { result in
            DispatchQueue.main.async { [unowned self] in
                self.loadingIndicator.stopAnimating()
            }
            switch result {
            case .success():
                print("Offers loaded successfully.")
                self.isLoadSuccess = true
            case .failure(let error):
                if let error = error as? AdsPostxError {
                    print("Failed to load Offers with Error: \(error.description)")
                }
                self.isLoadSuccess = false
            }
        }
        
    }
    
    @IBAction func buttonShowOfferTapped(_ sender: Any) {
        if(self.isLoadSuccess) {
            AdsPostx.showOffers(
                presentationStyle: .popup,
                transparent: switchTransparent.isOn,
                margins: (top: 5, bottom: 5, left: 5, right: 5)
            ) {
                print("on show")
            } onError: { error in
                print(error.description)
            } onDismiss: {
                print("on dismiss")
            }
        }
    }
    
}

