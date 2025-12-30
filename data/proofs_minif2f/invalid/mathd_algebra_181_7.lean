import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_181
  (n : ℝ)
  (h₀ : n ≠ 3)
  (h₁ : (n + 5) / (n - 3) = 2) : n = 11 :=
begin

  have h₂ : n - 3 ≠ 0,
    by { intro h₃, have h₄ := h₃, contradiction },
  have h₃ : n + 5 ≠ 0,
    by { intro h₄, have h₅ := h₄, contradiction },
  have h₄ : (n + 5) * (n - 3) = (n - 3) * (n + 5),
    by { rw mul_comm },
  have h₅ : (n + 5) * (n - 3) = (n - 3) * (n + 5),
    by { rw h₄ },
  have h₆ : (n + 5) * (n - 3) = n^2 + 2 * n - 15,
    by { rw mul_sub_left_distrib },
  have h₇ : n^2 + 2 * n - 15 = (n - 3) * (n + 5),
    by { rw h₅ },
  have h₈ : n^2 + 2 * n - 15 = (n - 3) * (n + 5),
   
end
