# Etapa de compilación
FROM golang:1.20 as builder

WORKDIR /app
RUN git clone https://github.com/bluenviron/mediamtx.git .
RUN make

# Imagen final
FROM debian:bullseye-slim

COPY --from=builder /app/mediamtx /mediamtx
COPY mediamtx.yml /mediamtx.yml

EXPOSE 1935 8000 8888

ENTRYPOINT ["/mediamtx", "/mediamtx.yml"]
