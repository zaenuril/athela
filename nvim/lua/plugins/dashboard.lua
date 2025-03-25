local alpha = require'alpha'
local dashboard = require'alpha.themes.dashboard'

-- Tambahkan logo ASCII
local logo = [[
                 _            ____
                : \           |   \    .
                |  \ .        |    :   |\            /\
             .  |   :|\__     |    |   | \          /  \
             |\ |   |! \ \    |    |   | |\        /   /
\"-.______   | \:   ||\ \ \   |    |   | | \      /   /
 \_       "-_|  |\  || \ \/   |    |___| ! |\____/  _/-. /\
   "-_   ____:  |_\ ||  \/  ___\  __  _//  | |  ___ \---" /
      \  \   |  _____,  /___\___\/ / /   \_! |  // _/  / /
    ___\_ \__|  |    | __. _/____ / /     /  > // /    \/
  //_________|  /    |/  |/  \__// /     /  /_/ \/
             | /     |   :      | /     /__/
             |/                 |/   E V A N G E L I O N

]]

dashboard.section.header.val = vim.split(logo, "\n")
dashboard.section.header.val = vim.split(logo .. "\n\t\t\t\t\t\t\t\t\t\t\tWelcome to my playground", "\n")

-- Tambahkan tombol shortcut
dashboard.section.buttons.val = {
  dashboard.button("f", "🔍  Find file", ":Telescope find_files<CR>"),   -- Shortcut untuk mencari file
  dashboard.button("r", "📂  Recent files", ":Telescope oldfiles<CR>"),  -- Shortcut untuk file terakhir
  dashboard.button("e", "📝  New file", ":ene <BAR> startinsert <CR>"),  -- Shortcut untuk file baru
  dashboard.button("c", "⚙️  Configuration", ":e ~/.config/nvim/init.lua<CR>"),  -- Shortcut untuk konfigurasi
  dashboard.button("q", "🚪  Quit", ":qa<CR>"),  -- Shortcut untuk keluar dari Neovim
}

alpha.setup(dashboard.config)

