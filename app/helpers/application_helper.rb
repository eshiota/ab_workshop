module ApplicationHelper
  def js_user_experiments_data
    output = ["<script>window.B = window.B || {}; B.jsExpData = {};"]
    @user_experiments.each do |key, value|
      output.push "B.jsExpData['#{key}'] = '#{escape_javascript value}';"
    end
    output.push('</script>').join('').gsub(/\s/, '').html_safe
  end
end
