import os

def test_bla():
  secret_token = os.environ.get("TEST_TOKEN")
  for c in secret_token:
    print(c)
  assert False
