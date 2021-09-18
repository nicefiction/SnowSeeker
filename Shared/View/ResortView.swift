// ResortView.swift

// MARK: - LIBRARIES -

import SwiftUI



struct ResortView: View {
    
    // MARK: - PROPERTY WRAPPERS
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    
    
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
//                    Text(resort.facilities.joined(separator: ", "))
                    Text(ListFormatter.localizedString(byJoining: resort.facilities))
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
            }
            .navigationBarTitle(Text(resort.country),
                                displayMode: .inline)
        }
    }
}





// MARK: - PREVIEWS -

struct ResortView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ResortView(resort: Resort.example)
    }
}
