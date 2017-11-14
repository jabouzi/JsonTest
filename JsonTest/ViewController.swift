//
//  ViewController.swift
//  JsonTest
//
//  Created by dev on 11/14/17.
//  Copyright © 2017 Skander Jabouzi. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

  @IBOutlet weak var myButton: UIButton!
  var file: String!
  var data: Data!
  var JSON: Any!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func readJsonFile(filename: String) {
    file = Bundle.main.path(forResource: filename, ofType: "json")!
  }
  
  func parseJson() {
    data = try! NSData(contentsOfFile: file) as! Data
    JSON = try! JSONSerialization.jsonObject(with: data, options: [])
  }


  func getData() {
    
    guard let dictionary = JSON as? [String: Any] else {
      print("Error initializing object")
      return
    }
    
    guard let repoOwner = RepoOwner(json: dictionary) else {
      print("Error initializing object")
      return
    }
    
    debugPrint(repoOwner)
  }
  
  func getData2() {
    
    guard let dictionary = JSON as? [String: Any] else {
      print("Error initializing object")
      return
    }
    
    guard let repo = Repo(json: dictionary) else {
      print("Error initializing object")
      return
    }
    
    debugPrint(repo)
  }
  
  func getData3() {
    
    guard let dictionary = JSON as? [[String: Any]] else {
      print("Error initializing object")
      return
    }
    
    guard let repoOwners = [RepoOwner].from(jsonArray: dictionary) else {
      print("Error initializing object")
      return
    }
    
    debugPrint(repoOwners)
  }
  
  @IBAction func myButtonClicked(_ sender: Any) {
    readJsonFile(filename: "test1")
    parseJson()
    getData()
    
    readJsonFile(filename: "test2")
    parseJson()
    getData2()
    
    readJsonFile(filename: "test3")
    parseJson()
    getData3()
  }

}

