.DEFAULT_GOAL := generate

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
current_dir := $(dir $(mkfile_path))

generate: generate_go_docker

generate_go_docker:
	docker run --rm -v $(current_dir):/defs namely/protoc-all -d protos/** -l go