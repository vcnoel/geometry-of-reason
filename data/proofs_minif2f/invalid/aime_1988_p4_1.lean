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

  have h₂ : ∑ k in finset.range n, (a k) = 19 + (∑ k in finset.range n, a k),
  { rw h₁ },
  have h₃ : ∑ k in finset.range n, (a k) = 19,
  { rw h₂, simp },
  have h₄ : ∑ k in finset.range n, (a k) < 0,
  { have h₅ : ∀ k, a k < 0,
    { intros k,
      have h₆ : abs (a k) < 1,
      { apply h₀ },
      have h₇ : 0 ≤ abs (a k),
      { apply abs_nonneg },
      have h₈ : abs (a k) ≠ 0,
      { intros h₉, contradiction },
      have h₉ : 0 < abs (a k),
      { apply lt_of_le_of_ne h₇ h₈ },
      have h₁₀ : - abs (a k) < 0,
      { apply neg_lt_zero },
      have h₁₁ : a k < 0,
      { rw h₆, rw h₁₀ },

end
