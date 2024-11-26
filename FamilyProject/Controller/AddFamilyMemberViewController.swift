//
//  AddFamilyMemberViewController.swift
//  FamilyProject
//
//  Created by Wesley Keetch on 11/26/24.
//

import UIKit

protocol AddFamilyMemberDelegate: AnyObject {
  func didAddFamilyMember(_ familyMember: FamilyMember)
}

class AddFamilyMemberViewController: UIViewController {

  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var ageTextField: UITextField!
  @IBOutlet weak var relationshipTextField: UITextField!
  @IBOutlet weak var detailsTextField: UITextField!

  weak var delegate: AddFamilyMemberDelegate?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func addButtonTapped(_ sender: UIButton) {
    guard let name = nameTextField.text, !name.isEmpty,
          let ageText = ageTextField.text, let age = Int(ageText),
          let relationship = relationshipTextField.text, !relationship.isEmpty,
          let details = detailsTextField.text, !details.isEmpty else {
      let alert = UIAlertController(title: "Error", message: "All fields are required and age must be a number.", preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
      present(alert, animated: true, completion: nil)
      return
    }

    let newMember = FamilyMember(name: name, age: age, relationship: relationship, details: details, imageName: nil)
    delegate?.didAddFamilyMember(newMember)
    navigationController?.popViewController(animated: true)
  }
}
