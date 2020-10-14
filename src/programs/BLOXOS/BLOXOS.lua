--TODO OS
os_setup, err = GET('https://raw.githack.com/Beriff/BLOXPC/main/src/programs/BLOXOS/components/os_setup.lua')
print(err)
setup = loadstring(os_setup)
option = setup()
print('option')
