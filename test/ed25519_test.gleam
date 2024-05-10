import ed25519
import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

pub fn ed25519_test() {
  let assert #(private_key, public_key) = ed25519.generate_key()
  let message = <<"Hello":utf8>>
  ed25519.sign(message, public_key, private_key)
  |> ed25519.verify(message, _, public_key)
  |> should.be_true()
}
