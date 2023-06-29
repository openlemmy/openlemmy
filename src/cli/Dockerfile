FROM rust:1.70.0-alpine

WORKDIR /usr/src/cli
COPY . .

RUN cargo install --path .

CMD ["openlemmy"]
