//
//  ViewController.swift
//  LocalAndPushNotifications
//
//  Created by Alex Nagy on 08/09/2020.
//  Copyright © 2020 Alex Nagy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapLocalNotificationButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Local Notification", message: nil, preferredStyle: .actionSheet)
        let setLocalNotificationAction = UIAlertAction(title: "Set", style: .default) { (action) in
            LocalNotificationManager.setNotification(5, of: .seconds, repeats: false, title: "Hello", body: "local", userInfo: ["aps" : ["hello" : "world"]])
        }
        let removeLocalNotificationAction = UIAlertAction(title: "Remove", style: .default) { (action) in
            LocalNotificationManager.cancel()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in }
        alertController.addAction(setLocalNotificationAction)
        alertController.addAction(removeLocalNotificationAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

// Testing Push Notifications Resources:
// poes send com.rebeloper.LocalAndPushNotifications --title Hello --body push --badge 1 --verbose
// https://github.com/AvdLee/Poes
// https://github.com/yonaskolb/mint
// https://brew.sh

// https://github.com/twostraws/ControlRoom

// https://firebase.google.com/docs/cloud-messaging/ios/certs#create_the_authentication_key
// https://firebase.google.com/docs/cloud-messaging/ios/client
// https://firebase.google.com/docs/functions/callable
// Push notifications Typescript cloud function: https://rebeloper.com/mentoring

