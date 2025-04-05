# Usa la imagen oficial de MediaMTX
FROM bluenviron/mediamtx:latest

# Copia la configuración personalizada
COPY mediamtx.yml /mediamtx.yml

# Expón los puertos necesarios (Render solo usa 80 y 443)
EXPOSE 1935 80 443 8889 8189
