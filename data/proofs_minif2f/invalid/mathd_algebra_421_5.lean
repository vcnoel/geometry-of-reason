import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_421
  (a b c d : ℝ)
  (h₀ : b = a^2 + 4 * a + 6)
  (h₁ : b = 1 / 2 * a^2 + a + 6)
  (h₂ : d = c^2 + 4 * c + 6)
  (h₃ : d = 1 / 2 * c^2 + c + 6)
  (h₄ : a ≤ c) :
  c - a = 6 :=
begin

  have h₅ : a^2 + 4 * a + 6 = 1 / 2 * a^2 + a + 6,
  { rw h₀, rw h₁ },
  have h₆ : c^2 + 4 * c + 6 = 1 / 2 * c^2 + c + 6,
  { rw h₂, rw h₃ },
  have h₇ : c - a = 6,
  { have h₈ : a^2 - c^2 = 0,
    { have h₉ : a^2 - c^2 = (a - c) * (a + c),
      { ring },
      have h₁₀ : a - c = 0,
      { rw h₉, rw h₈ },
      have h₁₁ : a = c,
      { rw h₁₀ },
      have h₁₂ : a^2 = c^2,
      { rw h₁₁ },
      have h₁₃ : 4 * a = 4 * c,
      { have h₁₄ : a = c,
        { rw h₁₁ },
        rw h₁₄ },
      have h₁
end
