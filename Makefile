.PHONY: run build clean install help

help:
	@echo "Available commands:"
	@echo "  make run       - Start development server (with watch)"
	@echo "  make build     - Build site for production"
	@echo "  make clean     - Remove build artifacts"
	@echo "  make install   - Install dependencies"

run:
	bundle exec jekyll serve --watch

build:
	bundle exec jekyll build

clean:
	bundle exec jekyll clean

install:
	bundle install