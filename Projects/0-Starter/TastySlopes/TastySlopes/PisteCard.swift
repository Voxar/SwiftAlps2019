//
//  PisteCard.swift
//  TastySlopes
//
//  Created by Patrik Sjöberg on 2019-11-29.
//  Copyright © 2019 Lea Marolt Sonnenschein. All rights reserved.
//

import SwiftUI

struct PisteCard: View {
    var piste: Piste
    
    var body: some View {
        VStack {
            Image(piste.imgName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            Text(piste.name)
        }
    }
}

struct PisteCard_Previews: PreviewProvider {
    static var previews: some View {
        PisteCard(piste: Piste.random)
    }
}
