# Build

```
docker build -t 0verkill .
```

# Run a server

```
docker run -it --rm --name server -p 6666:6666 0verkill /app/server -p 6666
```

# Run a bot

```
docker run -it --rm --name bot --link server:server 0verkill /app/bot -a server -p 6666 -n foo
```

# Run a client

```
docker run -it --rm --link server:server 0verkill /app/0verkill -i server -p 6666
```
