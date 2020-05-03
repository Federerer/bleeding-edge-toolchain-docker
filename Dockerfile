FROM alpine:3.11 as build

RUN apk update \
&& apk add make g++ python-dev git curl coreutils m4 ncurses texinfo tar

RUN curl -O https://raw.githubusercontent.com/FreddieChopin/bleeding-edge-toolchain/master/build-bleeding-edge-toolchain.sh \
&& chmod +x build-bleeding-edge-toolchain.sh

RUN export TERM=xterm \
&& sh build-bleeding-edge-toolchain.sh --skip-documentation --quiet

