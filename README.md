# Ruby Web Server

A dead simple `containerized` Ruby web server.
Serves on port 80.
/healthcheck path returns "OK"
All other paths return "Well, hello there!"

## Getting Started

I forked and dockerized [http_server](https://github.com/sawasy/http_server) so to run the server using docker:

- First build the image:

```
docker build -t ruby_server:v0.1.0 .
```

- Then run it using:

```
docker run --name ruby_server -p 80:80 -d ruby_server:v0.1.0
```

Now you can go to [localhost](http://localhost) to see the result.