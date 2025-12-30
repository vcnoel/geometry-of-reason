import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1988_p6
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : (a * b + 1) ∣ (a^2 + b^2)) :
  ∃ x : ℕ, (x^2 : ℝ) = (a^2 + b^2) / (a * b + 1) :=
begin

  have h₂ : (a^2 + b^2) % (a * b + 1) = 0,
  { apply_modulo h₁,
    exact_mod_cast zero_lt_one },

  have h₃ : (a * b + 1) ∣ (a^2 + b^2) + 1,
  { apply_modulo h₁,
    exact_mod_cast zero_lt_one },

  have h₄ : (a^2 + b^2) < (a * b + 1)^2,
  { apply_modulo h₃,
    exact_mod_cast zero_lt_one },

  have h₅ : ∃ x : ℕ, x^2 = (a^2 + b^2) / (a * b + 1),
  { apply_modulo h₄,
    exact_mod_cast zero_lt_one },

  exact_mod_cast h₅

end
