return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "NvimTree",
      callback = function()
        vim.keymap.set("n", "<Esc>", "<Cmd>wincmd l<CR>", { buffer = true, desc = "Return focus to document" })
      end,
    })
    require("nvim-tree").setup({
      on_attach = "default",
      auto_reload_on_write = true,
      disable_netrw = true,
      sort = {
        sorter = "name",
        folders_first = true,
      },
      view = {
        centralize_selection = true,
        width = 32,
        side = "left",
        preserve_window_proportions = true,
        signcolumn = "yes",
      },
      renderer = {
        special_files = {
          "Cargo.toml",
          "Makefile",
          "README.md",
          "readme.md",
        },
        group_empty = false,
        ident_width = 2,
      },
      icons = {
        web_devicons = {
          file = {
            enable = true,
            color = true,
          },
          folder = {
            enable = true,
            color = true,
          },
          symlink_arrow = "-->",
          glyphs = {
            default = " ",
            symlink = " ",
            bookmark = "󰃀",
            modified = " ",
            hidden = " ",
            folder = {
              arrow_closed = " ",
              arrow_open = " ",
              default = " ",
              open = " ",
              empty = " ",
              empty_open = " ",
              symlink = "󰥩 ",
              symlink_open = " ",
            },
            git = {
              unstaged = "󱡦 ",
              staged = "󱡢 ",
              unmerged = "󱓌 ",
              renamed = " ",
              untracked = " ",
              deleted = "󰆴",
              ignored = " ",
            },
          },
        },
        git = {
          enable = true,
          show_on_dirs = true,
          show_on_open_dirs = false,
          disable_for_dirs = {
            "node_module",
          },
          timeout = 300,
          cygwin_support = true,
        },
        diagnostics = {
          enable = true,
          show_on_dirs = true,
          show_on_open_dirs = false,
          debounce_delay = 500,
          severity = {
            min = vim.diagnostic.severity.HINT,
            max = vim.diagnostic.severity.ERROR,
          },
          icons = {
            hint = "",
            info = "",
            warning = " ",
            error = " ",
          },
        },
      },
      modified = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = false,
      },
      filters = {
        enable = true,
        dotfiles = true,
        git_ignored = true,
      },
    })
  end,
}
