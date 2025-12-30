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

  have h₁ : k % 10 = 8,
  { apply Nat.mod_eq_of_div_eq,
    exact (h₀ / 2^2008).2 },
  have h₂ : k % 100 = 8,
  { apply Nat.mod_eq_of_div_eq,
    exact (h₀ / 2^2007).2 },
  have h₃ : k % 1000 = 8,
  { apply Nat.mod_eq_of_div_eq,
    exact (h₀ / 2^2006).2 },
  have h₄ : k % 10^2008 = 8,
  { apply Nat.mod_eq_of_div_eq,
    exact (h₀ / 2^2005).2 },
  have h₅ : k % 10^2009 = 8,
  { apply Nat.mod_eq_of_div_eq,
    exact (h₀ / 2^2004).2 },
  have h₆ : k % 10^2010 = 8,
  { apply Nat.mod_eq_of_div_eq,
    exact (h₀ / 2^2003).2 },
  have h₇ : k % 10^2011 = 8,
  { apply Nat
end
