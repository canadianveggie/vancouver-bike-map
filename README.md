# vancouver-bike-map

Visualizing Vancouver's bike network over time.

Loads the highway system maps and EV fast chargers and determines which highways are traversable by EV while fast charging.

![Vancouver's bike map](images/vancouver_bike_map.gif)

## Running locally

You need to have python installed locally.

`make install`
`make jupyter`

This will open up a Jupyter notebook that will run and analyze the data.

## Creating an animated gif

`make gifs`

## Data Sources

* City of Vancouver [Bikeways](https://opendata.vancouver.ca/explore/dataset/bikeways/)
