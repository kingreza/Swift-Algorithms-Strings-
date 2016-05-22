[*Note: when I first wrote this I was fairly new to Swift and its conventions. Many of the solutions provided in this example come with a strong C#/Java look and feel. Although they are not technically incorrect, they may not be the 'swift way' of doing things*]

# String-Swift 
String manipulation algorithms in Swift [Currently using Swift 2.0]

## Details
The following project implements a few common (and some not so common) string manipulation algorithms in swift. You probably have seen some of these implementations in a tutorial or during a technical interview. Anyone wishing to sharpen their swift skills or get some practice before an interview could find this useful.  

These algorithms do not use built in functionalities for string manipulation. Everything is built from the ground up using basic swift types and data structures.

All functions (except for one) are atomic in nature and are not dependant on each other. You can copy and paste any of them, and they work as expected.

If a problem can be solved using one of Swift's higher order functions like map, filter or reduce, then the algorithm is implemented twice: Once with the basic solution and once with higher functions. Although there is room to expand on this currently, only the most evident algorithms have the two implementations.

Generally I will pick readability and simplicity over anything else. The goal is to make these easy to step through and understand. 


_**Algorithms implemented in this project:**_

+ Reverse characters in a string 
+ Reverse characters in a string without using extra space (reverse in place)
+ Reverse words in a string
+ Reverse words in a string without using extra space (reverse in place)
+ Reverse words in a string where words are separated by a specific character
+ Is a string a palindrome
+ Are two string anagrams
+ Are two string anagrams using sort
+ Return an array of all duplicated characters
+ Return an array of all characters repeated n times
+ Return all unique characters
+ Return first non repeated character in a string
+ Count number of occurrences of a character in a string
+ Count number of occurrences of a character in a string using higher functions (filter)
+ Return all permutations of a string (not an atomic function)
+ Is a string a substring of another (naive implementation) 
+ Return the most common character
+ Remove a specific character from string
+ Remove a specific character from a string using higher functions (filter)
+ Remove a specific character from a string in place 
+ Return longest palindrome in string 
+ Rotate string left by n characters 
+ Rotate string right by n characters  
