// #let tech(name, file) = {
//   box(
//     image(file, width: 1em)
//   )
  
//   h(0.3em)
//   strong(name)
// }

// #let tech(skill) = {
//   box(
//     fill: gradient.linear(..color.map.flare, angle: 270deg),
//     width: 8em,
//     height: 8em,
//     inset: 1em,
//     [
// #align(center, {
//   for i in skill.images {
//     box(
//       height: 4em,
//       align(center, 
//       image(i, width: 4em / skill.images.len() )
//       )
      
//     )
//   }
//   parbreak()
//   strong(skill.name)
// })
      
//     ]
//   )
// }

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
  width: 8em,
  inset: 1em,
  {
    let cols = skill.images.len()
    grid(
      columns: cols * (1fr,),
      column-gutter: 1.5em,
      row-gutter: 1em,
      align: center,
      ..skill.images.map(i => {
        image(i, width: 4em)
      }),
      grid.cell(colspan: cols, strong(skill.name))
    )
  }
)

