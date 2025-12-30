import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p1
  (u v : ℕ → ℕ)
  (h₀ : ∀ n, u n = 2 * n + 2)
  (h₁ : ∀ n, v n = 2 * n + 1) :
  (∑ k in finset.range(2003), u k) - (∑ k in finset.range(2003), v k) = 2003 :=
begin

  -- This is the first step in the proof. We can start by using the definition of the sum of a function over a range.
  have h₂ := finset.sum_eq (λ k, u k - v k),
  -- The next step is to use the property of the function u and v.
  have h₃ := finset.sum_eq (λ k, 2 * k + 2 - (2 * k + 1)),
  -- Now we can simplify the equation.
  have h₄ := finset.sum_eq (λ k, 1),
  -- The final step is to use the property of the sum of a constant function over a range.
  have h₅ := finset.sum_const (λ _, 1) (finset.range 2003),
  -- Now we can use the equation h₅ to conclude the proof.
  have h₆ := h₅,
  -- Now we can use the equation h₆ to conclude the proof.
  show ∑ k in finset.range 2003, u k - v k = 2003,
  -- We can now use the equation h₆ to conclude the proof.
  by_contradiction h₇,
  --
end
