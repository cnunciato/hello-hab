# hello-hab

An example of one way to package a web site and web server with [Habitat](http://habitat.sh).

First, install Habitat. Then:

```
$ export HAB_ORIGIN="your-origin"
$ export HAB_DOCKER_OPTS="-p 8080:80"
$ hab studio enter
```

Then, in the studio:

```
[1][default:/src:0]# build site
[2][default:/src:0]# build server
[2][default:/src:0]# hab start $HAB_ORIGIN/hello-hab-server
```
