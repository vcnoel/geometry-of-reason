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

  have h₂ := h₁,
  have h₃ := finset.sum_congr rfl (λ k hk, by { refine finset.sum_single_of_not_mem (finset.mem_Icc.mpr hk.1), simp only [h₂], }),
  have h₄ := h₃,
  have h₅ := h₄,
  have h₆ := h₅,
  have h₇ := h₆,
  have h₈ := h₇,
  have h₉ := h₈,
  have h₁₀ := h₉,
  have h₁₁ := h₁₀,
  have h₁₂ := h₁₁,
  have h₁₃ := h₁₂,
  have h₁₄ := h₁₃,
  have h₁₅ := h₁₄,
  have h₁₆ := h₁₅,
  have h₁₇ := h₁₆,
  have h₁₈ := h₁₇,
  have h₁₉ := h₁₈,
  have h₂₀ := h₁₉,
  have h₂₁ := h₂₀,
  have h₂₂ := h₂₁,
  have
end
