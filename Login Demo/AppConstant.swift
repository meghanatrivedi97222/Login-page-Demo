//
//  AppConstant.swift
//  Home Delivery
//
//  Created by Vaibhav on 03/01/17.
//  Copyright © 2017 vaibhav trivedi. All rights reserved.
//

import Foundation
import UIKit

//show_Alert(message: "Please check your internet connection")


typealias JSONStandard = [String : AnyObject]

func show_Alert(message: String) {
    let alertController = UIAlertController(title: NSLocalizedString("", comment: ""), message: message, preferredStyle: .alert)
  //   let alertController = UIAlertController(title:message , message: "", preferredStyle: .alert)
    let okAction = UIAlertAction(title: NSLocalizedString("Ok", comment: ""), style: UIAlertActionStyle.default) {
        UIAlertAction in
        
    }

    alertController.addAction(okAction)
    //self.present(alertController, animated: true, completion: nil)
    var topController = UIApplication.shared.keyWindow!.rootViewController! as UIViewController
    
    while ((topController.presentedViewController) != nil) {
        topController = topController.presentedViewController!;
    }
    topController.present(alertController, animated:true, completion:nil)
}
/*
func launchHomeScreen() {
    
    let delegate = (UIApplication.shared.delegate! as! AppDelegate)
    let storyboardName = "Main"
    let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
    delegate.window!.rootViewController! = storyboard.instantiateInitialViewController()!
    
}*/
/*
func calculate_Cart_Value() -> String {
    var total = 0
    for i in (0..<cartItems.count) {
        let multiply = Int(cartItems[i].quantity!) * Int(cartItems[i].product_price!)!
        total += multiply
        print("total:\(total)")
    }
    return total.description+NSLocalizedString(" SR", comment: "")
}

func calculate_Cart_Quantity() -> String {
    var total_quantity = 0
    for i in (0..<cartItems.count) {
        let quantity = Int(cartItems[i].quantity!)
        total_quantity += quantity
        print("total_quantity:\(total_quantity)")
    }
    return total_quantity.description
}
*/




