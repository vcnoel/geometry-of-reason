import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_132 :
  2004 % 12 = 0 :=
begin

  -- We know that 2004 is divisible by 4 and 3.
  have h1 : 2004 % 4 = 0, by linarith,
  have h2 : 2004 % 3 = 0, by linarith,

  -- Since 4 and 3 are coprime, we can use the Chinese Remainder Theorem to conclude that 2004 is divisible by 12.
  have h3 : 12 % 4 = 0 ∧ 12 % 3 = 0, by linarith,
  have h4 : ∀ a b c d, a % b = 0 ∧ c % d = 0 → a % (b * d) = 0, by linarith,
  have h5 : 2004 % (4 * 3) = 0, by apply h4; assumption,

  -- We can now conclude that 2004 is divisible by 12.
  have h6 : 2004 % 12 = 0, by linarith,
  exact h6,

end
