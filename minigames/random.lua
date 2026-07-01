local number = math.random(0, 20)
local msg = tonumber(read())

term.clear()
term.setCursorPos(1, 1)
term.write("Guess the number between 0 and 20:")

if number == msg then
    term.write("You guessed it!")
else
    term.write("Wrong! The number was " .. number .. ".")
end
