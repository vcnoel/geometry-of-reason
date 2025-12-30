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

  have h₁ := nat.mod_eq_sub_mod n 7 3,
  have h₂ : (2 * 3) % 7 = 1,
  { rw mul_two,
    ring },
  have h₃ : (2 * 3) % 7 = 1,
  { have h₄ : 2 * 3 = 6,
    { ring },
    have h₅ : 6 % 7 = 6,
    { ring },
    have h₆ : 6 % 7 = 6,
    { ring },
    have h₇ : 6 = 6 + 0,
    { ring },
    have h₈ : 6 % 7 = 6,
    { have h₉ : 6 = 6 + 0,
      { ring },
      have h₁₀ : (6 + 0) % 7 = 6 % 7,
      { ring },
      have h₁₁ : 6 % 7 = 6 % 7,
      { ring },
      have h₁₂ : 6 % 7 = 6,
      { ring },
      have h₁₃ : 6 % 7 = 6,
     
end
