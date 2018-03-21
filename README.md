# simple container to build acrn

Run from docker hub
```
docker run -it -v $PWD/build:/build/acrn/build akbennett/acrn-builder
```


Run from local build
```
docker build -t acrn . ; docker rm -f acrn ; docker run -it -v $PWD/build:/build/acrn/build acrn
```
