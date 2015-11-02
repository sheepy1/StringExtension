//
//  Extension.swift
//  StringExtension
//
//  Created by Sheepy on 15/11/2.
//  Copyright © 2015年 Sheepy. All rights reserved.
//

import Foundation

extension String {
    subscript(index: Int) -> Character {
        let stringIndex = index >= 0 ? startIndex.advancedBy(index) : endIndex.advancedBy(index)
        return self[stringIndex]
    }
    
    subscript(range: Range<Int>) -> String {
        let start = startIndex.advancedBy(range.first!)
        let end = startIndex.advancedBy(range.last!)
        return substringWithRange(start ... end)
    }
    
    mutating func insert(character: Character, atIndex i: Int) {
        let index = startIndex.advancedBy(i)
        insert(character, atIndex: index)
    }
    
    mutating func removeAtIndex(i: Int) {
        removeAtIndex(startIndex.advancedBy(i))
    }
    
    //String和Character都是默认不可变的
    func reverse() -> String {
        var result = ""
        let count = self.characters.count
        for i in 0 ..< count {
            result += String(self[count-1-i])
        }
        return result
    }
    
//    mutating func reverse() {
//        let count = self.characters.count
//        for i in 0 ..< count/2 {
//            (self[i], self[-1-i]) = (self[-1-i], self[i])
//        }
//    }
}