export concurrently_colors := "blue,green,yellow,magenta,cyan,white"

help:
    just --list

build:
    npx spago build

dev:
    watchexec --exts purs,js,yaml npx spago build

install +args="":
    npx spago install {{args}}

spago +args="":
    npx spago {{args}}

repl:
    npx spago repl

run:
    npx spago run

test:
    npx spago test

watch:
    watchexec --exts purs,js,yaml npx spago test

all:
    concurrently \
    --names "test,lint" \
    --prefix-colors ${concurrently_colors} \
        "just test" \
        "just lint"
