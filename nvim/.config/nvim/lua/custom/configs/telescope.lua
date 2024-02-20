local telescope = require("telescope")

telescope.load_extension("media_files")
telescope.load_extension("project")

telescope.setup({
  extensions = {
    project = {
      sync_with_nvim_tree = true
    }
  },
})
