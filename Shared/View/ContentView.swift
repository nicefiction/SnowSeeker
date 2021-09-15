//
//  ContentView.swift
//  Shared
//
//  Created by Olivier Van hamme on 11/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    let resorts: Array<Resort> = Bundle.main.decode("resorts.json")
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(resorts) { (resort: Resort) in
                    NavigationLink(destination: ResortView(resort: resort)) {
                        Image(resort.id)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60,
                                   height: 40)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.black,
                                            lineWidth: 1))
                        VStack(alignment: .leading) {
                            Text(resort.name)
                                .font(.headline)
                            Text("\(resort.runs) runs")
                                .foregroundColor(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Resorts")
            // .phoneOnlyStackNavigationView()
            WelcomeView()
        }
    }
}





// MARK: - EXTENSIONS -

extension View {
    
    func phoneOnlyStackNavigationView()
    -> some View {
        
        if UIDevice.current.userInterfaceIdiom == .phone {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        } else {
            return AnyView(self)
        }
    }
}





// MARK: - PREVIEWS -

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}
