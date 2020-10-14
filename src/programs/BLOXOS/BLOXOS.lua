--TODO OS
os_setup = GET('https://raw.githubusercontent.com/Beriff/BLOXPC/main/src/programs/BLOXOS/components/os_setup.lua')
setup, err = loadstring(os_setup)
print(err)
option = setup()
print('option')
