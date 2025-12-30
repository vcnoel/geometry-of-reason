import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  simp only [finset.sum_eq_multiset_sum],
  apply multiset.ext,
  intros n,
  apply finset.mem_map,
  apply finset.mem_map,
  split,
  { rintros ⟨m, hm, rfl⟩,
    exact h₀ m },
  { rintros h,
    obtain rfl := finset.mem_map.mp h,
    obtain ⟨m, hm, rfl⟩ := finset.mem_finset.mp h,
    exact h₀ m },
  { rw finset.sum_eq_multiset_sum },
  { simp only [finset.sum_const, multiset.sum],
    congr,
    { simp only [finset.sum_const, multiset.sum],
      congr,
      { rw finset.sum_eq_multiset_sum },
      { apply finset.sum_congr rfl (λ k hk, k = k),
        rintros rfl,
        exact 36 ∣ 36 },
      { apply finset.sum_congr rfl (λ k hk, k = k),
        rintros rfl,
        exact 1 ∣ 36 },
      { apply finset.sum_congr rfl (λ k hk, k = k),
        rintros rfl,
        exact 3 ∣ 36 },
      { apply finset.sum
end
