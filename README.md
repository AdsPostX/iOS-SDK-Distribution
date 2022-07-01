
# AdsPostX iOS SDK

AdsPostX offers a full suite of SDKs and APIs designed to help you integrate AdsPostX into your website or mobile application within minutes.

If you do not have an account with AdsPostX, you can create one now before continuing.

## Adding AdsPostX to your iOS Application

Adding an AdsPostX placement to your retail e-commerce site is designed to be a relatively straight-forward process. 

Your account manager will provide you the integration code for your website or you may obtain it by logging into the AdsPostX dashboard.

The integration code will include elements that identify customers along with other properties that help customize offers that are displayed to them.  


## CocoaPods

CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate AdsPostX into your Xcode project using CocoaPods, specify it in your Podfile:

## Integration Guidelines

```javascript
pod 'AdsPostX', '~> 0.0.3'
```

then open terminal go to project home directory and do


```javascript
    pod install
```

Or

```javascript
    pod update
```

After pod installation complete, open workspace file.

Simply cut and paste the integration code that you obtain from the AdsPostX dashboard OR write init code in application delegate didFinishLaunchingWithOptions method.

```javascript
        var user = AdsPostXUser(email: "<youremail@domain.co>")
        user.firstName = "<yourname>"
        user.address = AdsPostXUserAddress(country: "<countryname>")
```
You can set as many parameters as you want from a list of parameters.
Supported parameters are:

```javascript
email
firstName
lastName
mobile
confirmationref
amount
currency
paymentType
ccbin
language
address
```

```javascript
        AdPostx.initWith(accountId: "<accountId>", 
                        isLogEnable: false, 
                        environment: .live, 
                        user: user) { result in
            switch result {
            case .success(_):
                print("sdk init success") // do your stuffs here..
            case .failure(let error):
                print("sdk init failed : \(error.localizedDescription)")
                // handle error here...
            }
        }
```

isLogEnable has value either 'true' or 'false'.

environment has value either '.test' or '.live'.

When you want to present an offers to users like when user tap on 'button', integrate below code.

If you have user information to pass before showing offers:

```javascript
var user = AdsPostXUser(email: "<youremail@domain.co>")
user.firstName = "<yourname>"
user.address = AdsPostXUserAddress(country: "<countryname>")
        
AdPostx.showOffers(user: user) {
    print("on load")
} onUnload: {
    print("on unload")
}
```

If you don't want to pass user information before showing offers:

```javascript
AdPostx.showOffers {
    print("on load")
} onUnload: {
    print("on unload")
}
```


## Double check your accountId

Before continuing, take a look at your integration code as inserted to ensure that the accountId matches your accountId.

## Verify that your integration code is working

To ensure that your integration code has correctly been implemented, visit the page containing the integration code to confirm that offers are displaying.


## Need help?

If you're running into any issues while going through the integration process, feel free to contact us at help@adspostx.com.

