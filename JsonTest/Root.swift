//
//  Root.swift
//  JsonTest
//
//  Created by dev on 11/14/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import Foundation
import Gloss

public struct Root: JSONDecodable {
  
  // 1
  let resources: [Resource]?
  
  // 2
  public init?(json: JSON) {
    resources = "resources" <~~ json
  }
  
}
