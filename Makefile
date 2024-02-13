default: build

build: 
	podman build -t frie321984/lernbash:beta .

dev:
	podman run -it frie321984/lernbash:beta

dev-with-tmp-foo:
	mkdir -p /tmp/foo
	chmod -R 777 /tmp/foo
	podman run -v /tmp/foo:/home/hera/.lb -it frie321984/lernbash:beta

