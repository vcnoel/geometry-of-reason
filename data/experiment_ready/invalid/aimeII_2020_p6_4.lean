import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2020_p6
  (t : ℕ → ℚ)
  (h₀ : t 1 = 20)
  (h₁ : t 2 = 21)
  (h₂ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / (25 * t (n - 2))) :
  ↑(t 2020).denom + (t 2020).num = 626 :=
begin

  /- First, let's calculate t 3, t 4, t 5, t 6, and t 7 -/
  have t3 : t 3 = (5 * t 2 + 1) / (25 * t 1),
  { rw [h₂ 3],
    simp [h₁, h₀] },
  have t4 : t 4 = (5 * t 3 + 1) / (25 * t 2),
  { rw [h₂ 4],
    simp [t3, h₁] },
  have t5 : t 4 = (5 * t 3 + 1) / (25 * t 2),
  { rw [h₂ 5],
    simp [t3, h₂ 4] },
  have t6 : t 6 = (5 * t 5 + 1) / (25 * t 4),
  { rw [h₂ 6],
    simp [h₂ 5] },
  have t7 : t 7 = (5 * t 6 + 1) / (25 * t 5),
  { rw [h₂ 7],
    simp [h6]
end
