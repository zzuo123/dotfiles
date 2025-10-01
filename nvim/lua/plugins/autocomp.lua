return {
{
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
        "L3MON4D3/LuaSnip",      -- Snippet engine
        "saadparwaiz1/cmp_luasnip", -- LuaSnip source for nvim-cmp
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        cmp.setup({
            mapping = cmp.mapping.preset.insert {
                ['<C-j>'] = cmp.mapping.scroll_docs(4),
                ['<C-k>'] = cmp.mapping.scroll_docs(-4),
                ['<C-Space>'] = cmp.mapping.complete {},
                ['<CR>'] = cmp.mapping.confirm {
                  behavior = cmp.ConfirmBehavior.Replace,
                  select = true,
                },
                ['<Tab>'] = cmp.mapping(function(fallback)
                  if cmp.visible() then
                    cmp.select_next_item()
                  elseif luasnip.expand_or_jumpable() then
                    luasnip.expand_or_jump()
                  else
                    fallback()
                  end
                end, { 'i', 's' }),
                ['<S-Tab>'] = cmp.mapping(function(fallback)
                  if cmp.visible() then
                    cmp.select_prev_item()
                  elseif luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                  else
                    fallback()
                  end
                end, { 'i', 's' }),
            },
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            }),
        })
    end,
},
{
  "ray-x/lsp_signature.nvim",
  event = "InsertEnter",
  opts = {
    bind = true,
    handler_opts = {
      border = "rounded"
    }
  },
  -- or use config
  -- config = function(_, opts) require'lsp_signature'.setup({you options}) end
},
"github/copilot.vim",   -- github copilot
}
