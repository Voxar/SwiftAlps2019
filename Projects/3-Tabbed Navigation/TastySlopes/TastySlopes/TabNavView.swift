//
//  TabNavView.swift
//  TastySlopes
//
//  Created by Lea Marolt Sonnenschein on 24/11/2019.
//  Copyright © 2019 Lea Marolt Sonnenschein. All rights reserved.
//

import SwiftUI

struct TabNavView: View {
  
  var body: some View {
    TabView {
      
      NavigationView {
        ProfileView()
      }.tabItem {
        Image("profile")
        Text("Profile")
      }
      
      NavigationView {
        LogbookView()
      }.tabItem {
        Image("list")
        Text("Logbook")
      }
    }
  }
}

struct TabNavView_Previews: PreviewProvider {
  static var previews: some View {
    TabNavView()
  }
}
