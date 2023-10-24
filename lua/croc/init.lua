local api = vim.api
local M = {}

function M.setup(config)
  api.nvim_create_user_command(
    "CrocSend", function(args)
      print "config croc CrocSend is running..."
    end,
    {
      range = true,
      nargs = '?',
      complete = function(ArgLead, CmdLine, CursorPos)
        return {}
      end
    }
  )

  api.nvim_create_user_command(
    "CrocGet", function(args)
      print "config croc CrocGet is running..."
    end,
    {
      range = true,
      nargs = '?',
      complete = function(ArgLead, CmdLine, CursorPos)
        return {}
      end
    }
  )
end

return M
