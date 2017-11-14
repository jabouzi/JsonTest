//
//  Resource.swift
//  JsonTest
//
//  Created by dev on 11/14/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import Foundation
import Gloss

class Resource: JSONDecodable {
  
  let url: URL?
  let relative_url: String?
  let checksum: String?
  let size: Int?
  
  // MARK: - Deserialization
  required init?(json: JSON) {
    self.url = "url" <~~ json
    self.relative_url = "relative_url" <~~ json
    self.checksum = "checksum" <~~ json
    self.size = "size" <~~ json
  }
}
