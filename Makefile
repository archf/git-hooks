BIN = ~/bin/git-hooks
SUCCESS_MSG = "All done! Make sure '~/bin' is in your PATH"

.PHONY: install update

update:
	@git pull --rebase

install: $(BIN)

$(BIN):
	ln -s $(PWD)/$(@F) $@
	@echo $(SUCCESS_MSG)