FROM golang:latest AS builder

WORKDIR /code-education

COPY ./hello.go /code-education 

RUN go build hello.go


FROM scratch
WORKDIR /code-education
COPY --from=builder /code-education .
CMD ["./hello"]