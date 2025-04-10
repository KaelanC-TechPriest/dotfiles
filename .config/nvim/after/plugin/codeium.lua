vim.g.codeium_disable_bindings = 1
vim.g.codeium_manual = 1
vim.keymap.set('i', '<M-\\>', function () return vim.fn['codeium#Accept']() end, { expr = true })
vim.keymap.set('i', '<M-;>', function() return vim.fn['codeium#CycleOrComplete']() end, { expr = true })
vim.keymap.set('i', '<M-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
vim.keymap.set('i', '<M-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
