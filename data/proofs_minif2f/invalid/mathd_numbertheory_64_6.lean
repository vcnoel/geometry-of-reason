import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_64 :
  is_least {x : ℕ | 30 * x ≡ 42 [MOD 47]} 39 :=
begin

  have h1 : ∀ x : ℕ, 30 * x ≡ 42 [MOD 47] → x ≡ 39 [MOD 47],
  { intro x,
    have h2 : ∀ (a b c : ℕ), (30 * a + b) % 47 = (42 + c) % 47 → b ≡ c [MOD 47],
    { intro a,
      intro b,
      intro c,
      have h3 : ∀ (a b c d : ℕ), (30 * a + b) % 47 = (42 + c) % 47 → (30 * a + b) ≡ (42 + c) [MOD 47],
      { intro a,
        intro b,
        intro c,
        intro d,
        rw [mod_eq_sub_mod, mod_eq_sub_mod],
        assumption },
      rw [mod_eq_sub_mod],
      have h4 : 30 * a ≡ 42 [MOD 47],
      { have h5 : 30 * a ≡ 42 [MOD 47],
        { have h6 : 30 * a ≡ 42 [MOD 47],
          { have h7 : 30 * a ≡
end
