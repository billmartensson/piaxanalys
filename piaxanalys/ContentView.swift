//
//  ContentView.swift
//  piaxanalys
//
//  Created by Bill Martensson on 2021-12-20.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var fullname = ""
    @State var fname = ""
    @State var lname = ""

    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .padding()
                
                NavigationLink(destination: Detailview(), label: {
                    Text("Go detail")
                })
                
                Text(fullname)
                TextField("Förnamn", text: $fname)
                TextField("Efternamn", text: $lname)
                Button(action: {
                    var enperson = Person()
                    enperson.firstname = fname
                    enperson.lastname = lname
                    fullname = enperson.getFullname()
                }) {
                    Text("Fixa namn")
                }
                
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
