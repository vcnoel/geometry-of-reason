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

  have h₂ : ∀ (n : ℕ), ∑ k in finset.Icc (1 : ℕ) n, ((-1)^(k + 1) * ((1 : ℝ)/k)) = (1 - (1/(n + 1))) / 2,
  { intro n,
    have h₃ : ∑ k in finset.Icc (1 : ℕ) n, ((-1)^(k + 1) * ((1 : ℝ)/k)) =
        ∑ k in finset.Icc (1 : ℕ) n, ((-1)^(k + 1) * ((1 : ℝ)/k)) * (1/(n + 1)),
    { rw [mul_comm, finset.sum_mul],
      apply finset.sum_congr rfl,
      intro k,
      simp },
    have h₄ : ∑ k in finset.Icc (1 : ℕ) n, ((-1)^(k + 1) * ((1 : ℝ)/k)) * (1/(n + 1)) =
        (1/(n + 1)) * ∑ k in finset.Icc (1 : ℕ) n, ((-1)^(k +
end
