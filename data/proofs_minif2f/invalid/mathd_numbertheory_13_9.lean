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

  have h₃ : (u + v) % 100 = 46,
  { have h₄ : (u + v) % 100 = (14 * u) % 100 + (14 * v) % 100,
    { rw [← nat.mod_add_self, nat.mod_add_self] },
    rw [h₀.1 (u + v)],
    simp only [nat.mod_add_self, nat.mod_add_self, h₀.2 (u + v), h₀.2 u, h₀.2 v] },
  have h₅ : u = 2,
  { have h₆ : u ∈ S,
    { exact h₁.1 },
    have h₇ : u > 0,
    { exact h₀.2 u },
    have h₈ : (14 * u) % 100 = 46,
    { exact h₀.2 u },
    have h₉ : u % 100 = 2,
    { have h₁₀ : u % 100 ≤ 99,
      { exact mod_le _ _ _ },
      have h₁₁ : 2 ≤ u,
      { exact le_of_not_gt h₇ },
      have h₁
end
