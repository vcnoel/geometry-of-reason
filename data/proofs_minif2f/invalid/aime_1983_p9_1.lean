import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1983_p9
  (x : ℝ)
  (h₀ : 0 < x ∧ x < real.pi) :
  12 ≤ ((9 * (x^2 * (real.sin x)^2)) + 4) / (x * real.sin x) :=
begin

  let g = 9 * (x^2 * (real.sin x)^2) + 4,
  let h = (x * real.sin x) / 12,
  show g ≤ h,
  show g - h ≤ 0,
  show g / h ≤ 1,
  show g / h - 1 ≤ 0,
  show g / h + 1 ≤ 1,
  show g / h - 1 - 1 ≤ 0,
  show g / h + 1 - 1 ≤ 0,
  show g / h + 1 + 1 ≤ 1,
  show g / h + 1 - 1 - 1 ≤ 0,
  show g / h + 1 - 1 + 1 ≤ 0,
  
end
