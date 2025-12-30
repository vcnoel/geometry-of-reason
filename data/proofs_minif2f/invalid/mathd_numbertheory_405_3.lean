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

  have h_a : a % 7 = 5, by rw [h₃],
  have h_b : b % 7 = 2, by rw [h₄],
  have h_c : c % 7 = 1, by rw [h₅],
  have h_7 : 7 % 7 = 0, by norm_num,

  have h_t_0 : t 0 = 0, by (rw [h₀]),
  have h_t_1 : t 1 = 1, by (rw [h₁]),

  have h_t_eq : ∀ n : ℕ, t n = t (n % 7) + t (n % 7 - 1),
  { intro n,
    induction n with n IH,
    { exact h_t_0 },
    { cases n with n _,
      { exact h_t_1 },
      { have h_t_0_eq : t (n - 2) = t (n - 2 % 7) + t ((n - 2) % 7 - 1), by (rw [h_t_eq, h_t_eq]),
        have h_t_1_eq : t (n - 
end
