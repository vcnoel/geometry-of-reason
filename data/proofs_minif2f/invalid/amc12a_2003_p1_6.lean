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

  have h₂ := finset.sum_const (u 0 - v 0),
  have h₃ := finset.sum_const (u 1 - v 1),
  have h₄ := finset.sum_const (u 2 - v 2),
  have h₅ := finset.sum_const (u 3 - v 3),
  have h₆ := finset.sum_const (u 4 - v 4),
  have h₇ := finset.sum_const (u 5 - v 5),
  have h₈ := finset.sum_const (u 6 - v 6),
  have h₉ := finset.sum_const (u 7 - v 7),
  have h₁₀ := finset.sum_const (u 8 - v 8),
  have h₁₁ := finset.sum_const (u 9 - v 9),
  have h₁₂ := finset.sum_const (u 10 - v 10),
  have h₁₃ := finset.sum_const (u 11 - v 11),
  have h₁₄ := finset.sum_const (u 12 - v 12),
  have h₁₅ := finset.sum
end
