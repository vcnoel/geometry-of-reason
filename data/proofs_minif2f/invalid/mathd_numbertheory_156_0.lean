import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_156
  (n : ℕ)
  (h₀ : 0 < n) :
  nat.gcd (n + 7) (2 * n + 1) ≤ 13 :=
begin

  cases n,
  { exact nat.gcd 7 1 = 1 },
  { exact nat.gcd (n + 7) (2 * n + 1) = nat.gcd (n + 7) (2 * n + 1) }

end
