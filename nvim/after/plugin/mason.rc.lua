local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = {
    "diagnosticls",
    "asm_lsp",
    "clangd",
    "opencl_ls",
    "dartls",
    "csharp_ls",
    "sqlls",
    "pyright",
    "tsserver",
    "flow",
    "astro",
    "svelte",
    "sumneko_lua",
    "cssls",
    "tailwindcss",
    "vimls",
    "html",
    "jsonls",
    "marksman",
    "yamlls",
    "dockerls"
  },
}

