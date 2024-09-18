return {
  cmd = {"gopls", "serve"},
  settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
		},
	},
}
