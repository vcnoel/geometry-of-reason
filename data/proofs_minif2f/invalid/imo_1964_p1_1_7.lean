import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  cases n with n,
  { exact absurd n.succ_ne_zero rfl },
  { exact absurd 7 ∣ 2^(n-1) - 1 ((pow_sub_pow_sub h₀).resolve_left n.succ_pos) }

end
