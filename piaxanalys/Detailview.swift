//
//  Detailview.swift
//  piaxanalys
//
//  Created by Bill Martensson on 2021-12-20.
//

import SwiftUI
import Firebase

struct Detailview: View {
    var body: some View {
        VStack {
            Text("Detail info")
        }.onAppear(perform: {
            
            //var siffra = Int("banan")!
        
            var people = [String]()
            people.append("Torsten")
            
            var someone = people[999]
            
            Analytics.logEvent(AnalyticsEventScreenView, parameters: [AnalyticsParameterScreenName: "detailview"])
        })
    }
}

struct Detailview_Previews: PreviewProvider {
    static var previews: some View {
        Detailview()
    }
}
