import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  cases n,
  { simp at h₀ },
  { cases n with n hn,
    { simp at h₀ },
    { cases h₀ with h₁ h₂,
      { exact absurd hn h₁ },
      { have h₃ : 3 ∣ (2^(n+1) - 1) := h₂,
        have h₄ : 3 ∣ 2^(n+1) - 2 := h₃,
        have h₅ : 3 ∣ 2^(n+1) := h₄,
        have h₆ : 2^(n+1) % 3 = 2^(n+1 - 1) % 3 * 2 % 3 := by ring_nf,
        have h₇ : 2^(n+1) % 3 = 2 * 2^n % 3 := h₆,
        have h₈ : 2^(n+1) % 3 = 2 * (2^n % 3) := by simp only [mod_mod],
        have h₉ : 2^(n+1) % 3 = 2 * (1 % 3) := by simp only [h₂
end
