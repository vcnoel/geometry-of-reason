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

  have h₂ : ∀ k ∈ finset.Icc (1 : ℕ) 1319, (-1)^(k + 1) * ((1 : ℝ)/k) = p/q,
  { intros k hk,
    exact h₁ },
  have h₃ : ∑ k in finset.Icc (1 : ℕ) 1319, (-1)^(k + 1) * ((1 : ℝ)/k) = p/q,
  { exact h₁ },
  have h₄ : ∑ k in finset.Icc (1 : ℕ) 1319, (-1)^(k + 1) * ((1 : ℝ)/k) = p/q,
  { exact h₃ },
  have h₅ : ∑ k in finset.Icc (1 : ℕ) 1319, (-1)^(k + 1) * ((1 : ℝ)/k) ≠ 0,
  { intro h,
    have h₆ : p/q = 0,
    { rw h },
    have h₇ : p = 0,
    { have h₈ : q ≠ 0,
      { intro h₉,
        have h₁₀ : q =
end
