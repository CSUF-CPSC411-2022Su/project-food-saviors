
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
       
            Text("Alerts!")
        Spacer()
           
            VStack {
        
                Text("Item 1").bold()
                HStack{
                Text("Expires on 2022-02-12")
                }
                HStack{
                Text("It is at Cupboard 2")
                }
                Text("Item 2").bold()
                HStack{
                    Text("Expires on 2022-05-18")
                }
                HStack{
                    Text("It is at Refrigerator 2")
                }
                
                Text("Item 3").bold()
                HStack{
                Text("Expires on 2022-02-12")
                }
                HStack{
                Text("It is at Cupboard 1")
                }
                Text("Item 4").bold()
                HStack{
                    Text("Expires on 2020-10-08")
                }
                HStack{
                    Text("It is at Refrigerator 1")
                }
            
                Text("Item 5").bold()
                HStack{
                Text("Expires on 2022-02-19")
                }
                HStack{
                Text("It is at Cupboard 3")
                }
                Text("Item 6").bold()
                HStack{
                    Text("Expires on 2021-12-05")
                }
                HStack{
                    Text("It is at Refrigerator 3")
                }
    }
}
}
struct AlertsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}

