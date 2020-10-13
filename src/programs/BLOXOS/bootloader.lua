--BLOXOS bootloader
--BLOXOS installation disk's only executable
BIOSAPIS["sendMonitorSignal"]("set", "BLOXOS will be installed now. Y/N \n")
if BIOSAPIS["detectUserInput"]() == "y" then
    BIOSAPIS["sendMonitorSignal"]("add", "OK. Installing BLOXOS now.")
    HDDmodule.exactAddContent(GET('https://raw.githubusercontent.com/Beriff/BLOXPC/main/src/programs/BLOXOS/BLOXOS.lua'), 0)
    BIOSAPIS["sendMonitorSignal"]("set", "BLOXOS installed. \n Pull the disk and reboot the pc.")
end
