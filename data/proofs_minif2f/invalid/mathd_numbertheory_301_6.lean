import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_301
  (j : ℕ)
  (h₀ : 0 < j) :
  (3 * (7 * ↑j + 3)) % 7 = 2 :=
begin

  ring_nf,
  show (3 * (7 * ↑j + 3)) % 7 = 2,
  rw [mul_add, mul_one, mul_one],
  ring_nf,
  show (21 * ↑j + 9) % 7 = 2,
  show (21 * ↑j) % 7 + 9 % 7 = 2,
  ring_nf,
  show (21 * ↑j) % 7 = 0 + 2,
  show 21 * ↑j = 7 * (3 * ↑j) + 0,
  ring_nf,
  show (7 * (3 * ↑j)) % 7 = 0,
  show (7 * (3 * ↑j)) % 7 = 0,
  show (7 * (3 * ↑j)) % 7 = 0,
  show (7 * (3 * ↑j)) % 7 = 0,
  show (7 * (3 * ↑j)) % 7 = 0,
  show (7 * (3 * ↑j)) % 7 = 0,
  show (7 * (3 * ↑j)) % 7 = 0,
  show (
end
