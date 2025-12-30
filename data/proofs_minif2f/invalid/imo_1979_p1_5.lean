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

  have h₂ : ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = ∑ k in finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * (1319 : ℝ)/1319^k),
  { have h₃ : ∀ k ∈ finset.Icc (1 : ℕ) 1319, ((-1)^(k + 1) * ((1 : ℝ)/k)) = ((-1)^(k + 1) * (1319 : ℝ)/1319^k),
    { intros k hk,
      have hk' : k ∈ finset.Icc (1 : ℕ) 1319,
      { rwa [finset.Icc_eq_Ico, finset.mem_Ico] at hk, },
      have hk'' : k ≠ 1319,
      { rintro rfl,
        exact hk (finset.not_mem_Icc 1319 1319), },
      have hk''' : k ≠ 0,
      { rintro rfl,
        exact hk (finset.not_mem_Icc 0 
end
