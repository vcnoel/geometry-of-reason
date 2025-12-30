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

  have h₁₁ : ∀ n, t n = t (n - 2) + t (n - 1),
  { intro n,
    cases n with n,
    { simp only [h₀] },
    { simp only [h₁, h₂] } },
  have h₁₂ : ∀ n > 1, t n ≡ t (n - 2) + t (n - 1) [MOD 16],
  { intro n,
    apply h₁₁ },
  have h₁₃ : ∀ n, t n ≡ t (n - 2) + t (n - 1) [MOD 16],
  { intro n,
    apply h₁₂ },
  have h₂₁ : ∀ n > 1, t n % 7 = (t (n - 2) + t (n - 1)) % 7,
  { intro n,
    apply h₁₃ },
  have h₂₂ : ∀ n > 1, (t (n - 2) + t (n - 1)) % 7 = ((t (n - 2)) % 7 + (t (n - 1)) % 7)
end
