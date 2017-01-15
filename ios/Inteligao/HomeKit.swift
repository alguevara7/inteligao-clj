//
//  HomeKit.swift
//  Inteligao
//
//  Created by Zaphod Beeblebrox on 1/15/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import HomeKit

@objc(HomeKit)
class HomeKit: NSObject, HMHomeManagerDelegate {
  
  var homeManager : HMHomeManager
  
  override init() {
    self.homeManager = HMHomeManager()
    super.init()
    self.homeManager.delegate = self
  }
  
  func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
    print("started")
  }

  @objc(addHome:)
  func addHome(name: String) -> Void {
    homeManager.addHome(withName: name) { newHome, error in
      if let error = error {
        print("error = " + error.localizedDescription)
        return
      } else {
        print("added home" + name)
      }
    }
  }
  
  @objc(report)
  func report() -> Void {
    print(self.homeManager.homes)
    print(self.homeManager.primaryHome ?? "No primary home")
  }
  
}
