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

  have h₁ : ∀ (x : ℝ), x ∈ S → 0 < x ∧ x^((2 : ℝ)^real.sqrt 2) = (real.sqrt 2)^((2 : ℝ)^x),
  { intros x hx,
    exact h₀ hx },
  have h₂ : ∀ (x : ℝ), x ∈ S → 0 < x,
  { intros x hx,
    exact (h₁ x hx).1 },
  have h₃ : ∀ (x : ℝ), x ∈ S → x^((2 : ℝ)^real.sqrt 2) = (real.sqrt 2)^((2 : ℝ)^x),
  { intros x hx,
    exact (h₁ x hx).2 },
  have h₄ : ∀ (x : ℝ), x ∈ S → (real.sqrt 2)^((2 : ℝ)^x) = 2^((2 : ℝ)^x),
  { intros x hx,
    exact (real.sqrt 2).pow ((2 : ℝ)^x) = 2^((2 : ℝ)^x) },
  have h₅ : ∀ (x : ℝ), x ∈ S → x^((2 : ℝ)^real.sqrt 2) = 2
end
