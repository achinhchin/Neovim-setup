local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "c",
    "cpp",
    "llvm",
    "dart",
    "swift",
    "kotlin",
    "c_sharp",
    "java",
    "go",
    "php",
    "sql",
    "python",
    "ruby",
    "lua",
    "rust",
    "javascript",
    "typescript",
    "svelte",
    "tsx",
    "vim",
    "fish",
    "scss",
    "css",
    "html",
    "json",
    "yaml",
    "toml",
    "markdown",
    "dockerfile"
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
