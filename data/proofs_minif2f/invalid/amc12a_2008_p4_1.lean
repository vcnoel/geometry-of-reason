import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  rw finset.prod_congr rfl (λ (k : ℕ), (4 * k + 4) / (4 * k) = 1 + 1 / k),
  simp only [div_add, div_one, one_mul, add_one, one_div],
  refine finset.prod_const _ _,
  exact 1,

end
