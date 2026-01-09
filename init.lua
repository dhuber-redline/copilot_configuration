-- Setup for the CopilotChat plugin
require("CopilotChat").setup({
  -- Optional: Set the default model to use
  model = "claude-sonnet-4.5",
  
  -- Optional: Set the maximum number of messages to keep in the chat history
  max_history = 100,
  
  -- Optional: Enable or disable the chat window
  enable_chat_window = true,
  
  -- Optional: Set the key mapping for opening the chat window
  key_mapping = {
    open_chat = "<leader>cc",
    close_chat = "<leader>cd",
  },

  -- Optional: Set the default chat window position
  -- You can adjust the position of the chat window
  set_window_position = {
    position = "bottom", -- or "top", "left", "right"
  },

  -- Optional: Set the default chat window theme
  -- You can customize the appearance of the chat window
  set_window_theme = {
    background = "dark", -- or "light"
    border = "rounded", -- or "single", "double", etc.
  },

  -- Optional: Set the default chat window font size
  -- You can adjust the font size of the chat window
  set_window_font_size = {
    font_size = 12, -- Adjust the font size as needed
  },

  -- Optional: Set the default chat window behavior
  -- You can customize how the chat window behaves
  set_window_behavior = {
    auto_open = true,          -- Automatically open the chat window when needed
    auto_close = true,         -- Automatically close the chat window when done
    persist_history = true,    -- Keep chat history across sessions
  },

  -- Optional: Set the default chat window appearance
  -- You can customize the appearance of the chat window
  set_window_appearance = {
    border_color = "#ffffff",  -- Set the border color of the chat window
    background_color = "#000000", -- Set the background color of the chat window
    text_color = "#ffffff",     -- Set the text color in the chat window
  },

  -- Optional: Set the default chat window notifications
  -- You can customize how notifications are displayed
  set_window_notifications = {
    enable_notifications = true, -- Enable or disable notifications
    notification_timeout = 5000, -- Duration in milliseconds for notifications to disappear
  },

})

-- Copy selected text to the system clipboard
vim.api.nvim_set_keymap("v", "<C-c>", "\"+y", { noremap = true, silent = true })

-- Disable mouse support
vim.o.mouse = ""

-- Disable right-click context menu
vim.api.nvim_set_keymap("n", "<RightMouse>", "<Nop>", { noremap = true, silent = true })
-- Paste text from the system clipboard with right-click
vim.api.nvim_set_keymap("n", "<C-v>", "\"+p", { noremap = true, silent = true })

-- Show line numbers in the editor
vim.wo.number = true
-- Enable syntax highlighting
vim.cmd("syntax on")
-- Convert tabs to spaces of length 4
vim.o.expandtab = true
-- Set the default tab size
vim.o.tabstop = 4
-- Set the default indentation size
vim.o.shiftwidth = 4
-- Enable auto-indentation
vim.o.smartindent = true
-- Enable line wrapping
vim.o.wrap = true
-- Set the default encoding
vim.o.encoding = "utf-8"
-- Enable case-insensitive searching
vim.o.ignorecase = true
-- Enable smart case searching
vim.o.smartcase = true
-- Enable incremental searching
vim.o.incsearch = true
-- Enable highlighting of search results
vim.o.hlsearch = true
-- Set the default color scheme
vim.cmd("colorscheme desert")
-- Set the default status line
vim.o.laststatus = 2
-- Show two lines of context when scrolling
vim.o.scrolloff = 2
-- When pressing enter, move the cursor to the first non-blank character of the line
-- c: auto-wrap comments using textwidth, r: auto insert comment leader when pressing Enter, o: auto insert comment leader when pressing o or O, q: allow formatting comments with gq, l: use language-specific indentation rules
vim.o.formatoptions = "croql"

-- Map the end key to go to the end of the line
vim.api.nvim_set_keymap("n", "<End>", "$", { noremap = true, silent = true })
-- Map the home key to go to the beginning of the line
vim.api.nvim_set_keymap("n", "<Home>", "0", { noremap = true, silent = true })
-- Map the delete key to delete the character under the cursor
vim.api.nvim_set_keymap("n", "<Delete>", "x", { noremap = true, silent = true })

-- Allow pasting with right-click
vim.api.nvim_set_keymap("n", "<RightMouse>", "\"+p", { noremap = true, silent = true })

-- Remap the escape key for terminal mode to exit terminal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })


------------------------------------------------
-- This should always be the last line!!!!
-- When launching neovim, also run :Copilot setup in the background
vim.cmd("autocmd VimEnter * :Copilot setup")
