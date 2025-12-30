import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_335
  (n : ℕ)
  (h₀ : n % 7 = 5) :
  (5 * n) % 7 = 4 :=
begin

  have h₁ := mod_add_eq_mod_mod (5 * n) 7 5,
  have h₂ := mod_add_eq_mod_mod (5 * n) 7 (n % 7),
  have h₃ := congr_arg (mod 7) (mod_mul _ _),
  have h₄ := mod_add_eq_mod_mod (5 * n) 7 (n % 7),
  have h₅ := mod_add_eq_mod_mod (5 * n) 7 5,
  have h₆ := h₅.symm,
  have h₇ := congr_arg (mod 7) (mod_mul _ _),
  have h₈ := h₂,
  have h₉ := h₇,
  have h₁₀ := h₈,
  have h₁₁ := h₆,
  have h₁₂ := h₉,
  have h₁₃ := h₁₀,
  have h₁₄ := h₁₂,
  have h₁₅ := h₁₃,
  have h₁₆ := h₁₁,
  have h₁₇ := h₁₄,
  have h₁₈ := h₁₆,
  have h
end
