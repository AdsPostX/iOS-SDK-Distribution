# iOS-SDK-Distribution
## Adding AdsPostX to your page

### Adding an AdsPostX placement to your retail e-commerce site is designed to be a relatively straight-forward process. Your account manager will provide you the integration code for your website or you may obtain it by logging into the AdsPostX dashboard.

The integration code will include elements that identify customers along with other properties that help customize offers that are displayed to them.  

##CocoaPods
CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate AdsPostX into your Xcode project using CocoaPods, specify it in your Podfile:
```
    pod 'AdsPostX', '~> 0.0.1'
```
then open terminal go to project home directory and do

```
    pod install
```
OR
```
    pod update
```
After pod installation complete, open workspace file.

Simply cut and paste the integration code that you obtain from the AdsPostX dashboard OR write init code in application delegate didFinishLaunchingWithOptions method.

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
when you want to present an offers to users like when user tap on 'button', integrate below code.
```
        AdPostx.showOffers {
            print("on load")
        } onUnload: {
            print("on unload")
        }
```
## Double check your accountId

### Before continuing, take a look at your integration code as inserted to ensure that the accountId matches your accountId.

## Verify that your integration code is working

### To ensure that your integration code has correctly been implemented, visit the page containing the integration code to confirm that offers are displaying.

## Need help?

### If you're running into any issues while going through the integration process, feel free to contact us at [help@adspostx.com]

