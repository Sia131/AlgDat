function searchtree(root, dna)
    count = 0
    for i = 1:length(dna)
        if haskey(root.children,dna[i])
            root = root.children[dna[i]]
            count += 1
        end
    end
    if count == length(dna)
        return root.count
    else
        return 0
    end
end
