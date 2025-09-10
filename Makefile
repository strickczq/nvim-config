.PHONY: sync-us
sync-us:
	rsync -avzP --delete . hins-us:~/.config/nvim
