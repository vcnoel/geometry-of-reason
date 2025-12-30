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

  have h₃ : ∀ (k : ℕ), 1 ≤ k → 0 < (a k)/k^2,
  { intros k hk,
    have hk' : 0 < a k,
    { apply h₀ },
    have hk'' : 0 < k^2,
    { apply pow_pos hk hk },
    have hk''' : (a k)/k^2 > 0,
    { apply div_pos hk' hk'' },
    assumption },
  have h₄ : ∀ (k : ℕ), 1 ≤ k → (1 : ℝ)/k < (a k)/k^2,
  { intros k hk,
    have hk' : 1 ≤ k,
    { assumption },
    have hk'' : 0 < k,
    { apply lt_pos_of_le hk },
    have hk''' : (1 : ℝ)/k < (a k)/k^2,
    { apply div_lt_div hk' hk'' (a k) k },
    assumption },
  have h₅ : ∀ (k : ℕ), 1 ≤ k → (1 : ℝ)/k ≤ (a k)/k^2,
  { intros k hk,
    apply le_of_lt_of_le (h
end
