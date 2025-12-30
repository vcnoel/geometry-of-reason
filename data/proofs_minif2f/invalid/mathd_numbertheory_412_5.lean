import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  have h₂ : x % 19 = 4 := h₀,
  have h₃ : y % 19 = 7 := h₁,
  have h₄ : (x + 1) % 19 = 5,
  { rw [add_mod, h₂, mod_sub_mod], },
  have h₅ : (y + 5) % 19 = 12,
  { rw [add_mod, h₃, mod_sub_mod], },
  have h₆ : (x + 1)^2 % 19 = 25,
  { rw [mod_pow, h₄, pow_two, mod_sub_mod], },
  have h₇ : (y + 5)^3 % 19 = 1728,
  { rw [mod_pow, h₅, pow_three, mod_sub_mod], },
  have h₈ : (25 * 1728) % 19 = 13,
  { simp [mod_mul, h₆, h₇], },
  exact h₈,

end
