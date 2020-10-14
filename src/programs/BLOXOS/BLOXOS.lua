--TODO OS
os_setup, err = GET('https://raw.githubusercontent.com/Beriff/BLOXPC/main/src/programs/BLOXOS/components/os_setup.lua')
--print(os_setup)
setup = loadstring(os_setup)
option = setup()
print('option')
