index = 20
bets = 25
names = ("Plain", "Cheval H", "Cheval V", "Trans", "Trans S", "Carre", "Colonne", "Simple")

for bet in range(bets):
    col = 40
    # --------------------------------------- money
    print("""
when %d =>
    if bets_index > %d then
        fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14));
        fb_a_dat_in <= x"24"; -- $
    end if;""" % (index, bet, bet, col))
    index += 1
    col += 2  # extra space
    for m in range(5, -1, -1):
        print("""when %d =>
    if bets_index > %d then
        fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14));
        fb_a_dat_in <= ascii_i(bets(%d).money, %d);
    end if;""" % (index, bet, bet, col, bet, m))
        index += 1
        col += 1
        if m == 5:
            col += 1  # extra space
        if m == 2:
            print("""when %d =>
    if bets_index > %d then
        fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14));
        fb_a_dat_in <= x"2e"; -- .
    end if;""" % (index, bet, bet, col))
            index += 1
            col += 1
    # --------------------------------------- name
    col += 1
    for n in range(8):  # n = index of letter
        print("""when %d =>
    if bets_index > %d then
        fb_a_addr <= std_logic_vector(to_unsigned(COLS*21 + COLS*%d + %d, 14));
        case bets(%d).kind is""" % (index, bet, bet, col, bet))
        for kind in range(1, 9):
            if n < len(names[kind-1]) and names[kind-1][n] != ' ':
                print("""           when %d => fb_a_dat_in <= x"%02x"; -- %c""" % (kind, ord(names[kind-1][n]), names[kind-1][n]))
        print("""           when others => fb_a_dat_in <= x"20"; -- space
        end case;
        fb_a_dat_in <= x"2e"; -- .
    end if;""")
        index += 1
        col += 1

