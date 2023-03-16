using WapcGuest;
using System.Text;

static byte[] echo(byte[] payload)
{
  return payload;
}

var wapc = new Wapc();
wapc.RegisterFunction("echo", echo);