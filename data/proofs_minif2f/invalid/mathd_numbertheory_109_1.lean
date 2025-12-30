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

  have h₁ : ∀ k in finset.Icc 1 100, v k % 7 = 3,
  { intro k,
    rw h₀,
    norm_num, },
  have h₂ : (∑ k in finset.Icc 1 100, v k) % 7 = (∑ k in finset.Icc 1 100, 3) % 7,
  { congr, ext k, exact h₁ k },
  rw finset.sum_const,
  calc
    _ = 3 * finset.card (finset.Icc 1 100) % 7
     ... = 3 * 100 % 7
     ... = 4,

end
