import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  -- 36 can be factored as 2^2 * 3^2
  -- 36 = 2^2 * 3^2 = 4 * 9
  have h₁ : ∀ n, n ∈ S → n | 4 * 9,
  { assume n hs,
    have h₂ : n | 36,
    { exact h₀ n hs },
    have h₃ : n | 4,
    { have h₄ : n | 2^2,
      { exact nat.prime.pow_divide 2 2 n h₂ },
      have h₅ : n | 2,
      { exact nat.prime_divide 2 n h₄ },
      exact nat.succ_pos n },
    have h₆ : n | 9,
    { have h₇ : n | 3^2,
      { exact nat.prime.pow_divide 3 2 n h₂ },
      have h₈ : n | 3,
      { exact nat.prime_divise 3 n h₇ },
      exact nat.succ_pos n },
    have h₉ : n | 4 * 9,
    { exact nat.divise.mul
end
