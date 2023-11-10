<div align="center">
  <p><strong>A simple plugin to greet you with a tip when you launch Neovim</strong></p>
</div>

![Demo](./static/demo.gif)

## Requirements
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)

## Installation

```lua
-- Lazy.nvim
return {
  "TobinPalmer/Tip.nvim",
  event = "VimEnter",
  init = function()
    -- Default config
    --- @type Tip.config
    require("tip").setup({
      title = "Tip!",
      url = "https://vtip.43z.one",
    })
  end,
}
```
