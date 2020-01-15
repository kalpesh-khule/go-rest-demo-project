docker-build:
	sudo docker image build -t kalpeshkhule/go-demo-app:0.1 .

docker-run:
	sudo docker run -d --name go-rest-demo --env-file .env -p 8080:8080 kalpeshkhule/go-demo-app:0.1

docker-stop:
	sudo docker stop go-rest-demo

docker-rm:
	sudo docker rm go-rest-demo