-- NEOVIM config, a text editor based on vim.
-- Maintainer:	Jessee Chan <CYPHER0@foxmail.com>
-- Last Change: 2023.07.15


local basic =  require('keymap/basic')
  local opt = basic.opt
  local a = basic.a

local function mapfn()
  local ext = vim.fs.basename(
    vim.api.nvim_buf_get_name(0)
    ):match(".+%.(%w+)$")
  if     ext == 'tmx'  then
    vim.o.filetype = 'tmux'
    vim.cmd[[ ! tmux source % ]]
  elseif ext == 'vim'  then
    vim.o.filetype = 'vim'
    vim.cmd[[ source % ]]
  elseif ext == 'lua'  then
    vim.o.filetype = 'lua'
    vim.cmd[[ silent ! ~/.config/nvim/exe/lua.sh % & ]]
  elseif ext == 'sh'   then
    vim.o.filetype = 'sh'
    vim.cmd[[ silent ! ~/.config/nvim/exe/bsh.sh % & ]]
  elseif ext == 'rc'   then
    vim.o.filetype = 'sh'
    vim.cmd[[ silent ! ~/.config/nvim/exe/bsh.sh % & ]]
  elseif ext == 'bsh'  then
    vim.o.filetype = 'bash'
    vim.cmd[[ silent ! ~/.config/nvim/exe/bsh.sh % & ]]
  elseif ext == 'dsh'  then
    vim.o.filetype = 'dash'
    vim.cmd[[ silent ! ~/.config/nvim/exe/dsh.sh % & ]]
  elseif ext == 'py'   then
    vim.o.filetype = 'python'
    vim.cmd[[ silent ! ~/.config/nvim/exe/pyt.sh % & ]]
  elseif ext == 'pyw'  then
    vim.o.filetype = 'python'
    vim.cmd[[ silent ! ~/.config/nvim/exe/pyw.sh % & ]]
  elseif ext == 'md'   then
    vim.cmd[[ MarkdownPreviewToggle ]]
  elseif ext == 'rasi' then
    vim.o.filetype = 'cpp'
  elseif ext == 'esp' then
    vim.o.filetype = 'cpp'
    vim.cmd[[ silent ! ~/.config/nvim/exe/esp.sh % & ]]
  else
    print('UNDEFINE FILE TYPE, CAN NOT RUN THIS FILE.')
  end
  end

local t = {
  { a, '<F5>', mapfn, opt, },
  }
for i,v in ipairs(t) do
  vim.keymap.set(v[1],v[2],v[3],v[4])
  end


