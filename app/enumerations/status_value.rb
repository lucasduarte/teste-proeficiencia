class StatusValue < EnumerateIt::Base
  associate_values(
    active: [1, 'Ativo'],
    inactive: [2, 'Inativo']
  )
end