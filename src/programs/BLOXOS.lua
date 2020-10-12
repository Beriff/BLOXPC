--TODO OS
BIOSAPIS["sendMonitorSignal"]("set", "BLOXOS will be installed now. Y/N")
if BIOSAPIS["detectUserInput"]() == "y" then
    BIOSAPIS["sendMonitorSignal"]("add", "okie dokie!")
end
