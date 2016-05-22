/// Swift Migrator:
///
/// This file contains one or more places using either an index
/// or a range with ArraySlice. While in Swift 1.2 ArraySlice
/// indices were 0-based, in Swift 2.0 they changed to match the
/// the indices of the original array.
///
/// The Migrator wrapped the places it found in a call to the
/// following function, please review all call sites and fix
/// incides if necessary.
@available(*, deprecated=2.0, message="Swift 2.0 migration: Review possible 0-based index")
private func __reviewIndex__<T>(value: T) -> T {
    return value
}

//
//  StringMaster.swift
//  String Algorithms
//
//  Created by Reza Shirazian on 2015-06-08.
//  Copyright (c) 2015 Reza Shirazian. All rights reserved.
//

import Foundation

public class StringMaster: StringMastering {

    public func reverseCharacters(string: String) -> String {
        var characters = Array(string.characters)
        var result = [Character]()

        for var index = characters.count-1 ; index >= 0; index-- {
            result.append(characters[index])
        }
        return String(result)
    }

    public func reverseCharactersInPlace(string: String) -> String {
        var characters = Array(string.characters)
        for var index = 0; index < characters.count/2; index++ {
            let temp = characters[index]
            characters[index] = characters[characters.count-1 - index]
            characters[characters.count-1 - index] = temp
        }

        return String(characters)

    }

    public func reverseWords(string: String) -> String {
        var characters = Array(string.characters)
        var buffer = [Character]()
        var stack = [String]()

        for var index = 0; index < characters.count; index++ {
            if characters[index] == " " {
                stack.append(String(buffer))
                buffer = [Character]()
            } else {
                buffer.append(characters[index])
            }
        }

        stack.append(String(buffer))

        var result = String()

        for var index = stack.count-1; index >= 0; index-- {
            result = result + " " + stack[index]
        }

        return result
    }

    public func reverseWordsInPlace(string: String) -> String {
        var characters = Array(string.characters)
        for var index = 0; index < characters.count/2; index++ {
            let temp = characters[index]
            characters[index] = characters[characters.count-1 - index]
            characters[characters.count-1 - index] = temp
        }

        var i = 0
        var j = 0
        var base = 0
        var done = false

        while !done {

            while j < characters.count && characters[j] != " " {
                j++
            }

            for ; i <= base+(((j-1)-i)/2); i++ {
                let temp = characters[i]
                characters[i] = characters[(j - 1  - i) + base]
                characters[(j - 1 - i) + base] = temp
            }

            while j < characters.count && characters[j] == " " {
                j++
            }

            i = j
            base = j

            if j >= characters.count - 1 {
                done = true
            }
        }

        return String(characters)


    }

    public func reverseWordsBasedOnSeparator(string: String, separator: Character) -> String {
        var characters = Array(string.characters)
        var buffer = [Character]()
        var stack = [String]()

        for var index = 0; index < characters.count; index++ {
            if characters[index] == separator {
                stack.append(String(buffer))
                buffer = [Character]()
            } else {
                buffer.append(characters[index])
            }
        }
        stack.append(String(buffer))

        var result = String()

        for var index = stack.count-1; index >= 0; index-- {
            result = result + String(separator) + stack[index]
        }

        return result

    }

    public func isPalindrome(string: String, ignoreCase: Bool) -> Bool {
        var characters = Array(string.lowercaseString.characters)

        for var index = 0 ; index < (characters.count - 1)/2; index++ {
            if characters[index] != characters[characters.count-1 - index] {
                return false
            }
        }
        return true

    }

    public func areAnagrams(firstString: String, secondString: String) -> Bool {
        var hashForFirstString = Dictionary<Character, Int>()
        var hashForSecondString = Dictionary<Character, Int>()

        var firstStringCharacters = Array(firstString.characters)
        var secondStringCharacters = Array(secondString.characters)

        if firstStringCharacters.count != secondStringCharacters.count {
            return false
        }

        for index in 0..<firstStringCharacters.count {
          if let count = hashForFirstString[firstStringCharacters[index]] {
            hashForFirstString[firstStringCharacters[index]] = count + 1
          } else {
            hashForFirstString[firstStringCharacters[index]] = 1
          }

          if let count = hashForSecondString[secondStringCharacters[index]] {
            hashForSecondString[secondStringCharacters[index]] = count + 1
          } else {
            hashForSecondString[secondStringCharacters[index]] = 1
          }
        }

        for key in hashForFirstString.keys {
            if hashForFirstString[key] != hashForSecondString[key] {
                return false
            }
        }

        return true
    }

