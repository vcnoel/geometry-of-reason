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

  have h₄ : a + b > 0,
  from and.intro h₀.left h₀.right,

  have h₅ : d > 0,
  from and.intro h₀.left h₀.right,

  have h₆ : (c - b : ℤ) = d,
  by linarith,

  have h₇ : (b - a : ℤ) = d,
  by linarith,

  have h₈ : (a + b) + c = 60,
  by linarith,

  have h₉ : (a + b) + (b - a) = (b + (a + b)) - a,
  by linarith,

  have h₁₀ : (b + (a + b)) - a = b + (a + b) - a,
  by linarith,

  have h₁₁ : b + (a + b) - a = b + (a + b - a),
  by linarith,

  have h₁₂ : b + (a + b - a) = b + b,
  by linarith,

  have h₁₃ : b + b = 2 * b,
  by linarith,

  have h
end
