require_relative 'abstract_builder'

builder = BuilderOrdenadorSobremesa.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_disco_duro(100000)
ordenador = builder.ordenador
puts ordenador

builder = BuilderOrdenadorPortatil.new
builder.turbo
builder.add_cd(true)
builder.add_dvd
builder.add_disco_duro(100000)
ordenador = builder.ordenador
puts ordenador
