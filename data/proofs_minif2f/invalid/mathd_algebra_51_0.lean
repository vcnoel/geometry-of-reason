import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_51
  (a b : ℝ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 35)
  (h₂ : a = (2/5) * b) :
  b - a = 15 :=
begin

  have h₃ := (sub_eq_iff_eq_add.mp (eq_comm.mp h₁)),
  have h₄ := (h₃.symm.sub h₂),
  have h₅ := (sub_eq_sub h₄),
  have h₆ := (add_halves h₅),
  have h₇ := (mul_assoc (2/5) b (1/5)),
  have h₈ := (mul_comm (2/5) b),
  have h₉ := (eq_sub_of_add_eq h₇ h₈),
  have h₁₀ := (eq_sub_of_add_eq h₆ h₉),
  have h₁₁ := (sub_eq_iff_eq_add.mp h₁₀),
  have h₁₂ := (eq_comm.mp h₁₁),
  have h₁₃ := (eq_comm.mp h₁₂),
  have h₁₄ := (eq_comm.mp h₁₃),
  have h₁₅ := (eq_comm.mp h₁₄),
  have h₁₆ := (eq_comm.mp h₁₅),
  have h₁₇ := (eq_comm.mp h₁₆),
  have h₁₈ := (eq_comm.mp h
end
