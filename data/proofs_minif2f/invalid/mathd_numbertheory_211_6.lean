import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_211 :
  finset.card (finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60)) = 20 :=
begin

  -- 4 * n - 2 = 6 * k, 
  -- n = (6 * k + 2) / 4 = (3 * k + 1) / 2,
  -- 3 * k + 1 2,
  -- 3 * k  1,
  -- k  0,
  -- k  19,
  -- k  { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 },
  -- 20 values of n,
  -- n  { 1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20, 22, 23, 25, 26, 28, 29 },
  have finset_eq : 
    finset.filter (λ n, 6 ∣ (4 * ↑n - (2 : ℤ))) (finset.range 60) = 
   
end
