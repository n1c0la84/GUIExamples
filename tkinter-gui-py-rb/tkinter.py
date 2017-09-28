from tkinter import *

root = Tk()
CheckVar = IntVar()

def GO_onclick():
   print(E1.get())

def Cancel_onclick():
   root.destroy()

L1 = Label(root, text="Label")
L1.grid(row=1,column=1)
E1 = Entry(root)
E1.grid(row=1,column=2)
C1 = Checkbutton(root, text="Music", variable=CheckVar, onvalue=1, offvalue=0)
C1.grid(row=2,column=1)
B1 = Button(root, text="GO", command=GO_onclick)
B1.grid(row=3,column=1)
B2 = Button(root, text="Cancel", command=Cancel_onclick)
B2.grid(row=3,column=2)

root.mainloop()
