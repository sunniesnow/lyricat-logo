target_dir := build

all: svg png ico

svg: logo.svg logoCN.svg
	mkdir -p $(target_dir)
	inkscape --export-plain-svg=$(target_dir)/logo.svg logo.svg
	inkscape --export-plain-svg=$(target_dir)/logoCN.svg logoCN.svg

ico: $(target_dir)/logo.png $(target_dir)/logoCN.png
	convert -background none $(target_dir)/logo.png -define icon:auto-resize $(target_dir)/logo.ico
	convert -background none $(target_dir)/logoCN.png -define icon:auto-resize $(target_dir)/logoCN.ico

png: logo.svg logoCN.svg
	mkdir -p $(target_dir)
	inkscape logo.svg -o $(target_dir)/logo.png
	inkscape logoCN.svg -o $(target_dir)/logoCN.png

clean:
	rm -r $(target_dir)
