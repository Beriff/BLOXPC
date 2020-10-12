--TODO OS
BIOSAPIS["sendMonitorSignal"]("set", "BLOXOS will be installed now. Proceed?")
if BIOSAPIS["detectUserInput"]() == "y" then
    BIOSAPIS["sendMonitorSignal"]("add", "okie dokie!")
end
