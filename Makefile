hw:
	docker run --rm \
		-v ${CURDIR}/src:/home/cp-src \
		-v ${CURDIR}/output:/home/output \
		make-hw:latest
	cp output/hw.pdf hw.pdf

build:
	docker build -t make-hw:latest .

run:
	cd src; pdflatex -output-directory ../output hw.tex

clean:
	sudo rm -f output/*
