--BLOXOS bootloader
--BLOXOS installation disk's only executable
BIOSAPIS["sendMonitorSignal"]("set", "BLOXOS will be installed now. Y/N \n")
if BIOSAPIS["detectUserInput"]() == "y" then
    BIOSAPIS["sendMonitorSignal"]("add", "OK. Installing BLOXOS now.")
    
end
