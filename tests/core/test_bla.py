import os

def test_bla():
  for key, value in os.environ.items():
    print(f"{key}: {value}")
  assert False
