import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_144
  (a b c d : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c ∧ 0 < d)
  (h₀ : (c : ℤ) - b = d)
  (h₁ : (b : ℤ) - a = d)
  (h₂ : a + b + c = 60)
  (h₃ : a + b > c) :
  d < 10 :=
begin

  have h₄ : a + b + c - a - b = c - a + c - b,
  by { rw [add_sub_cancel_left, add_sub_cancel_left] },
  have h₅ : c - a + c - b = c + c - (a + b),
  by { rw [add_sub_assoc, add_sub_assoc] },
  have h₆ : c + c - (a + b) = 2 * c - (a + b),
  by { rw [add_sub_assoc, mul_two] },
  have h₇ : 2 * c - (a + b) = 2 * c - 60 + d,
  by { rw [h₂] },
  have h₈ : 2 * c - 60 + d = 2 * c - 60 + 60 - (a + b),
  by { rw [sub_sub, h₂] },
  have h₉ : 2 * c - 60 + 60 - (a + b) = 2 * c - (a + b),
  by { rw [add_sub_cancel_left] },
  have h₁₀ : 2 * c - (a + b)
end
