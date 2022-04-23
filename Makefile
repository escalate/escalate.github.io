SHELL = /bin/bash
.SHELLFLAGS = -e -o pipefail -c

.PHONY: deploy
deploy: init
	hugo
	cd public/; \
	git add .; \
	git commit --message "feat: update website"; \
	git push origin master

.PHONY: init
init:
	rm --recursive --force ./public/
	git clone git@github.com:escalate/escalate.github.io.git public
