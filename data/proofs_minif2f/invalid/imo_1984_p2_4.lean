import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1984_p2
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : ¬ 7 ∣ a)
  (h₂ : ¬ 7 ∣ b)
  (h₃ : ¬ 7 ∣ (a + b))
  (h₄ : (7^7) ∣ ((a + b)^7 - a^7 - b^7)) :
  19 ≤ a + b :=
begin

  have h₅ : 0 < a^7 := by linarith,
  have h₆ : 0 < b^7 := by linarith,
  have h₇ : 7 ∣ a^7 := by
  { rcases h₁ with (h₁a | h₁b),
    { cases h₁a with h₁a h₁b,
      { contradiction },
      { contradiction } },
    { cases h₁b with h₁a h₁b,
      { contradiction },
      { contradiction } } },
  have h₈ : 7 ∣ b^7 := by
  { rcases h₂ with (h₂a | h₂b),
    { cases h₂a with h₂a h₂b,
      { contradiction },
      { contradiction } },
    { cases h₂b with h₂a h₂b,
      { contradiction },
      { contradiction } } },
  have h₉ : 7 ∣ (a^7 + b^7) := by
  { have h₉a : 7 ∣ a^7 := by linarith,
    have h₉b : 7 ∣ b^7 := by linarith,
    have h
end
