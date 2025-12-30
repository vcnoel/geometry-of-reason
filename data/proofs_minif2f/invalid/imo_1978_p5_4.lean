import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1978_p5
  (n : ℕ)
  (a : ℕ → ℕ)
  (h₀ : ∀ (m : ℕ), 0 < a m)
  (h₁ : ∀ (p q : ℕ), p ≠ q → a p ≠ a q)
  (h₂ : 0 < n) :
  (∑ k in finset.Icc 1 n, (1 : ℝ)/k) ≤ ∑ k in finset.Icc 1 n, (a k)/k^2 :=
begin

  -- We'll use the pigeonhole principle to prove this.
  -- First, let's show that the pigeonhole principle applies.
  have h₃ : ∃ (s : finset ℕ), s.card = n ∧ ∀ (x : ℕ), x ∈ s → ∃ (y : ℕ), y ∈ s ∧ y ≠ x ∧ a y ≠ a x,
  {
    -- We'll use a proof by contradiction.
    -- Suppose that no such s exists.
    assume h₄ : ¬ ∃ (s : finset ℕ), s.card = n ∧ ∀ (x : ℕ), x ∈ s → ∃ (y : ℕ), y ∈ s ∧ y ≠ x ∧ a y ≠ a x,
    -- Then we can find an injection from the set of natural numbers to the set of a's.
    let f := finset.univ.nat_embedding,
    -- But then the pigeonhole principle applies, which is a contradiction.
    exact absurd (finset.univ.card = ∞) (finset.card_injective f),
  },
  -- Now, let's assume that s is a set of n elements such that for all x, y in s, x ≠ y → a x ≠ a y.

end
