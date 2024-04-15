return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
}
-- Examples:
-- ys iw "
-- ds "
-- cs " '
-- cs iw "
-- dst - delete tags
-- ys 8j t <article>
-- cst <new_tag_name>
