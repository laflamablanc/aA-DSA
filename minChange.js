// Recursive

function minChangeRecursive(coins, amount){
    if (amount == 0) return 0
    let numCoins = []
    coins.forEach(coin => {
        if (coin <= amount) {
            numCoins.push(minChangeRecursive(coins, amount-coin)+1)
        }
        
    })
    return Math.min(...numCoins)
}


// Memoization

function minChangeMemo(coins, amount, memo = {}){
    if (amount in memo) return memo[amount]
    if (amount == 0) return 0
    let numCoins = []
    coins.forEach(coin => {
        if (coin <= amount) {
            numCoins.push(minChangeRecursive(coins, amount-coin, memo)+1)
        }
        
    })
    
    memo[amount] = Math.min(...numCoins)
    return memo[amount]
}

// Tabulation

function minChangeTable(coins, amount){
    let table = new Array(amount+1).fill(Infinity)
    table[0] = 0
    coins.forEach(coin => {
        for(let amt=0; amt<table.length; amt++){
            if (amt - coin >= 0){
                table[amt] = Math.min(table[amt - coin] + 1, table[amt])
            }
        }
    })
    console.log(table)
    return table[amount]
}

coins = [1, 5, 10]
amount = 87

console.log(minChangeTable(coins,amount))
