# iOS-SDK-Distribution
## Adding AdsPostX to your page

### Adding an AdsPostX placement to your retail e-commerce site is designed to be a relatively straight-forward process. Your account manager will provide you the integration code for your website or you may obtain it by logging into the AdsPostX dashboard.

###The integration code will include elements that identify customers along with other properties that help customize offers that are displayed to them.  

###Simply cut and paste the integration code that you obtain from the AdsPostX dashboard OR write init code in application delegate didFinishLaunchingWithOptions method.

```
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        AdPostx.initWith(accountId: "123",
                         isLogEnable: false,
                         environment: .test) { result in
            switch result {
            case .success(_):
                print("success")
            case .failure(_):
                print("failure")
            }
        }
        return true
    }
```
## Double check your accountId

### Before continuing, take a look at your integration code as inserted to ensure that the accountId matches your accountId.

## Verify that your integration code is working

### To ensure that your integration code has correctly been implemented, visit the page containing the integration code to confirm that offers are displaying.

## Need help?

### If you're running into any issues while going through the integration process, feel free to contact us at [help@adspostx.com]

