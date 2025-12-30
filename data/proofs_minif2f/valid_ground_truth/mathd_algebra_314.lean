import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_314
  (n : ℕ)
  (h₀ : n = 11) :
  (1 / 4)^(n + 1) * 2^(2 * n) = 1 / 4 :=
begin
  rw h₀,
  norm_num,
end