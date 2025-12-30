import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p22
  (x : ℝ) :
  49 ≤ ∑ k in finset.Icc 1 119, abs (↑k * x - 1) :=
begin

  have h := finset.Icc 1 119.abs_sum_le (λ k hk, abs (↑k * x - 1)),
  have h1 := h.mono (λ k hk, le_of_eq (abs (↑k * x - 1) = abs (↑k * x - 1))),
  have h2 := h1.trans (finset.Icc 1 119.sum_le_sum finset.univ),
  have h3 := finset.Icc 1 119.exists_mem (λ k hk, abs (↑k * x - 1) = 0),
  have h4 := h3.imp (λ k hk, abs (↑k * x - 1) = 0) (λ k hk, abs (↑k * x - 1) = 0),
  have h5 := h4.imp (λ k hk, abs (↑k * x - 1) = 0) (λ k hk, abs (↑k * x - 1) = 0),
  have h6 := finset.Icc 1 119.exists_mem (λ k hk, abs (↑k * x - 1) = 0),
  have h
end
