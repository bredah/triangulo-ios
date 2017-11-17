//
//  Regex.swift
//  triangulo-ios
//
//  Created by Henrique Breda on 8/26/16.
//  Copyright © 2016 H Breda. All rights reserved.
//

import Foundation

class Regex {
    let internalExpression: NSRegularExpression
    let pattern: String
    
    init(_ pattern: String) {
        self.pattern = pattern
        self.internalExpression = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    }
    
    func test(input: String) -> Bool {
        let matches = self.internalExpression.matches(in: input, options: [], range:NSMakeRange(0, input.utf8.count))
        return matches.count > 0
    }
}
