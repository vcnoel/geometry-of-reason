import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p7
  (f : ℕ → ℝ)
  (h₀ : f 1 = 2)
  (h₁ : ∀ n, 1 < n ∧ even n → f n = f (n - 1) + 1)
  (h₂ : ∀ n, 1 < n ∧ odd n → f n = f (n - 2) + 2) :
  f 2017 = 2018 :=
begin

  induction 2017 with n IH generalizing f,
  { simp at h₀, },
  { cases n with,
    { cases n with,
      { cases h₁ n h₀,
        { cases h₁ (n - 1) (n - 1 - 1) (by linarith) with h₂ h₃,
          { exact h₃, },
          { exact (IH (λ x, f (x - 2) + 2)) (by linarith) h₂, }, },
      { cases h₂ n h₀ with h₂ h₃,
        { exact h₃, },
        { cases h₂ (n - 1) (n - 1 - 1) (by linarith) with h₂ h₃,
          { exact (IH (λ x, f (x - 2) + 2)) (by linarith) h₂, },
          { exact h₃, }, }, },
    { cases n with,
      { cases h₁ n h₀ with h₂ h₃,
        { exact h₃, },
        { cases h₁ (n - 1) (n - 1 - 1) (by linarith) with h₂ h₃
end
