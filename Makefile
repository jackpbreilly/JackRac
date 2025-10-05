install:
	sudo apt install -y make pandoc texlive-xetex texlive-fonts-recommended

build:
	pandoc resume.md --from=markdown+yaml_metadata_block \
  		--template=template.latex --pdf-engine=xelatex \
  		--resource-path=".:images" \
  		-o jack_reilly_resume.pdf
