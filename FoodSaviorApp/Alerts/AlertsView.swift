//  AlertsView.swift
//  FoodSaviorApp
//
//  Created by Manthan Vasani on 10/06/22.
//
 
import SwiftUI
 
struct DoingAlerts {
    var item: String
    var date: String
    var store: String
}
 
struct AlertsView: View {
    var body: some View {
        Text("ALARMED FOOD ITEMS").bold()   // Screen Title
        Spacer()
        
        VStack {
            List { // Displays list of items whose expiry date is near
                Section(header: Text("ITEM 1")) {
                    Text("Expires on 06-12-2022")
                    Text("Placed in refrigerator 2")
                }
                Section(header: Text("ITEM 2")) {
                    Text("Expires on 08-19-2021")
                    Text("Placed in Cupboard 1")
                }
                Section(header: Text("ITEM 3")) {
                    Text("Expires on 12-22-2022")
                    Text("Placed in Refrigerator 1")
                }
                Section(header: Text("ITEM 4")) {
                    Text("Expires on 10-02-2021")
                    Text("Placed in Cupboard 2")
                }
            }
          //Navigation to new page starts here
            NavigationLink(destination: AlertsNavig()) {
                Text("HELP!")
                    .frame(minWidth: 0, maxWidth: 120)
                    .padding()
                    .foregroundColor(.blue)
                                       
                    .cornerRadius(40)
            }
            
        }.background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
        // VStack ends here
    }
}
 
struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}
