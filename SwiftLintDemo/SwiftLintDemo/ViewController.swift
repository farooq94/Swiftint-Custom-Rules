//
//  ViewController.swift
//  SwiftLintDemo
//
//  Created by Invision-MacBookPro-Farooq on 29/11/2018.
//  Copyright © 2018 Invision-MacBookPro-F011. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  // swiftlint:disable:next private_outlet
  @IBOutlet weak var topView: UIView!
  @IBOutlet private weak var noWarningView: UIView!
  @IBOutlet weak var rightView: UIView! // swiftlint:disable:this private_outlet
  @IBOutlet weak var bottomView: UIView!
  // swiftlint:disable:previous private_outlet

  let integer: Int = 1
  // swiftlint:disable private_outlet
  @IBOutlet weak var myView3: UIView!
  // swiftlint:enable private_outlet
  @IBOutlet weak private var myView5: UIView!


  var tuple: (a: Int, b: Int, c: Int, d: Int)?

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  func ruleFirstWhere(){
    let myID = 007
    let userIDs = [001,002,007,001]
    //Triggering Exmaple
    _ = userIDs.filter{$0 == myID}.first
    //Non Triggering Exmaple
     _ = userIDs.first(where: {$0 == myID})
  }


  func ternarySingleIfElseStatement() -> Int {
    if 1 > 2 {
      return 1
    } else {
      return 2
    }
  }

  // MARK: Remove NC Observer
  func detatchNCObserver(){
    NotificationCenter.default.removeObserver(self)
  }

  // MARK: Goto TimeLine
  func gotoTimeLine() {
    self.performSegue(withIdentifier: "gotoTimeLine", sender: nil)
  }
}

// MARK: Segue Identifiers
enum SegueIdentifiers: String {
  case timeLine = "gotoTimeLine"
  func getIdentifier() -> String{
    return self.rawValue
  }
}
