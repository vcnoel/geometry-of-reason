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

  by_cases hS : S.nonempty,
  { have hS_pos : ∀ (x : ℝ), x ∈ S → 0 < x,
    { intros x hx,
      exact (h₀ x hx).1 },
    have hS_sqrt : ∀ (x : ℝ), x ∈ S → real.sqrt 2 < x^((2 : ℝ)^real.sqrt 2),
    { intros x hx,
      exact (h₀ x hx).2 },
    have hS_pow : ∀ (x : ℝ), x ∈ S → x^((2 : ℝ)^real.sqrt 2) < (real.sqrt 2)^(2 * real.sqrt 2),
    { intros x hx,
      exact (h₀ x hx).2 },
    have hS_ineq : ∀ (x : ℝ), x ∈ S → x^((2 : ℝ)^real.sqrt 2) < 4,
    { intros x hx,
      calc x^((2 : ℝ)^real.sqrt 2) < (real.sqrt 2)^(2 * real.sqrt 2) : hS_pow x hx
       ... < 4 : by norm_num },
    have hS_sum : ∑ k in S, k <
end
