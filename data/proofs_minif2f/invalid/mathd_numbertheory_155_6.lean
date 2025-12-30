import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  let s := finset.Icc 100 999,
  have hs1 : ∀ x ∈ s, 7 ≤ x % 19 ∧ x % 19 ≤ 7, from λ x hx, by simp only [mod_eq_sub,
    and_assoc, and_imp, sub_nonneg, and_self],
  have hs2 : ∀ x ∈ s, 100 ≤ x ∧ x ≤ 999, from λ x hx, by simp only [and_assoc, and_imp, le_antisymm],
  have h1 : ∀ x ∈ s, (x - 7) % 19 = 0, from λ x hx, by {simp only [mod_eq_sub, sub_nonneg, and_self],
    exact hs1 x hx},
  have h2 : ∀ x ∈ s, x - 7 ∈ finset.Icc 93 992, from λ x hx, by {simp only [sub_nonneg, and_self],
    exact hs2 x hx},
  have h3 : ∀ x ∈ s, x - 7 ∈ finset.Icc 93 992 ∧ (x - 7) % 19 = 0, from λ x hx, by {simp only [and_assoc,
   
end
