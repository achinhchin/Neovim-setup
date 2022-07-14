" Description: Keymaps
"

nnoremap <silent> ca <cmd>lua vim.lsp.buf.code_action()<CR>

nnoremap <silent> g? <cmd>lua vim.diagnostic.open_float()<CR>

nnoremap <S-C-p> "0p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
nmap ss :split<Return>
nmap sv :vsplit<Return>
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w>5<
nmap <C-w><right> <C-w>5>
nmap <C-w><up> <C-w>5+
nmap <C-w><down> <C-w>5-
" Codes
nmap fs :w<Return>
nmap q :q<Return>
nmap fq :q!<Return>
" Run codes
nmap rc :w<Return>:vsplit<Return><C-w>l:term if not test -d ./out; mkdir out; end && gcc -o ./out/<C-r>% ./<C-r>% && ./out/<C-r>%<Return>
nmap rp :w<Return>:vsplit<Return><C-w>l:term python3 <C-r>%<Return>
nmap npmi :term npm init<Return>
nmap npmin :term npm install
nmap npmd :term npm run dev<Return>
nmap npmb :term npm run build<Return>
nmap npms :term npm start<Return>

