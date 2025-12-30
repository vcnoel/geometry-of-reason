import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  have h₂ := by {
    rw [h₁],
    ring,
  },
  rw [h₂, h₁, h₂],
  have h₃ := by {
    norm_num,
  },
  rw [h₃],
  have h₄ := by {
    ring,
  },
  exact h₄,

end
