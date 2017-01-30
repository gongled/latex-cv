# About

Basic template for russian's CV based on LaTeX markup.

![CV template based on LaTeX](https://raw.githubusercontent.com/gongled/latex-cv/master/img/screenshot.png)

## Requirements

- Docker

## Usage

Pull image from the Docker registry:

```
$ make pull
```

Or build your own image from scratch using following command:

```
$ make build
```

Run command to compile PDF from *.tex sources:

```
$ make
```

Great. Now you can take a look at PDF document on the same directory.

## License

MIT
