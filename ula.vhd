library ieee;
use ieee.std_logic_1164.all;

entity ula is

	port
	(
        V_SW:	in std_logic_vector (7 downto 0);   -- From 0 to 3 will be the A vector and from 4 to 7 will be the B vector.
		G_HEX0: out std_logic_vector (6 downto 0);  -- Will show the A vector.
        G_HEX1: out std_logic_vector (6 downto 0);  -- Will show the B vector.
        G_LEDG: out std_logic_vector (7 downto 0)   -- Output. For now...
    );

end entity ula;				
		
architecture ula_test of ula is

    -- These will be used to change the current operation.
    signal control: std_logic_vector (2 downto 0) := "000";
    signal unit:    std_logic_vector (2 downto 0) := "001"; 
    
begin

    -- Shows the inputs in the 7-seg displays.
    process (V_SW)
    
        variable a: std_logic_vector (3 downto 0);
        variable b: std_logic_vector (3 downto 0);
            
        begin
            -- Splits the input in two parts.
            for i in 0 to 3 loop
                a (i) := V_SW (i);
            end loop;
            
            for j in 4 to 7 loop
                b (j - 4) := V_SW (j);
            end loop;
            
            -- Tables to show the inputs in the 7-seg displays.
            case a is
                when "0000" => G_HEX0 <= "1000000";
                when "0001" => G_HEX0 <= "1111001";
                when "0010" => G_HEX0 <= "0100100";
                when "0011" => G_HEX0 <= "0110000";
                when "0100" => G_HEX0 <= "0011001";
                when "0101" => G_HEX0 <= "0010010";
                when "0110" => G_HEX0 <= "0000010";
                when "0111" => G_HEX0 <= "1011000";
                when "1000" => G_HEX0 <= "0000000";
                when "1001" => G_HEX0 <= "0010000";
                when "1010" => G_HEX0 <= "0001000";
                when "1011" => G_HEX0 <= "0000011";
                when "1100" => G_HEX0 <= "1000110";
                when "1101" => G_HEX0 <= "0100001";
                when "1110" => G_HEX0 <= "0000110";
                when others => G_HEX0 <= "0001110";
            end case;
            
            case b is
                when "0000" => G_HEX1 <= "1000000";
                when "0001" => G_HEX1 <= "1111001";
                when "0010" => G_HEX1 <= "0100100";
                when "0011" => G_HEX1 <= "0110000";
                when "0100" => G_HEX1 <= "0011001";
                when "0101" => G_HEX1 <= "0010010";
                when "0110" => G_HEX1 <= "0000010";
                when "0111" => G_HEX1 <= "1011000";
                when "1000" => G_HEX1 <= "0000000";
                when "1001" => G_HEX1 <= "0010000";
                when "1010" => G_HEX1 <= "0001000";
                when "1011" => G_HEX1 <= "0000011";
                when "1100" => G_HEX1 <= "1000110";
                when "1101" => G_HEX1 <= "0100001";
                when "1110" => G_HEX1 <= "0000110";
                when others => G_HEX1 <= "0001110";
            end case;
        end process;
 
    process (V_SW)

	    variable carry: std_logic_vector (3 downto 0);
	    variable c0:    std_logic_vector (3 downto 0);
	    variable c1:    std_logic_vector (3 downto 0);
	    variable c2:    std_logic_vector (3 downto 0);
	    variable cin:   std_logic_vector (0 downto 0);
	    variable p0:    std_logic_vector (3 downto 0);
	    variable p1:    std_logic_vector (3 downto 0);
	    variable p2:    std_logic_vector (3 downto 0);
	    variable p3:    std_logic_vector (3 downto 0);
	    variable w0:    std_logic_vector (4 downto 0);
	    variable w1:    std_logic_vector (4 downto 0);
	    variable w2:    std_logic_vector (4 downto 0);

        -- This one below it's only used for the one's increment.
        variable u:     std_logic_vector (3 downto 0) := "0001";
	
    begin
	    case control is

            -- Full adder.
		    when "000" =>		
			
			    for i in 0 to 3 loop
                    if i = 0 then
                        cin (0) := V_SW (i) and not V_SW (i);
						G_LEDG (i) <= V_SW (i) xor V_SW (i + 4) xor cin (0);
						carry (i) := (V_SW (i) and V_SW (i + 4)) or (V_SW (i) and cin (0)) or (V_SW (i + 4) and cin (0));

					else 
                        G_LEDG (i) <= V_SW (i) xor V_SW (i + 4) xor carry (i - 1);
						carry (i) := (V_SW (i) and V_SW (i + 4)) or (V_SW (i) and carry (i - 1)) or (V_SW (i + 4) and carry (i - 1));

                        if i = 3 then
                            G_LEDG (i + 1) <= carry (i);
                        end if;

                    end if;
                end loop;
                
            -- Full subtractor.
			when "001" =>

				for i in 0 to 3 loop							
                    if i = 0 then
                        cin (0) := V_SW (i) or not V_SW (i);
                        G_LEDG (i) <= V_SW (i) xor not V_SW (i + 4) xor cin (0);
                        carry (i) := (V_SW (i) and not V_SW (i + 4)) or (V_SW (i) and cin (0)) or (not V_SW (i + 4) and cin (0));

                    else 
                        G_LEDG (i) <= V_SW (i) xor not V_SW (i + 4) xor carry (i - 1);
                        carry (i) := (V_SW (i) and not V_SW (i + 4)) or (V_SW (i) and carry (i - 1)) or (not V_SW (i + 4) and carry (i - 1));

                        if i = 3 then
                            G_LEDG (i + 1) <= not carry (i);
                        end if;

                    end if;
                end loop;
            
            -- Bitwise and.
			when "010" =>
				for i in 0 to 3 loop				
					G_LEDG (i) <= V_SW (i) and V_SW (i + 4);
				end loop;
                
            -- Bitwise or.
			when "011" =>
				for i in 0 to 3 loop				
					G_LEDG (i) <= V_SW (i) or V_SW (i + 4);
				end loop;

            -- Bitwise xor.
			when "100" =>
				for i in 0 to 3 loop				
					G_LEDG (i) <= V_SW (i) xor V_SW (i + 4);
				end loop;
                
            -- Bitwise not, applies only to the a vector.
			when "101" => 
				for i in 0 to 3 loop				
				    G_LEDG (i) <= not V_SW (i);
				end loop;

            -- Multiplier.
			when "110" =>

				for j in 0 to 3 loop				
					for i in 0 to 3 loop

						if j = 0 then
							if i = 3 then
								p0 (i) := V_SW (i + 4) and not V_SW (i + 4);
								p1 (i) := V_SW (i) and V_SW (1 + 4);
								p2 (i) := V_SW (i) and V_SW (2 + 4);
								p3 (i) := V_SW (i) and V_SW (3 + 4);
							
                            else
								p0 (i) := V_SW (i + 1) and V_SW (0 + 4);														
								p1 (i) := V_SW (i) and V_SW (1 + 4);
								p2 (i) := V_SW (i) and V_SW (2 + 4);
								p3 (i) := V_SW (i) and V_SW (3 + 4);
							end if;

						elsif j = 1 then														
							if i = 0 then
								cin (0) := V_SW (i) and not V_SW (i);
								w0 (i) := p0 (i) xor p1 (i) xor cin (0);
								c0 (i) := (p0 (i) and p1 (i) ) or (p0 (i) and cin (0)) or (p1 (i) and cin (0));
							else 
								w0 (i) := p0 (i) xor p1 (i) xor c0 (i - 1);
								c0 (i) := (p0 (i) and p1 (i)) or (p0 (i) and c0 (i - 1)) or (p1 (i) and c0(i - 1));
								
                                if i = 3 then
									w0 (i + 1) := c0 (i);
								end if;
							
                            end if;							
								
						elsif j = 2 then
							if i = 0 then
								cin (0) := V_SW (i) and not V_SW (i);
								w1 (i) := w0 (i + 1) xor p2 (i) xor cin (0);
								c1 (i) := (w0 (i + 1) and p2 (i)) or (w0 (i + 1) and cin (0)) or (p2 (i) and cin (0));
							else 
								w1 (i) := w0 (i + 1) xor p2 (i) xor c1 (i - 1);
								c1 (i) := (w0 (i + 1) and p2 (i)) or (w0 (i + 1) and c1 (i - 1)) or (p2 (i) and c1 (i - 1));
								
                                if i = 3 then
									w1 (i + 1) := c1 (i);
								end if;
							
                            end if;
						
                        else
							if i = 0 then
								cin (0) := V_SW (i) and not V_SW (i);
								w2 (i) := w1 (i + 1) xor p3 (i) xor cin (0);
								c2 (i) := (w1 (i + 1) and p3 (i)) or (w1 (i + 1) and cin (0)) or (p3 (i) and cin (0));
							else 
								w2 (i) := w1 (i + 1) xor p3 (i) xor c2 (i - 1);
								c2 (i) := (w1 (i + 1) and p3 (i)) or (w1 (i + 1) and c2 (i - 1)) or (p3 (i) and c2 (i - 1));
								if i = 3 then
									w2 (i + 1) := c2 (i);
								end if;
							
                            end if;				
						end if;						
					end loop;
				end loop;
                
				for i in  3 to 7 loop			
					G_LEDG (i) <= w2 (i - 3);													
				end loop;

				G_LEDG (0) <= V_SW (0) and V_SW (0 + 4);
				G_LEDG (1) <= w0 (0);
				G_LEDG (2) <= w1(0);

            -- One's increment. applies only to the the a vector.
			when "111" =>
                
                for i in 0 to 3 loop							
				    if i = 0 then
					    cin (0) := V_SW (i) and not V_SW (i);
						G_LEDG (i) <= V_SW (i) xor u (i) xor cin (0);
						carry (i) := (V_SW (i) and u (i)) or (V_SW (i) and cin (0)) or (u (i) and cin (0));

					else 
					    G_LEDG (i) <= V_SW (i) xor u (i) xor carry (i - 1);
						carry (i) := (V_SW (i) and u (i)) or (V_SW (i) and carry (i - 1)) or (u (i) and carry (i - 1));

                        if i = 3 then
                            G_LEDG (i + 1) <= carry (i);
                        end if;

                    end if;
                end loop;
							
		end case;
   end process;
end architecture;
