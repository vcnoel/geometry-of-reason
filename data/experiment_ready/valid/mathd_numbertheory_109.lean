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
  norm_num,
  simp [h₀],
  have h₁ : finset.Icc 1 100 = finset.Ico 1 101, {
    exact rfl,
  },
  rw h₁,
  norm_num [finset.sum_Ico_succ_top],
end