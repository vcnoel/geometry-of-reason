import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1961_p1
  (x y z a b : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : x ≠ y)
  (h₂ : y ≠ z)
  (h₃ : z ≠ x)
  (h₄ : x + y + z = a)
  (h₅ : x^2 + y^2 + z^2 = b^2)
  (h₆ : x * y = z^2) :
  0 < a ∧ b^2 < a^2 ∧ a^2 < 3 * b^2 :=
begin

  have h₇ : a ≠ 0,
  { rintro rfl,
    have h₈ : x + y + z = 0,
    { rw h₄ },
    have h₉ : z^2 = 0,
    { rw h₆ },
    have h₁₀ : x^2 + y^2 = 0,
    { rw h₅; rw h₉; simp },
    have h₁₁ : x = 0 ∨ y = 0,
    { rintro (h₁₂ | h₁₂),
      { exact h₁₂.resolve_left h₀.left },
      { exact h₁₂.resolve_left h₀.right } },
    cases h₁₁,
    { exact h₁₁.resolve_left h₀.left },
    { exact h₁₁.resolve_left h₀.right } },
  have h₈ : a^2 = (x + y + z)^2,
  { rw h₄; rw h₄; rw h₄; simp; },
  have h₉ : a^2 = x^2 + y^2 + z^2 + 2 * (x * y + x * z + y * z),
  { rw h
end
