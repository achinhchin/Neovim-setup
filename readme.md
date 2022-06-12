# **My Neovim setup**
This is my Neovim setup for coding more productive and speed.

### **Image Preview**
- Split windows in Nvim.
![Split windows in Nvim](./readme-assets/nvim-1.png)
- Auto completion and suggestion in Nvim.
![Auto completion and suggestion in Nvim](./readme-assets/nvim-2.png)
- compile with shortcut.
![Compile with shortcut](./readme-assets/nvim-3.png)

### **Go to**
- [Version Record](./version-record.json)
- [Fish Shell](https://github.com/chinhchin/Fish-Shell-setup.git)

### **Credits**
- Inspiration, list of modules and solution from [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public.git)

### **Packages requirement**
- [Brew](https://github.com/chinhchin/Brew-setup.git)
- [Fish Shell](https://github.com/chinhchin/Fish-Shell-setup.git)

### **Contents**
#### 0. [Update Your Installer](./readme.md#0-update-your-installer)

#### 1. [Install Neovim](./readme.md#1-install-neovim)
1. [Install Neovim](./readme.md#11-install-neovim)
2. [Link to Vim](./readme.md#12-link-to-vim)

#### 2. [Install useful plugins in Neovim](/readme.md#2-install-useful-plugins-in-neovim)
1. [Install vim-plug](./readme.md#21-install-vim-plughttpsgithubcomjunegunnvim-pluggit---vim-plugin-manager)
2. [Add config file](./readme.md#22-add-config-file)
3. [Install plugins in vim-plug](./readme.md#23-install-plugins-in-vim-plug)
4. [Activate defx.nvim](./readme.md#24-activate-defxnvim)

#### 3. [Install language servers and completion](./readme.md#3-install-language-server-and-completion)
1. [Install language server in Nvim Lsp](./readme.md#31-install-language-servers-in-nvim-lsphttpsmicrosoftgithubiolanguage-server-protocol)
2. [Install language servers in Coc](./readme.md#32-install-language-servers-in-cochttpsgithubcomneoclidecocnvim)

### 4. [Useful features](./readme.md#4-useful-features)
1. [Basic command shortcuts](./readme.md#41-basic-command-shortcuts)
2. [Screen spliter shortcuts](./readme.md#42-screen-spliter-shortcuts)
3. [Tabedit shortcuts](./readme.md#43-tabedit-shortcuts)
4. [File edit in Nvim](./readme.md#44-file-edit-in-nvim)
5. [Telescope](./readme.md#45-telescope)
6. [Code suggested, completion and data](./readme.md#46-code-suggested-completion-and-data)
7. [Run code](./readme.md#47-run-code)

---

> **Important**
>
> You should use this in Fish shell in my config.
> See it in [packages requirement](./readme.md#packages-requirement)

## **0. Update your installer**
```
sudo apt update && sudo apt upgrade
brew update
```

> **Note**
>
> I use debian Linux so, I update apt.
> If you use other, update you should update your Linux before start.

## **1. Install Neovim**

### **1.1 Install Neovim**
Type this command into your terminal.
```
brew install --HEAD tree-sitter luajit neovim
```

> **Important**
>
> You have to install Brew before use this commannd, install Brew in [Packages Management](./readme.md#packages-requirement)

### **1.2 Link to vim**
Type this command into your terminal.
```
ln -s (which nvim) /usr/local/bin/vim
```

> **Note**
>
> If you have a problem about permission, try
> ```
> sudo ln -s (which nvim) /usr/local/bin/vim
> ```

> **Note**
>
> After this command, when you type vim it will open nvim automatically.
> And I will call nvim as vim.

## **2. Install useful plugins in Neovim**

### **2.1 Install [vim-plug](https://github.com/junegunn/vim-plug.git)** - vim plugin manager

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### **2.2 Add config file**
Clone this repository to your device and copy nvim file to your nvim config directory.
```
# create vim directory in cache
if not test -d ~/.cache ; mkdr ~/.cache/ ; end
if not test -d ~/.cache/nvim ; mkdir ~/.cache/nvim ; end

# Check if ~/.config directory is exist.
cd ~
if not test -d ~/.config ; mkdir .config ; end

# Clone repository
cd ~
mkdir github
cd github
git clone https://github.com/chinhchin/Neovim-setup.git
cd Neovim-setup

# Copy folder
cp -r ./nvim ~/.config/
```

### **2.3 Install plugins in vim-plug**
1. Get in vim and install vim-plug plugins.
You maybe see some error, don't panic.
```
vim
```

2. Press Escape Button, and start install.
```
:PlugInstall
```

### **2.4 Activate defx.nvim**
In shell type
```
pip3 install pynvim
```

Get in vim and type
```
:UpdateRemotePlugins
```

## **3. Install language server and completion**
Language server is provides language features like auto complete, go to definition, find all references etc.
### **3.1 Install language servers in Nvim [Lsp](https://microsoft.github.io/language-server-protocol/)**
1. Open Nvim.
```
vim
```

2. Install each Lsp server for nvim.
Type this in "*Normal mode*" in Vim.
```
:LspInstall clangd
:LspInstall dartls
:LspInstall pyright
:LspInstall tailwindcss
```

3. More commands for Lsp.

You can see list of install of Lsp by type.
```
:LspInstallInfo
```

You can see list of Lsp that run in current file in Vim by type
```
:LspInfo
```

### **3.2 Install language servers in [Coc](https://github.com/neoclide/coc.nvim)**.

1. Open Nvim.
```
vim
```

2. Install language servers in Coc
Type this in "*Normal node*" in Vim.
```
:CocInstall coc-html
:CocInstall coc-json
:CocInstall coc-css
```

3. More commands for Coc.
You can see list of extensions by type
```
:CocList extensions
```
in "*Normal mode*" in Nvim.

## **4. Useful features**
### **Source of features**
1. You can see many basic of Vim commands and shortcuts [here](https://vimhelp.org/).
2. You can see special shortcuts in your ```~/.config/nvim/maps.vim``` file and files in ```~/.config/nvim/after/plugins/``` directory after install with my solution.
3. See example of command usage.

### **4.1 Basic command shortcuts**
Type these shortcuts in **Normal mode** in Nvim.
- **fs** - save file
- **q** - quit file
- **fq** - force quit file

### **4.2 Screen spliter shortcuts**
Type these shortcuts in **Normal mode** in Nvim.
- **ss** - Split window in horizontol.
- **sv** - Split window in vertical.
- **sh** - move to left window.
- **sj** - move down to window.
- **sk** - move up to window.
- **sl** - move to right window.
- **\<C-w\>\<left\>** -  resize window to left 
- **\<C-w\>\<right\>** - resize window to right
- **\<C-w\>\<up\>** - resize window to up
- **\<C-w\>\<down\>** - resize window to down

### **4.3 Tabedit shortcuts**
Type these shortcuts in **Normal mode** in Nvim.
- **te** - create new tab
- **\<Tab\>** - go to right tab
- **\<S-Tab\>** - go to previus tab

### **4.4 File edit in Nvim**
Type these shortcuts in **Normal mode** in Nvim.
- **sf** - get in edit file page.

Type next command in edit file page.

- **l** - get into folder or file.
- **h** - back to previus folder.
- **N** - create new file
- **K** - create new subdirectory
- **r** - rename file
- **d** - delete file

### **4.5 Telescope**
Type these shortcuts in **Normal mode** in Nvim.
- **;f** - open search file function
- **;r** - live grep
- **\\\\** - buffer
- **;;** - help tags

### **4.6 Code suggested, completion and data**
Type these shortcuts in **Inert mode** in Nvim.
**\<C-Space\>** - see sugested of code.

Type these shortcuts in **Normal mode** in Nvim.
- **gh** - to see diagnostic
- **K** - to see data of object

### **4.7 Run code**
Type these shortcuts in **Normal mode** in Nvim.
- **rc** - run C language
- **rp** - run Python language
- **npmi** - ```npm init```
- **npmin** - ```npm install```
- **npmd** - ```npm run dev```
- **npmb** - ```npm run build```
- **npmst** - ```npm start```
