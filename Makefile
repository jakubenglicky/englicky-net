init:
	composer install --prefer-dist --no-progress --no-suggest --no-interaction --optimize-autoloader

static:
	php vendor/bin/statie generate source --output=public
