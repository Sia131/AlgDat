function cumulative(weights)
    dims = size(weights)
    new_matrix = fill(0, dims[1],dims[2])
    new_matrix[1,:] = weights[1,:]

    for i = 2:dims[1]
        for j = 1:dims[2]
            temp_array = []
            for k = j-1:j+1
                if 1<=k<=dims[2]
                    push!(temp_array,new_matrix[i-1,k])
                end
            end
            new_matrix[i,j] = weights[i,j] + minimum(temp_array)
        end
    end
    return new_matrix
end
