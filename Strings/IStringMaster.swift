//
//  IStringMaster.swift
//  String Algorithms
//
//  Created by Reza Shirazian on 2015-06-08.
//  Copyright (c) 2015 Reza Shirazian. All rights reserved.
//

import Foundation

protocol IStringMaster{
    
    func ReverseCharacters(string: String) -> String;
    
    func ReverseCharactersInPlace(string: String) -> String;
    
    func ReverseWords(string: String) -> String;
    
    func ReverseWordsInPlace(string: String) -> String;
    
    func ReverseWordsBasedOnSeparator(string: String, separator: Character) -> String;
    
    func IsPalindrome(string: String, ignoreCase: Bool, ignoreSpace: Bool) -> Bool;
    
    func AreAnagrams(firstString: String, secondString: String) -> Bool;
    
    func AreAnagramsUseSort(firstString: String, secondString: String) -> Bool;
    
    func ReturnDuplicateCharacters(string: String) -> [Character];
    
    func ReturnCharactersRepeated(string: String, repeatedCount: Int) -> [Character];
    
    func ReturnUniqueCharacters(string: String) -> [Character];
    
    func ReturnFirstNonRepeatedCharacter(string: String) -> Character?;
    
    func CountOccuranceOfCharacter(string:String, character: Character) ->Int;
    
    func CountOccuranceOfCharacterUsingFilter(string:String, character: Character) ->Int
    
    func ReturnAllPermutation(string: String) -> [String];
    
    func Contains(string: String, containingString: String) -> Bool;
    
    func ReturnMostCommonCharacter(string: String) -> Character;
    
    func RemoveCharacter(string: String, character:Character) -> String;
    
    func RemoveCharacterUsingFilter(string: String, character:Character) -> String
    
    func RemoveCharacterInPlace(string: String, character:Character) -> String
    
    func ReturnLongestPalindrome(string: String) -> String;
    
    func RotateStringLeftBy(string: String, rotateBy: Int) -> String;
    
    func RotateStringRightBy(string: String, rotateBy: Int) -> String;
    
    
    
}
