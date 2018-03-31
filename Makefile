help:
	@echo "Awesome Django Makefile"
	@echo "-----------------------"
	@echo "check - Runs awesome_bot."
	@echo "setup - Installs development dependecies."
	@echo "render - Render README.md into index.html."


render:
	markdown_py README.md -f index.html -v

setup:
	pip install -r requirements.txt
	bundle install -V  --path vendor/bundle

check:
	bundle exec awesome_bot README.md --allow-dupe --white-list awesome-django,django-pagination,djangobeer,django-dynamic-preferences.,djangovillage,django-shop,djangocon.eu

