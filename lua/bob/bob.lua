local M = {}


M.bobKurwa = function(searchText)

  local nvim = vim.api
  local  myWin, myBuf
  local b = nvim.nvim_list_bufs()
    if (myWin) then
      local currentBufs={}
      for i=1, #b do
        if nvim.nvim_buf_is_loaded(b[i]) then
          nvim.nvim_buf_delete(b[i], {})
        end
      end
    end 
  myWin = nvim.nvim_open_win(0, false, { split = "left" })
  myBuf = vim.fn.winbufnr(myWin);
  local flags= "  --hide-intermediary-output --chat-mode='code'"
  local bobCmd="bob "
  if searchText then
    searchText = string.gsub(searchText,'[#@;()]','')
    vim.cmd.term(bobCmd .. searchText .. flags)
  else
      vim.cmd.term(bobCmd)
  end
end

return M
