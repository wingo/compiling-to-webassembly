stem=fosdem-2021-compiling-to-webassembly

all: $(stem)-slides.pdf

clean:
	rm -f $(stem)-slides.pdf

$(stem)-slides.pdf: $(stem).texi background.svg
	/opt/guile/env texi-to-pdf-presentation "$<" "$@"
