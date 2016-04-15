Addresses
---------

Global map
==========

	0000		Start Dynamic, Start Header
	003F		End Header
@ 	000E		End Dynamic, Start Static (min = 0x000E)
	FFFF		End Static (or end story file)
@ 	0004		Begin High (min = End of Dynamic)
  1 FFFF		End High (always end of story file)

High & Static may overlap

Max mem size = 128 kb = 131 072 bytes = Max 17 bits

Header
======

0x0000		Version number
0x0001		FLAGS 1
	0		
	1		Status: 0 => score/turns, 1 =>  hours:mins
	2		Split across disks
	3
	4	IR	Status line not available
	5	IR	Screen split available
	6	IR	Variable pitch font default
	7
0x0002		
0x0003		
0x0004		High mem base addr (byte)
0x0005		
0x0006		IPC inital value addr(byte)
0x0007		
0x0008		Dictionary addr (byte)
0x0009		
0x000A		Object table table addr (byte)
0x000C		Global variables table addr (byte)
0x000E		Static mem base addr (byte)
0x0010		FLAGS 2	
	0	DIR	Transcribing?
	1	DR	Force fixed pitch
	2	
	3	
	4	
	5	
	6	
	7	
	8	
