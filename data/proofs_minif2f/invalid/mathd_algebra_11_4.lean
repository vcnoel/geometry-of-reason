import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  -- Given equations
  have h₃ : 4 * a + 3 * b = 5 * (a - 2 * b),
  { rw h₂, },

  -- Manipulate h₃ to get 4a - 8b + 3b = 5a - 10b
  have h₄ : 4 * a - 8 * b + 3 * b = 5 * a - 10 * b,
  { rw h₃, },

  -- Simplify 4a - 5b = 5a - 13b
  have h₅ : 4 * a - 5 * b = 5 * a - 13 * b,
  { rw h₄, },

  -- Isolate a
  have h₆ : a = 8 * b,
  { rw h₅ at h₁, },
  { linarith, },

  -- Substitute a into the target expression
  have h₇ : (a + 11 * b) / (a - b) = (8 * b + 11 * b) / (8 * b - b),
  { rw h₆, },

  -- Simplify (8
end
