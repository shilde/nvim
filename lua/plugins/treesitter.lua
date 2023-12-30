 return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TiSUpdate",
   config = function()
   local config = require("nvim-treesitter.configs")
   config.setup({
     ensure_installed = {"lua", "javascript"},
     highlight = { enable = true },
     indent = { enable = true },  
   })
   end
 }
