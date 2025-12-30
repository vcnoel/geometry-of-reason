import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_64 :
  is_least {x : ℕ | 30 * x ≡ 42 [MOD 47]} 39 :=
begin

  -- 30 * 39 ≡ 42 [MOD 47]
  have h1 : 30 * 39 ≡ 42 [MOD 47],
    calc 30 * 39 = 1170 : rfl,
      ≡ 42 [MOD 47] : by mod_by 47 (by ring),
  -- ∀ x ∈ {x : ℕ | 30 * x ≡ 42 [MOD 47]}, 39 ≤ x
  have h2 : ∀ x ∈ {x : ℕ | 30 * x ≡ 42 [MOD 47]}, 39 ≤ x,
    intro x hx,
    have h3 : 39 ≤ x,
      calc 39 ≤ 39 + (30 * 0) : le_refl 39,
       ... ≤ 39 + (30 * x) : add_le_add_left (le_mul_of_nonneg_of_le (le_of_eq 0) hx) 39,
       ... ≤ 39 + (30 * x) + (30 * (x - 39)) : add_le_add_right (add_le_add_left (le_mul_of_nonneg_of_le (le_of_eq 0) hx) 39) (30 * (x -
end
