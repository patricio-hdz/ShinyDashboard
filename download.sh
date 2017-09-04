#!/bin/bash


download_fun () {
wget -O ~/Documents/data_patricio-hdz/cuadrantes.zip "https://data.diegovalle.net/hoyodecrimen/cuadrantes.csv.zip"
}

mkdir ~/Documents/data_patricio-hdz

download_fun

unzip -d ~/Documents/data_patricio-hdz/ ~/Documents/data_patricio-hdz/cuadrantes.zip

