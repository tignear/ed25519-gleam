import gleam/io

@external(erlang, "ed25519_shim", "verify")
pub fn verify(
  message: BitArray,
  signature: BitArray,
  public_key: BitArray,
) -> Bool

@external(erlang, "ed25519_shim", "sign")
pub fn sign(
  message: BitArray,
  public_key: BitArray,
  private_key: BitArray,
) -> BitArray

@external(erlang, "ed25519_shim", "generate_key")
pub fn generate_key() -> #(BitArray, BitArray)

pub fn main() {
  io.println("Hello from ed25519!")
}
