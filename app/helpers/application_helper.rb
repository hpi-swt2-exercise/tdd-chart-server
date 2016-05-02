module ApplicationHelper
  
  def to_js_date(time) 
    "new Date(" + time.strftime("%Y,%m,%d,%H,%M,%S") + ")"
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
