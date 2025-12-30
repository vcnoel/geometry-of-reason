import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p12
  (f : ℝ → ℝ)
  (k : ℝ)
  (h₀ : ∀ x, f x = x^2 - 63 * x + k)
  (h₁ : set.subset (f ⁻¹' {0}) {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n}) :
  k = 122 :=
begin

  have h₂ : ∀ x, f x = x^2 - 63 * x + 122,
  { intro x,
    exact h₀ x },
  have h₃ : ∀ x, x ∈ f ⁻¹' {0} → ∃ n : ℕ, ↑n = x ∧ nat.prime n,
  { intro x,
    intro h,
    exact h₁ h },
  have h₄ : ∀ x, f x ≠ 0,
  { intro x,
    intro h,
    have h₅ : ∃ n : ℕ, ↑n = x ∧ nat.prime n,
    { exact h₃ h },
    obtain ⟨n, h₆, h₇⟩ := h₅,
    have h₈ : n^2 - 63 * n + 122 ≠ 0,
    { contraposition h₉,
      have h₁₀ : n^2 - 63 * n + 122 = 0,
      { rw h₂,
        exact h },
      have h₁₁ : (n - 63)^2 = 0,
      { have h₁₂ : n^2 - 63^2 = (n - 63)^2
end
