import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_110
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ b ≤ a)
  (h₁ : (a + b) % 10 = 2)
  (h₂ : (2 * a + b) % 10 = 1) :
  (a - b) % 10 = 6 :=
begin

  have h₃ : a % 10 = 8,
  { have h₃' : a = 10 * (a / 10) + (a % 10),
    { exact mod_eq_of_div_mod a 10 },
    have h₃'': (10 * (a / 10)) % 10 = 0,
    { exact mod_zero _ _ },
    have h₃''' : ((a % 10) + 2) % 10 = 1,
    { exact mod_add_eq_mod_add_left _ 2 (mod_eq_of_div_mod a 10) },
    have h₃'''' : a % 10 + 2 = 1,
    { exact eq_add_of_sub_eq _ _ (mod_eq_of_div_mod a 10) },
    exact nat.succ_sub h₃'''' },
  have h₄ : b % 10 = 0,
  { have h₄' : b = 10 * (b / 10) + (b % 10),
    { exact mod_eq_of_div_mod b 10 },
    have h₄'' : (10 * (b / 10)) % 10 = 0,
    { exact mod_zero _ _
end
