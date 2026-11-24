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
bin/dockerScript create_dockerImage %IMAGE%
bin/dockerScript build_image %IMAGE% [-force]
bin/dockerScript run_image %IMAGE%
bin/dockerScript shell %IMAGE%
:
Docker
:
RM IMAGE   --- docker rmi %IMAGE%
LIST IMAGE --- docker images
SHELL      --- docker exec -it %NAME% sh
```

## License
- [MIT](LICENSE.md)