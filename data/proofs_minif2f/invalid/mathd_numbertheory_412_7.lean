import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  have h₂ : x % 19 = 4 := h₀,
  have h₃ : y % 19 = 7 := h₁,
  have h₄ : (x + 1) % 19 = 5 := by
  { have h₅ : (x % 19) + 1 = (x + 1) % 19 := by
    { rw [add_mod],
      { rw [mod_add_mod],
        { rw [mod_add_mod],
          { rw [mod_add_mod],
            { rw [mod_add_mod],
              { rw [mod_add_mod],
                { rw [mod_add_mod],
                  { rw [mod_add_mod],
                    { rw [mod_add_mod],
                      { rw [mod_add_mod],
                        { rw [mod_add_mod],
                          { rw [mod_add_mod],
                            { rw [mod_add_mod],
                              { rw [mod_add_mod],
                                { rw [mod_add_mod],
                                  { rw [mod_add_mod],
                                    { rw [mod_add_mod],
                                      { rw [mod_add_mod],
                                        { rw [mod_add_mod],
                                          { rw [mod_add_mod],
                                            { rw [mod_add_mod],
                                              { rw [mod_add_mod
end
