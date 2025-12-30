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

  have h₁ : ∀ (n : ℕ), n ∈ S → n ≥ 2,
  { intro n,
    from h₀ n.2.1 },
  have h₂ : ∀ (n : ℕ), n ∈ S → 171 ≡ 80 [MOD n],
  { intro n,
    from h₀ n.2.2.1 },
  have h₃ : ∀ (n : ℕ), n ∈ S → 468 ≡ 13 [MOD n],
  { intro n,
    from h₀ n.2.2.2 },
  have h₄ : ∀ (n : ℕ), n ∈ S → n ∣ 171 - 80,
  { intro n,
    from (h₂ n).divisor },
  have h₅ : ∀ (n : ℕ), n ∈ S → n ∣ 468 - 13,
  { intro n,
    from (h₃ n).divisor },
  have h₆ : ∀ (n : ℕ), n ∈ S → n ∣ 91,
  { intro n,
    from h₄ n },
  have h₇ : ∀ (n : ℕ), n ∈ S → n ∣ 455,
 
end
