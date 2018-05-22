* This is streaming video sink bundled up in a docker container. It
saves a specified video stream to a file for later post processing

To build container:
```bash
docker build -t <container_name> <this_folder>
```

To use container:
```bash
docker run --rm -v $PDW:/vidout -i rtsp://:8555/video
```
