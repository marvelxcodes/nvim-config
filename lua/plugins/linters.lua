return {
    {
        "stevearc/conform.nvim",
        config = {
            event = { 'BufWritePre' },
            cmd = { 'ConformInfo' },

        -- Options
            opts = {
                formatters_by_ft = {
                    lua = { 'stylua' },
                    json = { 'prettier' }
                },

                format_on_save = {
                    timeout_ms = 500,
                    lsp_format = 'fallback'
                }
            },
        }
    }
}
