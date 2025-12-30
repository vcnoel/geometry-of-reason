import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p6
  (a r : ℝ)
  (u : ℕ → ℝ)
  (h₀ : ∀ k, u k = a * r^k)
  (h₁ : u 1 = 2)
  (h₂ : u 3 = 6) :
  u 0 = 2 / real.sqrt 3 ∨ u 0 = - (2 / real.sqrt 3) :=
begin

  have h₃ : u 0 = a * 1 = a,
  { apply h₀,
    simp, },
  have h₄ : a * r^1 = 2,
  { apply h₁,
    simp, },
  have h₅ : a * r^3 = 6,
  { apply h₂,
    simp, },
  have h₆ : a * r^2 = 6 / r,
  { have h₇ : r^2 = r * r,
    { apply pow_mul,
      simp, },
    have h₈ : r * r = r * r,
    { apply r_mul_r,
      simp, },
    have h₉ : r^2 = r^2,
    { apply pow_self,
      simp, },
    have h₁₀ : r^2 * r = r * r^2,
    { apply mul_comm,
      simp, },
    have h₁₁ : r * r^2 = r^3,
    { apply pow_mul,
      simp, },
    have h₁₂ : r^3 = r^3,
    { apply pow_self,
      simp, },
    have h₁₃ : r^2 = 
end
