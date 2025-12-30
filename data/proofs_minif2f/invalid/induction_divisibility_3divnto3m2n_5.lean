import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  induction n with n ih,
  { simp only [zero_power, add_zero, nat.zero_mul, zero_add] },
  { apply nat.dvd_add,
    { apply ih },
    { apply nat.dvd_mul,
      { apply nat.dvd_add,
        { apply nat.dvd_power,
          { apply nat.dvd_mul,
            { apply nat.dvd_add,
              { apply nat.dvd_power,
                { apply nat.dvd_mul,
                  { apply nat.dvd_add,
                    { apply nat.dvd_power,
                      { apply nat.dvd_mul,
                        { apply nat.dvd_add,
                          { apply nat.dvd_power,
                            { apply nat.dvd_mul,
                              { apply nat.dvd_add,
                                { apply nat.dvd_power,
                                  { apply nat.dvd_mul,
                                    { apply nat.dvd_add,
                                      { apply nat.dvd_power,
                                        { apply nat.dvd_mul,
                                          { apply nat.dvd_add,
                                            { apply nat.dvd_power,
                                              { apply nat.dvd_mul,
                                                { apply nat.dvd_add,
                                                  { apply nat.dvd_power,
                                                    { apply nat.dvd_mul,
                                                      { apply nat.dvd_add,
                                                        { apply nat.dvd_power,
                                                         
end
