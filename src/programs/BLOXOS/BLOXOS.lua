--TODO OS
if not HDDmodule.getContent(2) then
 	os_setup = GET('https://raw.githubusercontent.com/Beriff/BLOXPC/main/src/programs/BLOXOS/components/os_setup.lua')
	setup, err = loadstring(os_setup)
	--print(err)
	option = setup()
	BIOSAPIS["sendMonitorSignal"]("set", "BLOXOS is ready to use. Reboot PC to dive in!")
	--print('option')
else
	BIOSAPIS["sendMonitorSignal"]("set", "Beriffsoft 2020 BLOXOS")
