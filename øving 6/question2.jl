
s = [2 1 4 3 6 5]
mls = lislength(s)
print(mls)
function lis(s, mls)
    ml = maximum(mls)
    lis = zeros(Int, ml)
    for i = length(mls):-1:1
        if mls[i] == ml
            lis[ml] = s[i]
            ml = ml - 1
        end
    end
    return lis
end

li = lis(s, mls)
print(li)
