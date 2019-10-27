mutable struct Node
    i::Int
    j::Int
    floor::Bool
    neighbors::Array{Node}
    color::Union{String,Nothing}
    distance::Union{Int,Nothing}
    predecessor::Union{Node,Nothing}
end
Node(i, j, floor=true) = Node(i, j, floor, [], nothing, nothing, nothing)



function mazetonodelist(maze)
    nodearray = Array{Node}(undef, size(maze, 1), size(maze, 2))
    node_list = []
    dr = [-1 , 1, 0, 0]
    dc = [0, 0, 1, -1]

    for i in 1:size(maze, 1)
        for j in 1:size(maze, 2)
            if maze[i,j] == 1
                nodearray[i,j] = Node(i, j, true, [], "WHITE", nothing, nothing)
            else
                nodearray[i,j] = Node(i , j , false, [] ,"WHITE", nothing, nothing)
            end

        end
    end

    for i in 1:size(maze, 1)
        for j in 1:size(maze, 2)
            if nodearray[i,j].floor == true
                for k = 1:4
                    row = i + dr[k]
                    col = j + dc[k]
                    if (0 < row <= size(maze, 1)) && (0 < col <= size(maze, 2))
                        if nodearray[row, col].floor == true
                            push!(nodearray[i,j].neighbors,nodearray[row,col])
                        end
                    end
                end
                push!(node_list,nodearray[i,j])
            end
        end
    end
    return node_list
end
