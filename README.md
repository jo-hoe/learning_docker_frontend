This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Docker
React [currently just switches](https://github.com/facebook/create-react-app/issues/8688) of once started in docker. This can be mitigated by attaching a stidn. You may run the docker docker container by using the following command
`docker run -it -p 8080:3000 27c9fe82bdcc`

## Docker Compose
It is an npm project and can be started with
`docker-compose up`

## Tests
To test you may use `docker exec -it 43aa8b23bb80 npm run test` while the container is running. With this you will attach to the running component and execute the tests within.
