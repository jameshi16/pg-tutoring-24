cylinder :: Double -> Double -> Double
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2 -- multiline before in is supported
  in sideArea + 2 * topArea -- within the 'in' block, sideArea and topArea exists

cylinder_where :: Double -> Double -> Double
cylinder_where r h = sideArea + 2 * topArea
  where sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2 -- multiline before in is supported
