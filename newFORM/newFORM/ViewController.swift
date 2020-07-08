//
//  ViewController.swift
//  newFORM
//
//  Created by Tonywilson Jesuraj on 03/07/20.
//  Copyright © 2020 Tonywilson Jesuraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    var topAnchorConstantArrayValues = [60.0]
    var firstNameTextField = UITextField()
    var lastNameTextField = UITextField()
    var ageTextField = UITextField()
    var genderTextField = UITextField()
    var genderLabel = UILabel()
    var address = UITextView(frame: .zero, textContainer: nil)
    var emailTextField = UITextField()
    var mobileNumberTextField = UIButton()
    var submitButton = UIButton()
    var firstNameLabel = UILabel()
    var lastNameLabel = UILabel()
    var ageLabel = UILabel()
    var emailLabel = UILabel()
    var addressLabel = UILabel()
    var mobileNumberLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstNameConstraints()
        lastNameConstraints()
        ageConstraints()
        genderConstraints()
        emailConstraints()
        buttonConstraints()
    }
    func firstNameConstraints(){
        
        
        firstNameLabel.text = "First Name"
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        firstNameTextField.placeholder = "FirstName"
        view.addSubview(firstNameLabel)
        view.addSubview(firstNameTextField)
        NSLayoutConstraint.activate([
            firstNameLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            firstNameLabel.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 10.0),
            
            firstNameTextField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant:CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            
            firstNameTextField.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 25.0),
            ])
        topAnchorConstantArrayValues.append(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1] + 30)
    }
    
    func lastNameConstraints(){
        lastNameLabel.text = "Last Name"
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        lastNameTextField.placeholder = "Last Name"
        view.addSubview(lastNameLabel)
        view.addSubview(lastNameTextField)
        NSLayoutConstraint.activate([
            lastNameLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            lastNameLabel.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 10.0),
            
            lastNameTextField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            
            lastNameTextField.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 25.0)
            ])
        topAnchorConstantArrayValues.append(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1] + 30)
    }
    
    func ageConstraints(){
        ageLabel.text = "Your age"
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        ageTextField.translatesAutoresizingMaskIntoConstraints = false
        ageTextField.placeholder = "Your age"
        ageTextField.keyboardType = .numberPad
        view.addSubview(ageLabel)
        view.addSubview(ageTextField)
        NSLayoutConstraint.activate([
            ageLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            ageLabel.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 10.0),
            
            ageTextField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            
            ageTextField.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 25.0)
            ])
        topAnchorConstantArrayValues.append(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1] + 30)
    }
    
    func genderConstraints() {
        genderLabel.text = "Gender"
        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        genderTextField.translatesAutoresizingMaskIntoConstraints = false
        genderTextField.placeholder = "Gender"
        view.addSubview(genderTextField)
        view.addSubview(genderLabel)
        NSLayoutConstraint.activate([
            genderLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            genderLabel.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 10.0),
            
            genderTextField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            
            genderTextField.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 25.0)
            ])
        topAnchorConstantArrayValues.append(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1] + 30)
    }
    
    func emailConstraints() {
        emailLabel.text = "Email"
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.placeholder = "Email"
        emailTextField.keyboardType = .emailAddress
        view.addSubview(emailTextField)
        view.addSubview(emailLabel)
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            emailLabel.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 10.0),
            
            emailTextField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
            
            emailTextField.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 25.0)
            ])
        topAnchorConstantArrayValues.append(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1] + 30)
    }
    
    func addressConstraints() {
        addressLabel.text = "Address"
        address.text = "Add"
        address.backgroundColor = .red
        
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        address.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(address)
        view.addSubview(addressLabel)
        address.frame.size.height = 10
            address.frame.size.width = 10
             NSLayoutConstraint.activate([
            addressLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1]) + 30),
            addressLabel.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 10.0),
            
            address.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1]) + 30),
            
            address.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 25.0),
            
            
            ])
        topAnchorConstantArrayValues.append(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1] + 60)
    }
    
    func buttonConstraints() {
        submitButton.setTitle("Submit", for: .normal)
        submitButton.backgroundColor  = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        submitButton.alpha = 1
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(submitButton)
        //view.addSubview(addressLabel)
        NSLayoutConstraint.activate([
            submitButton.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
        submitButton.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier:10.0),
            
//            address.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: CGFloat(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1])),
//
//            address.leftAnchor.constraint(equalToSystemSpacingAfter: view.leftAnchor, multiplier: 20.0)
            ])
        topAnchorConstantArrayValues.append(topAnchorConstantArrayValues[topAnchorConstantArrayValues.count - 1] + 60)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        firstNameTextField.resignFirstResponder()
        lastNameTextField.resignFirstResponder()
        genderTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
    }
}

