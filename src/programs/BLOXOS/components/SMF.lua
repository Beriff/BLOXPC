SMF = {}
gAddr = 0
function genFile(name, content, ext)
	gAddr = gAddr + 1
	file = {}
	file[0] = name
	file[1] = content
	file[2] = ext
	SMF[gAddr] = file
	HDDmodule.exactAddContent(SMF, 1)
	return file
end

genFile('test', 'hello, world!', 'text')
