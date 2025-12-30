import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_136
  (n : ℕ)
  (h₀ : 123 * n + 17 = 39500) : n = 321 :=
begin

  rw [← h₀, ← 123 * n + 17 = 39500],
  exact n,

end
