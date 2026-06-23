import Mathlib.Data.ZMod.Basic

/-! # CSIDH Foundation - Montgomery Curves over Fp -/

/-- Montgomery curve: By² = x³ + A*x² + x over finite field ZMod p -/
structure MontgomeryCurve (p : ℕ) [Fact p.Prime] where
  /-- Curve parameter A -/
  A : ZMod p
  deriving Repr

/-- Check if point (x,y) lies on curve E -/
def onCurve {p} [Fact p.Prime] (E : MontgomeryCurve p) (x y : ZMod p) : Prop :=
  y^2 = x^3 + E.A * x^2 + x
-- ============================================
-- Phase 1.1: Montgomery curve definition - khatam
-- ============================================

-- ============================================
-- Phase 1.2: Point operations - shuru
-- ============================================

-- Point validation: Check if (x,y) lies on curve
def isValidPoint (p : Fp × Fp) : Bool :=
  let (x, y) := p
  y^2 = x^3 + E.A * x^2 + x

-- xDBL: Point doubling [2]P
def xDBL (x : Fp) : Fp :=
  let x2 := x * x
  let num := x2 - 1
  let den := 4 * x * (x2 + E.A * x + 1)
  num^2 / den

-- x3mul: Point tripling [3]P
def x3mul (x : Fp) : Fp :=
  let x2 := x * x
  let num := x * (x2 - 1)^2
  let den := x2 * (x2 - 1)^2 - 4 * (x2 + E.A * x + 1)^2
  num / den
