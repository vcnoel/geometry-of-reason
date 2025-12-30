import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  let f : ℕ → ℕ := λ n, ∑ k in (nat.proper_divisors n), k,
  have h1 : f 1 = 0, by { rw [f], simp },
  have h2 : f 198 = 270,
  { have h3 : 198 = 2 * 99, by { norm_num },
    have h4 : 99 = 3 * 33, by { norm_num },
    have h5 : 33 = 11 * 3, by { norm_num },
    have h6 : f 198 = f (2 * 99), by { rw [h3] },
    have h7 : f (2 * 99) = 2 * f 99, by { rw [f], simp },
    have h8 : f 99 = f (3 * 33), by { rw [h4] },
    have h9 : f (3 * 33) = 3 * f 33, by { rw [f], simp },
    have h10 : f 33 = f (11 * 3), by { rw [h5] },
    have h11 : f (11 * 3) =
end
