//
//  AuthenticationVC.swift
//  Rewards
//
//  Created by Charles on 29/08/23.
//

import UIKit

class AuthenticationVC: UIViewController {

    @IBOutlet weak var nameTF:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.nameTF.addTarget(self, action: #selector(self.onTextChange(_:)), for: .editingChanged)
    }
    
    @objc func onTextChange(_ sender:UITextField) {
        print("result : \(sender.text!)")
    }
    
    @IBAction func onOrderingClicked(_ sender:UIButton) {
        if nameTF.text!.count >= 4 {
            performSegue(withIdentifier: "ToHomeVC", sender: self)
        }else {
            self.showAlertController()
        }
    }
    
    func showAlertController() {
        let alertController = UIAlertController(title: "Invalid Names", message: "The name must be four or greater", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { action in
            alertController.dismiss(animated: true)
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true)
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "ToHomeVC":
            if let controller = segue.destination as? HomeVC {
                controller.setData(name: self.nameTF.text!)
            }
        default:
            return
        }
    }
    
    
}


