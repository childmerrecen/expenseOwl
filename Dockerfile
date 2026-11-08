FROM golang:alpine AS builder

WORKDIR /app

COPY . .

# Build the application
RUN go build -o expenseowl ./cmd/expenseowl

# Use a minimal alpine image for running
