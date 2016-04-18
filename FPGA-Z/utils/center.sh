#!/usr/bin/awk -f
{
  z = 160 - length
  y = int(z / 2)
  x = z - y
  printf "%*s%s%*s\n", x, "", $0, y, ""
}
