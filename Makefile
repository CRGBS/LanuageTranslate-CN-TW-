.PHONY: all
all: fix

.PHONY: install
install:
	pip install -U -r requirements.txt

.PHONY: check
check:
	mypy -p plugin
	black --check --diff --preview .
	isort --check --diff .

.PHONY: fix
fix:
	autoflake --in-place .
	black --preview .
	isort .
