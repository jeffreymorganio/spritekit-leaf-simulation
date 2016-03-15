//
//  iOSLeafSimulationViewController.swift
//  iOSSpriteKitLeafSimulation
//
//  Created by Jeffrey Morgan on 10/03/2016.
//  Copyright © 2016 Jeffrey Morgan under the MIT License.
//

import UIKit
import SpriteKit

class iOSLeafSimulationViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureScene()
  }
  
  private func configureScene() {
    if let scene = LeafSimulationScene(fileNamed:"LeafSimulationScene") {
      // Configure the view.
      let skView = self.view as! SKView
      skView.showsFPS = true
      skView.showsNodeCount = true
      
      /* Sprite Kit applies additional optimizations to improve rendering performance */
      skView.ignoresSiblingOrder = true
      
      /* Set the scale mode to scale to fit the window */
      scene.scaleMode = .AspectFill
      
      // Make the scene the same size as the scene's SKView
      scene.size = skView.bounds.size
      
      skView.presentScene(scene)
    }
  }
  
  override func shouldAutorotate() -> Bool {
    return true
  }
  
  override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
    if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
      return .AllButUpsideDown
    } else {
      return .All
    }
  }
  
  override func prefersStatusBarHidden() -> Bool {
    return true
  }
  
}