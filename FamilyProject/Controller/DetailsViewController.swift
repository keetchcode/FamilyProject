//
//  DetailsViewController.swift
//  FamilyProject
//
//  Created by Wesley Keetch on 10/7/24.
//

import UIKit

class DetailsViewController: UIViewController {
  
  @IBOutlet weak var ImageBox: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var ageLabel: UILabel!
  @IBOutlet weak var relationshipLabel: UILabel!
  @IBOutlet weak var detailsLabel: UILabel!
  
  var familyMember: FamilyMember?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    guard let member = familyMember else { return }
    nameLabel.text = member.name
    ageLabel.text = "Age: \(member.age)"
    relationshipLabel.text = "Relationship: \(member.relationship)"
    detailsLabel.text = member.details
    
    if let imageName = member.imageName, let image = UIImage(named: imageName) {
      ImageBox.image = image
    } else {
      ImageBox.image = UIImage(systemName: "person.circle")
    }
  }
}
