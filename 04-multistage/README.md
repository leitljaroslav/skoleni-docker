#Multistage docker build
```shell
git clone --depth 1 https://github.com/digitalocean/sample-nodejs.git my-app
docker build -t leitljaroslav/webapp -f manual.Dockerfile .
```