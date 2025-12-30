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

  rw [h₂, ← div_mul_eq_mul_div a b 5 2],
  have h₃ : (5/2) * a + a = 35,
  { rw [h₁, h₂],
    simp },
  have h₄ : (7/2) * a = 35,
  { rw [h₃, add_comm],
    simp },
  have h₅ : a = 35 / (7/2),
  { rw [h₄],
    simp },
  have h₆ : a = (70/7),
  { rw [h₅],
    simp },
  have h₇ : a = 10,
  { rw [h₆],
    simp },
  have h₈ : b = 25,
  { rw [h₂, h₇],
    simp },
  have h₉ : b - a = 25 - 10,
  { rw [h₈, h₇],
    simp },
  have h₁₀ : 25 - 10 = 15,
  { rw [sub_eq_add_neg, neg_sub, add_comm, sub_eq_add_neg],
    simp },
  exact h₁₀

end
