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

  have h₃ : u ∈ S ∧ v ∈ S := by
    { split,
      { apply h₀,
        { exact u },
        { left,
          exact or.inl (and.intro (h₁ h₂) rfl) } },
      { apply h₀,
        { exact v },
        { right,
          exact or.inr (and.intro (h₁ h₂) rfl) } } },
  have h₄ : u < v := by
    { have h₅ : u ≠ v := by
      { intro h₆,
        have h₇ : u ∈ S \ {u} := by
          { apply h₀,
            { exact u },
            { left,
              exact or.inl (and.intro (h₁ h₂) rfl) } },
        have h₈ : v ∈ S \ {v} := by
          { apply h₀,
            { exact v },
            { right,
              exact or.inr (and.intro (h₁ h₂) rfl) } },
        have h₉ : u < v := by
          { apply h₂,
            { exact h₇ } },
        have h₁₀ : v < u := by
          {
end
