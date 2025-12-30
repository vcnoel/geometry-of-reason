import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_405
  (a b c : ℕ)
  (t : ℕ → ℕ)
  (h₀ : t 0 = 0)
  (h₁ : t 1 = 1)
  (h₂ : ∀ n > 1, t n = t (n - 2) + t (n - 1))
  (h₃ : a ≡ 5 [MOD 16])
  (h₄ : b ≡ 10 [MOD 16])
  (h₅ : c ≡ 15 [MOD 16]) :
  (t a + t b + t c) % 7 = 5 :=
begin

  have h₆ : ∀ n, n % 16 = 0 → t n = t (n - 16),
  { intros n h,
    induction n with n IH,
    { rw h at h₂,
      exact h₂ 1 h },
    { cases n % 16 with z z,
      { have h₇ : n % 16 = 0,
        { rw z },
        exact IH h₇ },
      { have h₈ : n % 16 = 1,
        { rw z },
        exact h₁ } } },
  have h₉ : ∀ n, n % 16 = 0 → t (n + 16) = t n,
  { intros n h,
    have h₁₀ : n % 16 = 0,
    { rw h },
    have h₁₁ : (n + 16) % 16 = 0,
    { have h₁₂ : n + 16 = n + 16 % 16,
      { rw nat.add_mod },
      exact h₁₁ },
    exact h₆ h₁₀ },
  have h₁₃ : t a = t (a % 16),
  { have h₁
end
