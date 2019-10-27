
function makepathto(goalnode)
    paths = []
    next_node = goalnode
    while next_node != nothing
        t = (next_node.i, next_node.j)
        pushfirst!(paths,t)
        next_node = next_node.predecessor
    end
    return paths
end
