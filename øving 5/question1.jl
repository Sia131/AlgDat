
function dnasimilarity(s1, s2)
    count = 0
    for i = 1:length(s1)
        if s1[i] == s2[i]
            count += 1
        end
    end
    return count
end

s1 = "AAAA"
s2 = "BBBB"

count = dnasimilarity(s1,s2)
