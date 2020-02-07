###
# All-in-one build command.
###
build: build-protocol-definitions

###
# Protobuf Definitions.
# This will generate Protobuf definitions from ./proto to both Go and JS/TypeScript.
###
build-protocol-definitions:
	prototool generate ${PWD}/proto

###
# Create new frontend plugin.
# This will run Cookiecutter to generate a new Backstage frontend plugin.
###
scaffold-new-frontend-plugin:
	${PWD}/tools/cookiecutter/init.sh frontend/packages/plugins/_template --output-dir frontend/packages/plugins