//
//  DetailsViewController.swift
//  FamilyProject
//
//  Created by Wesley Keetch on 10/7/24.
//

import UIKit

class DetailsViewController: UIViewController {
  
  var selectedFamilyMember: FamilyMember?
  
  @IBOutlet weak var ImageBox: UIImageView!
  
  @IBOutlet weak var nameLabel: UILabel!
  
  @IBOutlet weak var ageLabel: UILabel!
  
  @IBOutlet weak var relationshipLabel: UILabel!
  
  @IBOutlet weak var detailsLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let member = selectedFamilyMember {
      nameLabel.text = member.name
      ageLabel.text = String(member.age)
      relationshipLabel.text = member.relationship
      detailsLabel.text = member.details
      
    }
  }
}
