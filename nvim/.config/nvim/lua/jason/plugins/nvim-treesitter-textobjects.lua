return {
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    lazy = false,
    config = function()
      require("nvim-treesitter-textobjects").setup({
        move = { set_jumps = true },
      })

      -- stylua: ignore start
      local select = require("nvim-treesitter-textobjects.select")
      local swap   = require("nvim-treesitter-textobjects.swap")
      local move   = require("nvim-treesitter-textobjects.move")

      -- Select
      vim.keymap.set({ "x", "o" }, "a=", function() select.select_textobject("@assignment.outer", "textobjects") end, { desc = "Select outer assignment" })
      vim.keymap.set({ "x", "o" }, "i=", function() select.select_textobject("@assignment.inner", "textobjects") end, { desc = "Select inner assignment" })
      vim.keymap.set({ "x", "o" }, "l=", function() select.select_textobject("@assignment.lhs",   "textobjects") end, { desc = "Select LHS of assignment" })
      vim.keymap.set({ "x", "o" }, "r=", function() select.select_textobject("@assignment.rhs",   "textobjects") end, { desc = "Select RHS of assignment" })

      vim.keymap.set({ "x", "o" }, "a:", function() select.select_textobject("@property.outer", "textobjects") end, { desc = "Select outer property" })
      vim.keymap.set({ "x", "o" }, "i:", function() select.select_textobject("@property.inner", "textobjects") end, { desc = "Select inner property" })
      vim.keymap.set({ "x", "o" }, "l:", function() select.select_textobject("@property.lhs",   "textobjects") end, { desc = "Select LHS of property" })
      vim.keymap.set({ "x", "o" }, "r:", function() select.select_textobject("@property.rhs",   "textobjects") end, { desc = "Select RHS of property" })

      vim.keymap.set({ "x", "o" }, "aa", function() select.select_textobject("@parameter.outer", "textobjects") end, { desc = "Select outer parameter" })
      vim.keymap.set({ "x", "o" }, "ia", function() select.select_textobject("@parameter.inner", "textobjects") end, { desc = "Select inner parameter" })

      vim.keymap.set({ "x", "o" }, "ai", function() select.select_textobject("@conditional.outer", "textobjects") end, { desc = "Select outer conditional" })
      vim.keymap.set({ "x", "o" }, "ii", function() select.select_textobject("@conditional.inner", "textobjects") end, { desc = "Select inner conditional" })

      vim.keymap.set({ "x", "o" }, "al", function() select.select_textobject("@loop.outer", "textobjects") end, { desc = "Select outer loop" })
      vim.keymap.set({ "x", "o" }, "il", function() select.select_textobject("@loop.inner", "textobjects") end, { desc = "Select inner loop" })

      vim.keymap.set({ "x", "o" }, "af", function() select.select_textobject("@call.outer",     "textobjects") end, { desc = "Select outer function call" })
      vim.keymap.set({ "x", "o" }, "if", function() select.select_textobject("@call.inner",     "textobjects") end, { desc = "Select inner function call" })

      vim.keymap.set({ "x", "o" }, "am", function() select.select_textobject("@function.outer", "textobjects") end, { desc = "Select outer method/function" })
      vim.keymap.set({ "x", "o" }, "im", function() select.select_textobject("@function.inner", "textobjects") end, { desc = "Select inner method/function" })

      vim.keymap.set({ "x", "o" }, "ac", function() select.select_textobject("@class.outer", "textobjects") end, { desc = "Select outer class" })
      vim.keymap.set({ "x", "o" }, "ic", function() select.select_textobject("@class.inner", "textobjects") end, { desc = "Select inner class" })

      -- Swap
      vim.keymap.set("n", "<leader>na", function() swap.swap_next("@parameter.inner") end, { desc = "Swap parameter with next" })
      vim.keymap.set("n", "<leader>n:", function() swap.swap_next("@property.outer")  end, { desc = "Swap property with next" })
      vim.keymap.set("n", "<leader>nm", function() swap.swap_next("@function.outer")  end, { desc = "Swap function with next" })
      vim.keymap.set("n", "<leader>pa", function() swap.swap_previous("@parameter.inner") end, { desc = "Swap parameter with prev" })
      vim.keymap.set("n", "<leader>p:", function() swap.swap_previous("@property.outer")  end, { desc = "Swap property with prev" })
      vim.keymap.set("n", "<leader>pm", function() swap.swap_previous("@function.outer")  end, { desc = "Swap function with prev" })

      -- Move (] = next, [ = prev)
      vim.keymap.set({ "n", "x", "o" }, "]f", function() move.goto_next_start("@call.outer",        "textobjects") end, { desc = "Next function call start" })
      vim.keymap.set({ "n", "x", "o" }, "]m", function() move.goto_next_start("@function.outer",    "textobjects") end, { desc = "Next method/function start" })
      vim.keymap.set({ "n", "x", "o" }, "]c", function() move.goto_next_start("@class.outer",       "textobjects") end, { desc = "Next class start" })
      vim.keymap.set({ "n", "x", "o" }, "]i", function() move.goto_next_start("@conditional.outer", "textobjects") end, { desc = "Next conditional start" })
      vim.keymap.set({ "n", "x", "o" }, "]l", function() move.goto_next_start("@loop.outer",        "textobjects") end, { desc = "Next loop start" })

      vim.keymap.set({ "n", "x", "o" }, "]F", function() move.goto_next_end("@call.outer",        "textobjects") end, { desc = "Next function call end" })
      vim.keymap.set({ "n", "x", "o" }, "]M", function() move.goto_next_end("@function.outer",    "textobjects") end, { desc = "Next method/function end" })
      vim.keymap.set({ "n", "x", "o" }, "]C", function() move.goto_next_end("@class.outer",       "textobjects") end, { desc = "Next class end" })
      vim.keymap.set({ "n", "x", "o" }, "]I", function() move.goto_next_end("@conditional.outer", "textobjects") end, { desc = "Next conditional end" })
      vim.keymap.set({ "n", "x", "o" }, "]L", function() move.goto_next_end("@loop.outer",        "textobjects") end, { desc = "Next loop end" })

      vim.keymap.set({ "n", "x", "o" }, "[f", function() move.goto_previous_start("@call.outer",        "textobjects") end, { desc = "Prev function call start" })
      vim.keymap.set({ "n", "x", "o" }, "[m", function() move.goto_previous_start("@function.outer",    "textobjects") end, { desc = "Prev method/function start" })
      vim.keymap.set({ "n", "x", "o" }, "[c", function() move.goto_previous_start("@class.outer",       "textobjects") end, { desc = "Prev class start" })
      vim.keymap.set({ "n", "x", "o" }, "[i", function() move.goto_previous_start("@conditional.outer", "textobjects") end, { desc = "Prev conditional start" })
      vim.keymap.set({ "n", "x", "o" }, "[l", function() move.goto_previous_start("@loop.outer",        "textobjects") end, { desc = "Prev loop start" })

      vim.keymap.set({ "n", "x", "o" }, "[F", function() move.goto_previous_end("@call.outer",        "textobjects") end, { desc = "Prev function call end" })
      vim.keymap.set({ "n", "x", "o" }, "[M", function() move.goto_previous_end("@function.outer",    "textobjects") end, { desc = "Prev method/function end" })
      vim.keymap.set({ "n", "x", "o" }, "[C", function() move.goto_previous_end("@class.outer",       "textobjects") end, { desc = "Prev class end" })
      vim.keymap.set({ "n", "x", "o" }, "[I", function() move.goto_previous_end("@conditional.outer", "textobjects") end, { desc = "Prev conditional end" })
      vim.keymap.set({ "n", "x", "o" }, "[L", function() move.goto_previous_end("@loop.outer",        "textobjects") end, { desc = "Prev loop end" })

      -- Repeatable move with ; and ,
      local ts_repeat_move = require("nvim-treesitter-textobjects.repeatable_move")
      vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
      vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
      vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
      vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })
      -- stylua: ignore end
    end,
  },
}
