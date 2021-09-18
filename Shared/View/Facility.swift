// Facility.swift
// MARK: SOURCE
// https://www.hackingwithswift.com/books/ios-swiftui/binding-an-alert-to-an-optional-string

// MARK: - LIBRARIES -

import SwiftUI



struct Facility {
    
    // MARK: - STATIC METHODS
    
    static func createIcon(for facility: String)
    -> some View {
        
        let icons: Dictionary<String, String> = [
            
            "Accommodation": "house",
            "Beginners": "1.circle",
            "Cross-country": "map",
            "Eco-friendly": "leaf.arrow.circlepath",
            "Family": "person.3"
        ]
        
        
        if let _sfSymbolName = icons[facility] {
            let image = Image(systemName: _sfSymbolName)
                .accessibility(label: Text(facility))
                .foregroundColor(.secondary)        
            return image
        } else {
            fatalError("Unknown facility type: \(facility)")
        }
    }
    
    
    static func createAlert(for facility: String)
    -> Alert {
        
        let alertMessages: Dictionary<String, String> = [
            
            "Accommodation": "This resort has popular on-site accommodation.",
            "Beginners": "This resort has lots of ski schools.",
            "Cross-country": "This resort has many cross-country ski routes.",
            "Eco-friendly": "This resort has won an award for environmental friendliness.",
            "Family": "This resort is popular with families."
        ]
        
        
        if let _alertMessage = alertMessages[facility] {
            return Alert(title: Text(facility),
                         message: Text(_alertMessage))
        } else {
            fatalError("Unknown facility type: \(facility)")
        }
    }
}
