--TODO OS
os_setup = GET('https://raw.githack.com/Beriff/BLOXPC/main/src/programs/BLOXOS/components/os_setup.lua')
print(os_setup)
setup = loadstring(os_setup)
option = setup()
print('option')
