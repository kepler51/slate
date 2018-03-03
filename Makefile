WWW := /mnt/www-data/apidoc

.MAIN: docs

docs:
	bundle exec middleman build

install: docs
	rsync -av ./build/ $(WWW)

