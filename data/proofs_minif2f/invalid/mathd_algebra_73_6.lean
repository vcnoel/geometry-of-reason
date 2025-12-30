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

  have h₂ : p ≠ q,
  from by_contra (h₂' : p = q) h₁,
  { have h₃ : (x - p) * (x - q) = (r - p) * (x - q),
    from by_contra (h₃' : (x - p) * (x - q) ≠ (r - p) * (x - q)) h₀,
    { have h₄ : (x - q) ≠ 0,
      from by_contra (h₄' : (x - q) = 0) h₂',
    { have h₅ : (x - p) = (r - p) * (x - q) / (x - q),
      from by_contra (h₅' : (x - p) ≠ (r - p) * (x - q) / (x - q)) h₃,
      { have h₆ : (r - p) * (x - q) ≠ 0,
        from by_contra (h₆' : (r - p) * (x - q) = 0) h₄,
      { have h₇ :
end
