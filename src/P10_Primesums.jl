"""

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""

function primesum(n::Int)
    isprime = trues(n)
    isprime[1] = false

    for i in 2:Int(trunc(√n))
        if isprime[i]
            for j in i^2:i:n
                isprime[j] = false
            end
        end
    end
    return sum(filter(x->isprime[x],1:n))
end

@assert primesum(10) == 17
@show primesum(2000000)