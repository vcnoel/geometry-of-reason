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

  /- By the AM-GM inequality, we have
    ∑ k in finset.Icc 1 n, (1 : ℝ)/k ≥ ∑ k in finset.Icc 1 n, (a k)/k^2 -/
  exact
  have
    ∀ k ∈ finset.Icc 1 n, (1 : ℝ)/k ≥ (a k)/k^2,
    from λ k hk, by
    { /- Since a k > 0 -/
      have a_pos : 0 < a k := h₀ k,
      /- We have -/
      have k_pos : 0 < k := by
        { /- By the definition of Icc -/
          exact finset.Icc.one_lt k },
      /- By the AM-GM inequality -/
      have am_gm : (1 : ℝ)/k ≥ (a k)/k^2 := am_gm (1 : ℝ) (a k) k k_pos a_pos,
      /- By the definition of finset.Icc -/
      exact am_gm,
    /- Therefore, -/
    have ∀ k ∈ finset.Icc 1 n, (1 : ℝ)/k ≥ (a k)/
end
