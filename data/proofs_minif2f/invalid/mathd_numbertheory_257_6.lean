import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_257
  (x : ℕ)
  (h₀ : 1 ≤ x ∧ x ≤ 100)
  (h₁ : 77∣(∑ k in (finset.range 101), k - x)) :
  x = 45 :=
begin

  by_contradiction h,
  have h₂ := finset.sum_const_sub x,
  have h₃ := (finset.sum_const_sub x).symm,
  have h₄ := (h₁.subst h₂).subst h₃,
  have h₅ := nat.mod_eq_zero_iff_dvd.mpr (finset.sum_const_sub 45),
  have h₆ := h₅.subst h₄,
  have h₇ := nat.dvd_of_mod_eq_zero h₆,
  have h₈ := finset.sum_const_sub 45,
  have h₉ := (finset.sum_const_sub 45).symm,
  have h₁₀ := h₇.subst h₈,
  have h₁₁ := h₁₀.subst h₉,
  have h₁₂ := finset.sum_eq_zero_of_dvd_finset h₁₁,
  have h₁₃ := h₁₂.subst h₄,
  have h₁₄ := (finset.sum_const_sub 45).symm,
  have h₁₅ := h₁₄.subst h₁₃,
  have h₁₆ := nat.mod_eq_zero_iff_d
end
