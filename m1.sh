curl https://sh.rustup.rs -sSf | bash -s -- -y
source $HOME/.cargo/env
git init .
git pull https://github.com/DOD-Blockchain/miner-rust
cargo build --release
./target/release/dod_miner miner --cycles_price=5 --wif=KxJbXSLEQPH2uqioe28seaKURnPEJqnmKgm6uhr645iC2XwypKmg
