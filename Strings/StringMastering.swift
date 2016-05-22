//
//  IStringMaster.swift
//  String Algorithms
//
//  Created by Reza Shirazian on 2015-06-08.
//  Copyright (c) 2015 Reza Shirazian. All rights reserved.
//

import Foundation

public protocol StringMastering {

    func reverseCharacters(string: String) -> String

    func reverseCharactersInPlace(string: String) -> String

    func reverseWords(string: String) -> String

    func reverseWordsInPlace(string: String) -> String

    func reverseWordsBasedOnSeparator(string: String, separator: Character) -> String

    func isPalindrome(string: String, ignoreCase: Bool) -> Bool

    func areAnagrams(firstString: String, secondString: String) -> Bool

    func areAnagramsUseSort(firstString: String, secondString: String) -> Bool

    func returnDuplicateCharacters(string: String) -> [Character]

    func returnCharactersRepeated(string: String, repeatedCount: Int) -> [Character]

    func returnUniqueCharacters(string: String) -> [Character]

    func returnFirstNonRepeatedCharacter(string: String) -> Character?

    func countOccuranceOfCharacter(string: String, character: Character) -> Int

    func countOccuranceOfCharacterUsingFilter(string: String, character: Character) -> Int

    func returnAllPermutation(string: String) -> [String]

    func contains(string: String, containingString: String) -> Bool

    func returnMostCommonCharacter(string: String) -> Character

    func removeCharacter(string: String, character: Character) -> String

    func removeCharacterUsingFilter(string: String, character: Character) -> String

    func removeCharacterInPlace(string: String, character: Character) -> String

    func returnLongestPalindrome(string: String) -> String

    func rotateStringLeftBy(string: String, rotateBy: Int) -> String

    func rotateStringRightBy(string: String, rotateBy: Int) -> String



}
