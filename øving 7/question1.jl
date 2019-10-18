
function usegreed(coins)
    is_greedy = 1
    for i = 2:length(coins)
        if coins[i - 1]%coins[i] != 0
            is_greedy = 0
        end
    end
    if is_greedy == 1
        return true
    else
        return false
    end
end
