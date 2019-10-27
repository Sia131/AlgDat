
function bfs!(nodes, start)
    # initialization
    for i = 1:length(nodes)
        nodes[i].color = "white"
    end
    start.color = "gray"
    start.distance = 0
    Q = []
    push!(Q, start)
    goal = nothing
    while !isempty(Q)
        u = popfirst!(Q)
        if isgoalnode(u)
            return u
        end
        if u.neighbors != nothing
            for v in u.neighbors
                if v.color == "white"
                    v.color = "gray"
                    v.distance = u.distance + 1
                    v.predecessor = u
                    push!(Q, v)
                end
            end
        end
        u.color = "black"
    end
    return goal
end
