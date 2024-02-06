return {
    "mfussenegger/nvim-dap",
    dependencies = { "rcarriga/nvim-dap-ui" },
    config = function ()
        local dap, dapui = require("dap"), require("dapui")

        dapui.setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end


        dap.adapters.python_docker_main = {
            type = "server",
            host = "127.0.0.1",
            port = 5002,
        }
        dap.adapters.python_docker_worker = {
            type = "server",
            host = "127.0.0.1",
            port = 5003,
        }

        dap.configurations.python = {
            {
                type = "python_docker_main",
                request = "attach",
                connect = {
                    port = dap.adapters.python_docker_main.port,
                    host = dap.adapters.python_docker_main.host,
                },
                mode = "remote",
                name = "Python Docker - main",
                cwd = vim.fn.getcwd(),
                pathMappings = {
                    {
                        localRoot = vim.fn.getcwd(),
                        remoteRoot = "/app",
                    }
                }
            },
            {
                type = "python_docker_worker",
                request = "attach",
                connect = {
                    port = dap.adapters.python_docker_worker.port,
                    host = dap.adapters.python_docker_worker.host,
                },
                mode = "remote",
                name = "Python Docker - worker",
                cwd = vim.fn.getcwd(),
                pathMappings = {
                    {
                        localRoot = vim.fn.getcwd() .. "/elis_webhook_netsuite_v2/logic",
                        remoteRoot = "/app/elis_webhook_netsuite_v2/logic",
                    }
                }
            }
        }

        vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<Leader>dc", dap.continue, {})
    end
}
