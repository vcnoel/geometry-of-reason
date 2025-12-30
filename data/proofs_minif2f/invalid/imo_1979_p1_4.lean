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

  let f : ℤ → ℝ := λ k, (-1)^(k + 1) * ((1 : ℝ)/k),
  let g : finset ℕ → ℤ := λ s, s.sum f,
  let h₂ : ∀ (s : finset ℕ), g s = s.sum f,
  { assume s, exact rfl },
  let h₃ : g (finset.Icc 1 1319) = p/q,
  { have h₃₁ : ∀ k ∈ finset.Icc 1 1319, f k = (-1)^(k + 1) * ((1 : ℝ)/k),
    { assume k h,
      exact f k },
    have h₃₂ : ∑ k in finset.Icc 1 1319, f k = p/q,
    { rw h₁ },
    have h₃₃ : g (finset.Icc 1 1319) = ∑ k in finset.Icc 1 1319, f k,
    { apply h₂ },
    exact h₃₂ },
  let h₄ : 1979 ∣ p,
  { have h₄₁ : ∀ k ∈ finset.Icc 
end
