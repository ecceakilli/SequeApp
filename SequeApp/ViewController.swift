//
//  ViewController.swift
//  SequeApp
//
//  Created by ece on 11.11.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var viewLabel: UILabel!
    var username = ""
    var activeTextField : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("kullanıcı ekranı görmek üzere")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("kullanıcı ekranı gördü")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("kullanıcı ekrandan gideibilir")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("kullanıcı ekrandan ayrıldı")
    }

    @IBAction func nextClicked(_ sender: Any) {
        username = textView.text!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = username
        }
    }
    
    @IBAction func closeKeyboard(_ sender: Any) {
        if activeTextField != nil {
            activeTextField?.resignFirstResponder()
        }
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField
    }
}

