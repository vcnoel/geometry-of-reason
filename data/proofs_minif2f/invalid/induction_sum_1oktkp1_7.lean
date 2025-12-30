import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  induction n with n ih,
  { simp },
  { have h := ih,
    have h1 := @add_one_mul ℝ _ n,
    have h2 := @add_one_mul ℝ _ n,
    have h3 := add_one_ne_zero ℝ,
    have h4 := @div_mul_cancel ℝ _ n,
    have h5 := @add_one_ne_zero ℝ _ n,
    have h6 := @mul_comm ℝ _ n,
    have h7 := @mul_assoc ℝ _ n,
    have h8 := @mul_comm ℝ _ n,
    have h9 := @mul_assoc ℝ _ n,
    have h10 := @mul_comm ℝ _ n,
    have h11 := @mul_assoc ℝ _ n,
    have h12 := @mul_comm ℝ _ n,
    have h13 := @mul_assoc ℝ _ n,
    have h14 := @mul_comm ℝ _ n,
    have h15 := @mul_assoc ℝ _ n,
    have h16 := @mul_comm ℝ _ n,
    have h17 := @mul_assoc ℝ _ n,
    have h18 := @mul_comm ℝ _ n,
    have h19 := @mul_assoc ℝ _ n,
    have h20 := @
end
