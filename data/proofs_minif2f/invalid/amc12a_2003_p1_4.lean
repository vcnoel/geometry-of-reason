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

  -- Calculate the sum of u
  have sum_u : ∑ k in finset.range(2003), u k = ∑ k in finset.range(2003), 2 * k + 2,
  { apply finset.sum_congr rfl,
    intros k hk,
    exact h₀ k },

  -- Calculate the sum of v
  have sum_v : ∑ k in finset.range(2003), v k = ∑ k in finset.range(2003), 2 * k + 1,
  { apply finset.sum_congr rfl,
    intros k hk,
    exact h₁ k },

  -- Calculate the difference of the sums
  have diff_sum : (∑ k in finset.range(2003), u k) - (∑ k in finset.range(2003), v k) =
    (∑ k in finset.range(2003), 2 * k + 2) - (∑ k in finset.range(2003), 2 * k + 1),
  { rw [sum_u, sum_v] },

  -- Simplify the difference of the sums
  have diff_sum' : (∑ k in finset.range(2003),
end
