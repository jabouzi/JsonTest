//
//  RepoOwner.swift
//  JsonTest
//
//  Created by dev on 11/14/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import Foundation
import Gloss

struct RepoOwner: JSONDecodable {
  
  let ownerId: Int?
  let username: String?
  
  // MARK: - Deserialization
  
  init?(json: JSON) {
    self.ownerId = "id" <~~ json
    self.username = "login" <~~ json
  }
}
