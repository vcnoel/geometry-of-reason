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

  have h₂ : ∀ n, u n - v n = 1,
  { intro n,
    have h₃ : u n - v n = (2 * n + 2) - (2 * n + 1),
    { rw [h₀, h₁] },
    have h₄ : (2 * n + 2) - (2 * n + 1) = 1,
    { rw [sub_eq_iff_eq_add] },
    show h₃ = h₄,
    { refl } },
  have h₅ : ∑ k in finset.range(2003), u k - v k = 2003,
  { have h₆ : ∀ k in finset.range(2003), u k - v k = 1,
    { intro k,
      have h₇ : k ≠ 2003,
      { exact not_lt_of_ge (le_of_lt $ finset.mem_range.mpr $ finset.nth_le_of_mem k 2003) },
      have h₈ : u k - v k = 1,
      { exact h₂ k },
      show u k - v k = 1,
      { exact h₈ } },

end
