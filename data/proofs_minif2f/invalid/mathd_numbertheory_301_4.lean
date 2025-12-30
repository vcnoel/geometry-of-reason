import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_301
  (j : ℕ)
  (h₀ : 0 < j) :
  (3 * (7 * ↑j + 3)) % 7 = 2 :=
begin

  have h₁ : 3 % 7 = 3,
  { simp },
  have h₂ : (7 * ↑j) % 7 = 0,
  { simp [mod_eq_zero_of_dvd h₀] },
  have h₃ : (3 * 0) % 7 = 0,
  { simp },
  have h₄ : (3 * (7 * ↑j + 3)) % 7 = (3 * 3) % 7,
  { rw h₂ },
  have h₅ : (3 * 3) % 7 = 2,
  { simp },
  rw h₅,
  exact h₁,

end
