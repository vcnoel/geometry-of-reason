import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_64 :
  is_least {x : ℕ | 30 * x ≡ 42 [MOD 47]} 39 :=
begin

  -- 1. Show that 39 is in the set {x : ℕ | 30 * x ≡ 42 [MOD 47]}.
  have h1 : 39 ∈ {x : ℕ | 30 * x ≡ 42 [MOD 47]},
    by {calc
        30 * 39 ≡ 42 [MOD 47] : by ring
      },
  -- 2. Show that for any y in the set {x : ℕ | 30 * x ≡ 42 [MOD 47]}, we have y ≥ 39.
  have h2 : ∀ y ∈ {x : ℕ | 30 * x ≡ 42 [MOD 47]}, y ≥ 39,
    by {intro y,
        -- y ∈ {x : ℕ | 30 * x ≡ 42 [MOD 47]}
        have hy : 30 * y ≡ 42 [MOD 47],
          by {simp only [h1]},
        -- We will show that y ≥ 39.
        have h3 : ∀ k ∈ ℕ, 30 * k ≥ 39,
          by {intro k,
              -- k ∈ ℕ
              have hk : k ≥ 1
end
