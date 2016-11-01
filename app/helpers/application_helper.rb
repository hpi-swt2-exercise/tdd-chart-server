module ApplicationHelper
  
  def to_js_date(time) 
    "new Date(#{time.strftime('%Y')},#{time.month-1},#{time.strftime('%d,%H,%M,%S')})";
  end
  
  def line_color(i)
    ary = ["#FC0328", "#FF8E08", "#E3D020",
          "#67F209", # "#0DC286", 
          "#5CC3FE",
          "#AA7BFF", "#FF3495", "#A11017",
          "#748C33", "#1C5F8F", "#890259"]
    ary[(i % ary.length)]
  end
  
  def line_marker(i)
    ary = %w(circle cross square triangle)
    ary[(i % ary.length)]
  end
end

#
##FC0328
##FF8E08
##E3D020
##67F209
##0DC286
##5CC3FE
##AA7BFF
##FF3495
##A11017
##748C33
##1C5F8F
##890259
#RGB list for CSS
#
#rgb(252,3,40)
#rgb(255,142,8)
#rgb(227,208,32)
#rgb(103,242,9)
#rgb(13,194,134)
#rgb(92,195,254)
#rgb(170,123,255)
#rgb(255,52,149)
#rgb(161,16,23)
#rgb(116,140,51)
#rgb(28,95,143)
#rgb(137,2,89)
#
#
#HEX json
#
#["#FC0328",
#"#FF8E08",
#"#E3D020",
#"#67F209",
#"#0DC286",
#"#5CC3FE",
#"#AA7BFF",
#"#FF3495",
#"#A11017",
#"#748C33",
#"#1C5F8F",
#"#890259"]
#RGB json
#
#[[252,3,40],
#[255,142,8],
#[227,208,32],
#[103,242,9],
#[13,194,134],
#[92,195,254],
#[170,123,255],
#[255,52,149],
#[161,16,23],
#[116,140,51],
#[28,95,143],
#[137,2,89]]
#