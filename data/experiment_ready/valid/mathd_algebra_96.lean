import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_96
  (x y z a : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : real.log x - real.log y = a)
  (h₂ : real.log y - real.log z = 15)
  (h₃ : real.log z - real.log x = -7) :
  a = -8 :=
begin
  nlinarith [h₁, h₂, h₃],
end