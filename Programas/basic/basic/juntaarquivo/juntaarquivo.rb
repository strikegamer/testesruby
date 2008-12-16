# junta todos os arquivos *.txt de um diretorio em um unico arquivo ruby
# http://groups.google.com/group/ruby-talk-google/browse_thread/thread/b4f2ca612200550f

# solution 1
File.open('bigfile','w') { |mergedFile| Dir.glob("*.txt").each { |file| File.readlines(file).each { |line| mergedFile << line } } }

# solution 2
File.open("bigfile","w") { |mergedFile| Dir['*.txt'].each { |file| mergedFile.write(File.read(file)) } } 