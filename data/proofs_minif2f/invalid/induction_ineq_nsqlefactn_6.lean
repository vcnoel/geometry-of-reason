import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_ineq_nsqlefactn
  (n : ℕ)
  (h₀ : 4 ≤ n) :
  n^2 ≤ n! :=
begin

  have h₁ : ∀ (k : ℕ), 4 ≤ k → k^2 ≤ k!,
    induction n with k IH generalizing k,
    { exact le_refl 4^2 },
    { assume k IH h₂ : 4 ≤ k,
      have h₃ : k^2 ≤ k! * k,
        from IH (le_trans h₂ h₀),
      have h₄ : k! * k ≤ k! * (k + 1),
        from le_mul_of_le_one h₂,
      have h₅ : k! * k ≤ k! * (k + 1) * k,
        from le_mul_of_le_one h₂,
      show k^2 ≤ k! * (k + 1) * k,
        by linarith [h₃, h₄, h₅] },
  show n^2 ≤ n!,
    by exact h₁ h₀

end
