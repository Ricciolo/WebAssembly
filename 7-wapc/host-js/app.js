const { instantiate } = require('@wapc/host');
const { encode, decode } = require('@msgpack/msgpack');
const { promises: fs } = require('fs');
const path = require('path');

async function main() {
  // Read wasm off the local disk as Uint8Array
  //buffer = await fs.readFile(path.join(__dirname, '../guest/out/rust_echo_string.wasm'));
  buffer = await fs.readFile(path.join(__dirname, '../guest-dotnet/bin/Debug/net7.0/echo.wasm'));

  // Instantiate a WapcHost with the bytes read off disk
  const host = await instantiate(buffer);

  // Encode the payload with MessagePack
  const payload = encode({ msg: 'hello world' });

  // Invoke the operation in the wasm guest
  const result = await host.invoke('echo', payload);

  // Decode the results using MessagePack
  const decoded = decode(result);

  // log to the console
  console.log(`Result: ${decoded}`);
}

main().catch(err => console.error(err));