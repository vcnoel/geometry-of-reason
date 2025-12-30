import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p13
  (a b c : ℕ)
  (n : nnreal)
  (h₀ : n ≠ 1)
  (h₁ : 1 < a ∧ 1 < b ∧ 1 < c)
  (h₂ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = (n^25)^(1 / 36)) :
  b = 3 :=
begin

  have h₃ := h₂,
  have h₄ := h₁,
  have h₅ := h₀,
  have h₆ := pow_pos (pow_pos (pow_pos (pow_pos h₄.1 25) 36) 36) 36,
  have h₇ := pow_pos (pow_pos (pow_pos (pow_pos h₄.1 25) 36) 36) 36,
  have h₈ := pow_pos (pow_pos (pow_pos (pow_pos h₄.1 25) 36) 36) 36,
  have h₉ := pow_pos (pow_pos (pow_pos (pow_pos h₄.1 25) 36) 36) 36,
  have h₁₀ := pow_pos (pow_pos (pow_pos (pow_pos h₄.1 25) 36) 36) 36,
  have h₁₁ := pow_pos (pow_pos (pow_pos (pow_pos h₄.1 25) 36) 36) 36,
  have h₁₂ := pow_pos (pow_pos (pow_pos (pow_pos h₄.1 25) 
end
