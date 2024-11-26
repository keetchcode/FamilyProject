//
//  ViewController.swift
//  FamilyProject
//
//  Created by Wesley Keetch on 9/25/24.
//

import UIKit

class FamilyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  @IBOutlet weak var tableView: UITableView!
  
  var familyMembers: [FamilyMember] = [dad, mom, katie, karley, wesley, ash]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.dataSource = self
    tableView.delegate = self
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addFamilyMember))
  }
  
  // MARK: - Navigation
  @objc func addFamilyMember() {
    performSegue(withIdentifier: "showAddFamilyMember", sender: nil)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "showDetail",
       let detailVC = segue.destination as? DetailsViewController,
       let selectedMember = sender as? FamilyMember {
      detailVC.familyMember = selectedMember
    }
  }
  
  
  // MARK: - UITableViewDataSource
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return familyMembers.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "FamilyMemberCell", for: indexPath) as? FamilyTableViewCell else {
      fatalError("Could not dequeue FamilyTableViewCell")
    }
    let member = familyMembers[indexPath.row]
    cell.configure(with: member)
    return cell
  }
  
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let selectedMember = familyMembers[indexPath.row]
    performSegue(withIdentifier: "showDetail", sender: selectedMember)
  }
}

// MARK: - AddFamilyMemberDelegate
extension FamilyViewController: AddFamilyMemberDelegate {
  func didAddFamilyMember(_ familyMember: FamilyMember) {
    familyMembers.append(familyMember)
    tableView.reloadData()
  }
}
