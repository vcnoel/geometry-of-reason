import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2021_p21
  (S : finset ℝ)
  (h₀ : ∀ (x : ℝ), x ∈ S ↔ 0 < x ∧ x^((2 : ℝ)^real.sqrt 2) = (real.sqrt 2)^((2 : ℝ)^x)) :
  ↑2 ≤ ∑ k in S, k ∧ ∑ k in S, k < 6 :=
begin

  have h₁ := finset.sum_subset (λ (x : ℝ), x^((2 : ℝ)^real.sqrt 2) = (real.sqrt 2)^((2 : ℝ)^x)) (λ (x : ℝ) (hx : x ∈ S), h₀ hx) (λ (x : ℝ) (hx : x ∈ S), h₀ hx),
  have h₂ := finset.sum_subset (λ (x : ℝ), x^((2 : ℝ)^real.sqrt 2) = (real.sqrt 2)^((2 : ℝ)^x)) (λ (x : ℝ) (hx : x ∈ S), h₀ hx) (λ (x : ℝ) (hx : x ∈ S), h₀ hx),
  have h₃ := finset.sum_subset (λ (x : ℝ), x^((2 : ℝ)^real.sqrt 2) = (real.sqrt 2)^((2 : ℝ)^x)) (λ (x : ℝ) (hx : x ∈ S), h₀ hx) (λ (x : ℝ) (hx : x ∈ S), h₀ hx),
  have h₄ := finset.sum_subset (λ (x : ℝ), x^((2 :
end
