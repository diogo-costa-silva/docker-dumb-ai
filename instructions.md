#### a successful setup should display both the server and client information
docker version

#### check docker version
docker --version

docker images

#### build the image
docker build -t dumbinho:v1 .

docker images

#### run the image previously created
docker run -p 0.0.0.0:1234:8501 dumbinho:v1

http://localhost:1234/

## 4. push the image to Docker Hub

#### 4.1. create a repository in Docker Hub

#### 4.2. Tag your local image
docker tag local-image:tagname new-repo:tagname
docker tag dumbinho:v1 dccsilva/dumbinhohub:v01

docker images

#### 4.3. sign in to docker hub via CLI:
docker login

#### 4.4. push the image to docker hub
docker push new-repo:tagname
docker push dccsilva/dumbinhohub:v01

## 5. Pulling and Running the Dockerized App from Docker Hub

docker images

docker image rm --force dccsilva/dumbinhohub:v01

docker images

docker run -p 1234:8501 dccsilva/dumbinhohub:v01