//
//  Extensions.swift
//  Mupee Streaming
//
//  Created by Stefanus Hermawan Sebastian on 13/07/22.
//

import Foundation


extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
