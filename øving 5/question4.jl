#=
function brokendnasearch(root, dna, i = 1)
    count = 0
    if i <= length(dna)
        if haskey(root.children, dna[i])
            count += brokendnasearch(root.children[dna[i]], dna, i + 1)
            return count
        else
            return 0
        end
    elseif i == length(dna) + 1
        return root.count
    else
        return 0
    end
end

=#



function brokendnasearch(root, dna, i = 1)
    count = 0
    if i <= length(dna)
        if haskey(root.children, dna[i])
            count = brokendnasearch(root.children[dna[i]], dna , i + 1)
            return count

        elseif dna[i] == '?'
            for i = collect(keys(root.children))
                count += brokendnasearch(root.children[i], dna, i + 1)
            end
            return count

        else
            return 0
        end
    elseif i == length(dna) + 1
        return root.count
    end
end
