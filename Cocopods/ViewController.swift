//
//  ViewController.swift
//  Cocopods
//
//  Created by mamidisetty Vikash on 16/02/21.
//

import UIKit
import iOSDropDown
import TextFieldEffects

class ViewController: UIViewController, UITextFieldDelegate {
    var Person = [[studentDetails]]()
    @IBOutlet weak var genderDD: DropDown!
   
    @IBOutlet weak var statusDD: DropDown!
    @IBOutlet weak var firstNameTF: KaedeTextField!
    @IBOutlet weak var lastNameTF: KaedeTextField!
    @IBOutlet weak var ageTF: KaedeTextField!
    @IBOutlet weak var stateTF: KaedeTextField!
    @IBOutlet weak var cityTF: KaedeTextField!
    @IBOutlet weak var emailTF: KaedeTextField!
    @IBOutlet weak var phoneNumberTF: KaedeTextField!
    @IBOutlet weak var firstNameLB: UILabel!
    @IBOutlet weak var lastNameLB: UILabel!
    @IBOutlet weak var ageLB: UILabel!
    @IBOutlet weak var stateLB: UILabel!
    @IBOutlet weak var cityLB: UILabel!
    @IBOutlet weak var emailLB: UILabel!
    @IBOutlet weak var phoneNumberLB: UILabel!
    @IBOutlet weak var submitBT: UIButton!
    @IBOutlet weak var resetBT: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTF.delegate = self
        lastNameTF.delegate = self
        ageTF.delegate = self
        statusDD.delegate = self
        genderDD.delegate = self
        stateTF.delegate = self
        cityTF.delegate = self
        emailTF.delegate = self
        phoneNumberTF.delegate = self
       
        
        // Do any additional setup after loading the view.
       genderDD.optionArray = ["Male", "Female"]
        statusDD.optionArray = ["Married", "Single"]
        
