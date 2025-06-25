#/usr/bash

docker build -t rasa-setup .

docker run -it -v $(pwd)/rasa:/app/rasa -p 5005:5005 rasa-setup 
