return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                go = { "gofumpt", "goimports_reviser", "golines" },
                c = { "clang-format" },
                cpp = { "clang-format" },
                objc = { "clang-format" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            }
        })

        vim.keymap.set("n", "<leader>fm", conform.format)
    end
}
