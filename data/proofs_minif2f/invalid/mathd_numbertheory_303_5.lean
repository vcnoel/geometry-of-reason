import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_303
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n]) :
  ∑ k in S, k = 111 :=
begin

  have h₁ : ∀ (n : ℕ), 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n] → n ∈ S,
    from λ n h, h₀.symm (h.left),
  have h₂ : ∀ (n : ℕ), n ∈ S → 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n],
    from λ n h, h₀ (h),
  have h₃ : ∀ (n : ℕ), n ∈ S → n ≥ 2,
    from λ n h, (h₂ n h).left,
  have h₄ : ∀ (n : ℕ), n ∈ S → 171 ≡ 80 [MOD n],
    from λ n h, (h₂ n h).middle,
  have h₅ : ∀ (n : ℕ), n ∈ S → 468 ≡ 13 [MOD n],
    from λ n h, (h₂ n h).right,
  have h₆ : ∀ (n : ℕ), n ∈ S → n | 171 - 80,
    from λ n h, (h₄
end
