//
//  Brain.swift
//  Atbash
//
//  Created by Komari Herring on 8/29/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import Foundation


class TheBrain
{
    let alphabetDict = ["a" : "z",
                        "b" : "y",
                        "c" : "x",
                        "d": "w",
                        "e": "v",
                        "f" : "u",
                        "g" : "t",
                        "h": "s",
                        "i" : "r",
                        "j" : "q",
                        "k" : "p",
                        "l": "o",
                        "m" : "n",
                        "n" : "m",
                        "o": "l",
                        "p" : "k",
                        "q" : "j",
                        "r" : "i",
                        "s" : "h",
                        "t" : "g",
                        "u" : "f",
                        "v" : "e",
                        "w" : "d",
                        "x" : "c",
                        "y" : "b",
                        "z" : "a",
                        "A" : "Z",
                        "B" : "Y",
                        "C" : "X",
                        "D": "W",
                        "E": "V",
                        "F" : "U",
                        "G" : "T",
                        "H": "S",
                        "I" : "R",
                        "J" : "Q",
                        "K" : "P",
                        "L": "O",
                        "M" : "N",
                        "N" : "M",
                        "O": "L",
                        "P" : "K",
                        "Q" : "J",
                        "R" : "I",
                        "S" : "H",
                        "T" : "G",
                        "U" : "F",
                        "V" : "E",
                        "W" : "D",
                        "X" : "C",
                        "Y" : "B",
                        "Z" : "A",
                        " " : " ",
                        "/" : "/"]
    
    
    
    
    
    func Translate(wordTranslation: String) -> String
    {
        
        var result = [String]()
        var arrayOfLetters = Array(wordTranslation.characters)
        
        
        for index in 0..<arrayOfLetters.count
        {
            let chr = "\(arrayOfLetters[index])"
            if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") ) {
                result.append(chr)
            }
            else
            {
                let charToEncode = alphabetDict["\(arrayOfLetters[index])"]
                result.append(charToEncode!)
            }
        }
        
        
        let newStringEncoded = result.joined(separator: "")
        
        
        return newStringEncoded
        
        
    }
    
    
    func decodeText(wordToDecode: String) -> String
    {
        var result2 = [String]()
        var array2 = Array(wordToDecode.characters)
        
        for index in 0..<array2.count
        {
            let chr = "\(array2[index])"
            if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") ) {
                result2.append(chr)
            }
            else
            {
                let charToDecode = alphabetDict["\(array2[index])"]
                result2.append(charToDecode!)
            }
        }
        
        let newStringDecoded = result2.joined(separator: "")
        
        
        return newStringDecoded
        
    }
    
    
    
}
