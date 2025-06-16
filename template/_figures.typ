#context {
  let figures = query(figure.where(kind: image))
  if figures.len() != 0 {
    outline(title: "Figures", target: figure.where(kind: image))
  }
}