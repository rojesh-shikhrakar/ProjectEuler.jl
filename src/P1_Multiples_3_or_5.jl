
"""If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000."""

function sum_multiples_3_5(n::Int)
    multiples3or5 = union(3:3:n-1 , 5:5:n-1)
    return sum(multiples3or5)
end

@assert sum_multiples_3_5(10) ==23

@show sum_multiples_3_5(1000)

# Oneliner and faster
@show sum([i for i in 1:999 if i%3==0 || i%5 ==0]);

