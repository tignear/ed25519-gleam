# ed25519-gleam
```gleam
import ed25519

pub fn main() {
  let assert #(private_key, public_key) = ed25519.generate_key()
  let message = <<"Hello":utf8>>
  let signature = ed25519.sign(message, public_key, private_key)
  ed25519.verify(message, signature, public_key) |> should.be_true()
}
```

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
