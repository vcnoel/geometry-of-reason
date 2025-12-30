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

  have h₃ := h₁,
  have h₄ := h₂,
  have h₅ : u ∈ S ∧ v ∈ S \ {u},
  by { split; exact and.intro h₃ h₄ },
  have h₆ : u ∈ S,
  by { exact h₅.left },
  have h₇ : v ∈ S,
  by { exact h₅.right },
  have h₈ : u ≠ v,
  by { rintros rfl; exact h₅.right },
  have h₉ : ∀ (n : ℕ), n ∈ S \ {u} → (14 * n) % 100 = 46,
  by { intros n hn; exact h₀ (n + u) ((add_left_cancel_iff _ _).mpr (h₀ n hn)) },
  have h₁₀ : ∀ (n : ℕ), n ∈ S \ {u} → 0 < n,
  by { intros n hn; exact (h₀ n hn).left },
  have h₁₁ : ∀ (n : ℕ), n ∈ S \ {u} → n < u,
  by { intros n hn; exact (h₀ n hn).left },
  have h
end
