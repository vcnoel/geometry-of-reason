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

  refine ⟨le_of_forall_ge (λ x hx, _), lt_of_forall_le (λ x hx, _), _⟩,
  { exact (h₀ x hx).2 * (h₀ x hx).1 },
  { exact (h₀ x hx).2 * (h₀ x hx).1 },
  { rw finset.sum_const,
    refine le_of_forall_ge (λ x hx, _),
    exact (h₀ x hx).2 * (h₀ x hx).1 }

end
