return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters = {
                clang_format = {
                    args = "-style=\"{IndentWidth: 4,TabWidth: 4}\"",
                },
            },
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                go = { "gofumpt", "goimports_reviser", "golines" },
                c = { "clang_format" },
                cpp = { "clang_format" },
                objc = { "clang_format" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            }
        })

        vim.keymap.set("n", "<leader>fm", conform.format)
    end
}
