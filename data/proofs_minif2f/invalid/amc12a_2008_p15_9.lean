import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p15
  (k : ℕ)
  (h₀ : k = 2008^2 + 2^2008) :
  (k^2 + 2^k) % 10 = 6 :=
begin

  -- k = 2008^2 + 2^2008
  have h₁ : k = (2008^2 + 2^2008)^2 + 2^(2008^2 + 2^2008),
    by rw [h₀, pow_two, pow_two],

  -- (k^2 + 2^k) % 10 = 6
  have h₂ : (k^2 + 2^k) % 10 = 6,
    by
    { have h₃ : (2008^2 + 2^2008)^2 = (2008^2)^2 + 2 * (2008^2) * (2^2008) + (2^2008)^2,
      by ring,

      have h₄ : (2008^2 + 2^2008)^2 + 2^(2008^2 + 2^2008) = (2008^2)^2 + 2 * (2008^2) * (2^2008) + (2^2008)^2 + 2^(2008^2 + 2^2008),
        by rw [h₃],

      have
end
