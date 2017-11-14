//
//  Repo.swift
//  JsonTest
//
//  Created by dev on 11/14/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import Foundation
import Gloss

struct Repo: JSONDecodable {
  
  let repoId: Int?
  let name: String?
  let desc: String?
  let url: URL?
  let owner: RepoOwner?
  let primaryLanguage: Language?
  
  enum Language: String {
    case Swift = "Swift"
    case ObjectiveC = "Objective-C"
  }
  
  // MARK: - Deserialization
  
  init?(json: JSON) {
    self.repoId = "id" <~~ json
    self.name = "name" <~~ json
    self.desc = "description" <~~ json
    self.url = "html_url" <~~ json
    self.owner = "owner" <~~ json
    self.primaryLanguage = "language" <~~ json
  }
  
}
