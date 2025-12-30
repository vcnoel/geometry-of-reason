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

  have h₄ : a + b = c - d,
  by {rw [h₀, h₁], linarith},
  have h₅ : a + b < c,
  by {rw [h₄, h₂], linarith},
  have h₆ : 0 < a + b,
  by {rw [h₃, h₄], linarith},
  have h₇ : 0 < c - d,
  by {rw [h₄], linarith},
  have h₈ : 0 < d,
  by {rw [h₀], linarith},
  have h₉ : 0 < c,
  by {rw [h₀], linarith},
  have h₁₀ : 0 < a,
  by {rw [h₀], linarith},
  have h₁₁ : 0 < b,
  by {rw [h₀], linarith},
  have h₁₂ : a + b < c,
  by {rw [h₅], linarith},
  have h₁₃ : c - d < c,
  by {rw [h₇], linarith},
  have h₁₄ : a + b < c
end
