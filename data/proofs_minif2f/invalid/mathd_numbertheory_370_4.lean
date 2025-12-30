import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_370
  (n : ℕ)
  (h₀ : n % 7 = 3) :
  (2 * n + 1) % 7 = 0 :=
begin

  rw [mod_eq_sub_mod, nsmul_add, add_sub_cancel],
  have h₁ : 14 % 7 = 0,
  { exact (mod_14_7).symm },
  have h₂ : 2 * 3 % 7 = 0,
  { exact (mod_6_7).symm },
  have h₃ : 1 % 7 = 1,
  { exact (mod_1_7).symm },
  have h₄ : 1 % 7 = 1,
  { exact (mod_1_7).symm },
  have h₅ : 6 % 7 = 6,
  { exact (mod_6_7).symm },
  have h₆ : 3 % 7 = 3,
  { exact (mod_3_7).symm },
  have h₇ : 6 % 7 = 6,
  { exact (mod_6_7).symm },
  have h₈ : 3 % 7 = 3,
  { exact (mod_3_7).symm },
  have h₉ : 3 % 7 = 3,

end
