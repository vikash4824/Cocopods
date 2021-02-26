//
//  DisplayViewControlerViewController.swift
//  Cocopods
//
//  Created by mamidisetty Vikash on 18/02/21.
//

import UIKit

class DisplayViewControlerViewController: UIViewController {

    
    var Person = [[studentDetails]]()
    
    var backButton:UIButton!
    
    var mainScroll:UIScrollView!
    var studnetView: UIView!
    var firstNameLabel:UILabel!
    var firstNameText:UILabel!
    var lastNameLabel:UILabel!
    var lastNameText:UILabel!
    var ageLabel:UILabel!
    var ageText:UILabel!
    var cityLabel:UILabel!
    var cityText:UILabel!
    var stateLabel:UILabel!
    var stateText:UILabel!
    var mobileLabel:UILabel!
    var mobileText:UILabel!
    var emailLabel:UILabel!
    var emailText:UILabel!
    var genderLabel:UILabel!
    var genderText:UILabel!
    var maritalLabel:UILabel!
    var maritalText:UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        // Do any additional setup after loading the view.
    }
    func setUpUI(){
        
        mainScroll = UIScrollView()
        mainScroll.frame = view.frame
        
        mainScroll.contentSize = CGSize(width: view.frame.width, height: 2000)
        mainScroll.backgroundColor = UIColor.systemRed
        view.addSubview(mainScroll)
        
        backButton = UIButton(type: UIButton.ButtonType.system)
        backButton.frame = CGRect(x:5, y: 10, width: ((view.frame.width-10)/2)-10, height: 45)
        backButton.layoutMargins.right = 5
        backButton.setTitle("Back", for: UIControl.State.normal)
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        backButton.setTitleColor(.black, for: UIControl.State.normal)
        backButton.backgroundColor = UIColor.systemPink
        backButton.layoutMargins.left=5
        backButton.layoutMargins.right=5
        backButton.layer.cornerRadius = 10
        backButton.layer.borderColor = UIColor.black.cgColor
        backButton.layer.borderWidth = 5
        backButton.layer.shadowColor = UIColor.black.cgColor
        backButton.layer.shadowOpacity = 1
        backButton.layer.shadowOffset = .zero
        backButton.layer.shadowRadius = 10
        backButton.addTarget(self, action: #selector(getBack(tapped:)), for: UIControl.Event.touchUpInside)
        mainScroll.addSubview(backButton)

        
        var pos = 0
        for i in 0..<Person.count{
            
            
            
            studnetView = UIView()
           

            studnetView.frame = CGRect(x: 5, y: 70+pos, width:Int(self.view.frame.width-10) , height: 330)
            studnetView.layer.cornerRadius = 10
            studnetView.layer.shadowColor = UIColor.black.cgColor
            studnetView.layer.shadowOpacity = 1
            studnetView.layer.shadowOffset = .zero
            studnetView.layer.shadowRadius = 10
            studnetView.backgroundColor = UIColor.systemIndigo
            mainScroll.addSubview(studnetView)
            
            self.firstNameLabel = UILabel()
            self.firstNameLabel.adjustsFontSizeToFitWidth = true
            self.firstNameLabel.numberOfLines = 0
            self.firstNameLabel.frame = CGRect(x:5, y:10, width:Int(self.view.frame.width-10)/2, height: 30)
            self.firstNameLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.firstNameLabel.textColor = UIColor.white
            self.firstNameLabel.textAlignment = .right
            self.firstNameLabel.text = "First Name :"
            self.studnetView.addSubview(self.firstNameLabel)
            
            self.firstNameText = UILabel()
            self.firstNameText.adjustsFontSizeToFitWidth = true
            self.firstNameText.backgroundColor = UIColor.yellow
            self.firstNameText.numberOfLines = 0
            self.firstNameText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 10, width: ((view.frame.width-10)/2)-10, height: 30)
            self.firstNameText.font = UIFont.boldSystemFont(ofSize: 19)
            self.firstNameText.textColor = UIColor.black
            self.firstNameText.textAlignment = .left
            self.firstNameText.text = Person[i][0].firstName
            self.studnetView.addSubview(self.firstNameText)
            
            self.lastNameLabel = UILabel()
            self.lastNameLabel.adjustsFontSizeToFitWidth = true
            self.lastNameLabel.numberOfLines = 0
            self.lastNameLabel.frame = CGRect(x:5, y:45, width:Int(self.view.frame.width-10)/2, height: 30)
            self.lastNameLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.lastNameLabel.textColor = UIColor.white
            self.lastNameLabel.textAlignment = .right
            self.lastNameLabel.text = "Last Name :"
            self.studnetView.addSubview(self.lastNameLabel)
            
            self.lastNameText = UILabel()
            self.lastNameText.adjustsFontSizeToFitWidth = true
            self.lastNameText.numberOfLines = 0
            self.lastNameText.backgroundColor = UIColor.systemPink
            self.lastNameText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 45, width: ((view.frame.width-10)/2)-10, height: 30)
            self.lastNameText.font = UIFont.boldSystemFont(ofSize: 19)
            self.lastNameText.textColor = UIColor.black
            self.lastNameText.textAlignment = .left
            self.lastNameText.text = Person[i][0].lastName
            self.studnetView.addSubview(self.lastNameText)
            
            
            self.ageLabel = UILabel()
            self.ageLabel.adjustsFontSizeToFitWidth = true
            self.ageLabel.numberOfLines = 0
            self.ageLabel.frame = CGRect(x:5, y:80, width:Int(self.view.frame.width-10)/2, height: 30)
            self.ageLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.ageLabel.textColor = UIColor.white
            self.ageLabel.textAlignment = .right
            self.ageLabel.text = "Age :"
            self.studnetView.addSubview(self.ageLabel)
            
            self.ageText = UILabel()
            self.ageText.adjustsFontSizeToFitWidth = true
            self.ageText.numberOfLines = 0
            self.ageText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 80, width: ((view.frame.width-10)/2)-10, height: 30)
            self.ageText.font = UIFont.boldSystemFont(ofSize: 19)
            self.ageText.backgroundColor = UIColor.systemYellow
            self.ageText.textColor = UIColor.black
            self.ageText.textAlignment = .left
            self.ageText.text = String(Person[i][0].age)
            self.studnetView.addSubview(self.ageText)
            
            self.genderLabel = UILabel()
            self.genderLabel.adjustsFontSizeToFitWidth = true
            self.genderLabel.numberOfLines = 0
            self.genderLabel.frame = CGRect(x:5, y:115, width:Int(self.view.frame.width-10)/2, height: 30)
            self.genderLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.genderLabel.textColor = UIColor.white
            self.genderLabel.textAlignment = .right
            self.genderLabel.text = "Gender:"
            self.studnetView.addSubview(self.genderLabel)
            
            self.genderText = UILabel()
            self.genderText.adjustsFontSizeToFitWidth = true
            self.genderText.numberOfLines = 0
            self.genderText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 115, width: ((view.frame.width-10)/2)-10, height: 30)
            self.genderText.font = UIFont.boldSystemFont(ofSize: 19)
            self.genderText.backgroundColor = UIColor.systemPink
            self.genderText.textColor = UIColor.black
            self.genderText.textAlignment = .left
            self.genderText.text = Person[i][0].gender
            self.studnetView.addSubview(self.genderText)
            
            self.maritalLabel = UILabel()
            self.maritalLabel.adjustsFontSizeToFitWidth = true
            self.maritalLabel.numberOfLines = 0
            self.maritalLabel.frame = CGRect(x:5, y:150, width:Int(self.view.frame.width-10)/2, height: 30)
            self.maritalLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.maritalLabel.textColor = UIColor.white
            self.maritalLabel.textAlignment = .right
            self.maritalLabel.text = "Marital Status :"
            self.studnetView.addSubview(self.maritalLabel)
            
            self.maritalText = UILabel()
            self.maritalText.adjustsFontSizeToFitWidth = true
            self.maritalText.numberOfLines = 0
            self.maritalText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 150, width: ((view.frame.width-10)/2)-10, height: 30)
            self.maritalText.font = UIFont.boldSystemFont(ofSize: 19)
            self.maritalText.backgroundColor = UIColor.systemYellow
            self.maritalText.textColor = UIColor.black
            self.maritalText.textAlignment = .left
            self.maritalText.text = Person[i][0].status
            self.studnetView.addSubview(self.maritalText)
            
            self.cityLabel = UILabel()
            self.cityLabel.adjustsFontSizeToFitWidth = true
            self.cityLabel.numberOfLines = 0
            self.cityLabel.frame = CGRect(x:5, y:185, width:Int(self.view.frame.width-10)/2, height: 30)
            self.cityLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.cityLabel.textColor = UIColor.white
            self.cityLabel.textAlignment = .right
            self.cityLabel.text = "City Name :"
            self.studnetView.addSubview(self.cityLabel)
            
            self.cityText = UILabel()
            self.cityText.adjustsFontSizeToFitWidth = true
            self.cityText.numberOfLines = 0
            self.cityText.backgroundColor = UIColor.systemPink
            self.cityText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 185, width: ((view.frame.width-10)/2)-10, height: 30)
            self.cityText.font = UIFont.boldSystemFont(ofSize: 19)
            self.cityText.textColor = UIColor.black
            self.cityText.textAlignment = .left
            self.cityText.text = Person[i][0].city
            self.studnetView.addSubview(self.cityText)
            
            self.stateLabel = UILabel()
            self.stateLabel.adjustsFontSizeToFitWidth = true
            self.stateLabel.numberOfLines = 0
            self.stateLabel.frame = CGRect(x:5, y:220, width:Int(self.view.frame.width-10)/2, height: 30)
            self.stateLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.stateLabel.textColor = UIColor.white
            self.stateLabel.textAlignment = .right
            self.stateLabel.text = "State Name :"
            self.studnetView.addSubview(self.stateLabel)
            
            self.stateText = UILabel()
            self.stateText.adjustsFontSizeToFitWidth = true
            self.stateText.numberOfLines = 0
            self.stateText.backgroundColor = UIColor.systemYellow
            self.stateText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 220, width: ((view.frame.width-10)/2)-10, height: 30)
            self.stateText.font = UIFont.boldSystemFont(ofSize: 19)
            self.stateText.textColor = UIColor.black
            self.stateText.textAlignment = .left
            self.stateText.text = Person[i][0].state
            self.studnetView.addSubview(self.stateText)
           
            self.mobileLabel = UILabel()
            self.mobileLabel.adjustsFontSizeToFitWidth = true
            self.mobileLabel.numberOfLines = 0
            self.mobileLabel.frame = CGRect(x:5, y:255, width:Int(self.view.frame.width-10)/2, height: 30)
            self.mobileLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.mobileLabel.textColor = UIColor.white
            self.mobileLabel.textAlignment = .right
            self.mobileLabel.text = "Mobile Number :"
            self.studnetView.addSubview(self.mobileLabel)
            
            self.mobileText = UILabel()
            self.mobileText.adjustsFontSizeToFitWidth = true
            self.mobileText.numberOfLines = 0
            self.mobileText.backgroundColor = UIColor.systemPink
            self.mobileText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 255, width: ((view.frame.width-10)/2)-10, height: 30)
            self.mobileText.font = UIFont.boldSystemFont(ofSize: 19)
            self.mobileText.textColor = UIColor.black
            self.mobileText.textAlignment = .left
            self.mobileText.text = Person[i][0].phoneNumber
            self.studnetView.addSubview(self.mobileText)
            
            self.emailLabel = UILabel()
            self.emailLabel.adjustsFontSizeToFitWidth = true
            self.emailLabel.numberOfLines = 0
            self.emailLabel.frame = CGRect(x:5, y:290, width:Int(self.view.frame.width-10)/2, height: 30)
            self.emailLabel.font = UIFont.boldSystemFont(ofSize: 19)
            self.emailLabel.textColor = UIColor.white
            self.emailLabel.textAlignment = .right
            self.emailLabel.text = "Email :"
            self.studnetView.addSubview(self.emailLabel)
            
            self.emailText = UILabel()
            self.emailText.adjustsFontSizeToFitWidth = true
            self.emailText.backgroundColor = UIColor.systemYellow
            self.emailText.numberOfLines = 0
            self.emailText.frame = CGRect(x:((view.frame.width-10)/2)+10, y: 290, width: ((view.frame.width-10)/2)-10, height: 30)
            self.emailText.font = UIFont.boldSystemFont(ofSize: 19)
            self.emailText.textColor = UIColor.black
            self.emailText.textAlignment = .left
            self.emailText.text = Person[i][0].email
            self.studnetView.addSubview(self.emailText)
            
            
            
            pos = pos + 340
        }
        
    }
    
    @objc  func getBack(tapped:UIButton){
        
        dismiss(animated: true, completion: nil)
        
    }
    
    

}
