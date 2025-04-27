#!/usr/bin/env python3

import sys
import re

def slugify(text: str) -> str:
  text = text.lower()
  text = re.sub(r'[^a-z0-9\s-]', '', text)
  text = re.sub(r'[\s-]+', '-', text)
  return text.strip('-')

unslugifiedtext = sys.stdin.read()
sys.stdout.write(slugify(unslugifiedtext))
