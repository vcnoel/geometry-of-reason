import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_252 :
  7! % 23 = 3 :=
begin

  -- Compute 7! % 23
  -- = (7 × 6 × 5 × 4 × 3 × 2 × 1) % 23
  -- = ((7 × 6 × 5 × 4 × 3) × (2 × 1)) % 23
  -- = (((7 × 6 × 5 × 4) × 3) × (2 × 1)) % 23
  -- = (((7 × 6 × 5) × 4) × 3 × (2 × 1)) % 23
  -- = (((7 × 6) × 5) × 4 × 3 × (2 × 1)) % 23
  -- = ((7 × 6) × (5 × 4) × 3 × (2 × 1)) % 23
  -- = (7 × (6 × 5) × 4 × 3 × (2 × 1)) % 23
  -- = (7 × (6 × 5) × (4 × 3) × (2 × 1)) % 23
  -- = (7 × (6 × 
end
