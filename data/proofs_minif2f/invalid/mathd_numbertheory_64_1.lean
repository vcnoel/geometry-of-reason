import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_64 :
  is_least {x : ℕ | 30 * x ≡ 42 [MOD 47]} 39 :=
begin

  let n := 39,
  have h₁ := 30 * n ≡ 42 [MOD 47],
  have h₂ : ∀ a, a ≡ 42 [MOD 47] → a ≡ 42 [MOD 47],
  { intro a,
    exact a ≡ 42 [MOD 47] },
  have h₃ : ∀ a b, a ≡ b [MOD 47] → a ≡ b [MOD 47],
  { intro a b,
    exact a ≡ b [MOD 47] },
  have h₄ : ∀ a b c, a ≡ b [MOD 47] → a ≡ c [MOD 47] → b ≡ c [MOD 47],
  { intro a b c,
    intro h,
    have h₁ := h₃ a b h,
    exact h₁ },
  have h₅ : ∀ a, a ≡ 0 [MOD 47] → a ≡ 0 [MOD 47],
  { intro a,
    exact a ≡ 0 [MOD 47] },
  have h₆ : ∀ a b c, a ≡ b [MOD 47] → a �
end
