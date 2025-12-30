import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_2dvd4expn
  (n : ℕ)
  (h₀ : n ≠ 0) :
  2 ∣ 4^n :=
begin
  revert n h₀,
  rintros ⟨k, rfl⟩,
  { norm_num },
  apply dvd_pow,
  norm_num,
end