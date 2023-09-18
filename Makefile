data:
	mkdir -p data

images:
	mkdir -p images

output:
	mkdir -p output

dirs: data output images

install: dirs
	poetry env use python3.9
	poetry install

jupyter: dirs
	poetry run jupyter-lab

jupyter-clean:
	poetry run jupyter nbconvert --to notebook --ClearOutputPreprocessor.enabled=True --inplace *.ipynb

gifs: dirs images/vancouver_bike_map.gif

images/vancouver_bike_map.gif: output/vancouver_bike_map_*.png
	convert -delay 75 output/vancouver_bike_map_*.png -delay 500 `ls -1 output/vancouver_bike_map_*.png | tail -n 1` -loop 0 images/vancouver_bike_map.gif
