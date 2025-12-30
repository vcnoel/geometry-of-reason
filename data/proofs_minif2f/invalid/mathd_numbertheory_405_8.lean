import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_405
  (a b c : ℕ)
  (t : ℕ → ℕ)
  (h₀ : t 0 = 0)
  (h₁ : t 1 = 1)
  (h₂ : ∀ n > 1, t n = t (n - 2) + t (n - 1))
  (h₃ : a ≡ 5 [MOD 16])
  (h₄ : b ≡ 10 [MOD 16])
  (h₅ : c ≡ 15 [MOD 16]) :
  (t a + t b + t c) % 7 = 5 :=
begin

  have h_a : a ≡ 5 [MOD 16],
  from h₃,

  have h_b : b ≡ 10 [MOD 16],
  from h₄,

  have h_c : c ≡ 15 [MOD 16],
  from h₅,

  have h_t_a : t a ≡ t 5 [MOD 16],
  from congr_arg t h_a,

  have h_t_b : t b ≡ t 10 [MOD 16],
  from congr_arg t h_b,

  have h_t_c : t c ≡ t 15 [MOD 16],
  from congr_arg t h_c,

  have h_t_5 : t 5 ≡ 2 [MOD 16],
  by { have h_5 : 5 = 4 + 1, by refl,
       have h_t_4 : t 4 ≡ t (4 - 2) + t (4 - 1) ≡ t 2 + t 3 ≡ 2 + 3 ≡ 5 [MOD 16],
       by { have h_4 : 4 = 2 + 2, by refl,
           have h_3
end
