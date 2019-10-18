

function mincoinsgreedy(coins, value)
    i = 1;
    number_of_coins = 0
    temp_value = value
    while i <= length(coins) && temp_value!=0
        while coins[i] <= temp_value
            number_of_coins += 1
            temp_value = temp_value - coins[i]
        end
        i += 1
    end
    return number_of_coins
end
