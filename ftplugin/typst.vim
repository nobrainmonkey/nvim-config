augroup AutoSaveTyp
  autocmd!
  autocmd TextChanged,InsertLeave,TextChangedI <buffer> silent! :write
augroup END
