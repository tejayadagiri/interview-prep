 
DSA: Find the Maximum Element in an Array

Problem:
Given an array of integers, find the maximum element in it. Do this without using any built-in max() function - write the logic yourself.

Example Input:
arr = [3, 7, 2, 9, 4]

Example Output:
9

Solution:
def find_max(arr):
    max_val = arr[0]         
    for num in arr[1:]:       
        if num > max_val:     
            max_val = num      
    return max_val

if __name__ == "__main__":
    nums = [3, 7, 2, 9, 4]
    print("Array:", nums)
    print("Maximum:", find_max(nums))