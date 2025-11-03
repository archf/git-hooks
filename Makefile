BIN = ~/.local/bin/git-hooksctl
SUCCESS_MSG = "All done! Make sure '~/.local/bin' is in your PATH"

.PHONY: install update uninstall

update:
	@git pull --rebase

install: $(BIN)

$(BIN):
	ln -sf $(CURDIR)/$(@F) $@
	@echo $(SUCCESS_MSG)

uninstall:
	rm -f $(BIN)
