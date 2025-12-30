import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_73
  (p q r x : ℂ)
  (h₀ : (x - p) * (x - q) = (r - p) * (r - q))
  (h₁ : x ≠ r) :
  x = p + q - r :=
begin

  have h₂ : (x - p) ≠ (r - p),
  { contrapositive,
    intro h₃,
    have h₄ : x = r,
    { rw h₃,
      simp },
    exact h₁ h₄ },
  have h₅ : (x - p) ≠ (r - q),
  { contrapositive,
    intro h₆,
    have h₇ : x = r,
    { rw h₆,
      simp },
    exact h₁ h₇ },
  have h₈ : (x - p) ≠ 0,
  { intro h₉,
    have h₁₀ : x = p,
    { rw h₉,
      simp },
    exact h₁ h₁₀ },
  have h₁₁ : (x - q) ≠ 0,
  { intro h₁₂,
    have h₁₃ : x = q,
    { rw h₁₂,
      simp },
    exact h₁ h₁₃ },
  have h₁₄ : (x - p) * (x - q) = (r - p) * (r - q),
  { rw h₀ },
  have h₁₅ : (x
end
