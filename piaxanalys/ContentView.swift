//
//  ContentView.swift
//  piaxanalys
//
//  Created by Bill Martensson on 2021-12-20.
//

import SwiftUI
import Firebase

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .padding()
                
                NavigationLink(destination: Detailview(), label: {
                    Text("Go detail")
                })
                
            }.onAppear(perform: {
                letstrack()
            })
        }
    }
    
    func letstrack()
    {
        /*
        Analytics.logEvent(AnalyticsEventSelectContent, parameters: [
          AnalyticsParameterItemID: "id-\(title!)",
          AnalyticsParameterItemName: title!,
          AnalyticsParameterContentType: "cont",
        ])
         */
        
        //Analytics.logEvent("fancyhappening", parameters: nil)
        
        //Analytics.logEvent(AnalyticsEventLogin, parameters: nil)
        
        Analytics.logEvent(AnalyticsEventScreenView,
                           parameters: [AnalyticsParameterScreenName: "Startvy"])
        
        Analytics.logEvent(AnalyticsEventViewItem, parameters:[
            AnalyticsParameterItemID: 123,
            AnalyticsParameterItemName: "Gunghäst"
        ])
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
