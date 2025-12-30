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

  let g : ℕ → ℝ := λ n, a n - a (n - 2);
  let f : ℝ → ℝ := λ x, x^2 - 2 * p * x + h₄(x) * p + h₃(x) * q,
  let h : ℝ → ℝ := λ x, 2 * p * x + 2 * h₀(x) + 2 * h₁(x) + 2 * h₂(x) + 2 * h₃(x) * p + 2 * h₄(x) * q,
  let i : ℝ → ℝ := λ x, 2 * p * x + 2 * h₀(x) + 2 * h₁(x) + 2 * h₂(x) + 2 * h₃(x) * p + 2 * h₄(x) * q,
  let j : ℝ → ℝ := λ x, x * 2 * p + 2 * h₀(x) + 2 * h₁(x) + 2 * h₂(x) + 2 * h₃(x) * p + 2 * h₄(x) * q,
  let k : ℝ → ℝ := λ
end
