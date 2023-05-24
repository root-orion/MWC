import UIKit
import FirebaseCore
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      FirebaseApp.configure()
    GeneratedPluginRegistrant.register(with: self)
    GMSServices.provideAPIKey("AIzaSyCWN0kudmzc3I0J7J00Yp5OG4CLJ2V6ydY")
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
