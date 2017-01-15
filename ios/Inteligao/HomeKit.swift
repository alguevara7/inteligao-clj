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
  
  var primaryHome : HMHome?
  var homes : [HMHome] = []
  
  override init() {
    self.homeManager = HMHomeManager()
    super.init()
    self.homeManager.delegate = self
  }

  private func refresh() {
    print("refreshing");
    self.primaryHome = self.homeManager.primaryHome
    self.homes = self.homeManager.homes
    print("refreshed");
  }
  
  func homeManagerDidUpdateHomes(_ manager: HMHomeManager) {
    refresh()
  }
  
  func homeManager(_ manager: HMHomeManager, didAdd home: HMHome) {
    refresh()
  }
  
  public func homeManager(_ manager: HMHomeManager, didRemove home: HMHome) {
    refresh()
  }

  @objc(addHome:)
  func addHome(name: String) -> Void {
    homeManager.addHome(withName: name) { newHome, error in
      if let error = error {
        print("error = " + error.localizedDescription)
        return
      } else {
        print("added home" + name)
        self.refresh()
      }
    }
  }
  
  @objc(removeHome:)
  func removeHome(name: String) -> Void {
    let h = self.homes[2]
    homeManager.removeHome(self.homes[2]) { error in
      if let error = error {
        print("error = " + error.localizedDescription)
        return
      } else {
        print("removed home" + h.description)
        self.refresh()
      }
    }
  }
  
  @objc(report)
  func report() -> Void {
    print(self.homes)
  }
  
}
