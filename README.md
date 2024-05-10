# ed25519-gleam
```gleam
import ed25519

pub fn main() {
  use key_pair <- ed25519.generate_key()
  let assert #(private_key, public_key) = key_pair
  let message = <<"Hello":utf8>>
  use signature <- ed25519.sign(message, public_key, private_key)
  use result <- ed25519.verify(message, signature, public_key)
  should.be_true(result)
}
```

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
