import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_2unitcircatblt1
  (a b : ℝ)
  (h₀ : a^2 + b^2 = 2) :
  a * b ≤ 1 :=
begin

  by_cases h₁ : a = 0 ∨ b = 0,
  { cases h₁ with h₁ h₁,
    { -- a = 0
      have h₂ : a * b = 0,
      by { rw h₁, simp },
      have h₃ : 0 ≤ a * b,
      by { simp },
      exact le_trans h₂ h₃ },
    { -- b = 0
      have h₂ : a * b = 0,
      by { rw h₁, simp },
      have h₃ : 0 ≤ a * b,
      by { simp },
      exact le_trans h₂ h₃ } },
  { -- a ≠ 0 and b ≠ 0
    have h₂ : (a^2 + b^2) ≥ (2 * a * b),
    by { rw add_le_add_left, simp, rw mul_comm, simp },
    have h₃ : 2 = (2 * a * b),
    by { rw h₀, simp },
    have h₄ : (a^2 + b^2) ≥ 2 * a * b,
    by { rw h₃, simp },
    have h₅ : a * b ≤
end
