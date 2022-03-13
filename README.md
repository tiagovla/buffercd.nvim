# BufferCD.nvim

## About
This plugin introduces an auto `cd` with buffer scope. Neovim has a `cd`
command with global and window scopes.  `BufferCD.nvim` automatically tracks and
restores the current directory of each buffer while you move in and out
buffers. This is super handy to work with multiple projects, specially with
plugins like
[telescope-project.nvim](https://github.com/nvim-telescope/telescope-project.nvim).
Requires nvim **nightly**.

### Installation

Install with your favorite package manager:

[packer](https://github.com/wbthomason/packer.nvim)

``` lua
use "tiagovla/buffercd.nvim"
```

[vim-plug](https://github.com/junegunn/vim-plug)

``` vim
Plug "tiagovla/buffercd.nvim"
```
### Default configuration

``` lua
-- init.lua
require("buffercd").setup()
```

``` vim
" .vimrc
lua require("buffercd").setup()
```


### Recommended settings
#### Nvim-tree
```lua
--init.lua

require("nvim-tree").setup {
    update_cwd = true,
    --...
}
```
