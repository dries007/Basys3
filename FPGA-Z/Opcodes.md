Z-Machine V3 Opcodes
--------------------

** V3 only **

Two-operand opcodes 2OP
=======================
St	Br	Opcode	Hex	V	Inform name and syntax
		------	0	---	---	
	*	2OP:1	1		je a b ?(label)
	*	2OP:2	2		jl a b ?(label)
	*	2OP:3	3		jg a b ?(label)
	*	2OP:4	4		dec_chk (variable) value ?(label)
	*	2OP:5	5		inc_chk (variable) value ?(label)
	*	2OP:6	6		jin obj1 obj2 ?(label)
	*	2OP:7	7		test bitmap flags ?(label)
*		2OP:8	8		or a b -> (result)
*		2OP:9	9		and a b -> (result)
	*	2OP:10	A		test_attr object attribute ?(label)
		2OP:11	B		set_attr object attribute
		2OP:12	C		clear_attr object attribute
		2OP:13	D		store (variable) value
		2OP:14	E		insert_obj object destination
*		2OP:15	F		loadw array word-index -> (result)
*		2OP:16	10		loadb array byte-index -> (result)
*		2OP:17	11		get_prop object property -> (result)
*		2OP:18	12		get_prop_addr object property -> (result)
*		2OP:19	13		get_next_prop object property -> (result)
*		2OP:20	14		add a b -> (result)
*		2OP:21	15		sub a b -> (result)
*		2OP:22	16		mul a b -> (result)
*		2OP:23	17		div a b -> (result)
*		2OP:24	18		mod a b -> (result)

** Opcode numbers 32 to 127: other forms of 2OP with different types. **

One-operand opcodes 1OP
=======================
St	Br	Opcode	Hex	V	Inform name and syntax
	*	1OP:128	0		jz a ?(label)
*	*	1OP:129	1		get_sibling object -> (result) ?(label)
*	*	1OP:130	2		get_child object -> (result) ?(label)
*		1OP:131	3		get_parent object -> (result)
*		1OP:132	4		get_prop_len property-address -> (result)
		1OP:133	5		inc (variable)
		1OP:134	6		dec (variable)
		1OP:135	7		print_addr byte-address-of-string

		1OP:137	9		remove_obj object
		1OP:138	A		print_obj object
		1OP:139	B		ret value
		1OP:140	C		jump ?(label)
		1OP:141	D		print_paddr packed-address-of-string
*		1OP:142	E		load (variable) -> (result)
*		1OP:143	F	1/4	not value -> (result)

** Opcode numbers 144 to 175: other forms of 1OP with different types. **

Zero-operand opcodes 0OP
========================
St	Br	Opcode	Hex	V	Inform name and syntax
		0OP:176	0		rtrue
		0OP:177	1		rfalse
		0OP:178	2		print (literal-string)
		0OP:179	3		print_ret (literal-string)
		0OP:180	4	1/-	nop
	*	0OP:181	5	1	save ?(label)
	*	0OP:182	6	1	restore ?(label)

		0OP:183	7		restart
		0OP:184	8		ret_popped
		0OP:185	9	1	pop
	
		0OP:186	A		quit
		0OP:187	B		new_line
		0OP:188	C	3	show_status
	*	0OP:189	D	3	verify ?(label)

** Opcode numbers 192 to 223: VAR forms of 2OP:0 to 2OP:31. **

Variable-operand opcodes VAR
============================
St	Br	Opcode	Hex	V	Inform name and syntax
*		VAR:224	0	1	call routine ...0 to 3 args... -> (result)
		VAR:225	1		storew array word-index value
		VAR:226	2		storeb array byte-index value
		VAR:227	3		put_prop object property value
		VAR:228	4	1	sread text parse
		VAR:229	5		print_char output-character-code
		VAR:230	6		print_num value
*		VAR:231	7		random range -> (result)
		VAR:232	8		push value
		VAR:233	9	1	pull (variable)
		VAR:234	A	3	split_window lines
		VAR:235	B	3	set_window window

		VAR:244	14	3	input_stream number
