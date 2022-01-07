//Initialize the player
lastFrame = floor(image_index)

target_x = x
target_y = y
moving = false
depth = -99
image_speed = .3
swinging = false
canSwing = true

//Tell Which Direction the Player is Facing to Display Correct Sprite
facing = 1

drawMoneyText = false
drawLootText = false

goldCounter = 0
loot = ""

//Equipped Weapon/Tool
equipped = 1

//Enable walk on player create   made it global
global.canwalk = 1