// ResortView.swift

// MARK: - LIBRARIES -

import SwiftUI



struct ResortView: View {
    
    // MARK: - PROPERTIES
    
    let resort: Resort
    
    
    
    // MARK: - COMPUTED PROPERTIES
    
    var body: some View {
        
        ScrollView {
            HStack {
                Spacer()
                SkiDetailsView(resort: resort)
                ResortDetailsView(resort: resort)
                Spacer()
            }
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
