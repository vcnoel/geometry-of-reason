import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_28
  (c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 2 * x^2 + 5 * x + c)
  (h₁ : ∃ x, f x ≤ 0) :
  c ≤ 25/8 :=
begin

  by_contradiction h,
  have h' : ∀ x, f x > 0,
  { intro x,
    have h'' : f x = 2 * x^2 + 5 * x + c,
    { rw h₀ },
    have h''' : 2 * x^2 + 5 * x + c > 0,
    { calc
        2 * x^2 + 5 * x + c
        > 2 * x^2 + 5 * x - 25/8
          : by linarith
      },
    have h'''' : 2 * x^2 + 5 * x - 25/8 = 0,
    { calc
        2 * x^2 + 5 * x - 25/8
        = (x + 5/4)^2 - 25/16
          : by ring
      },
    have h''''' : (x + 5/4)^2 - 25/16 = 0,
    { rw h'''' },
    have h'''''' : (x + 5/4) = ±√(25/16),
    { rw h''''' },
    have h''
end
