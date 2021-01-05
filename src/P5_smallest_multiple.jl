"""
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

ismultiple(x::Int,r::UnitRange) = all([x%i == 0 for i in r])

function smallestmutiple(nmin,nmax)
    r = collect(nmin:nmax)
    multiples = []  

    for i in eachindex(r)   # store only the common divisor
        t = r[i]
        t == 1 && continue
        push!(multiples,r[i])

        for j in i:length(r)
            if r[j] % t == 0 
                r[j] = r[j] / t
            end
        end
    end
    return prod(multiples)
end

@assert smallestmutiple(1,10) == 2520
@show smallestmutiple(1,20)