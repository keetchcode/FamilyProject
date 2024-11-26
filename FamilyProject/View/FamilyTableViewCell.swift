//
//  Untitled.swift
//  FamilyProject
//
//  Created by Wesley Keetch on 11/26/24.
//

import UIKit

class FamilyTableViewCell: UITableViewCell {
  @IBOutlet weak var nameLabel: UILabel!
  
  func configure(with member: FamilyMember) {
    nameLabel.text = member.name
  }
}
