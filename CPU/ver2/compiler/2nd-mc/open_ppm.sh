if [ -e "result.ppm" ]; then
    open result.ppm
else
    if [ -e "result.txt" ]; then
	cat ./result.txt > ./result.ppm;
	open result.ppm
    fi
fi
