import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_30 :
  (33818^2 + 33819^2 + 33820^2 + 33821^2 + 33822^2) % 17 = 0 :=
begin

  -- We will use the fact that for any x, y, z in Z, (x+y+z)^2 = x^2 + y^2 + z^2 + 2*(x*y + y*z + z*x)
  have h1 : ∀ (x y z : ℤ), (x + y + z)^2 = x^2 + y^2 + z^2 + 2 * (x * y + y * z + z * x),
    by { intros x y z, ring },
  -- We will use the fact that for any x, y, z in Z, (x+y+z)^2 ≡ x^2 + y^2 + z^2 (mod 17)
  have h2 : ∀ (x y z : ℤ), (x + y + z)^2 ≡ x^2 + y^2 + z^2 (mod 17),
    by { intros x y z, ring },
  -- We will use the fact that 33818 ≡ -1 (mod 17)
  have h3 : 33818 ≡ -1 (mod 17),
    by { norm_num },
  -- We will use the fact that 33819
end
