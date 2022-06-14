
//  AlertsView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 10/06/22.
//

import SwiftUI


struct DoingAlerts{
    var item: String
    var date: String
    var store: String
    
}
struct AlertsView: View {
    var body: some View {
        VStack {
            Text("Alerts!")
            GeometryReader { geometry in
            VStack {
                
                Spacer()
                Text("Item 1")
                Spacer()
                Text("Expires on 2022-02-12")
                Spacer()
                Text("It is at Cupboard 2")
                Spacer()
            }.frame(height: geometry.size.height / 8 )
            Spacer()
                
                VStack {
                    
                    Spacer()
                    Text("Item 2")
                    Spacer()
                    Text("Expires on 2022-05-18")
                    Spacer()
                    Text("It is at Refrigerator 2")
                    Spacer()
                }.frame(height: geometry.size.height / 8 )
                Spacer()
            }
    }
}
}
struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}

