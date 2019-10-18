
function mincoins(coins, value)
    inf = typemax(Int)
    is_greedy = usegreed(coins)
    if is_greedy == true
        return mincoinsgreedy(coins, value)
    end
end

function recursion(coins, value, memo)
    temp = []
    if value > 0
        for i = 1:length(coins)
            if coins[i] <= value
                push!(temp, 1 + recursion(coins,value-coins[i]))
            end
        end
        return minimum(temp)
    else
        return 0
    end
end

coins = [4 2 1]
value = 8

number_of_coins = recursion(coins, value)
print(number_of_coins)
