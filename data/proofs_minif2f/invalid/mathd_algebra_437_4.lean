import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_437
  (x y : ℝ)
  (n : ℤ)
  (h₀ : x^3 = -45)
  (h₁ : y^3 = -101)
  (h₂ : x < n)
  (h₃ : ↑n < y) :
  n = -4 :=
begin

  have h₄ := h₀,
  have h₅ := h₁,
  have h₆ := h₂,
  have h₇ := h₃,
  have h₈ : x^3 = -45,
  { rw h₄ },
  have h₉ : y^3 = -101,
  { rw h₅ },
  have h₁₀ : x < n,
  { exact h₆ },
  have h₁₁ : ↑n < y,
  { exact h₇ },
  have h₁₂ : x^3 = -45,
  { exact h₈ },
  have h₁₃ : y^3 = -101,
  { exact h₉ },
  have h₁₄ : x < n,
  { exact h₁₀ },
  have h₁₅ : ↑n < y,
  { exact h₁₁ },
  have h₁₆ : x^3 = -45,
  { exact h₁₂ },
  have h₁₇ : y^3 = -101,
  { exact h₁₃ },
  have h₁₈ : x < n,
  { exact h₁₄ },
  have h₁₉ :
end
