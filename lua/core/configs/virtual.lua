vim.api.nvim_create_user_command('Virtual', function()
  vim.o.virtualedit = 'all'
  print('virtualedit=all')
end, {
  desc = 'Enable full virtualedit'
})

vim.api.nvim_create_user_command('VirtualOff', function()
  vim.o.virtualedit = 'none'
  print('virtualedit=none')
end, {
  desc = 'Disable virtualedit'
})