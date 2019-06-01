
// Replace Q11 & Q12 key functions for brightness
// Keyboard/Trackpad
DefinitionBlock ("", "SSDT", 2, "G510", "FN", 0x00000000)
{
    External (_SB.PCI0.LPCB.EC0, DeviceObj)    // (from opcode)
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)
  

    Scope (_SB.PCI0.LPCB.EC0)
    {
        // _Q11 called on brightness down key
        Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPCB.PS2K, 0x20) // ELAN
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0405) // Synaptics/ALPS
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0205)
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0285)
        }

        // _Q12 called on brightness up key
        Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query
        {
            Notify (\_SB.PCI0.LPCB.PS2K, 0x10) // ELAN
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0406) // Synaptics/ALPS
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0206)
            Notify (\_SB.PCI0.LPCB.PS2K, 0x0286)
        }
     }
}
// EOF