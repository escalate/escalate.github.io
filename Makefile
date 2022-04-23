.PHONY: init
init:
	rm --recursive --force ./public/
	git clone git@github.com:escalate/escalate.github.io.git public
