local plugins = {
  {
    "zbirenbaum/copilot.lua",
    -- Lazy load when event occurs. Events are triggered
    -- as mentioned in: https://vi.stackexchange.com/a/4495/20389
    event = "InsertEnter",
    -- lazy = false,
    opts = {
      suggestion = {
        auto_trigger = true
      }
    },
  }
}
return plugins

