//
//  main.swift
//  Strings
//
//  Created by Reza Shirazian on 2015-06-20.
//  Copyright (c) 2015 Reza Shirazian. All rights reserved.
//

import Foundation

var master = StringMaster()

print(master.rotateStringRightBy("abcdefghijklmnop", rotateBy: 2))
print(master.reverseCharacters("abcdefghijklmnop"))
print(master.reverseCharactersInPlace("abcdefghijklmnop"))
print(master.reverseWords("I am reversing this sentence one word at a time"))
print(master.reverseWordsInPlace("I am reversing this sentence one word at a time"))
print(master.reverseWordsBasedOnSeparator("I-am/reversing-this-sentence+one+word-at-a-time",
                                          separator: "-"))
print(master.isPalindrome("aaAbbbbbbaaa", ignoreCase: true))
print(master.areAnagrams("aaAbbbbbbaaa", secondString: "aaAaaabbbbbb"))
print(master.areAnagramsUseSort("aaAbbbbbbaaa", secondString: "aaAaaabbbbbb"))
print(master.returnDuplicateCharacters("aaAbbbddbbdfddsavdvxzbaaa"))
print(master.returnCharactersRepeated("aaAbbbddvbbdfddsavdvxzbaaa", repeatedCount: 3))
print(master.returnUniqueCharacters("aaAbbbddvbbdfddsavdvxzbaaa"))
print(master.returnFirstNonRepeatedCharacter("aaAbbbddvbbdfddsavdvxzbaaa"))
print(master.countOccuranceOfCharacter("aaAbbbddvbbdfddsavdvxzbaaa", character: "v"))
print(master.countOccuranceOfCharacterUsingFilter("aaAbbbddvbbdfddsavdvxzbaaa", character: "v"))
print(master.returnAllPermutation("swift"))
print(master.contains("I am reversing this sentence one word at a time", containingString: "word"))

print(master.returnMostCommonCharacter("aaAbbbddvbbdfddsavdvxzbaaa"))
print(master.removeCharacter("aaAbbbddvbbdfddsavdvxzbaaa", character:  "v"))
print(master.removeCharacterUsingFilter("aaAbbbddvbbdfddsavdvxzbaaa", character:  "v"))
print(master.removeCharacterInPlace("aaAbbbddvbbdfddsavdvxzbaaa", character:  "v"))
print(master.returnLongestPalindrome("aaasssdddd"))

print(master.rotateStringLeftBy("aaasssdddd", rotateBy:4))

print(master.rotateStringRightBy("aaasssdddd", rotateBy: 4))
