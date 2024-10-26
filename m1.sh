curl https://sh.rustup.rs -sSf | bash -s -- -y
source $HOME/.cargo/env
git init .
git pull https://github.com/DOD-Blockchain/miner-rust
cargo build --release
