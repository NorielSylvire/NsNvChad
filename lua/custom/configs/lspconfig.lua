local configs = require("plugins.configs.lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"

lspconfig.html.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"html"},
  root_dir = lspconfig.util.root_pattern("index.html")
})

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = {"minetest"}
      }
    }
  }
})

lspconfig.gdscript.setup{
  cmd = {
    "gdlint",
    "gdformat"
  },
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "gd",
    "gdscript",
    "gdscript3"
  },
  root_dir = lspconfig.util.root_pattern("project.godot", ".git")
}

lspconfig.clangd.setup{
  cmd = {"clangd"},
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_dir = lspconfig.util.root_pattern(
          '.clangd',
          '.clang-tidy',
          '.clang-format',
          'compile_commands.json',
          'compile_flags.txt',
          'configure.ac',
          '.git'
        )
}
