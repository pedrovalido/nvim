local setup, todo_comments = pcall(require, "todo-comments")
if not setup then
	return
end

local keymap = vim.keymap

keymap.set("n", "]t", function()
	todo_comments.jump_next()
end, { desc = "Previous TODO comment" })

keymap.set("n", "[t", function()
	todo_comments.jump_prev()
end, { desc = "Next TODO comment" })

todo_comments.setup()

-- TODO:
-- HACK:
-- BUG:
-- FIXME:
-- NOTE:
