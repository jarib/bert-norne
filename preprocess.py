import re
import sys

name_re = re.compile(r".*name=(\S+)")

for line in open(sys.argv[1], "r"):
    line = line.strip()

    if not line:
        print("")
    elif not line.startswith("#"):
        parts = line.split("\t")
        print(parts[1], "", name_re.match(parts[9])[1])
