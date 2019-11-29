//
//  SquarePeg.swift
//  TastySlopes
//
//  Created by Patrik Sjöberg on 2019-11-29.
//  Copyright © 2019 Lea Marolt Sonnenschein. All rights reserved.
//

import SwiftUI

struct SquarePeg: View {
    var color: Color
    
    var body: some View {
        VStack {
            Circle()
                .padding()
                .background(color)
                .frame(width: 50, height: 50)
            Text("Square peg")
        }
    }
}

struct SquarePeg_Previews: PreviewProvider {
    static var previews: some View {
        SquarePeg(color: .red)
    }
}
