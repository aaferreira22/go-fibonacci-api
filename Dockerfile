# 1 — Base image
FROM golang:1.20

# 2 — Diretório dentro do container
WORKDIR /app

# 3 — Copiar o código
COPY . .

# 4 — Compilar a app
RUN go build -o fibonacci .

# 5 — Expor a porta
EXPOSE 8080

# 6 — Comando start
CMD ["./fibonacci"]
