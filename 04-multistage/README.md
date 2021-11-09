#Multistage docker build
```shell
git clone --depth 1 https://github.com/twbs/bootstrap-npm-starter.git
docker build -t leitljaroslav/webapp -f manual.Dockerfile .
```