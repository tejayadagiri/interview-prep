DSA

Question: Binary Search.

Input

arr = [1,3,5,7,9]
target = 7

Output

3

solution:

def binary_search(arr, target):
    left = 0
    right = len(arr)-1

    while left <= right:
        mid = (left + right)//2

        if arr[mid] == target:
            return mid

        elif arr[mid] < target:
            left = mid + 1

        else:
            right = mid - 1

    return -1 
