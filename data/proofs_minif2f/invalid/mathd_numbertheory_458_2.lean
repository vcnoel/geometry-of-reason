import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_458
  (n : ℕ)
  (h₀ : n % 8 = 7) :
  n % 4 = 3 :=
begin

  -- We know that n % 8 = 7.
  -- So, n = 8k + 7 for some k.
  -- This means that n % 4 = (8k + 7) % 4.
  -- We know that (8k + 7) % 4 = 3.
  -- Therefore, n % 4 = 3.
  have h₁ : n = 8 * k + 7, from nat.mod_eq_of_lt (lt_of_le_of_lt (nat.le_of_mod_lt h₀) (nat.succ_pred_eq_of_lt h₀)),
  have h₂ : (8 * k + 7) % 4 = 3, from nat.mod_add_div 8 4 (k * 8 + 7),
  show n % 4 = 3, from congr_arg (λ x, x % 4) h₁,

end
