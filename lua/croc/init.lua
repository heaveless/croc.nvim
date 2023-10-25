local api = vim.api
local M = {}

function M.setup(config)
  api.nvim_create_user_command(
    "CrocSend", function(args)
      print ("config CrocSend command: " .. args)
    end,
    {
      range = true,
      nargs = '?',
      complete = function(ArgLead, CmdLine, CursorPos)
        print ("Args -> CrocSend: " .. ArgLead .. " " .. CmdLine .. " " .. CursorPos)
        return {}
      end
    }
  )

  api.nvim_create_user_command(
    "CrocGet", function(args)
      print ("config CrocGet command: " .. args)
    end,
    {
      range = true,
      nargs = '?',
      complete = function(ArgLead, CmdLine, CursorPos)
        print ("Args -> CrocGet: " .. ArgLead .. " " .. CmdLine .. " " .. CursorPos)
        return {}
      end
    }
  )
end

return M
