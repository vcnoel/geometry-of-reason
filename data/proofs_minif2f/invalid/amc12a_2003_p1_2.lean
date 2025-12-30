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

  -- Rewrite the given formulas for u and v
  let u' : ℕ → ℕ := λ k, 2 * k + 2,
  let v' : ℕ → ℕ := λ k, 2 * k + 1,

  -- Define a new function that is the difference between u and v
  let w : ℕ → ℕ := λ k, u' k - v' k,

  -- Rewrite the difference function w in terms of k
  have h₂ : ∀ k, w k = 2 * k + 2 - (2 * k + 1),
  { intro k,
    rw [u'.eq_of_eq, v'.eq_of_eq],
    simp only [sub_eq_add_neg],
    ring },
  -- Simplify the expression for w
  have h₃ : ∀ k, w k = 1,
  { intro k,
    rw h₂,
    ring },
  -- Calculate the sum of w from 0 to 2003
  have h₄ : ∑ k in finset.range(2003), w k = ∑ k in finset.range(2003), 1,
  { simp only [h₃, finset.sum_const_nat_cast],

end
