FROM alpine:edge
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    curl \
    gcc \
    git \
    linux-headers \
    musl-dev\
    vim \
    neovim \
    py-pip \
    nodejs \
    npm \
    clang \
    clang-dev \
    rust-analyzer \
    python3-dev \
    py3-pip && \
    rm -rf /var/cache/apk/*

ENV LANG="ja_JP.UTF-8" LANGUAGE="ja_JP:ja" LC_ALL="ja_JP.UTF-8"
RUN pip3 install --upgrade pip neovim pynvim && \
    rm -rf /root/.cache

RUN mkdir -p /root/.config/nvim
COPY init.vim /root/.config/nvim
COPY coc-settings.json /root/.config/nvim/coc-settings.json
COPY colors /root/.config/nvim/colors
COPY _config /root/.config/nvim/_config
WORKDIR /root

# vim-plugのインストール
RUN curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN nvim -c PlugInstall -c q -c q
RUN nvim -c "CocInstall -sync coc-json coc-tsserver coc-prettier coc-clangd coc-rust-analyzer|q"
RUN chmod -R 777 /root

ENTRYPOINT ["nvim"]
