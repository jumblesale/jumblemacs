# jumblemacs

did you ever want to just edit some haskell in spacemacs without having
to do a whole load of fucking about??

## requirements
1. [docker](https://hub.docker.com/editions/community/docker-ce-desktop-mac)
1. [xquartz](https://www.xquartz.org/) (restart your mac after downloading this
   otherwise it is not going to work out so well)

## running

```
# build the docker image and tag it
bash build.sh
# install it to /usr/local/bin
bash install.sh
# cd into your haskell repo
jumblemacs
```

it will open a port in `xhost` so xquartz can communicate and mount your
current working directory. from there, use the [spacemacs haskell layer](https://github.com/syl20bnr/spacemacs/tree/master/layers/%2Blang/haskell) like
normal.

