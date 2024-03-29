# rsk.jl

function rsk(seq)
## Input: seq ... a sequence of whole numbers (all >= 0)
## Output: A partition P capturing large scale sorting structure

n = length(seq)
P = NaN*ones(n,n)

for i=1:n
    new = seq[i]

    for j=1:n
        k = 1
        while P[k,j] <= new
            k+=1
        end
        old = P[k,j]
        P[k,j] = new
        new = old
        if isnan(new)
            break
        end
    end
end

    return P
end
