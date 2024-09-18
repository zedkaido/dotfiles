vim.cmd([[command! Today lua Today()]])
vim.cmd([[command! Now lua Now()]])
vim.cmd([[command! Tomorrow lua Tomorrow()]])
vim.cmd([[command! Timestamp lua Timestamp()]])
vim.cmd([[command! ID lua ID()]])
vim.cmd([[command! Uid lua UUID()]])
vim.cmd([[command! KM lua KM()]])
vim.cmd([[command! KMT lua KM_Today()]])

function Today()
	local format = "%Y-%m-%d"
	local date = os.date(format)
	vim.api.nvim_put({ tostring(date) }, "", true, true)
end

function Now()
	local format = "%H:%M:"
	local time = os.date(format)
	vim.api.nvim_put({ tostring(time) }, "", true, true)
end

function Tomorrow()
	local format = "%Y-%m-%d"
	local date = os.date(format, os.time() + 86400)
	vim.api.nvim_put({ tostring(date) }, "", true, true)
end

function Timestamp()
	local time = os.time()
	vim.api.nvim_put({ tostring(time) }, "", true, true)
end

function ID()
	local random = math.random
	local template = "xxx-xxx-xxx"
	local id = string.gsub(template, "[xy]", function(c)
		local v = (c == "x") and random(0, 0xf) or random(8, 0xb)
		return string.format("%x", v)
	end)
	vim.api.nvim_put({ id }, "", true, true)
end

function UUID()
	local random = math.random
	local template = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"
	local uuid = string.gsub(template, "[xy]", function(c)
		local v = (c == "x") and random(0, 0xf) or random(8, 0xb)
		return string.format("%x", v)
	end)
	vim.api.nvim_put({ uuid }, "", true, true)
end

function KM()
	vim.cmd("edit" .. vim.g.km_dir)
end

function KM_Today() -- knowledge map
	local format = "%Y-%m-%d"
	local date = os.date(format)
	vim.cmd("edit " .. vim.g.km_dir .. "/" .. tostring(date) .. ".txt")
end
