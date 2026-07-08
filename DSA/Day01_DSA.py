# Day 01: Reverse an array in-place
# Problem: Given an array, reverse it without using extra space
# Approach: Two-pointer technique - swap elements from both ends moving inward
# Time Complexity: O(n)
# Space Complexity: O(1)

def reverse_array(arr):
    left = 0
    right = len(arr) - 1
    
    while left < right:
        arr[left], arr[right] = arr[right], arr[left]
        left += 1
        right -= 1
    
    return arr

# Test
if __name__ == "__main__":
    nums = [1, 2, 3, 4, 5]
    print("Original:", nums)
    print("Reversed:", reverse_array(nums)) 
