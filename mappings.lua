-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>pn"] = { name = "Package Info" },
    ["<leader>pns"] = {
      function()
        require("package-info").show()
      end,
      desc = "Show dependency versions"
    },
    ["<leader>pnc"] = {
      function()
        require("package-info").hide()
      end,
      desc = "Hide dependency versions"
    },
    ["<leader>pnt"] = {
      function()
        require("package-info").toggle()
      end,
      desc = "Toggle dependency versions"
    },
    ["<leader>pnu"] = {
      function()
        require("package-info").update()
      end,
      desc = "Update dependency on the line"
    },
    ["<leader>pnd"] = {
      function()
        require("package-info").delete()
      end,
      desc = "Delete dependency on the line"
    },
    ["<leader>pni"] = {
      function()
        require("package-info").install()
      end,
      desc = "Install a new dependency"
    },
    ["<leader>pnp"] = {
      function()
        require("package-info").change_version()
      end,
      desc = "Change version manually"
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
