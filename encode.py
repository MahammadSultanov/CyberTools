#!/usr/bin/python3
import urllib.parse

query = input()
encoded_query = urllib.parse.quote(query)
print(encoded_query)
