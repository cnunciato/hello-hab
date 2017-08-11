# hello-hab

An example of one way to package a web site and web server with [Habitat](http://habitat.sh) and [Nginx](http://nginx.org/).

First, [download and install Habitat](http://habitat.sh/download/), then follow the instructions to create an account and create an origin. Then:

### 1. Make sure this works:

```
$ hab --version
hab 0.29.1/20170810235219
```

### 2. Enter the studio:

```
$ export HAB_ORIGIN="your-origin"
$ export HAB_DOCKER_OPTS="-p 8080:80" # If you're building on Mac or Windows
$ hab studio enter
```

### 3. Build both packages and start the server:

```
[1][default:/src:0]# build site
[2][default:/src:0]# build server
[3][default:/src:0]# hab start $HAB_ORIGIN/hello-hab-server
```

### 4. Browse to the server at [http://localhost:8080](http://localhost:8080).

You should see a blank page.

### 5. Reconfigure the server to use content from the web-site package:

```
[3][default:/src:0]# echo "[http.server]
root = '$(hab pkg path cnunciato/hello-hab-site)/dist'" | hab config apply hello-hab-server.default 1
```

```
» Applying configuration for hello-hab-server.default incarnation 1
Ω Creating service configuration
✓ Verified this configuration is valid TOML
↑ Applying to peer 127.0.0.1:9638
★ Applied configuration
```

### 6. Reload [http://localhost:8080](http://localhost:8080).

You should no longer see a blank page!



