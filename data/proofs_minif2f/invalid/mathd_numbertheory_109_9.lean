import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_109
  (v : ℕ → ℕ)
  (h₀ : ∀ n, v n = 2 * n - 1) :
  (∑ k in finset.Icc 1 100, v k) % 7 = 4 :=
begin

  simp only [finset.sum, finset.sum_const],
  simp only [finset.sum_Icc'],
  rw [finset.sum_const],
  simp only [finset.sum_Icc'],
  simp only [finset.sum_Icc'],
  congr,
  ext k,
  simp only [finset.mem_Icc, finset.mem_range],
  split_ifs,
  { refl },
  { rw [finset.sum_empty, zero_mod 7],
    refl }

end
