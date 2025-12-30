import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  have h₃ := Nat.succ_pred_eq_of_lt h₀.1,
  have h₄ := Nat.succ_pred_eq_of_lt h₀.2,
  have h₅ := Nat.succ_pred_eq_of_lt (Nat.succ_pred_eq_of_lt h₃),
  have h₆ := Nat.succ_pred_eq_of_lt (Nat.succ_pred_eq_of_lt h₄),
  have h₇ := Nat.succ_pred_eq_of_lt h₅,
  have h₈ := Nat.succ_pred_eq_of_lt h₆,
  have h₉ := Nat.succ_pred_eq_of_lt h₇,
  have h₁₀ := Nat.succ_pred_eq_of_lt h₈,
  have h₁₁ := Nat.succ_pred_eq_of_lt h₁₀,
  have h₁₂ := Nat.succ_pred_eq_of_lt h₁₁,
  have h₁₃ := Nat.succ_pred_eq_of_lt h₁₂,
  have h₁₄ := Nat.succ_pred_eq_of_lt h₁₃,
  have h₁₅ := Nat.succ_pred_eq_of_lt h₁₄,
  have h₁₆ := Nat.succ_pred_eq_of_lt h₁
end
