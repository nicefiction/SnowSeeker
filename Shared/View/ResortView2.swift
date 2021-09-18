// ResortView2.swift

// MARK: - LIBRARIES -

import SwiftUI



struct ResortView2: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    // @State private var selectedFacility: String?
    @State private var selectedFacility: Facility2?
    
    
    
    // MARK: - PROPERTIES
    
    let resort: Resort
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        ScrollView {
            HStack {
                if horizontalSizeClass == .compact {
                    Spacer()
                    VStack(alignment: .leading) { SkiDetailsView(resort: resort) }
                    VStack(alignment: .leading) { ResortDetailsView(resort: resort) }
                    Spacer()
                } else {
                    SkiDetailsView(resort: resort)
                    Spacer()
                        .frame(height: 0)
                    ResortDetailsView(resort: resort)
                }
            }
            .font(.headline)
            .foregroundColor(.secondary)
            VStack(alignment: .leading,
                   spacing: 0) {
                Image(decorative: resort.id)
                    .resizable()
                    .scaledToFit()
                Group {
                    Text(resort.description)
                        .padding(.vertical)
                    HStack {
                        ForEach(resort.facilityTypes) { (facility: Facility2) in
                            facility.icon
                                .font(.title)
                                .onTapGesture {
                                    selectedFacility = facility
                                }
                        }
                    }
                    .padding(.vertical)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle(Text(resort.country),
                                displayMode: .inline)
        }
        .alert(item: $selectedFacility) { (facility: Facility2) in
            facility.alert
        }
    }
}





// MARK: - PREVIEWS -

struct ResortView2_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ResortView2(resort: Resort.example)
    }
}
