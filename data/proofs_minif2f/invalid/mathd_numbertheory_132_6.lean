import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_132 :
  2004 % 12 = 0 :=
begin

  -- We will use the definition of the modulus operator.
  have h1 : (2004 % 12) = 2004 - (12 * 167),
  { -- We will use the definition of the modulus operator.
    apply int.mod_sub,
    { -- We will use the definition of the modulus operator.
      apply int.sub_mul_cancel,
      { -- We will use the definition of the modulus operator.
        apply int.mul_eq_zero,
        { -- We will use the definition of the modulus operator.
          apply int.eq_zero_of_add_eq_self,
          { -- We will use the definition of the modulus operator.
            apply int.add_sub_cancel_left,
            { -- We will use the definition of the modulus operator.
              apply int.sub_add_cancel,
              { -- We will use the definition of the modulus operator.
                apply int.mul_pos,
                { -- We will use the definition of the modulus operator.
                  apply int.pos_of_mul_pos,
                  { -- We will use the definition of the modulus operator.
                    apply int.pos_of_pos_mul,
                    { -- We will use the definition of the modulus operator.
                      apply int.pos_of_mul_pos,
                      { -- We will use the definition of the modulus operator.
                        apply int
end
