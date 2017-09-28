require 'tk'

def start
	puts 'clicked'
end

root = TkRoot.new do
	title = 'Window'
end

label = TkLabel.new(root) do
   text 'Label'
   grid(:row=>1, :column=>1)
end

entry = TkEntry.new(root) do
	grid(:row=>1, :column=>2)
end

checkbox = TkCheckButton.new(root) do
  text 'Music'
  onvalue 'Music'
  grid(:row=>2, :column=>1)
end

btnGO = TkButton.new(root) do
  text "GO"
  command(start)
  grid(:row=>3, :column=>1)
end

btnCancel = TkButton.new(root) do
  text "Cancel"
  command(proc{exit})
  grid(:row=>3, :column=>2)
end

Tk.mainloop()
