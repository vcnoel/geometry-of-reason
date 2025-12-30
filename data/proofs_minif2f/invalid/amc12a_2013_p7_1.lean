import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p7
  (s : ℕ → ℝ)
  (h₀: ∀ n, s (n + 2) = s (n + 1) + s n)
  (h₁ : s 9 = 110)
  (h₂ : s 7 = 42) :
  s 4 = 10 :=
begin

  -- We can use the definition of s to find s 4
  have h₃ : s 5 = s 4 + s 3,
  { apply h₀,
    assumption },

  -- We can use the definition of s to find s 5
  have h₄ : s 6 = s 5 + s 4,
  { apply h₀,
    assumption },

  -- We can use the definition of s to find s 6
  have h₅ : s 7 = s 6 + s 5,
  { apply h₀,
    assumption },

  -- We can use the definition of s to find s 7
  have h₆ : s 8 = s 7 + s 6,
  { apply h₀,
    assumption },

  -- We can use the definition of s to find s 8
  have h₇ : s 9 = s 8 + s 7,
  { apply h₀,
    assumption },

  -- We can use the definition of s to find s 9
  have h₈ : s 10 = s 9 + s 8,
  { apply h₀,
    assumption },

  -- We can use
end
