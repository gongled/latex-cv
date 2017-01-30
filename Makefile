NS = gongled
REPO = latex
NAME = latex
VOLUMES = -v $(shell pwd):/data
TEXFILE = cv.tex

.PHONY: pdf shell run start clean stop rm build push pull

pdf:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO) /bin/bash -c "pdflatex $(TEXFILE)"

shell:
	docker run --rm --name $(NAME) -i -t $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO) /bin/bash

run:
	docker run --rm --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO)

start:
	docker run -d --name $(NAME) $(PORTS) $(VOLUMES) $(ENV) $(NS)/$(REPO)

clean:
	rm -f *.aux *.log *.pdf .DS_Store

stop:
	docker stop $(NAME)

rm:
	docker rm $(NAME)

build:
	docker build -t $(NS)/$(REPO) .

push:
	docker push $(NS)/$(REPO)

pull:
	docker pull $(NS)/$(REPO)

default: pdf
