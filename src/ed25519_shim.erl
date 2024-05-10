-module(ed25519_shim).
-export([verify/3, sign/3, generate_key/0]).

verify(Message, Signature, Key) ->
    public_key:verify(Message, none, Signature, {ed_pub, ed25519, Key}).

sign(Message, PublicKey, PrivateKey) ->
    public_key:sign(Message, none, {ed_pri, ed25519, PublicKey, PrivateKey}).

generate_key() ->
    {'ECPrivateKey', 1, PrivateKey, _, PublicKey, asn1_NOVALUE} = public_key:generate_key(
        {namedCurve, ed25519}
    ),
    {PrivateKey, PublicKey}.
