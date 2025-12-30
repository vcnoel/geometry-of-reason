import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1993_p5 :
  ∃ f : ℕ → ℕ, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ (∀ n, f n < f (n + 1)) :=
begin

  let f := λ n, 2^(n+1) - 2^n,
  have hf1 : f 1 = 2, by simp [f],
  have hf2 : ∀ n, f (f n) = f n + n,
  { intro n,
    have h1 : f (f n) = 2^(f n + 1) - 2^(f n),
      by simp [f],
    have h2 : f (f n) = 2^(f n) * 2 - 2^(f n),
      by simp [h1, pow_succ],
    have h3 : f (f n) = 2^(f n) * 2 - 2^n * 2^(n + 1),
      by simp [h2, pow_succ, h1, f],
    have h4 : f (f n) = 2^(n + 1) * 2^n - 2^n * 2^(n + 1),
      by simp [h3, pow_succ, f],
    have h5 : f (f n) = 2^n * (2^(n + 1) - 2^(n + 
end
