//
//  Asset.swift
//  JsonTest
//
//  Created by dev on 11/14/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import Foundation

class Asset {

  let title: String?
  let description: String?
  let thumbnail: URL?
  let id: Int?
  let resource: Resource?
  
  init (title: String, description: String, thumbnail: URL, id: Int, resource: Resource) {
    self.title = title
    self.description = description
    self.thumbnail = thumbnail
    self.id = id
    self.resource = resource
  }

}
