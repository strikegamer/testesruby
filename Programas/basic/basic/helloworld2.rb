#Hello world : http://splatbang.com/rubyquiz/quiz.rhtml?id=158_Hello,_world?
class Hello
  def method_missing m; print m; self; end
end

Hello.new.H.e.l.l.o.send(', ').w.o.r.l.d!.send("\n")