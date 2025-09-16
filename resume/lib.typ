#let gold-gradient = gradient.linear(
    rgb("#fdf6e3"),   // very light cream
    rgb("#f8e8b0"),  // pale gold
    rgb("#e6d98c"),  // muted gold
    rgb("#fdf6e3"), // back to pale cream
    angle: 270deg,
  )
  
#let tech(skill) = box(
  // fill: gradient.linear(..color.map.flare, angle: 270deg),
  // fill: gold-gradient,
  width: 7.4em,
  height: 7.0em,
  inset: 1em,
  {
    let cols = skill.images.len()
    grid(
      columns: cols * (1fr,),
      column-gutter: 1.5em,
      row-gutter: 1em,
      align: center,
      ..skill.images.map(i => {
        if skill.name != none {
          image(i, width: 3.8em)
        }
        
      }),
      grid.cell(colspan: cols, strong(skill.name))
    )
  }
)

