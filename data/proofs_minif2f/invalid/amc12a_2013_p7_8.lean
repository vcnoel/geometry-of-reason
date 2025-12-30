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

  apply @eq.rec s 0,
  { apply @eq.rec s 7,
    { apply @eq.rec s 9,
      { apply h₁, },
      { apply h₀, },
      { apply h₂, },
    },
    { apply h₀, },
  },
  { apply h₀, },

end
