//
//  ViewController.swift
//  ShortcutsDemo
//
//  Created by qfdev on 2021/7/7.
//

import UIKit


extension NSUserActivity {
    public static let shortcutsActivityType = "com.teenloong.ShortcutsDemo.sayHi"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPink
        let activity = NSUserActivity(activityType: NSUserActivity.shortcutsActivityType) // 1
        activity.title = "shortcutDemo" // 2
        activity.userInfo = ["speech" : "hi"] // 3
        activity.isEligibleForSearch = true // 4
        activity.isEligibleForPrediction = true // 5
        activity.persistentIdentifier = NSUserActivityPersistentIdentifier(NSUserActivity.shortcutsActivityType) // 6
        view.userActivity = activity // 7
        activity.becomeCurrent() // 8
    }
    
    public func sayHi() {
        let alert = UIAlertController(title: "Hi There!", message: "Hey there! Glad to see you got this working!", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

