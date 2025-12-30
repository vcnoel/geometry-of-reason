import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  have h1 : 7 % 19 = 7 := by ring,
  have h2 : 19 % 19 = 0 := by ring,
  have h3 : 999 % 19 = 12 := by ring,
  have h4 : 100 % 19 = 5 := by ring,

  have h5 : 0 ≤ 5 := by norm_num,
  have h6 : 5 ≤ 999 := by norm_num,

  have h7 : ∀ n : ℤ, 0 ≤ n mod 19 ∧ n mod 19 < 19 := by
  { intro n,
    have h8 : 0 ≤ n mod 19 := by linarith,
    have h9 : n mod 19 < 19 := by linarith,
    exact and.intro h8 h9 },
  have h10 : ∀ n : ℤ, n mod 19 = 0 ∨ n mod 19 = 7 ∨ (7 < n mod 19 ∧ n mod 19 < 19) ∨ (n mod 19 < 7 ∧ n mod 19 > 0) ∨ n mod 19 = 12 ∨ n mod 19 > 12 ∧ n mod 
end
