local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Window action 
keymap.set('n', 'fs', ':w<Return>')
keymap.set('n', 'q', ':q<Return>')
keymap.set('n', 'fq', ':q!<Return>')

-- Code runner
keymap.set('n', 'rc', ':w<Return>:vsplit<Return><C-w>l:term if not test -d ./build; mkdir build; end && gcc -o ./build/main ./<C-r>% && ./build/main <Return><Return>')
keymap.set('n', 'rp', ':w<Return>:vsplit<Return><C-w>l:term python3 <C-r>%<Return>')
keymap.set('n', 'rt', ':w<Return>:vsplit<Return><C-w>l:term npx ts-node <C-r>%<Return>')
keymap.set('n', 'npmi', ':vsplit<Return><C-w>l:term npm init<Return>')
keymap.set('n', 'npmin', ':vsplit<Return><C-w>l:term npm install')
keymap.set('n', 'npml', ':vsplit<Return><C-w>l:term npm ls<Return>')
keymap.set('n', 'npmd', ':w<Return>:vsplit<Return><C-w>l:term npm run dev<Return>')
keymap.set('n', 'npmb', ':w<Return>:vsplit<Return><C-w>l:term npm run build<Return>')
keymap.set('n', 'npmst', ':w<Return>:vsplit<Return><C-w>l:term npm start<Return>')

