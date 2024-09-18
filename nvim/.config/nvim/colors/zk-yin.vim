set background=dark

hi clear
"source $VIMRUNTIME/colors/vim.lua " Nvim: revert to Vim default color scheme

let g:colors_name = "zk-yang"

" Define your colors here
hi Normal guifg=#FFFFFF guibg=#000000
hi Comment guifg=#888888
hi String guifg=#FFFFFF
hi Function guifg=#FFFFFF
hi Constant guifg=#FFFFFF
hi Identifier guifg=#FFFFFF
hi Statement guifg=#FFFFFF
hi PreProc guifg=#FFFFFF
hi Type guifg=#FFFFFF0
hi Special guifg=#FFFFFF
hi Underlined guifg=#FFFFFF
hi Ignore guifg=#FFFFFF
hi Error guifg=#000000 guibg=#FF0000
hi Todo guifg=#FFFFFF guibg=#FFFF00

hi Visual guifg=#000000 guibg=#DDDDDD
hi Search guifg=#000000 guibg=#D0D0D0
hi IncSearch guifg=#000000 guibg=#AF005F

hi StatusLine guifg=#000000 guibg=#FFFFFF

hi LineNr guifg=#DBDBDB
