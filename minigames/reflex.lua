term.clear()
term.setCursorPos(1, 1)
math.randomseed(os.time())

local time = math.random(2, 15)
local letters = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u",
    "v", "w", "x", "y", "z" }
local letter = letters[math.random(1, #letters)]

sleep(time)

term.write("Type " .. letter .. ": ")

local startClock = os.clock()
local timerId = os.startTimer(20)
local input = nil
local timedOut = false

-- roda leitura e timer em paralelo
parallel.waitForAny(
    function()
        input = read()
    end,
    function()
        while true do
            local event, p1 = os.pullEvent("timer")
            if p1 == timerId then
                timedOut = true
                break
            end
        end
    end
)

local elapsed = os.clock() - startClock

term.clear()
term.setCursorPos(1, 1)

if timedOut then
    print("Time's up! You didn't type in time!")
elseif input == letter then
    print("Correct! You typed in " .. string.format("%.1f", elapsed) .. " seconds!")
else
    print("Wrong letter! You typed '" .. tostring(input) .. "' instead of '" .. letter .. "'.")
end

sleep(3)
term.clear()
term.setCursorPos(1, 1)
