// Bundle+Decodable.swift

// MARK: - LIBRARIES -

import Foundation


extension Bundle {
    
    func decode<T: Decodable>(_ file: String)
    -> T {
        
        guard let _url = self.url(forResource: file,
                                  withExtension: nil)
        else { fatalError("Failed to locate \(file) in bundle.") }
        
        
        guard let _data = try? Data(contentsOf: _url)
        else { fatalError("Failed to load \(file) from bundle.") }
        
        
        let decoder = JSONDecoder()
        
        
        guard let _loadedData = try? decoder.decode(T.self,
                                                    from: _data)
        else { fatalError("Failed to decode \(file) from bundle.") }
        
        
        return _loadedData
    }
}
