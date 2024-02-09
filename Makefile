default: build

build: 
	podman build -t frie321984/lernbash:beta .

dev:
	podman run -v /tmp/foo:/home/hera/.lb -it frie321984/lernbash:beta

