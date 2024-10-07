//
//  ViewController.swift
//  FamilyProject
//
//  Created by Wesley Keetch on 9/25/24.
//

import UIKit

struct FamilyMember {
  let name: String
  let age: Int
  let relationship: String
  let details: String
}

class FamilyViewController: UIViewController {

  let dad = FamilyMember(name: "Kelly", age: 60, relationship: "Dad", details: "My dad works at Comptia creating their certification courses.")
  let mom = FamilyMember(name: "Wesley", age: 60, relationship: "Mom", details: "My mom is a psychology professor at UVU and also teaches highschool concurrent enrollment classes.")
  let katie = FamilyMember(name: "Katie", age: 31, relationship: "Sister", details: "She works as a nurse at the childrens instacare.")
  let karley = FamilyMember(name: "Karley", age: 29, relationship: "Sister", details: "She works in the solar industry but is taking time off to go to Korea with her husband for 2 months.")
  let caitlin = FamilyMember(name: "Caitlin", age: 25, relationship: "Girlfriend", details: "She works at a fancy divorce law firm in SLC as a paralegal.")
  let wesley = FamilyMember(name: "Wesley", age: 25, relationship: "myself", details: "Working in market research while I finish my degree at UVU and also certification at MTech.")
  let ash = FamilyMember(name: "Ash", age: 2, relationship: "My dog", details: "He is a cockspaniel-poodle mix. He is hilarious.")

  var selectedFamilyMember: FamilyMember?

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func familyMemberButtonTapped(_ sender: UIButton) {
    switch sender.tag {
    case 0:
      selectedFamilyMember = dad
    case 1:
      selectedFamilyMember = mom
    case 2:
      selectedFamilyMember = katie
    case 3:
      selectedFamilyMember = karley
    case 4:
      selectedFamilyMember = caitlin
    case 5:
      selectedFamilyMember = wesley
    case 6:
      selectedFamilyMember = ash
    default:
      break
    }
    performSegue(withIdentifier: "showFamilyMemberDetail", sender: nil)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let detailViewController = segue.destination as? DetailsViewController else { return }
    detailViewController.selectedFamilyMember = selectedFamilyMember
  }
}

