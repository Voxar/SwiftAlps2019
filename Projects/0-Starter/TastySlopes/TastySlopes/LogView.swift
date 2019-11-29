//
//  LogView.swift
//  TastySlopes
//
//  Created by Patrik Sjöberg on 2019-11-29.
//  Copyright © 2019 Lea Marolt Sonnenschein. All rights reserved.
//

import SwiftUI

struct LogView: View {
    var log = Log.random
    
    var body: some View {
        HStack {
            Image(log.piste.imgName)
                .resizable()
                .frame(width: 75, height: 75)
                .cornerRadius(10)
            Spacer()
            VStack(alignment: .leading) {
                HStack {
                    Circle()
                        .foregroundColor(log.piste.difficulty.color)
                        .frame(width: 10, height: 10)
                    Text(log.piste.name)
                        .font(.headline)
                }
                HStack(spacing: 30) {
                    VStack(alignment: .leading) {
                        Text("DISTANCE:")
                        Text(String(format: "%.2f mi", log.piste.distance))
                            .font(.footnote)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("SPEED:")
                        Text(String(format: "%.2f mph", log.run.speed))
                            .font(.footnote)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("TIME:")
                        Text(log.run.time.timeFromSeconds)
                            .font(.footnote)
                    }
                }
            }
            Spacer()
        }.padding()
    }
}

struct LogView_Previews: PreviewProvider {
    static var previews: some View {
        LogView()
    }
}
