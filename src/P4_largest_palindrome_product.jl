"""
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""

ispalindrome(a) =  string(a) == reverse(string(a))

## Bruteforce Method
n = 100:999
palindromes = []

for i = n
    for j = n
        ispalindrome(i*j) && push!(palindromes,i*j)
    end
end

findmax(palindromes)