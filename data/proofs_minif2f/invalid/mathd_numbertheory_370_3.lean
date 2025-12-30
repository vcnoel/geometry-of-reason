import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_370
  (n : ℕ)
  (h₀ : n % 7 = 3) :
  (2 * n + 1) % 7 = 0 :=
begin

  have h₁ := mod_eq_of_add_eq (2 * n + 1) 7 (7 * n),
  have h₂ := mod_eq_of_add_eq (7 * n) 7 0,
  rw [h₁, h₂] at h₀,
  exact mod_by_zero 0,

end
