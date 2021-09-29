//
//  ContentView.swift
//  CustomShapesDemo
//
//  Created by Frederick Javalera on 9/29/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: Properties
  var body: some View {
    
    ZStack {
      
      // Any custom shape found in CustomShapes directory.
      Trapezoid()
      // Uncomment one option at a time and uncomment last line (i.e. ".frame(width: 300, height: 300)"):
      
      //1.
//        .stroke(style: StrokeStyle(lineWidth: 3, lineCap: .round, dash: [4]))
//        .foregroundColor(.blue)
      
      // 2.
//      .trim(from: 0, to: 0.5)

      // 3.
      .fill(LinearGradient(gradient: Gradient(colors: [Color.black, Color.white]), startPoint: .leading, endPoint: .trailing))

        .frame(width: 300, height: 200)
    
      Image("stevejobs", bundle: .main)
        .resizable()
        .scaledToFill()
        .frame(width: 300, height: 300)
        .clipShape(Triangle().rotation(Angle(radians: 2 * Double.pi)))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
