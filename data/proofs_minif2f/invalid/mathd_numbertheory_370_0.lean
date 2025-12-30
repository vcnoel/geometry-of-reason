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

  have h₁ : n % 7 = 3,
  from h₀,
  have h₂ : n = 7 * (n / 7) + 3,
  by { rw [div_eq_mod_sub (n / 7) 7] },
  have h₃ : 2 * n + 1 = 2 * (7 * (n / 7) + 3) + 1,
  by { rw [h₂] },
  have h₄ : 2 * (7 * (n / 7) + 3) + 1 = 14 * (n / 7) + 7,
  by { ring },
  have h₅ : 14 * (n / 7) + 7 = 7 * (2 * (n / 7) + 1),
  by { ring },
  have h₆ : 7 * (2 * (n / 7) + 1) % 7 = 0,
  by { rw [mod_eq_sub_mod (2 * (n / 7) + 1) 7] },
  have h₇ : 2 * (n / 7) + 1
end
