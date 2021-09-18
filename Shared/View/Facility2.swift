// Facility2.swift

// MARK: - LIBRARIES -

import SwiftUI

struct Facility2: Identifiable {
    
    // MARK: - PROPERTIES
    
    let id: UUID = UUID()
    let name: String
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var icon: some View {
        
        let icons: Dictionary<String, String> = [
            
            "Accommodation": "house",
            "Beginners": "1.circle",
            "Cross-country": "map",
            "Eco-friendly": "leaf.arrow.circlepath",
            "Family": "person.3"
        ]
        
        
        if let _sfSymbolName = icons[name] {
            let image = Image(systemName: _sfSymbolName)
                .accessibility(label: Text(name))
                .foregroundColor(.secondary)
            
            return image
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }

    
    var alert: Alert {
        
        let alertMessages: Dictionary<String, String> = [
            
            "Accommodation": "This resort has popular on-site accommodation.",
            "Beginners": "This resort has lots of ski schools.",
            "Cross-country": "This resort has many cross-country ski routes.",
            "Eco-friendly": "This resort has won an award for environmental friendliness.",
            "Family": "This resort is popular with families."
        ]
        
        if let _alertMessage = alertMessages[name] {
            
            return Alert(title: Text(name),
                         message: Text(_alertMessage))
        } else {
            fatalError("Unknown facility type: \(name)")
        }
    }
}
