local module = {}

storage = {}
latestIndex = 0

function module.AddContent(data)
	latestIndex = latestIndex + 1
	storage[latestIndex] = data
	return latestIndex
end

function module.getContent(index)
	return storage[index]
end

function module.exactAddContent(data, index)
	if index then
		storage[index] = data
		return true
	else
		return false
	end
end

return module
