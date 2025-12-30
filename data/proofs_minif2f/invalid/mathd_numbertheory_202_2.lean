import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_202 :
  (19^19 + 99^99) % 10 = 8 :=
begin

  -- We will use the binomial theorem to expand (a+b)^n.
  have a : ∀ a b n, (a + b) ^ n = ∑ k in range (n + 1), (n : ℕ).choose k * a ^ (n - k) * b ^ k,
    by { induction n with n ih, { simp }, { simp [ih] } },
  -- We will use the property that (a+b)^n % p = (a^n % p + b^n % p) % p.
  have b : ∀ a b n p, ((a + b) ^ n) % p = ((a ^ n) % p + (b ^ n) % p) % p,
    by { induction n with n ih, { simp }, { simp [ih] } },
  -- We will use the property that (a*b) % p = ((a % p) * (b % p)) % p.
  have c : ∀ a b p, ((a * b) % p) = ((a % p) * (b % p)) % p,
    by { induction a with a ih, { simp }, { simp [ih] } },
  -- We
end
