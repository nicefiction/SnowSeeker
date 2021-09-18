// Resort.swift

// MARK: - LIBRARIES -

import Foundation


struct Resort: Codable,
               Identifiable {
    
    // MARK: - NESTED TYPES
    
//    enum Facility: String {
//
//        case family = "Family"
//        case crossCountry = "Cross-country"
//        case accomodation = "Accommodation"
//        case ecoFriendly = "Eco-friendly"
//    } // OLIVIER
    
    
    
    // MARK: - STATIC PROPERTIES
    
    static let decodedResorts: Array<Resort> = Bundle.main.decode("resorts.json")
    static let example: Resort = decodedResorts[0]
    
    
    
    // MARK: - PROPERTIES
    
    let country: String
    let description: String
    let elevation: Int
    let facilities: Array<String>
    let id: String
    let imageCredit: String
    let name: String
    let price: Double
    let runs: Int
    let size: Int
    let snowDepth: Int
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var facilityTypes: Array<Facility2> {
        
        return facilities.map(Facility2.init)
    }
}
