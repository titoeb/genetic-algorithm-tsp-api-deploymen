FROM rust:1.59.0 as api-builder
RUN cargo install genetic-algorithm-tsp-api --version 0.1.1

FROM debian:buster-slim as api-runner
COPY --from=api-builder /usr/local/cargo/bin/genetic-algorithm-tsp-api /tsp-solver/web-app
ENV ROCKET_ADDRESS=0.0.0.0
EXPOSE 8000
CMD ["/tsp-solver/web-app"]