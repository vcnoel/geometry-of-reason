import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1979_p1
  (p q : ℕ)
  (h₀ : 0 < q)
  (h₁ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = p/q) :
  1979 ∣ p :=
begin

  cases h₁ with h₁ h₁',
  rw finset.Icc at h₁',
  have h₂ : ∀ k in finset.Icc (1 : ℕ) 1319, ∃ n, 1979 * n = k,
  { intro k,
    use k / 1979,
    have h₃ : k / 1979 ∈ ℕ,
    { apply div_pos,
      exact h₀, },
    exact h₃, },
  have h₄ : ∀ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = ((-1)^(1979 * (k / 1979) + 1) * ((1 : ℝ)/(1979 * (k / 1979)))) * (1979 * (k / 1979)),
  { intro k,
    have h₅ : k = 1979 * (k / 1979),
    { apply eq_of_mul_eq_mul_left,
      { apply mul_ne_zero,
        { exact h₀, },
        { exact h₀, }, },
      { apply div_mul_cancel,
        { exact h₀, }, },
end
