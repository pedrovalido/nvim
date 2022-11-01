local gset = vim.api.nvim_set_var

gset('airline#extensions#tabline#enabled', 1) --enable the list of buffers
gset('airline#extensions#branch#enabled', 1) --enable git branch 

--gset('airline#extensions#branch#empty_message', '') 
--gset('airline#extensions#branch#use_vcscommand', 0)
--gset('airline#extensions#branch#displayed_head_limit', 10)
--gset('airline#extensions#branch#format', 0)
--gset('airline#extensions#hunks#enabled', 1)
--gset('airline#extensions#hunks#non_zero_only', 0)
--gset('airline#extensions#hunks#hunk_symbols', "['+', '~', '-']")
--gset('airline_powerline_fonts', 1)

gset("airline_left_sep", '')
gset("airline_left_alt_sep", '')
gset("airline_right_sep" ,'')
gset("airline_right_alt_sep", '')
gset("airline_symbols.branch", '')
gset("airline_symbols.readonly", '')
gset("airline_symbols.linenr", '☰')
gset("airline_symbols.maxlinenr", '')
gset("airline_symbols.dirty", '⚡')
