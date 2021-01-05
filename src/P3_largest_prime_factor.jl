"""
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""
# Running isprime will have to test prime each time it is called
# It might be better to generate a prime prime_sieve till the sqrt and check from reverse if the number is divisible.

function prime_sieve(n::Int)
    isprime = trues(n)
    isprime[1] = false

    for i in 2:isqrt(n)
        if isprime[i]
            for j in i^2:i:n
                isprime[j] = false
            end
        end
    end
    return filter(x -> isprime[x],1:n)
end

function largest_prime_factor(n)
    primes = prime_sieve(Int(trunc(√(n))))
    for prime in Iterators.reverse(primes)
        if n%prime == 0
            return prime
        end
    end
    return -1
end

@assert largest_prime_factor(13195) == 29
@show largest_prime_factor(600851475143)