    public func areAnagramsUseSort(firstString: String, secondString: String) -> Bool {
        var firstStringCharacters = Array(firstString.characters)
        var secondStringCharacters = Array(secondString.characters)

        if firstStringCharacters.count != secondStringCharacters.count {
            return false
        }

        firstStringCharacters.sortInPlace({$0 > $1})
        secondStringCharacters.sortInPlace({$0 > $1})

        for var index = 0; index < firstStringCharacters.count; index++ {
            if firstStringCharacters[index] != secondStringCharacters[index] {
                return false
            }
        }

        return true

    }

    public func returnDuplicateCharacters(string: String) -> [Character] {
        let characters = Array(string.characters)
        var hash = Dictionary<Character, Int>()
        var result = [Character]()

        for character in characters {
            if let alreadySeenIt = hash[character] {
                hash[character] = alreadySeenIt + 1
            } else {
                hash[character] = 1
            }
        }

        for key in hash.keys {
            if hash[key] > 1 {
                result.append(key)
            }
        }

        return result
    }



    public func returnCharactersRepeated(string: String, repeatedCount: Int) -> [Character] {
        let characters = Array(string.characters)
        var hash = Dictionary<Character, Int>()
        var result = [Character]()

        for character in characters {
            if let alreadySeenIt = hash[character] {
                hash[character] = alreadySeenIt + 1
            } else {
                hash[character] = 1
            }
        }

        for key in hash.keys {
            if hash[key] == repeatedCount {
                result.append(key)
            }
        }

        return result
    }

    public func returnUniqueCharacters(string: String) -> [Character] {
        let characters = Array(string.characters)
        var hash = Dictionary<Character, Int>()
        var result = [Character]()

        for character in characters {
            if let alreadySeenIt = hash[character] {
                hash[character] = alreadySeenIt + 1
            } else {
                hash[character] = 1
            }
        }

        for key in hash.keys {
            if hash[key] == 1 {
                result.append(key)
            }
        }

        return result
    }

    public func returnFirstNonRepeatedCharacter(string: String) -> Character? {
        var characters = Array(string.characters)
        var hash = Dictionary<Character, (Int, Int)>()


        for var index = 0; index < characters.count; index++ {
            if let alreadySeenIt = hash[characters[index]] {
                hash[characters[index]] = (alreadySeenIt.0 + 1, alreadySeenIt.1)
            } else {
                hash[characters[index]] = (1, index)
            }
        }

        var minIndex = characters.count + 1

        for key in hash.keys {
            if let character = hash[key] {
                if character.0 == 1 {
                    minIndex = min(minIndex, character.1)
                }
            }
        }

        if minIndex == characters.count + 1 {
            return nil
        } else {
            return characters[minIndex]
        }
    }

    public func countOccuranceOfCharacter(string: String, character: Character) -> Int {
        let characters = Array(string.characters)
        var result = 0

        for char in characters {
            if char == character {
                result++
            }
        }

        return result
    }

    public func countOccuranceOfCharacterUsingFilter(string: String, character: Character) -> Int {
      return Array(string.characters).filter({$0 == character}).count
    }

    public func returnAllPermutation(string: String) -> [String] {
        let set = generatePerm(string)
        var result = [String]()
        for item in set {
            result.append(item)
        }
        return result
    }

