
function mincoins(coins, value)
    inf = typemax(Int)
    is_greedy = usegreed(coins)
    if is_greedy == true
        return mincoinsgreedy(coins, value)
    else
        memo = fill(Nothing, value + 1)
        return recursion(coins, value, memo)
    end
end

function recursion(coins, value, memo)
    if memo[value + 1] == Nothing
        if value > 0
            temp = []
            for i = 1:length(coins)
                if coins[i] <= value
                    push!(temp, 1 + recursion(coins,value-coins[i],memo))
                end
            end
            return memo[value + 1] = minimum(temp)
        else
            return memo[value + 1] = 0
        end
    else
        return memo[value + 1]
    end
end

coins = [1000 500 100 20 5 1]
value = 1226
memo = fill(0, value + 1)
#print(memo)

number_of_coins = recursion(coins, value,memo)
print(number_of_coins)
