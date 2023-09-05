augroup AutoSaveTyp
  autocmd!
  autocmd TextChanged,InsertLeave,TextChangedI <buffer> :write
augroup END
