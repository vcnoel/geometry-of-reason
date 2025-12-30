import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_461
  (n : ℕ)
  (h₀ : n = finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7))) :
  (3^n) % 8 = 1 :=
begin

  have h₁ : ∀ x ∈ finset.Icc 1 7, gcd x 8 = 1,
  { intro x,
    apply gcd_dvd_of_dvd_right,
    exact nat.dvd_of_mod_eq_zero (x % 8),
    apply nat.mod_eq_zero_of_div,
    exact dvd_of_mod_eq_zero (x % 8),
    apply nat.mod_eq_of_lt,
    apply nat.lt_of_le_of_lt,
    apply finset.Icc_subset_Icc_right,
    exact finset.Icc_subset_Icc_left,
    apply finset.Icc_subset_Icc_right,
    exact finset.Icc_subset_Icc_left,
    apply finset.Icc_subset_Icc_right,
    exact finset.Icc_subset_Icc_left,
    apply finset.Icc_subset_Icc_right,
    exact finset.Icc_subset_Icc_left,
    apply finset.Icc_subset_Icc_right,
    exact finset.Icc_subset_Icc_left,
    apply finset.Icc_subset_Icc_right,
    exact finset.Icc_subset_Icc_left },
  have h₂ : finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7)
end
