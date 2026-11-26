# Docker Debian Scripts

![Docker LOGO](https://thumb.wikimedia.org/wikipedia/commons/thumb/8/89/Docker_Logo.svg/960px-Docker_Logo.svg.png)

- Project of docker automation scripts
- Creates dockerFile images in the `images` folder
- `images/baseimage` - template for all images
- `bin/dockerScript run_image %IMAGE%` runs the image with the project folder mounted as `/home/project`

## BIN

- .env
    - variables for scripts
- dockerScript

## dockerScript

- bin/dockerScript

```
HELP
:
echo "bin/dockerScript create_dockerImage %IMAGE%"
echo "bin/dockerScript build_image %IMAGE% [-force]"
echo "bin/dockerScript run_image %IMAGE%"
echo "bin/dockerScript shell %IMAGE%"
echo "bin/dockerScript shell_as_root %IMAGE%"
```

## Images

- golang_imagev1
    - debian 12, installed: golang, ginkgo
- clang_imagev1
    - debian 12, installed: g++, libcriterion-dev
- clang_golang_v1
    - debian 12
        - installed: golang, ginkgo
        - installed: g++, libcriterion-dev

## License
- [MIT](LICENSE.md)