## Array of$tools
$tools = [
    {name: "Teeth", income:1, price: 0},
    {name: "Rusty Scissors", income:5, price: 5},
    {name: "Push Mower", income:50, price: 25},
    {name: "Fancy Mower", income:100, price: 250},
    {name: "Starving Students", income:250, price: 500},
]

## Game State
$current_tool = 0
$money = 0


## start function should
# - puts a message introducing the game and options
# - take gets.chomp from the user (1 = buy 2 = mow)
# - return that gets.chomp
# This function does NOT have a test
def start()
    puts("Welcome to Landscaper! Navigate the post-apocalyptic landscape of the former United States by mowing grass. Spend the day mowing and earn currency with which to buy equipment in order to earn slightly more currency while spending your day mowing. Always be mowing! Which of the only two options you now have in life would you like to take? \n\n 1. Mow Grass \n 2. Buy Equipment")
    return gets.chomp 

end


## selection function should
# - if user gets.chomp is 1, run the mow function
# - if user gets.chomp is 2, run the upgrade function
# - if anything else, text warning
def selection(select)
    puts select
    if select == "1"
        puts("hitting mow")
        mow()
    elsif select == "2"
        puts("hitting upgrade")
        upgrade()
    else 
        puts ("Mow and buy. Mow and buy. That's all you can do. Select again.")
    end
end


## mow function
# to refer to global variables look up defining variables with $
# - should up income based on $current_tool &$tools list
# - puts message
def mow()
    money = $money + tools[$current_tool][:income]
end

## upgrade function
# - check to see if $money is enough to buy the next tool
# - if so upgrades tool by incrementing $current_tool and running win_conditions
# - if not, puts message saying $money isn't enough
def upgrade()

end



## the win_conditions functions
# check if the current tool is the team and $money is 1000
# If true, puts a win message then return true
# If false, puts the players $money total and tool and run game_loop()
def win_conditions()

end





## GAME LOOP

def game_loop()
    ## get users gets.chomp
    select = start()
    ## run a particular action
    selection(select)
    ## check win conditions and start again
    win_conditions()
end