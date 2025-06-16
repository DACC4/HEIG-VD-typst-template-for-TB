#context {
  let tables = query(figure.where(kind: table))
  if tables.len() != 0 {
    outline(title: "Tables", target: figure.where(kind: table))
  }
}