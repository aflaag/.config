-- IMPORTS

    require("plugins")
    require("nvim-tree-config")
    require("gitsigns-config")
    require("bufferline-config")
    require("comment-config")
    require("todo-comments-config")

-- GENERAL

    -- Mappings

        -- Centering the current line

            vim.api.nvim_command('noremap j jzz')
            vim.api.nvim_command('noremap k kzz')
            vim.api.nvim_command('noremap { {zz')
            vim.api.nvim_command('noremap } }zz')
            vim.api.nvim_command('noremap p pzz')
            vim.api.nvim_command('noremap P Pzz')
            vim.api.nvim_command('noremap dd ddzz')
            vim.api.nvim_command('noremap gg ggzz')
            vim.api.nvim_command('noremap G Gzz')
            vim.api.nvim_command('noremap o zzo')
            vim.api.nvim_command('noremap O zzO')

        -- Switching between buffers

            vim.api.nvim_command('noremap <Space>h <C-W><C-H>')
            vim.api.nvim_command('noremap <Space>j <C-W><C-J>')
            vim.api.nvim_command('noremap <Space>k <C-W><C-K>')
            vim.api.nvim_command('noremap <Space>l <C-W><C-L>')

        -- Mouse

            -- Normal

                vim.api.nvim_command('nnoremap <ScrollWheelUp> 2<C-Y>2k')
                vim.api.nvim_command('nnoremap <ScrollWheelDown> 2<C-E>2j')
                vim.api.nvim_command('nnoremap <S-ScrollWheelUp> 2h')
                vim.api.nvim_command('nnoremap <S-ScrollWheelDown> 2l')

            -- Insert

                vim.api.nvim_command('inoremap <ScrollWheelUp> <Up>')
                vim.api.nvim_command('inoremap <ScrollWheelDown> <Down>')
                vim.api.nvim_command('inoremap <S-ScrollWheelUp> <Left><Left>')
                vim.api.nvim_command('inoremap <S-ScrollWheelDown> <Right><Right>')

        -- Terminal

            vim.api.nvim_command('tnoremap <Esc> <C-\\><C-n>')
            vim.api.nvim_command('tnoremap jj <C-\\><C-n>')

        -- Other

            -- Normal

                vim.api.nvim_command('nnoremap <Tab> >>')
                vim.api.nvim_command('nnoremap <S-Tab> <<')

            -- Insert

                vim.api.nvim_command('inoremap jj <Esc>')
                vim.api.nvim_command('inoremap <C-BS> <C-W>')
                vim.api.nvim_command('inoremap <S-Tab> <C-d>')

            -- Visual

                vim.api.nvim_command('vnoremap cc "+y')
                vim.api.nvim_command('vnoremap <Tab> >gv')
                vim.api.nvim_command('vnoremap <S-Tab> <gv')

    -- Settings

        vim.api.nvim_command('set nu rnu') -- enable hybrid numbers
        vim.api.nvim_command('set mouse=a') -- enable mouse
        vim.api.nvim_command('set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab') -- tabs as 4 spaces
        vim.api.nvim_command('command Os split') -- alias for horizontal split
        vim.api.nvim_command('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o') -- remove auto commenting lines

-- COLORSCHEME

    -- Settings

        vim.api.nvim_command('colorscheme gruvbox')

-- AIRLINE

    -- Settings

        vim.api.nvim_command('let g:airline_powerline_fonts = 1') -- set different characters

-- NVIM-TREE

    -- Mappings

        vim.api.nvim_command('noremap tt :NvimTreeToggle <CR>')
        vim.api.nvim_command('noremap tf :NvimTreeFindFile <CR>')
        vim.api.nvim_command('noremap tr :NvimTreeRefresh <CR>')
        vim.api.nvim_command('noremap tg :wincmd p <CR>')

    -- Settings

        vim.opt.splitright = true -- prevent nvim-tree from opening on the right on the first buffer

-- FZF

    -- Mappings

        vim.api.nvim_command('noremap ff :Files <CR>')
        vim.api.nvim_command('noremap fr :Files /<CR>')

-- BUFFERLINE

    -- Mappings

        -- Switching between buffers

            vim.api.nvim_command('noremap <Space>1 <cmd> :BufferLineGoToBuffer 1 <CR>')
            vim.api.nvim_command('noremap <Space>2 <cmd> :BufferLineGoToBuffer 2 <CR>')
            vim.api.nvim_command('noremap <Space>3 <cmd> :BufferLineGoToBuffer 3 <CR>')
            vim.api.nvim_command('noremap <Space>4 <cmd> :BufferLineGoToBuffer 4 <CR>')
            vim.api.nvim_command('noremap <Space>5 <cmd> :BufferLineGoToBuffer 5 <CR>')
            vim.api.nvim_command('noremap <Space>6 <cmd> :BufferLineGoToBuffer 6 <CR>')
            vim.api.nvim_command('noremap <Space>7 <cmd> :BufferLineGoToBuffer 7 <CR>')
            vim.api.nvim_command('noremap <Space>8 <cmd> :BufferLineGoToBuffer 8 <CR>')
            vim.api.nvim_command('noremap <Space>9 <cmd> :BufferLineGoToBuffer 9 <CR>')
