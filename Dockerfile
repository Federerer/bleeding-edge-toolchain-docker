FROM alpine:3.11 as build

RUN apk update \
&& apk add make g++ python-dev git curl coreutils m4 ncurses texinfo tar

RUN export TERM=xterm \
&& sh bet/build-bleeding-edge-toolchain.sh --skip-documentation --quiet

