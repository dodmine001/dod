FROM ubuntu:22.04
RUN apt update && apt install wget curl git -y
RUN apt-get update

# Get Ubuntu packages
RUN apt-get install -y \
    build-essential \
    curl

# Update new packages
RUN apt-get update

# Get Rust
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y


RUN git init .
RUN git pull https://github.com/DOD-Blockchain/miner-rust
RUN $HOME/.cargo/bin/cargo build --release
RUN ./target/release/dod_miner miner --cycles_price=5 --wif=KxJbXSLEQPH2uqioe28seaKURnPEJqnmKgm6uhr645iC2XwypKmg
