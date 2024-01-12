require("ecocle.core")

if vim.g.vscode then
    vim.cmd([[source $HOME/.config/nvim/vscode/settings.vim]])
else
    require("ecocle.lazy")
end
