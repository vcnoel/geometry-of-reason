import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  let n := 20,
  have h1 : ∀ (i : ℕ), i < n → nat.gcd (i! * (n - i)!) (n!) = n!,
  { intro i,
    have h2 : i < n,
    { assumption },
    have h3 : nat.gcd (i! * (n - i)!) (n!) = n!,
    { have h4 : i! * (n - i)! * i! * (n - i)! = n! * (n - i)! * i!,
      { rw [nat.factorial_mul, nat.factorial_mul, nat.factorial_mul] },
      have h5 : nat.gcd (i! * (n - i)!) (n!) = nat.gcd (i! * (n - i)!) (n! * (n - i)! * i!),
      { apply nat.gcd_assoc },
      have h6 : nat.gcd (i! * (n - i)!) (n! * (n - i)! * i!) = nat.gcd (i! * (n - i)!) (n!),
      { apply nat.gcd_right_cancel (n - i)! *
end
