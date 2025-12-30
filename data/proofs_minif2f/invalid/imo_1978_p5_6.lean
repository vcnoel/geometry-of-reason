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

  /- The problem is a well-known problem from the 1978 IMO. It states that for a
    strictly increasing function a, the sum of 1/k over all k from 1 to n is less
    than or equal to the sum of a(k)/k^2 over all k from 1 to n. -/
  have h₃ : ∀ k ∈ finset.Icc 1 n, 0 < a k,
  { intro k hk,
    exact h₀ k },
  have h₄ : ∀ k ∈ finset.Icc 1 n, 0 < k,
  { intro k hk,
    exact nat.pos_of_ne_zero (finset.not_mem_zero hk) },
  have h₅ : ∀ k ∈ finset.Icc 1 n, 0 < a k / k^2,
  { intro k hk,
    calc
      0 < a k / k^2
        := (h₃ k hk) / (h₄ k hk)^2 },
  have h₆ : ∀ k ∈ finset.Icc 1 n, (1 : ℝ)/k ≤ a k / k^2,
  { intro k hk,
    calc
      (1
end
