local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

local setup, filetype = pcall(require, "Comment.ft")
if not setup then
	return
end

comment.setup()

filetype.vyper = "#%s"
