vim.api.nvim_create_autocmd({ "BufEnter" }, {
  callback = function(event)
    local title = "vim"
    if event.file ~= "" then
      title = string.format("vim: %s", vim.fs.basename(event.file))
    end

    vim.fn.system({ "wezterm", "cli", "set-tab-title", title })
  end,
})
