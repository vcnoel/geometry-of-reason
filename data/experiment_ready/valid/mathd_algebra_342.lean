import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_342
  (a d: ℝ)
  (h₀ : ∑ k in (finset.range 5), (a + k * d) = 70)
  (h₁ : ∑ k in (finset.range 10), (a + k * d) = 210) :
  a = 42/5 :=
begin
  revert h₀ h₁,
  simp [finset.sum_range_succ, mul_comm d],
  intros,
  linarith,
end