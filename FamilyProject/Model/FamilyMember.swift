//
//  FamilyMember.swift
//  FamilyProject
//
//  Created by Wesley Keetch on 11/25/24.
//

import Foundation

struct FamilyMember {
  let name: String
  let age: Int
  let relationship: String
  let details: String
  let imageName: String?
}


let dad = FamilyMember(name: "Kelly 🖥️", age: 60, relationship: "Dad", details: "My dad works at Comptia creating their certification courses.", imageName: "kelly")
let mom = FamilyMember(name: "CiCi 🍎", age: 60, relationship: "Mom", details: "My mom is a psychology professor at UVU and also teaches highschool concurrent enrollment classes.", imageName: "cici")
let katie = FamilyMember(name: "Katie 🏥", age: 31, relationship: "Sister", details: "She works as a nurse at the childrens instacare.", imageName: "katie")
let karley = FamilyMember(name: "Karley 💅", age: 29, relationship: "Sister", details: "She works in the solar industry but is taking time off to go to Korea with her husband for 2 months.", imageName: "karley")
let wesley = FamilyMember(name: "Wesley 👨‍💻", age: 25, relationship: "myself", details: "Working in market research while I finish my degree at UVU and also certification at MTech.", imageName: "wes")
let ash = FamilyMember(name: "Ash 🐶", age: 2, relationship: "My dog", details: "He is a cockerspaniel-poodle mix. He is hilarious.", imageName: "ash")
