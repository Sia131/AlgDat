function lislength(s)
    mls = zeros(Int, size(s))
    mls[1] = 1
    for i = 2:length(s)
        temp = [0]
        for j = 1:i-1
            if s[i] > s[j]
                push!(temp, mls[j])
            end
        end
        mls[i] = maximum(temp) + 1
    end
    return mls # Returnerer det største tallet i listen
end

s = [5 2]
len = lislength(s)
print(len)
