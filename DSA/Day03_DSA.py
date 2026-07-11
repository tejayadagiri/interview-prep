DSA: Longest Substring Without Repeating Characters

Question: Given a string s, find the length of the longest substring without duplicate characters.

Example:
Input: s = "abcabcbb"
Output: 3
Explanation: "abc" has length 3, no repeated characters.

Answer:
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        seen = set()
        i = 0
        n = 0
        
        for j in range(len(s)):
            while s[j] in seen:
                seen.remove(s[i])
                i += 1
            
            seen.add(s[j])
            
            window_size = j - i + 1
            if window_size > n:
                n = window_size
        
        return n

Step by step:
1. seen holds the characters currently inside our window (no duplicates allowed).
2. j moves forward one character at a time across the string.
3. Before adding s[j], check if it is already in seen.
4. If it is a duplicate, shrink the window from the left (move i forward, 
   removing characters) until the duplicate is gone.
5. Add s[j] to seen once it's safe.
6. Calculate window size as j - i + 1, and update n if this is the biggest 
   window seen so far.
7. Return n at the end.

Key learning: This is the Sliding Window pattern - used whenever a problem 
asks for the longest/shortest substring or subarray that satisfies some 
condition. The window grows by moving j forward, and shrinks by moving i 
forward when the condition breaks.