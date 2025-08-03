.PHONY: check
check: checkinstall
	pre-commit run --all-files

.PHONY: checkinstall
checkinstall:
	pre-commit install

.PHONY: checkupdate
checkupdate: checkinstall
	pre-commit autoupdate

.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: test
test:
	pytest

.PHONY: lint
lint:
	flake8 .

.PHONY: clean
clean:
	rm -rf __pycache__ *.pyc build dist
