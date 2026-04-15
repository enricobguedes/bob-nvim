#!/bin/bash

docker build . -t bob-nvim-demo 
docker run --name bob-nvim-demo -itd bob-nvim-demo tail -f /dev/null

docker exec -itd bob-nvim-demo /bin/bash -c "nvim --headless"

echo "Wait for nvim plugins to be built ......"

sleep 10 

echo "You can now use your demo container! "

echo "Use: docker exec -it bob-nvim-demo bash "

