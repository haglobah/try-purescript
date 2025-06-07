export concurrently_colors := "blue,green,yellow,magenta,cyan,white"

help:
    just --list




all:
    concurrently \
    --names "test,lint" \
    --prefix-colors ${concurrently_colors} \
        "just test" \
        "just lint"
