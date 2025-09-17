return {
    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        config = function()
            -- Default mappings: gcc, gc, gbc, gb (line/block, normal/visual)
            require("Comment").setup()
            -- VSCode style: Ctrl-/ (which is <C-_> in most terminals)
            -- Normal mode: toggle line comment
            vim.keymap.set("n", "<C-_>", function()
                require("Comment.api").toggle.linewise.current()
            end,{ desc = "Toggle comment (line)" })
            -- Visual mode: toggle line comment
            vim.keymap.set("v", "<C-_>", function()
                -- exit visual mode before calling Comment.nvim
                vim.api.nvim_feedkeys(
                    vim.api.nvim_replace_termcodes("<ESC>", true, false, true),
                    "nx", false)
                require("Comment.api").toggle.linewise(vim.fn.visualmode())
            end, { desc = "Toggle comment (visual)" })
        end,
    }
}
