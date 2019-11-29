//
//  LogbookView.swift
//  TastySlopes
//
//  Created by Lea Marolt Sonnenschein on 02/11/2019.
//  Copyright © 2019 Lea Marolt Sonnenschein. All rights reserved.
//

import SwiftUI

struct LogbookView: View {
    let piste = Piste.pistes.first!
    
    @State var logs = Log.randomLogs
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(Piste.pistes) { piste in
                        PisteCard(piste: piste)
                            .onTapGesture {
                                print(piste.name)
                            }
                    }
                }
                .padding()
            }
            
            List() {
                ForEach(logs) { log in
                    LogView(log: log)
                }.onDelete { set in
                    set.forEach { index in
                        self.logs.remove(at: index)
                    }
                }
            }
            
        }
    }
    
}

struct LogbookView_Previews: PreviewProvider {
    static var previews: some View {
        return LogbookView()
    }
}
