import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_269 :
  (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = 52 :=
begin

  -- Step 1: Simplify the expression
  have h1 : 2005^0 = 1, by refl,
  have h2 : 2005^2 + 2005^0 + 2005^0 + 2005^5 = 2005^2 + 1 + 1 + 2005^5,
  by {
    rw h1,
    rw h1,
  },

  -- Step 2: Simplify the expression
  have h3 : 2005^2 + 1 + 1 + 2005^5 = (2005^2 + 1) + 1 + 2005^5,
  by {
    rw add_assoc,
  },

  -- Step 3: Simplify the expression
  have h4 : (2005^2 + 1) + 1 + 2005^5 = 2005^2 + (1 + 1) + 2005^5,
  by {
    rw add_assoc,
  },

  -- Step 4: Simplify the expression
  have h5 : 2005^2 + (1 + 1) + 2005^5 = 2005^
end
