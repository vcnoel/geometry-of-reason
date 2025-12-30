import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  have h₂ : (x + 1)^2 % 19 = 5, by
  { have h₃ : x % 19 = 4,
    from h₀,
    have h₄ : (x + 1) % 19 = 5,
    from ((h₃ + 1) % 19).symm,
    have h₅ : (x + 1)^2 % 19 = 25 % 19,
    from congr_arg2 pow2 (h₄),
    have h₆ : 25 % 19 = 6,
    from (25 % 19).symm,
    exact h₅.trans h₆ },
  have h₇ : (y + 5) % 19 = 12,
  by
  { have h₈ : y % 19 = 7,
    from h₁,
    have h₉ : (y + 5) % 19 = 12,
    from ((h₈ + 5) % 19).symm,
    exact h₉ },
  have h₁₀ : (y + 5)^3 % 19 = 1728 % 19,
  by
end
