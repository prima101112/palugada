# PALUGADA

palugada is a docker images base on alpine that full of tools
please add if you need anything or just copy and build your own images

## feature

### network debuger

this image is full with networking debuger. to test connection 
between pods or test connection outside cluster or create request using curl
or dump tcp with tcp dump

### produce logs

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