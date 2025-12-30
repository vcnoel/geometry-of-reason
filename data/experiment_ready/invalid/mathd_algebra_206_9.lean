import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_206
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 + a * x + b)
  (h₁ : 2 * a ≠ b)
  (h₂ : f (2 * a) = 0)
  (h₃ : f b = 0) :
  a + b = -1 :=
begin

  have h₄ : f 0 = b^2,
  { rw h₀,
    simp only [zero_pow 2, zero_mul] },
  have h₅ : f (-b) = 0,
  { rw h₀,
    simp only [neg_mul, neg_pow, neg_add] },
  have h₆ : f (2 * a) = 0,
  { rw h₂ },
  have h₇ : a + b = -1,
  { have h₈ : a + b ≠ 0,
    { assume h₉ : a + b = 0,
      have h₁₀ : a = -b,
      { rw h₉ },
      have h₁₁ : b = -a,
      { rw h₁₀ },
      have h₁₂ : f (-a) = f (2 * a),
      { rw h₀, simp only [neg_mul, neg_pow, neg_add] },
      have h₁₃ : f (-a) = 0,
      { rw h₁₂, assumption },
      have h₁₄ : a = 0,
      { have h₁₅ : -a = 0,
        { rw h₁
end
