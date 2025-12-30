import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_13
  (u v : ℕ)
  (S : set ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ (14 * n) % 100 = 46)
  (h₁ : is_least S u)
  (h₂ : is_least (S \ {u}) v) :
  ((u + v) : ℚ) / 2 = 64 :=
begin

  have h₃ : u ∈ S := h₁.is_least,
  have h₄ : v ∈ S \ {u} := h₂.is_least,
  have h₅ : u ∈ S \ {v} := by {rw [set.diff_set_of_mem], exact h₃},
  have h₆ : u ≠ v := by {contradiction, rw [h₅, h₄], exact h₃},
  have h₇ : v ∈ S := by {rw [set.diff_set_of_mem, set.mem_set_of_eq], exact h₄},
  have h₈ : ∀ (n : ℕ), n ∈ S \ {u} ↔ (0 < n ∧ (14 * n) % 100 = 46) ∧ n ≠ u := by
    {ext, cases h₉ : n = u, {contradiction, exact h₉},
    {exact h₀ _ h₉}},
  have h₉ : u ≠ 0 := by {contradiction, exact h₈ _ h₃},
  have h₁₀ : v ≠ 0 := by {contradiction, exact h₈ _ h₄},
  have h₁₁ :
end
