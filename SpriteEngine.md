Sprite engine
=============

For VGA 1280 x 1024 @ 60 Hz
16 * 16 bit patterns, with 8 color codes. (4 bits)
16 * 16 bit patterns, with 4 color codes. (2 bits)
Build in: 
	- Blink (2 bit)
	- Animations (4 bit)

Frame data
----------

        +--------------+--------------+-----------+----------------+----------------+
        | X            | Y            | ID        | State          | Color 1 -> 5   | \
        | 10 bit       | 10 bit       | 8 bit     | 12 bit         | 5 * 12 bit     |  \
        | 0 -> 1279    | 0 -> 1023    | 0 -> 255  | 0123 4566 7777 |                |   \
        +--------------+--------------+-----------+----------------+----------------+   /
    MIN | 00 0000 0000 | 00 0000 0000 | 0000 0000 | 0000 0000 0000 | 0000 0000 0000 |  /
    MAX | 11 1111 1111 | 11 1111 1111 | 1111 1111 | 1111 1111 1111 | 1111 1111 1111 | /
        +--------------+--------------+-----------+----------------+----------------+

4 Bits:   10 + 10 + 8 + 12 + 5 * 12 = 100
2 Bits:   10 + 10 + 8 + 12 + 2 * 12 = 64

State bits
0. In use
1. Visible
2. Flip Horizontal
3. Flip Vertical
4. Now Effect
5. Now Blinking
6. Blink counter
7. Effect counter

Sprite data
-----------

        +-----------+--------+-----------------+
        | ID        | Effect | Data            | \
        | 8 bit     | 4 bit  | 16 * 16 * 4 bit |  \
        | 0 -> 255  |        |                 |   \
        +-----------+--------+-----------------+   /
    MIN | 0000 0000 | 0000   | 0000            |  /
    MAX | 1111 1111 | 1111   | 1111            | /
        +-----------+--------+-----------------+

A bus: 8 + 4 = 12
D bus: 16 * 16 * 4 = 1024

Possible Data 4 Bits
0: Transparant
1: Black
2: White
3: Color 1
4: Color 2
5: Color 3
6: Color 4
7: Color 5
