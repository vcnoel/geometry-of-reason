import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  have h₁ : y = (x - 3)^2 + 2,
  { rw [h₀, pow_two, pow_two, mul_comm, mul_two, sub_sub, sub_sub, add_assoc] },
  have h₂ : (x - 3)^2 ≥ 0,
  { have h₂' : (x - 3)^2 = x^2 - 6 * x + 9,
    { rw [pow_two, pow_two, mul_comm, mul_two, sub_sub, sub_sub] },
    show 0 ≤ x^2 - 6 * x + 9,
    { have h₃ : 0 ≤ 9,
      { trivial },
      have h₄ : 0 ≤ x^2 - 6 * x,
      { have h₅ : 0 ≤ x^2,
        { trivial },
        have h₆ : 0 ≤ -6 * x,
        { have h₇ : 0 ≤ x,
          { trivial },
          have h₈ : 0 ≤ 6,
          { trivial },
          have h₉ : 0 ≤ 6 * x,
          { have h₁₀ : 0 ≤ x,
            {
end
