import sys

def is_venv():
  return (hasattr(sys, 'real_prefix') or
    (hasattr(sys, 'base_prefix') and sys.base_prefix != sys.prefix))

if is_venv():
  print("Inside Python Virtual Environment")
else: 
  print("Outside Python Virtual Environment")
