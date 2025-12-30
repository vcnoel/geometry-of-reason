import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  have h₁ : f 4 = 4^2 - 4 * real.sqrt 4 + 1,
  { rw h₀ },
  have h₂ : f 4 = 4^2 - 4 * 2 + 1,
  { rw real.sqrt 4 },
  have h₃ : f 4 = 16 - 8 + 1,
  { rw h₂ },
  have h₄ : f 4 = 9,
  { rw h₃ },
  have h₅ : f (f 4) = f 9,
  { rw h₄ },
  have h₆ : f 9 = 9^2 - 4 * real.sqrt 9 + 1,
  { rw h₀ },
  have h₇ : f 9 = 9^2 - 4 * 3 + 1,
  { rw real.sqrt 9 },
  have h₈ : f 9 = 9^2 - 12 + 1,
  { rw h₇ },
  have h₉ : f 9 = 81 - 12 + 1,
  { rw pow 9 2 },
  have h₁₀ : f
end
