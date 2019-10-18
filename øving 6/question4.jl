

function backtrack(pathweights)
    dims = size(pathweights)
    #=temp = argmin(pathweights[dims[1],:])
    path = []
    push!(path,(dims[1],temp[1]))
    =#
    base = dim[2] - temp

    
    for i = dims[1] - 1:-1:1
        if temp[1]== 1
            temp = argmin(pathweights[i,temp[1]:temp[1] + 1])
        elseif temp[1] == dims[2]
            temp = argmin(pathweights[i,temp[1] - 1:temp[1]])
        else
            temp = argmin(pathweights[i,temp[1] - 1:temp[1] + 1])
        end
        #push!(path,(i,temp[1]))
        println()
        print(+temp[1])


        #push!(path,temp)
    end

end

pathweight = [3 6 8 6 3; 10 9 11 10 6; 13 19 13 7 12; 23 17 10 8 9; 23 11 15 11 17]
path = backtrack(pathweight)
