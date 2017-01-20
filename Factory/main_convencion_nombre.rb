require_relative 'convencion_nombre'

factoria_html = IOFactoria.new('HTML')
lector = factoria_html.nuevo_lector
escritor = factoria_html.nuevo_escritor

factoria_pdf = IOFactoria.new('PDF')
lector = factoria_pdf.nuevo_lector
escritor = factoria_pdf.nuevo_escritor
