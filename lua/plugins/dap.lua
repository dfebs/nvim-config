-- See https://andreigatej.dev/blog/debugging-typescript-in-neovim/ for more info
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "stevearc/overseer.nvim",
      "jbyuki/one-small-step-for-vimkind",
    },
    config = function() -- config should be inside the nvim-dap plugin spec
      local dap = require("dap")
      local utils = require("dap.utils")
      local dapui = require("dapui")

      dap.adapters = {
        ["pwa-node"] = {
          type = "server",
          port = "${port}",
          executable = {
            command = "js-debug-adapter",
            args = {
              "${port}",
            },
          },
        },
      }

      dap.configurations.javascript = {
        {
          type = "pwa-node",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
        {
          type = "pwa-node",
          request = "attach",
          name = "Attach to process ID",
          processId = utils.pick_process,
          cwd = "${workspaceFolder}",
        },
      }
      dapui.setup({
        icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
        controls = {
          icons = {
            pause = "⏸",
            play = "▶",
            step_into = "⏎",
            step_over = "⏭",
            step_out = "⏮",
            step_back = "b",
            run_last = "▶▶",
            terminate = "⏹",
            disconnect = "⏏",
          },
        },
      })

      dap.listeners.after.event_initialized["dapui_config"] = dapui.open
      dap.listeners.before.event_terminated["dapui_config"] = dapui.close
      dap.listeners.before.event_exited["dapui_config"] = dapui.close
    end,
  },
  {
    "mxsdev/nvim-dap-vscode-js", -- moved here as dependency
  },
}
