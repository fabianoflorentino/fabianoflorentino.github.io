# fabianoflorentino.github.io

Blog pessoal para divulgação de conteúdo técnico e artigos com passo a passo.

## Criar Imagem

```bash
docker build -t fabianoflorentino/hugo -f ./Dockerfile .
```

## Inicializar Container

```txt
Extrair conteúdo src.tgz
```

```shell
tar xvf src.tgz
```

```txt
Entrar no diretório ./src/ e execute o container.
```

```shell
docker run -d --name hugo -p 1313:1313 \
  -v ${PWD}/src:/site \
  -v ${PWD}/log:/var/log \
  -w /site fabianoflorentino/hugo:latest
```
