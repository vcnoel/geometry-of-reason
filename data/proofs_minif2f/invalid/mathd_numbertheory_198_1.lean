import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_198 :
  (5^2005) % 100 = 25 :=
begin

  have h1: 5^2005 = 5^2 * 5^2003,
  by {
    ring,
  },
  have h2: (5^2 * 5^2003) % 100 = 25 * (5^2003) % 100,
  by {
    ring,
  },
  have h3: (5^2) % 100 = 25,
  by {
    ring,
  },
  have h4: ((25 * (5^2003)) % 100) = 25 * ((5^2003) % 100),
  by {
    ring,
  },
  have h5: ((5^2003) % 100) = 25,
  by {
    induction 2003 with h IH,
    { ring },
    { have h6: (5^(n+1)) % 100 = 5 * (5^n) % 100,
      by {
        ring,
      },
      have h7: 5 * (5^n) % 100 = 5 * 25,
      by {
        ring,
      },
      have h8: 5 * 25 = 125,
      by {
        ring
end
