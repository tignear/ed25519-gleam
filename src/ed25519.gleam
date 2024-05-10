@external(erlang, "ed25519_shim", "verify")
pub fn verify(
  message: BitArray,
  signature: BitArray,
  public_key: BitArray,
  callback: fn(Bool) -> Nil
) -> Nil

@external(erlang, "ed25519_shim", "sign")
pub fn sign(
  message: BitArray,
  public_key: BitArray,
  private_key: BitArray,
  callback: fn(BitArray) -> Nil
) -> Nil
// PrivateKey,PublicKey
@external(erlang, "ed25519_shim", "generate_key")
pub fn generate_key(callback: fn(#(BitArray, BitArray))->Nil) -> Nil
