import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_92
  (n : ℕ)
  (h₀ : (5 * n) % 17 = 8) :
  n % 17 = 5 :=
begin

  cases h₀ with h₁ h₂,
  { exact (Nat.mod_eq_of_div h₁ 5).symm },
  { exact Nat.mod_eq_zero_of_div h₁ },

end
