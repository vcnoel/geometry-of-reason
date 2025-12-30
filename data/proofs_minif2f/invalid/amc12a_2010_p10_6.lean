import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p10
  (p q : ℝ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, a (n + 2) - a (n + 1) = a (n + 1) - a n)
  (h₁ : a 1 = p)
  (h₂ : a 2 = 9)
  (h₃ : a 3 = 3 * p - q)
  (h₄ : a 4 = 3 * p + q) :
  a 2010 = 8041 :=
begin

  let n : ℕ → ℝ := λ x, x * 4 * 3 * 7;
  let p : ℝ := 8041;
  let q : ℝ := 3 * p - 9;
  let i : ℕ := 2010;
  have h_i : a i = 7 * 4 * 3 * 7 * i;
  prove
  (i * 4 * 3 * 7) * 7 = 7 * 4 * 3 * 7 * i * 7
  by simp;
  have h_i : a i = 7 * 4 * 3 * 7 * i
  by simp;
  let n' : ℕ → ℝ := λ x, x * 4 * 3 * 7;
  let p' : ℝ := 8041;
  let q' : ℝ := 3 * p' - 9;
  let i' : ℕ := 2010;
  have h_i' : a i' = 7 * 4 * 3 * 7 * i'
  by simp;
  have h_i' : a i' = 7 * 4 * 3 * 7 *
end
