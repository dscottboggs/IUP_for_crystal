require "../src/IUP"

label : IUP::LibIUP::Handle*
dialog : IUP::LibIUP::Handle*
IUP::LibIUP.open Pointer(Int32).null, Pointer(Pointer(Pointer(UInt8))).null

label = IUP::LibIUP.label "Hello World from IUP"
dialog = IUP::LibIUP.dialog(IUP::LibIUP.vbox(label))


IUP::LibIUP.set_attribute dialog, "TITLE", "Hello World!"
IUP::LibIUP.showxy dialog, IUP::LibIUP::IUP_CENTER, IUP::LibIUP::IUP_CENTER

IUP::LibIUP.mainloop

IUP::LibIUP.close