        setUi()
        
    }
  
    func setUi()
    {
        firstNameTF.addTarget(self, action:#selector(checkAndDisplayError(textfield:)), for: .editingChanged)
        lastNameTF.addTarget(self, action:#selector(checkAndDisplayError(textfield:)), for: .editingChanged)
//        ageTF.addTarget(self, action:#selector(checkAndDisplayError(textfield:)), for: .editingChanged)
        stateTF.addTarget(self, action:#selector(checkAndDisplayError(textfield:)), for: .editingChanged)
        cityTF.addTarget(self, action:#selector(checkAndDisplayError(textfield:)), for: .editingChanged)
        emailTF.addTarget(self, action:#selector(checkAndDisplayError(textfield:)), for: .editingChanged)
        phoneNumberTF.addTarget(self, action:#selector(checkAndDisplayError(textfield:)), for: .editingChanged)
    
//        submitBT.addTarget(self, action: #selector(saveData), for: UIControl.Event.touchUpInside)
    }
    @objc func checkAndDisplayError(textfield:UITextField)
    {
        if (firstNameTF.text!.count <= 3)
        {
            firstNameLB.text = "Enter More Than 3 Characters"
        }else
        {
            firstNameLB.text! = " "
        }
        if (lastNameTF.text!.count  <= 3) {
            lastNameLB.text = "Enter More Than 3 Characters"
        }else
        {
            lastNameLB.text! = ""
        }
        if (ageTF.text!.count == 2) {
            ageLB.text = ""
        }else
        {
            ageLB.text! = "Should Be Above 10 and Below 120"
        }
        if (stateTF.text!.count <= 4) {
            stateLB.text = "Should Be More Than 4 Letters"
        }else
        {
            stateLB.text! = ""
        }
        if (cityTF.text!.count <= 4) {
            cityLB.text = "Should Be More Than 4 Letters"
        }else
        {
            cityLB.text! = ""
        }
        if (emailTF.text!.count <= 4) {
            emailLB.text = "Enter Valied Email"
        }else
        {
            emailLB.text! = ""
        }
        if (phoneNumberTF.text!.count == 10 ) {
            phoneNumberLB.text = "Enter Valied Mobile Number"
        }else
        {
            phoneNumberLB.text! = ""
        }
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        var returnValue:Bool = false
       if(textField == firstNameTF)
       {
        returnValue = true
       }else if(textField == lastNameTF)
       {
        if (firstNameTF.text!.count > 0)
        {
            returnValue = true
        }else
        {
            returnValue = false
        }
        
       }
       else if(textField == lastNameTF)
       {
        if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0)
        {
            returnValue = true
        }else
        {
            returnValue = false
        }
       }
        else if(textField == ageTF)
        {
                if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0)
         {
             returnValue = true
         }else
         {
             returnValue = false
         }
        }
        else if(textField == statusDD)
        {

            if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0 && Int(ageTF.text!)! >= 10 && Int(ageTF.text!)! <= 120 )
         {
             returnValue = true
         }else
         {
             returnValue = false
         }
        }
        else if(textField == genderDD)
        {
            if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0 && Int(ageTF.text!)! >= 10 && Int(ageTF.text!)! <= 120 && statusDD.text!.count >= 3)
         {
             returnValue = true
         }else
         {
             returnValue = false
         }
        }
        else if(textField == stateTF)
        {
            if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0 && Int(ageTF.text!)! >= 10 && Int(ageTF.text!)! <= 120 && statusDD.text!.count >= 3 && genderDD.text!.count > 0)
         {
             returnValue = true
         }else
         {
             returnValue = false
         }
        }
        else if(textField == cityTF)
        {
            if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0 && Int(ageTF.text!)! >= 10 && Int(ageTF.text!)! <= 120 && statusDD.text!.count >= 3 && genderDD.text!.count > 0 && stateTF.text!.count > 0)
         {
             returnValue = true
         }else
         {
             returnValue = false
         }
        }
        else if(textField == emailTF)
        {
            if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0 && Int(ageTF.text!)! >= 10 && Int(ageTF.text!)! <= 120 && statusDD.text!.count >= 3 && genderDD.text!.count > 0 && stateTF.text!.count > 0 && cityTF.text!.count > 4)
         {
             returnValue = true
         }else
         {
             returnValue = false
         }
        }
        
        else if(textField == phoneNumberTF)
        {
            if (firstNameTF.text!.count > 0 && lastNameTF.text!.count > 0 && Int(ageTF.text!)! >= 10 && Int(ageTF.text!)! <= 120 && statusDD.text!.count >= 3 && genderDD.text!.count > 0 && stateTF.text!.count > 0 && cityTF.text!.count > 4 && emailTF.text!.count > 8   )
         {
             returnValue = true
         }else
         {
             returnValue = false
         }
        }
        return returnValue
       }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        var returnValue = true
        if(textField == firstNameTF)
        {
            if(textField.text!.count >= 3)
            {
                returnValue = true
            }else
            {
                returnValue = false
            }
        }
        else if(textField == emailTF)
        {
         return isValidEmail(textField.text!)
        }
        return returnValue
    }
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        textField.backgroundColor = UIColor.cyan
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        if ((firstNameTF.text?.isEmpty != nil) && (lastNameTF.text?.isEmpty != nil) && (ageTF.text?.isEmpty != nil) && (cityTF.text?.isEmpty != nil) && (stateTF.text?.isEmpty != nil) && (phoneNumberTF.text?.isEmpty != nil) && (emailTF.text?.isEmpty != nil)){
            //  self.submit.isEnabled = true
            
        }else{
            // self.submit.isEnabled = false
            submitBT.backgroundColor = .black
        }
        textField.backgroundColor = UIColor.white
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        if(string == "")
        {
            return true
        }
        
        
        if(textField == firstNameTF || textField == lastNameTF || textField == stateTF || textField == genderDD || textField == statusDD || textField == cityTF)
        {
            var allowCharacters = CharacterSet(charactersIn:"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ")
            if(string.rangeOfCharacter(from: allowCharacters) != nil)
//
        {
            return true
        }else
        {
            return false
        }
            
       }
        if(textField == phoneNumberTF)
       {
           var allowMobileNo = CharacterSet(charactersIn:"0123456789")
           if(string.rangeOfCharacter(from: allowMobileNo) != nil)
       {
           return true
       }
           else
       {
           return false
       }
        if(textField == ageTF)
        {
            var allowAgeNo = CharacterSet(charactersIn:"0123456789")
            if(string.rangeOfCharacter(from: allowAgeNo) != nil)
        {
            return true
        }
            else
        {
            return false
        }
        }
        }
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @objc func saveData()
    {
    }
    
    @IBAction func resetBT(_ sender: Any)
    {
        self.firstNameTF.text = ""
        self.lastNameTF.text = ""
        self.stateTF.text = ""
        self.emailTF.text = ""
        self.ageTF.text = ""
        self.cityTF.text = ""
        self.phoneNumberTF.text = ""
    }
    
    
    @IBAction func submitBT(_ sender: Any) {
        
        
        var alert = UIAlertController(title: "Alert", message: "Submited Sucessfully", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler:    { [self](ACTION)in
            Person.append([studentDetails(firstName: firstNameTF.text!, lastName: lastNameTF.text!,age: ageTF.text!, status: statusDD.text!, gender: genderDD.text!, state: stateTF.text!, city: cityTF.text!, email: emailTF.text!, phoneNumber: phoneNumberTF.text!)])
    //
            var DVC = storyboard?.instantiateViewController(identifier: "DisplayViewControlerViewController") as! DisplayViewControlerViewController
            DVC.Person = self.Person
            DVC.modalPresentationStyle = .fullScreen
            present(DVC, animated: true)
            {
                
                self.firstNameTF.text = ""
                self.lastNameTF.text = ""
                self.stateTF.text = ""
                self.emailTF.text = ""
                self.statusDD.text = ""
                self.ageTF.text = ""
                self.cityTF.text = ""
                self.phoneNumberTF.text = ""
            }

        }))
//
//        alert.addAction(UIAlertAction(title: "rrrsss", style: .destructive, handler:    {(ACTION)in
//

//        }))
        self.present(alert, animated: true)
        
       
    }
}

