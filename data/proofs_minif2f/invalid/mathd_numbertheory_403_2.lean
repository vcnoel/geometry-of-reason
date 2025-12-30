import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  -- We know that 198 = 2 * 3^2 * 11.
  have A := nat.factorisation 198,
  -- The proper divisors of 198 are 1, 2, 3, 6, 9, 11, 18, 22, 33, 66 and 99.
  have B := list.filter (λ x, x < 198) (nat.proper_divisors 198),
  -- The sum of the proper divisors of 198 is (1 + 2 + 3 + 6 + 9 + 11 + 18 + 22 + 33 + 66 + 99).
  have C := ∑ k in B, k,
  -- We know that 1 + 2 + 3 + 6 + 9 + 11 + 18 + 22 + 33 + 66 + 99 = 270.
  have D := congr (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl (congr rfl
end
