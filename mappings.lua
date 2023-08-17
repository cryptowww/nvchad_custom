---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- more keybinds!
-- copilot key mapping

M.vimgo = {
	n = {
		["<leader>gr"] = {":GoRun <CR>", "GoRun: run the go file"  },
		["<leader>gu"] = {":GoBuild <CR>", "GoBuild: build the go file"  },
		["<leader>gf"] = {":GoFmt <CR>", "GoFmt: format the go file"  },
		["<leader>gi"] = {":GoInfo <CR>", "GoInfo: view the func signature"  },
		["<leader>gd"] = {":GoDef <CR>", "GoDef: view the definition"  },
		["<leader>gc"] = {":GoDoc <CR>", "GoDoc: view the doc"  },
		["<leader>gl"] = {":GoDecls <CR>", "GoDecls: fuzzy search in the file"  },
		["<leader>gr"] = {":GoDeclsDir <CR>", "GoDeclsDir: fuzzy search in the dir"  },
		["<leader>gxs"] = {":GoSameIds <CR>", "GoSameIds: highlight the same variable"  },
		["<leader>gxt"] = {":GoTest <CR>", "GoTest: go test gofile.go"  },
		["<leader>gxa"] = {":GoAlternate <CR>", "GoAlternate: alternate between source and it's test file"  },
		["<leader>gxi"] = {":GoInstall <CR>", "GoInstall: install go file"  },
		["<leader>gxc"] = {":GoCoverage <CR>", "GoCoverage: view the test case coverage"  },
		["<leader>gxr"] = {":GoReferrers <CR>", "GoReferrers: view the referrers of the variable"  },
	},
}

return M
