import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  have h₃ := h₂,
  have h₄ := h₁,
  have h₅ : 6 * x^2 = 2 * (6 * y^2),
  { exact h₃ },
  have h₆ : 2 * x^2 = 6 * y^2,
  { rw h₅ },
  have h₇ : x^2 = 3 * y^2,
  { rw h₆; ring },
  have h₈ : x = real.sqrt (3 * y^2),
  { rw h₇; ring },
  have h₉ : x^3 = 3 * y^6,
  { rw h₈; ring },
  have h₁₀ : 3 * y^6 = 2 * real.sqrt 2,
  { rw h₄; ring },
  have h₁₁ : x^3 = 2 * real.sqrt 2,
  { rw h₉; rw h₁₀ },
  exact h₁₁

end
