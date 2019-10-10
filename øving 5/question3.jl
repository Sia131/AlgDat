#=
mutable struct Node
    children::Dict{Char,Node}
    count::Int
end
=#
function buildtree(dnasequences)
    root = Node()
    root.count = length(dnasequences)
    recursion(root, dnasequences, 1)
    return root
end

function recursion(base, list, depth)
    temp_list = ['A' 'C' 'T' 'G']
    for j = 1:length(temp_list)
        new_list = []
        count = 0
        for i = 1:length(list)
            if length(list[i]) >= depth && list[i][depth] == temp_list[j]
                push!(new_list,list[i])
                count += 1
            end
        end
        if count > 0
            new_node = Node()
            new_node.count = count
            base.children[temp_list[j]] = new_node
            recursion(new_node, new_list, depth + 1)
        end
    end
end
