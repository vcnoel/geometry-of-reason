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

  cases h₀ with h₁ h₂,
  rw finset.sum_eq_multiset_sum,
  rw multiset.sum,
  have h₃ : ∀ n : ℕ, n ∈ S ↔ 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n],
  { exact h₂ },
  have h₄ : ∀ n : ℕ, 2 ≤ n,
  { intros n hn,
    have h₅ : n ∈ S,
    { exact h₃.mp hn },
    exact h₁.mp h₅ },
  have h₆ : ∀ n : ℕ, 171 ≡ 80 [MOD n],
  { intros n hn,
    have h₇ : n ∈ S,
    { exact h₃.mp hn },
    exact h₂.mp h₇ },
  have h₈ : ∀ n : ℕ, 468 ≡ 13 [MOD n],
  { intros n hn,
    have h₉ : n ∈ S,
    { exact h₃.mp hn },
    exact h₂.mp h₉ },
  have h₁₀ : ∀ n : ℕ, n ∈ S → n ≥ 2,
  { intros n hn,
   
end
