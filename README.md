<div align="center">
  <p><strong>A simple plugin to greet you with a tip when you launch Neovim</strong></p>
</div>

![Demo](./static/demo.gif)

## Important Note
The original website [vtip](https://vtip.43z.one/) which I used appears to be down. I am currently hosting a [similar website](https://vimiscool.tech/neotip) that is in very early stages of development.

This website is focused more on modern tips and plugin suggestions. You can check in on the development and contribute tips [here](https://github.com/TobinPalmer/neotip).

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
      seconds = 2,
      title = "Tip!",
      url = "https://vtip.43z.one", -- Or https://vimiscool.tech/neotip
    })
  end,
}
```
