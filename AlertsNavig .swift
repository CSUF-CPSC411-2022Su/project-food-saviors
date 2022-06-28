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
            VStack {
                VStack {
                    Text(" You are in Alerts Help Screen").bold().font(.largeTitle) // Screen Title
                }.frame(height: geometry.size.height / 4)
                VStack {
                    Text(" The items currently available in the pantry are... ")
                    Text(" Item 1")
                    Text(" Item 2")
                    Text(" Item 3")
                    Text(" Item 4")

                }.frame(height: geometry.size.height / 4)
                // Displays various current present items in the pantry
                TabView {
                    Storage()
                        .tabItem {
                            Image(systemName: "plus")
                            Text("Storage")
                        }
                } // Created a new tab called Storage.
            }
        }
        // Implemeted geometryReader to adjust the sizes of the frame and text enclosed in it.
    }
}

struct AlertsNavig_Previews: PreviewProvider {
    static var previews: some View {
        AlertsNavig()
    }
}
