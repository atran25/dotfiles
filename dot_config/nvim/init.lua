--rap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.vscode then
    print("vscode and neovim")
    vim.api.nvim_command("autocmd InsertEnter * set nu nornu")
    vim.api.nvim_command("autocmd InsertLeave * set nu rnu")
else
    print("neovim only")
end
