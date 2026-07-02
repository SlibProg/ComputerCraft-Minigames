term.clear()
term.setCursorPos(1, 1)

math.randomseed(os.time())

local time = math.random(2, 15)
local letters = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u",
    "v", "w", "x", "y", "z" }

local letterDecider = math.random(1, #letters)
local letter = letters[letterDecider]

sleep(time)
local timer = os.startTimer(20)
term.write("Type " .. letter ..)
local input = read()

if timer == 0 then
    if input == letter then
        term.write("Times Up! You typed in 20 seconds!")
        sleep(3)
        term.clear()
        term.setCursorPos(1, 1)
    else
        term.write("Times Up! You... didn't type in time!")
        sleep(3)
        term.clear()
        term.setCursorPos(1, 1)
    end
else
    if input == letter then
        term.write("Times Up! You typed in " .. timer .. " seconds!")
        sleep(3)
        term.clear()
        term.setCursorPos(1, 1)
    end
end
