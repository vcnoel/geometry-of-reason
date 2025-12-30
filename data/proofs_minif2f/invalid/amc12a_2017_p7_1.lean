import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p7
  (f : ℕ → ℝ)
  (h₀ : f 1 = 2)
  (h₁ : ∀ n, 1 < n ∧ even n → f n = f (n - 1) + 1)
  (h₂ : ∀ n, 1 < n ∧ odd n → f n = f (n - 2) + 2) :
  f 2017 = 2018 :=
begin

  /- This problem is asking us to prove that f(n) = n+1 for all positive integers n.
    We are given a function f with three properties:
    - f(1) = 2
    - f(n) = f(n-1) + 1 for even n > 1
    - f(n) = f(n-2) + 2 for odd n > 1

    We will use induction to prove the statement for all positive integers n.
  -/
  /- Base case: We need to prove that f(1) = 1 + 1 = 2, which is given by h₀.
  -/
  have base_case : f 1 = 1 + 1, by {rw h₀},
  /- Inductive step: We need to prove that if the statement holds for all positive integers up to n, then it also holds for n + 1.
  -/
  show ∀ n, ∀ (h : ∀ i, i < n → f i = i + 1), f (n + 1) = n + 2,
  
end
