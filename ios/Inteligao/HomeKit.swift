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
class HomeKit: NSObject {
  
  @objc(addEvent:location:)
  func addEvent(name: String, location: String) -> Void {
    // Date is ready to use!
    let homeManager = HMHomeManager()
    print(homeManager)
  }
  
}
