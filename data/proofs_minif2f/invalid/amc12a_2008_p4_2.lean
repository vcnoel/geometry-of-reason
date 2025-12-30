import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  -- We will prove that the product of the fractions ((4 * k + 4) / (4 * k)) for all k in [1, 502] is equal to 502.
  -- The proof is by induction on k.
  induction 502 with k IH,
  -- The base case is k = 1.
  { calc ∏ k in finset.Icc (1 : ℕ) 1, ((4 * k + 4) / (4 * k)) = ((4 * 1 + 4) / (4 * 1)) : by finset.prod_congr rfl rfl
   ... = 1 : by simp [div_eq_one_of_dvd, add_right_inj, mul_one, div_one] },
  -- The inductive step is k = n + 1.
  { let s := finset.Icc (1 : ℕ) (n + 1),
    have hs : s = s.erase n,
    { apply finset.ext,
      intro x,
      by_cases h : x = n,
      { subst h,
        exact or.inl rfl },
      { exact or.inr (λ hx, hx rfl) } },
    calc ∏ k in s
end
