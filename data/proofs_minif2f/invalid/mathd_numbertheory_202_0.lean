import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_202 :
  (19^19 + 99^99) % 10 = 8 :=
begin

  -- Step 1: Calculate the remainder of 19^19 when divided by 10.
  let r1 := 19^19 % 10,
  -- Step 2: Calculate the remainder of 99^99 when divided by 10.
  let r2 := 99^99 % 10,
  -- Step 3: Calculate the sum of r1 and r2.
  let s := r1 + r2,
  -- Step 4: Calculate the remainder of s when divided by 10.
  let rs := s % 10,
  -- Step 5: Prove that rs equals 8.
  by_cases h1 : s = 8,
  { exact h1 },
  { exact false },

end
