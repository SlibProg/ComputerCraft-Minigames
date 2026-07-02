local number = math.random(0, 20)

sleep(0.5)
term.clear()
term.setCursorPos(1, 1)
term.write("Guess the number between 0 and 20:")
local msg = tonumber(read())


if number == msg then
    term.write("You guessed it!")
    sleep(2)
    term.clear()
    term.setCursorPos(1, 1)
else
    term.write("Wrong! The number was " .. number .. ".")
    sleep(2)
    term.clear()
    term.setCursorPos(1, 1)
end