    public func contains(string: String, containingString: String) -> Bool {
        var characters = Array(string.characters)
        var searchedCharacters = Array(containingString.characters)

        if searchedCharacters.count > characters.count {
            return false
        }

        for var i = 0; i < characters.count - 1 ; i++ {
            if characters[i] == searchedCharacters[0] {
                var found = true
                for var x = 0, y = i; x < searchedCharacters.count - 1; x++, y++ {
                    if characters[y] != searchedCharacters[x] {
                        found = false
                        break
                    }
                }
                if found {
                    return true
                }
            }
        }
        return false
    }

    public func returnMostCommonCharacter(string: String) -> Character {
        var characters = Array(string.characters)
        var hash = Dictionary<Character, Int>()
        var maxCharacter = characters[0]
        var maxCount = 0


        for character in characters {
            if let alreadySeenCharacterCount = hash[character] {
                hash[character] = alreadySeenCharacterCount + 1
                if hash[character] > maxCount {
                    maxCharacter = character
                    maxCount = hash[character]!
                }

            } else {
                hash[character] = 1
            }
        }

        return maxCharacter

    }

    public func removeCharacter(string: String, character: Character) -> String {
        let characters = Array(string.characters)
        var result = [Character]()

        for characterInString in characters {
            if characterInString != character {
                result.append(characterInString)
            }
        }

        return String(result)
    }

    public func removeCharacterUsingFilter(string: String, character: Character) -> String {
        return String(Array(string.characters).filter({$0 != character}))
    }

    public func removeCharacterInPlace(string: String, character: Character) -> String {

        var characters = Array(string.characters)
        var i = 0
        var j = 0
        var totalCharacters = characters.count

        var done = false

        while i < characters.count && !done {
            while characters[i] == character && !done {
                if i == totalCharacters {
                    done = true
                    break
                }

                totalCharacters--
                j = i
                while j < totalCharacters {
                    characters[j] = characters[j+1]
                    j++
                }
            }
            i++
        }

        return String(characters[0..<totalCharacters])

    }

    public func returnLongestPalindrome(string: String) -> String {
        var characters = Array(string.characters)

        var longest = (0, 0)

        for var i = 0 ; i < characters.count; i++ {
            var d = 0
            while i+d < characters.count && i-1-d >= 0 && characters[i-1-d] == characters[i+d] {
                d++
            }
            if longest.1 < d {
                longest.0 = i
                longest.1 = d
            }
        }
        return String(characters[(longest.0-longest.1)...(longest.0+longest.1-1)])
    }

    public func rotateStringLeftBy(string: String, rotateBy: Int) -> String {
        var characters = Array(string.characters)
        let rotateBy = rotateBy % characters.count

        var newTailCharacter = characters[0..<rotateBy]

        for var i = 0; i < characters.count - rotateBy; i++ {
            characters[i] = characters[i + rotateBy]
        }
        var j = 0
        for var i = characters.count - rotateBy; i < characters.count; i++, j++ {
            characters[i] = newTailCharacter[j]
        }

        return String(characters)

    }

    public func rotateStringRightBy(string: String, rotateBy: Int) -> String {
        var characters = Array(string.characters)
        let rotateBy = rotateBy % characters.count

        var newHead = Array(characters[characters.count - rotateBy..<characters.count])

        for var i = characters.count - 1; i >= rotateBy; i-- {
            characters[i] = characters[i - rotateBy]
        }

        for index in 0..<rotateBy {
          characters[index] = newHead[index]

        }

        return String(characters)
    }


    private func generatePerm(input: String) -> Set<String> {
        return generatePerm("", input: input)
    }

    private func generatePerm(prefix: String, input: String) -> Set<String> {
        let prefixCharacters = Array(prefix.characters)
        var inputCharacters = Array(input.characters)
        var result = Set<String>()
        let n = inputCharacters.count

        if n == 0 {
            result.insert(prefix)
        } else {
            for var i = 0; i < n; i++ {
                let prefixAndCharacterAtIndex = String(prefixCharacters) + String(inputCharacters[i])
                let subStringBeforeIndex = String(inputCharacters[0..<i])
                let subStringAfterIndex =  String(inputCharacters [i+1..<n])
                result = result.union(generatePerm(prefixAndCharacterAtIndex, input: subStringBeforeIndex + subStringAfterIndex))
            }
        }

        return result
    }
}
