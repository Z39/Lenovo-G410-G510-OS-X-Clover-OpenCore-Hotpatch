
// Battery Fixes

DefinitionBlock("", "SSDT", 2, "G510", "BAT", 0)
{
    // Override for ACPIBatteryManager.kext
    
    External(_SB.BAT1, DeviceObj)
    Name(_SB.BAT1.RMCF, Package()
    {
        "StartupDelay", 10,
    })
    
    
        
    External(_SB.PCI0.LPCB.EC0, DeviceObj)
    
    Scope (_SB.PCI0.LPCB.EC0)
    {
        // This is an override for battery methods that access EC fields
        // larger than 8-bit.
        
        OperationRegion (RMEC, EmbeddedControl, Zero, 0xFF)
        Field (RMEC, ByteAcc, Lock, Preserve)
        {
            Offset (0x5D), 
            ERI0,   8, 
            ERI1,   8
        }

        External(FAMX, MutexObj)
        External (ERBD, FieldUnitObj)
        // FANG and FANW are renamed to XANG and XANW
        // calls to them will land here
        Method (FANG, 1, NotSerialized)
        {
            Acquire (FAMX, 0xFFFF)
            Store (Arg0, ERI0)
            Store (ShiftRight (Arg0, 0x08), ERI1)
            Store (ERBD, Local0)
            Release (FAMX)
            Return (Local0)
        }

        Method (FANW, 2, NotSerialized)
        {
            Acquire (FAMX, 0xFFFF)
            Store (Arg0, ERI0)
            Store (ShiftRight (Arg0, 0x08), ERI1)
            Store (Arg1, ERBD)
            Release (FAMX)
            Return (Arg1)
        }
       
    } 
}
// EOF
