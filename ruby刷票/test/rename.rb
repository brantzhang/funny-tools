def renameFile(dirPath)
  i=0
  Dir.foreach(dirPath) do |file|
    i+=1
    if file!="." and file!=".."
      old = file
      puts old
      File.rename(dirPath+"\\"+old,dirPath+"\\#{i}.jpg")
    end
  end
end



renameFile("C:\\Users\\jh\\Desktop\\go2\\")