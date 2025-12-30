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

  -- We have s 9 = s 8 + s 7 = s 7 + s 6 + s 7 = 2s 7 + s 6.
  have h₃ : s 9 = 2 * s 7 + s 6,
  { rw h₀,
    rw h₀,
    rw h₂ },
  -- We have s 8 = s 7 + s 6.
  have h₄ : s 8 = s 7 + s 6,
  { rw h₀ },
  -- We have s 9 = s 8 + s 7.
  have h₅ : s 9 = s 8 + s 7,
  { rw h₀ },
  -- We have s 8 = s 7 + s 6 = s 6 + s 5 + s 6.
  have h₆ : s 8 = s 6 + s 5 + s 6,
  { rw h₀,
    rw h₀ },
  -- We have s 9 = 2 * s 7 + s 6 = s 7 + s 6 + s 7.
  have h₇ : s 9 =
end
