import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_461
  (n : ℕ)
  (h₀ : n = finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7))) :
  (3^n) % 8 = 1 :=
begin

  have h₁ : 3 % 8 = 1,
  { have h₂ : 3 = 8 * 0 + 3,
    { norm_num },
    rw [h₂] at h₀,
    simp only [mod_eq_sub_mod, mod_sub, mod_mul, mod_pow],
    have h₃ : (8 * 0) % 8 = 0,
    { simp only [mod_eq_sub_mod, mod_sub, mod_mul, mod_pow] },
    have h₄ : (3 * 0) % 8 = 0,
    { simp only [mod_eq_sub_mod, mod_sub, mod_mul, mod_pow] },
    have h₅ : 1 % 8 = 1,
    { simp only [mod_eq_sub_mod, mod_sub, mod_mul, mod_pow] },
    have h₆ : (3 * 1) % 8 = 3,
    { simp only [mod_eq_sub_mod, mod_sub, mod_mul, mod_pow] },
    have h₇ : (3 * 2) % 8 = 6,
    { simp only [mod_eq_sub_mod, mod_sub, mod_mul, mod_pow] },
   
end
