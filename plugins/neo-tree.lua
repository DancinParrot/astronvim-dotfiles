return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  opts = {
    -- Close on file open
    --[[ event_handlers = {
      {
        event = "file_opened",
        handler = function(_)
          --auto close
          require("neo-tree").close_all()
        end,
      },
    }, ]]
    window = {
      auto_expand_width = true,
    },
    filesystem = {
      -- Hidden files visble
      filtered_items = {
        visible = true,
      },
      follow_current_file = false,
      --[[ window = {
        mappings = {
          ["/"] = "noop",
          ["s"] = "noop",
          ["S"] = "noop",
          ["g/"] = "fuzzy_finder",
          ["Z"] = "expand_all_nodes",
          ["<C-s>"] = "open_split",
          ["<C-v>"] = "open_vsplit",
        },
      }, ]]
    },
    buffers = {
      follow_current_file = false,
    },
    source_selector = {
      -- having these both false just show normal file path in neo-tree
      winbar = false, -- toggle to show selector on winbar
      statusline = false,
      sources = {
        -- Comment back in if you want sources later
        { source = "filesystem" },
        -- { source = "buffers" },
        -- { source = "git_status" },
      },
      separator = { left = "", right = "" },
    },
  },
}
