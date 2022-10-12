This project extends [docker-compresspdf](https://github.com/dcycle/docker-compresspdf) by handling multiple pdf.

For each pdf in /app (mounted by volume) it runs the compression. If compression succeded (very simple check by existing file), the uncompressed pdf is moved to original folder and the compressed pdf gets the original filename.

For example, under linux:

    docker run --rm \
      -v $(pwd)/uncompressed-pdf:/app engelb/compresspdf:latest \
      (screen | ebook | printer)

For example, under windows:

    docker run --rm \
      -v %cd%/uncompressed-pdf:/app engelb/compresspdf:latest \
      (screen | ebook | printer)

```
$ docker build -t engelb/compresspdf:latest . 
$ docker push engelb/compresspdf:latest
```

See [this project on the Docker Hub](https://hub.docker.com/r/engelb/openhab/).
