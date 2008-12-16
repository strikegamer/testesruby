foo = "bar"
x = 'foo = #{foo}'
x = "foo = #{foo}"
x = sprintf("foo = %s", foo)
x = "foo = %s" % [foo]
x = %Q(works like a "double-quoted" string and embedded " characters work fine)
x = %q(a 'single'-quoted string with embedded ' characters)
x = %w[an array of words]