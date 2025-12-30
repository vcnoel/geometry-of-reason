import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p2
  (a b n : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9)
  (h₁ : 0 ≤ b ∧ b ≤ 9)
  (h₂ : n = 10 * a + b)
  (h₃ : n = a * b + a + b) :
  b = 9 :=
begin

  apply h₃.symm,
  apply h₂,
  apply h₁,
  apply h₀,
  apply mul_pos,
  apply add_pos,
  apply add_pos,
  apply mul_nonneg,
  apply add_nonneg,
  apply add_nonneg,
  apply le_of_eq,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,
  apply h₂,

end
