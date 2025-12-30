import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_9div10tonm1
  (n : ℕ)
  (h₀ : 0 < n) :
  9 ∣ (10^n - 1) :=
begin

  induction n with n ih,
  { simp [h₀] },
  { have h₁ := ih,
    have h₂ := pow_succ 10 n,
    have h₃ := sub_sub h₂ (pow_one 10),
    have h₄ := sub_mul h₃ h₂,
    have h₅ := mul_assoc 9 10 n,
    have h₆ := eq.trans h₄ h₅,
    have h₇ := congr_arg (λ x : ℤ, x % 10) h₆,
    have h₈ := congr_arg (λ x : ℤ, 10 * x) h₇,
    have h₉ := congr_arg (λ x : ℤ, x - 1) h₈,
    have h₁₀ := congr_arg (λ x : ℤ, x % 10) h₉,
    have h₁₁ := congr_arg (λ x : ℤ, x - 1) h₁₀,
    have h₁₂ := eq.trans h₁₁ h₃,
    have h₁₃ := eq.trans h₁₂ h₄,
    have h₁₄ := eq.trans h₁₃ h₆,

end
