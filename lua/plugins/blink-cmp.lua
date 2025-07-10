return {
	"saghen/blink.cmp",
	dependencies = {
		"rafamadriz/friendly-snippets",
		{
			"saghen/blink.compat",
			version = "2.*",
			lazy = true,
			opts = {},
		},
	},
	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "enter" },
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			trigger = { show_on_keyword = true },
			keyword = { range = "full" },
			accept = { auto_brackets = { enabled = true } },
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
			ghost_text = { enabled = true },
			list = { selection = { preselect = false, auto_insert = true } },
			menu = {
				auto_show = true,
			},
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		signature = { enabled = true },
		fuzzy = { implementation = "prefer_rust_with_warning", sorts = { exact = true } },
	},
	opts_extend = { "sources.default" },
}
