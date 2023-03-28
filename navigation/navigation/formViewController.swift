//
//  formViewController.swift
//  navigation
//
//  Created by Canadore Student on 2023-03-22.
//

import UIKit

class formViewController: UIViewController {

    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var postalcode: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toinfoview"){
            let destVC = segue.destination as! infoViewController
            destVC.firstname = firstname.text!
            destVC.lastname = lastname.text!
            destVC.email = email.text!
            destVC.address = address.text!
            destVC.city = city.text!
            destVC.postalcode = postalcode.text!
            destVC.password = password.text!
            
       }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
