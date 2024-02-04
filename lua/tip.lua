local M = {}

---@class Tip.config
---@field seconds number
---@field title string
---@field url string

---@type Tip.config
M.config = {
  seconds = 2,
  title = 'Tip!',
  url = 'https://vtip.43z.one',
}

-- https://www.reddit.com/r/neovim/comments/17qdqkt/get_a_handy_tip_when_you_launch_neovim/
-- setup is the initialization function for the carbon plugin
---@param params Tip.config
M.setup = function(params)
  M.config = vim.tbl_deep_extend('force', {}, M.config, params or {})
  vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
      local job = require 'plenary.job'

      job
        :new({
          command = 'curl',
          args = { '-L', M.config.url },
          on_exit = function(j, exit_code)
            local res = table.concat(j:result())
            if exit_code ~= 0 then
              res = 'Error fetching tip: ' .. res
            end

            pcall(vim.notify, res, M.config.seconds, { title = M.config.title })
          end,
        })
        :start()
    end,
  })
end

return M
