//
//  TomeInventoryItemPropertyView.swift
//  CodeCombat
//
//  Created by Nick Winter on 8/7/14.
//  Copyright (c) 2014 CodeCombat. All rights reserved.
//

import Foundation

class TomeInventoryItemPropertyView: UIView {
  
  var item: TomeInventoryItem?
  var property: TomeInventoryItemProperty?
  
  func baseInit(item: TomeInventoryItem, property: TomeInventoryItemProperty) {
    self.item = item
    self.property = property
    buildSubviews()
  }
  
  required init(coder aDecoder: NSCoder!) {
    super.init(coder: aDecoder)
  }
  
  init(item: TomeInventoryItem, property: TomeInventoryItemProperty, coder aDecoder: NSCoder!) {
    super.init(coder: aDecoder)
    baseInit(item, property: property)
  }
  
  init(item: TomeInventoryItem, property: TomeInventoryItemProperty, frame: CGRect) {
    super.init(frame: frame)
    baseInit(item, property: property)
  }
  
  func buildSubviews() {
    let Padding = CGFloat(5.0)
    if let name = property?.propertyData["name"].asString {
      var label = UILabel(frame: CGRect(x: Padding, y: Padding, width: frame.width - 2 * Padding, height: frame.height))
      label.text = name
      label.textColor = UIColor.blackColor()
      addSubview(label)
      label.sizeToFit()
      frame = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.width, height: label.frame.height + 2 * Padding)
      backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1)
    }
  }
}