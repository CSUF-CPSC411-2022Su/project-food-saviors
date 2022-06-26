//
//  AlertsNavig .swift
//  FoodSaviorApp
//
//  Created by csuftitan on 6/20/22.
//

import SwiftUI

struct AlertsNavig: View {
    var body: some View {
    GeometryReader { geometry in
    VStack{
    
        VStack{
        Text(" You are in Alerts Help Screen").bold().font(.largeTitle)
        }.frame(height: geometry.size.height / 4)
       
                
    VStack{
        Text(" The items currently available in the pantry are... ")
        Text(" Item 1")
        Text(" Item 2")
        Text(" Item 3")
        Text(" Item 4")
        
        }.frame(height: geometry.size.height / 4)
   
        TabView {
                            Storage()
                                .tabItem {
                                    Image(systemName: "plus")
                                    Text("Storage")
                                }
                                    
        }
        

    
    }
        
}
}
    }
struct AlertsNavig_Previews: PreviewProvider {
    static var previews: some View {
        AlertsNavig()
    }
}
