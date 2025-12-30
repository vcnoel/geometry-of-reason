import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p9
  (f : ℝ → ℝ)
  (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x / y)
  (h₁ : f 500 = 3) : f 600 = 5 / 2 :=
begin
  specialize h₀ 500 _ (6/5) _,
  { linarith },
  { linarith },
  calc f 600 = f (500 * (6/5)) : by {congr, norm_num}
        ... = f 500 / (6 / 5) : by {rw h₀}
        ... = 3 / (6 / 5) : by { rw h₁ }
        ... = 5 / 2 : by {norm_num},
end