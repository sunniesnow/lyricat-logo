target_dir := build

all: svg png ico

svg: logo.svg
	mkdir -p $(target_dir)
	inkscape --export-plain-svg=$(target_dir)/logo.svg logo.svg

ico: $(target_dir)/logo.png
	convert -background none $(target_dir)/logo.png -define icon:auto-resize $(target_dir)/logo.ico

png: logo.svg
	mkdir -p $(target_dir)
	inkscape logo.svg -o $(target_dir)/logo.png

clean:
	rm -r $(target_dir)
