print("""-- ============================================================ PYTHON GENERATED VHDL ============================================================""")

bets = 25
names = ("Plain", "Cheval H", "Cheval V", "Trans", "Trans S", "Carre", "Colonne", "Simple")
print("-- This code should generate %d bets with names: %s" % (bets, names))
for bet in range(bets):
    index = 0
    col = 111
    # --------------------------------------- skip?
    print("""when COLS*21 + COLS*%d + %d => if bets_index <= %d then fb_index := COLS*21 + COLS*%d - 1; end if;-- skip this row """ % (bet, index, bet, bet + 1))
    index += 1
    # --------------------------------------- money
    print("""when COLS*21 + COLS*%d + %d => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14)); fb_a_dat_in <= x"24"; -- $""" % (bet, index, bet, col))
    index += 1
    col += 2  # extra space
    for m in range(5, -1, -1):
        print("""when COLS*21 + COLS*%d + %d => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14)); fb_a_dat_in <= ascii_i(bets(%d).money, %d);""" % (bet, index, bet, col, bet, m))
        index += 1
        col += 1
        if m == 5:
            col += 1  # extra space
        if m == 2:
            print("""when COLS*21 + COLS*%d + %d => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14)); fb_a_dat_in <= x"2e"; -- .""" % (bet, index, bet, col))
            index += 1
            col += 1
    # --------------------------------------- name
    col += 1
    for n in range(8):  # n = index of letter
        print("""when COLS*21 + COLS*%d + %d =>
    fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14));
    case bets(%d).kind is""" % (bet, index, bet, col, bet))
        for kind in range(1, 9):
            if n < len(names[kind-1]) and names[kind-1][n] != ' ':
                print("""        when %d => fb_a_dat_in <= x"%02x"; -- %c""" % (kind, ord(names[kind-1][n]), names[kind-1][n]))
        print("""        when others => fb_a_dat_in <= x"20"; -- space
    end case;""")
        col += 1
        index += 1
    # --------------------------------------- number
    col += 1
    for n in range(1, -1, -1):
        print("""when COLS*21 + COLS*%d + %d => fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14)); fb_a_dat_in <= ascii_i(bets(%d).number, %d);""" % (bet, index, bet, col, bet, n))
        col += 1
        index += 1
print("""-- ============================================================ END OF PYTHON GENERATED VHDL ============================================================""")