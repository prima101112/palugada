# PALUGADA

> palugada is `apa lu mau gua ada` anything you need i'm here

palugada is a docker images base on alpine that full of tools
this images is created because we need more than busybox and less than full ubuntu images
please add if you need anything or just copy and build your own images

## feature

### networking tools
this image is full with networking debuger. to test connection 
between pods or test connection outside cluster or create request using curl
or dump tcp with tcp dump

### produce logs testing
this image also produce logs in interval time (default 10 minutes) 
this feature is to test logging system. when u setup logging system
using flags to set it on of
`-logtest=true` #enable log testing
`-logintv=3` #log interval in second
`-logstr=3` #log string that will be printed or pass to logging system

### server ping pong
`-port=8080` #this is port where palugada running

### include vim and redis
in case anyone edit file inside the pods or check redis connection 

## Kubernetes
you could apply this at once with
`kubectl create -f https://raw.githubusercontent.com/prima101112/palugada/master/palugada.yaml`
this raw will create pods and service in default namespace
