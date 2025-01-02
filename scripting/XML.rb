require 'nokogiri'

# Parseo de un string XML
xml_data = '<persona><nombre>Juan</nombre><edad>30</edad><ciudad>Madrid</ciudad></persona>'
doc = Nokogiri::XML(xml_data)

puts doc.xpath('//nombre').text  # Juan
puts doc.xpath('//edad').text    # 30

# Convertir un hash a XML
hash = { "persona" => { "nombre" => "Ana", "edad" => 25, "ciudad" => "Barcelona" } }
builder = Nokogiri::XML::Builder.new do |xml|
  xml.persona do
    xml.nombre hash["persona"]["nombre"]
    xml.edad hash["persona"]["edad"]
    xml.ciudad hash["persona"]["ciudad"]
  end
end
puts builder.to_xml  # <persona><nombre>Ana</nombre><edad>25</edad><ciudad>Barcelona</ciudad></persona>
