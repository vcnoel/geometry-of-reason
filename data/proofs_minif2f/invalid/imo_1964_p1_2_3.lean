import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_2
  (n : ℕ) :
  ¬ 7 ∣ (2^n + 1) :=
begin

  assume h : 7 ∣ (2^n + 1),
  have h1 : 2^n ≡ -1 [MOD 7],
  { rw [← pow_mod 2 n 7, ← add_mod, pow_mod 2 1 7],
    exact pow_mod 2 1 7 },
  have h2 : 2^6 ≡ 1 [MOD 7],
  { rw [← pow_mod 2 6 7],
    exact pow_mod 2 6 7 },
  have h3 : 2^5 ≡ -1 [MOD 7],
  { rw [← pow_mod 2 5 7, ← mul_mod, mul_mod, h2],
    exact pow_mod 2 5 7 },
  have h4 : 2^4 ≡ 1 [MOD 7],
  { rw [← pow_mod 2 4 7],
    exact pow_mod 2 4 7 },
  have h5 : 2^3 ≡ -1 [MOD 7],
  { rw [← pow_mod 2 3 7, ← mul_mod, mul_mod, h4],
    exact pow_mod 2
end
