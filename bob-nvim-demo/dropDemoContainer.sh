#!/bin/bash

docker stop bob-nvim-demo && docker rm bob-nvim-demo

docker rmi bob-nvim-demo
