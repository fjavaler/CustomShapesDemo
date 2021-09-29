//
//  Diamond.swift
//  CustomShapesDemo
//
//  Created by Frederick Javalera on 9/29/21.
//

import SwiftUI

struct Diamond: Shape {
  
  func path(in rect: CGRect) -> Path {
    Path { path in
      let horizontalOffset: CGFloat = rect.width * 0.2
      path.move(to: CGPoint(x: rect.midX, y: rect.minY))
      path.addLine(to: CGPoint(x: rect.maxX - horizontalOffset, y: rect.midY))
      path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
      path.addLine(to: CGPoint(x: rect.minX + horizontalOffset, y: rect.midY))
      path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
    }
  }
  
}

struct Diamond_Previews: PreviewProvider {
  static var previews: some View {
    Diamond()
  }
}
