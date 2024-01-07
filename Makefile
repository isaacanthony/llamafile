build:
	@docker build -t llamafile .

start:
	@docker run \
		--detach \
		--name llamafile \
		--publish 8080:8080 \
		llamafile

stop:
	@docker stop llamafile
	@docker rm llamafile
