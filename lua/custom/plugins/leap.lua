-- ~/.config/nvim/lua/custom/plugins/leap.lua
return {
  'ggandor/leap.nvim',
  config = function()
    -- Require the Leap module
    local leap = require 'leap'

    -- Remap to use `f` / `F` instead of `s` / `S`
    vim.keymap.set({ 'n', 'x', 'o' }, 'f', function()
      leap.leap { forward = true }
    end, { desc = 'Leap forward' })

    vim.keymap.set({ 'n', 'x', 'o' }, 'F', function()
      leap.leap { backward = true }
    end, { desc = 'Leap backward' })
  end,
}
