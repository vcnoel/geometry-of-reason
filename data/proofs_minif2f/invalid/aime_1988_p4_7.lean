import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p4
  (n : ℕ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, abs (a n) < 1)
  (h₁ : ∑ k in finset.range n, (abs (a k)) = 19 + abs (∑ k in finset.range n, a k)) :
  20 ≤ n :=
begin

  have h₂ : abs (∑ k in finset.range n, a k) ≤ 19,
  { calc
      abs (∑ k in finset.range n, a k)
        ≤ ∑ k in finset.range n, abs (a k) : abs_sum_le_sum_abs
     ... = 19 : h₁ },

  have h₃ : ∑ k in finset.range n, a k ≤ 19,
  { calc
      ∑ k in finset.range n, a k ≤ ∑ k in finset.range n, abs (a k) : sum_le_sum_abs
     ... = 19 : h₁ },

  have h₄ : ∀ k in finset.range n, a k ≤ 19,
  { intro k,
    apply h₃, finset.mem_range }

  have h₅ : ∀ k in finset.range n, a k ≤ 0,
  { intro k,
    have h₆ : 0 ≤ a k,
    { apply h₀ },
    have h₇ : a k ≤ 19,
    { apply h₄ },
    have h₈ : a k ≤ 19 + (-1),
    { apply add_le_add
end
