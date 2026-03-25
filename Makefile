python-test:
	pytest

clean:
	rm -rf ./dist

python:
	rm -rf docs && \
	rm -rf digitalfemsa/models && \
	docker run --rm \
    -v ${PWD}:/local openapitools/openapi-generator-cli:v7.5.0 generate \
	-i https://raw.githubusercontent.com/digitalfemsa/openapi/main/_build/api.yaml \
	-g python \
	-o /local \
	-c /local/config-python.json \
	--global-property modelTests=false

update-version:
	@if [ -z "$(VERSION)" ]; then \
		echo "Usage: make update-version VERSION=1.0.3"; \
		exit 1; \
	fi
	@echo "Updating version to $(VERSION)..."
	@echo "$(VERSION)" > VERSION
	@sed -i '' 's/VERSION = "[^"]*"/VERSION = "$(VERSION)"/' setup.py
	@sed -i '' 's/"packageVersion": "[^"]*"/"packageVersion": "$(VERSION)"/' config-python.json
	@sed -i '' 's|"httpUserAgent": "[^"]*"|"httpUserAgent": "App/v2 PythonBindings/$(VERSION)"|' config-python.json
	@sed -i '' 's/__version__ = "[^"]*"/__version__ = "$(VERSION)"/' digitalfemsa/__init__.py
	@sed -i '' 's/version = "[^"]*"/version = "$(VERSION)"/' pyproject.toml
	@sed -i '' 's/- Package version: .*/- Package version: $(VERSION)/' README.md
	@sed -i '' "s/'bindings_version': '[^']*'/'bindings_version': '$(VERSION)'/" digitalfemsa/api_client.py
	@sed -i '' 's/SDK Package Version: [0-9]\.[0-9]\.[0-9]/SDK Package Version: $(VERSION)/' digitalfemsa/configuration.py
	@echo "✨ Version updated to $(VERSION) successfully!"
