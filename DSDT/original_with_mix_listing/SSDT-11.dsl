{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0._DOD, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.EC__.DGPU, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.ECOK, IntObj)
    External (_SB_.PCI0.LPCB.EC__.GPUT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP._ADR, IntObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (EBAS, FieldUnitObj)
    External (EECP, FieldUnitObj)
    External (GBAS, FieldUnitObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments
    External (P80H, FieldUnitObj)
    External (PCSL, FieldUnitObj)
    External (SC7A, FieldUnitObj)
    External (SGGP, FieldUnitObj)
    External (SGMD, FieldUnitObj)
    External (XBAS, FieldUnitObj)

    Scope (\_SB.PCI0.PEG0)
    {

  0024: 10 49 21 5C 2F 03 5F 53 42 5F 50 43 49 30 50 45  // .I!\/._SB_PCI0PE
  0034: 47 30                                            // G0

        OperationRegion (MSID, SystemMemory, EBAS, 0x50)

  0036: 5B 80 4D 53 49 44 00 45 42 41 53 0A 50           // [.MSID.EBAS.P

        Field (MSID, DWordAcc, Lock, Preserve)
        {
            VEID,   16, 
            Offset (0x40), 
            NVID,   32, 
            Offset (0x4C), 
            ATID,   32
        }


  0043: 5B 81 1B 4D 53 49 44 13 56 45 49 44 10 00 40 1F  // [..MSID.VEID..@.
  0053: 4E 56 49 44 20 00 40 04 41 54 49 44 20           // NVID .@.ATID 

        OperationRegion (RPCX, SystemMemory, Add (\XBAS, 0x8000), 0x1000)

  0060: 5B 80 52 50 43 58 00 72 5C 58 42 41 53 0B 00 80  // [.RPCX.r\XBAS...
  0070: 00 0B 00 10                                      // ....

        Field (RPCX, ByteAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            CMDR,   8, 
            Offset (0x84), 
            D0ST,   2, 
            Offset (0xAC), 
                ,   4, 
            CMLW,   6, 
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            RTLK,   1, 
            Offset (0x11A), 
                ,   1, 
            VCNP,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x504), 
            Offset (0x506), 
            PCFG,   2, 
            Offset (0x508), 
            TREN,   1, 
            Offset (0x91C), 
                ,   31, 
            BSP1,   1, 
            Offset (0x93C), 
                ,   31, 
            BSP2,   1, 
            Offset (0x95C), 
                ,   31, 
            BSP3,   1, 
            Offset (0x97C), 
                ,   31, 
            BSP4,   1, 
            Offset (0x99C), 
                ,   31, 
            BSP5,   1, 
            Offset (0x9BC), 
                ,   31, 
            BSP6,   1, 
            Offset (0x9DC), 
                ,   31, 
            BSP7,   1, 
            Offset (0x9FC), 
                ,   31, 
            BSP8,   1, 
            Offset (0xC20), 
                ,   4, 
            AFES,   2, 
            Offset (0xD0C), 
                ,   20, 
            LREV,   1
        }


  0074: 5B 81 47 0C 52 50 43 58 01 50 56 49 44 10 50 44  // [.G.RPCX.PVID.PD
  0084: 49 44 10 43 4D 44 52 08 00 48 3F 44 30 53 54 02  // ID.CMDR..H?D0ST.
  0094: 00 4E 13 00 04 43 4D 4C 57 06 00 16 41 53 50 4D  // .N...CMLW...ASPM
  00A4: 02 00 02 4C 4E 4B 44 01 52 54 4C 4B 01 00 4A 34  // ...LNKD.RTLK..J4
  00B4: 00 01 56 43 4E 50 01 00 4E 7C 00 10 4C 4E 4B 53  // ..VCNP..N|..LNKS
  00C4: 04 00 8C 76 01 00 10 50 43 46 47 02 00 0E 54 52  // ...v...PCFG...TR
  00D4: 45 4E 01 00 8F 09 02 00 1F 42 53 50 31 01 00 40  // EN.......BSP1..@
  00E4: 0E 00 1F 42 53 50 32 01 00 40 0E 00 1F 42 53 50  // ...BSP2..@...BSP
  00F4: 33 01 00 40 0E 00 1F 42 53 50 34 01 00 40 0E 00  // 3..@...BSP4..@..
  0104: 1F 42 53 50 35 01 00 40 0E 00 1F 42 53 50 36 01  // .BSP5..@...BSP6.
  0114: 00 40 0E 00 1F 42 53 50 37 01 00 40 0E 00 1F 42  // .@...BSP7..@...B
  0124: 53 50 38 01 00 80 10 01 00 04 41 46 45 53 02 00  // SP8.......AFES..
  0134: 4A 75 00 14 4C 52 45 56 01                       // Ju..LREV.

        Method (RBP0, 1, NotSerialized)
        {
            Store (Add (Add (\XBAS, 0x8000), Arg0), Local7)

  013D: 14 30 52 42 50 30 01 70 72 72 5C 58 42 41 53 0B  // .0RBP0.prr\XBAS.
  014D: 00 80 00 68 00 67                                // ...h.g

            OperationRegion (PCI0, SystemMemory, Local7, One)

  0153: 5B 80 50 43 49 30 00 67 01                       // [.PCI0.g.

            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }


  015C: 5B 81 0B 50 43 49 30 01 54 45 4D 50 08           // [..PCI0.TEMP.

            Return (TEMP)
        }


  0169: A4 54 45 4D 50                                   // .TEMP

        Method (WBP0, 2, NotSerialized)
        {
            Store (Add (Add (\XBAS, 0x8000), Arg0), Local7)

  016E: 14 36 57 42 50 30 02 70 72 72 5C 58 42 41 53 0B  // .6WBP0.prr\XBAS.
  017E: 00 80 00 68 00 67                                // ...h.g

            OperationRegion (PCI0, SystemMemory, Local7, One)

  0184: 5B 80 50 43 49 30 00 67 01                       // [.PCI0.g.

            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Store (Arg1, TEMP)

  018D: 5B 81 0B 50 43 49 30 01 54 45 4D 50 08 70 69 54  // [..PCI0.TEMP.piT
  019D: 45 4D 50                                         // EMP

            Return (TEMP)
        }


  01A0: A4 54 45 4D 50                                   // .TEMP

        Method (C7OK, 1, NotSerialized)
        {

  01A5: 14 4D 05 43 37 4F 4B 01                          // .M.C7OK.

            OperationRegion (MWHB, SystemMemory, \XBAS, 0x1000)

  01AD: 5B 80 4D 57 48 42 00 5C 58 42 41 53 0B 00 10     // [.MWHB.\XBAS...

            Field (MWHB, DWordAcc, NoLock, Preserve)
            {
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17
            }


  01BC: 5B 81 15 4D 57 48 42 03 00 40 24 4D 48 45 4E 01  // [..MWHB..@$MHEN.
  01CC: 00 0E 4D 48 42 52 11                             // ..MHBR.

            OperationRegion (MBAR, SystemMemory, Add (ShiftLeft (MHBR, 0x0F), 0x5000), 0x1000)

  01D3: 5B 80 4D 42 41 52 00 72 79 4D 48 42 52 0A 0F 00  // [.MBAR.ryMHBR...
  01E3: 0B 00 50 00 0B 00 10                             // ..P....

            Field (MBAR, ByteAcc, NoLock, Preserve)
            {
                Offset (0xDA8), 
                    ,   2, 
                C7AD,   1
            }


  01EA: 5B 81 11 4D 42 41 52 01 00 80 D4 06 00 02 43 37  // [..MBAR.......C7
  01FA: 41 44 01                                         // AD.

            Store (Arg0, C7AD)
        }


  01FD: 70 68 43 37 41 44                                // phC7AD

        Device (PEGA)
        {

  0203: 5B 82 39 50 45 47 41                             // [.9PEGA

            Name (_ADR, One)  // _ADR: Address

  020A: 08 5F 41 44 52 01                                // ._ADR.

            OperationRegion (ACAP, PCI_Config, \EECP, 0x14)

  0210: 5B 80 41 43 41 50 02 5C 45 45 43 50 0A 14        // [.ACAP.\EECP..

            Field (ACAP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                LCT1,   16
            }


  021E: 5B 81 0E 41 43 41 50 03 00 40 08 4C 43 54 31 10  // [..ACAP..@.LCT1.

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {

  022E: 14 0F 5F 50 52 57 00                             // .._PRW.

                Return (GPRW (0x09, 0x04))
            }
        }
    }


  0235: A4 47 50 52 57 0A 09 0A 04                       // .GPRW....

    Scope (\_SB.PCI0.PEG0.PEGP)
    {

  023E: 10 4C EF 5C 2F 04 5F 53 42 5F 50 43 49 30 50 45  // .L.\/._SB_PCI0PE
  024E: 47 30 50 45 47 50                                // G0PEGP

        Name (ONOF, One)

  0254: 08 4F 4E 4F 46 01                                // .ONOF.

        Name (IVID, 0xFFFF)

  025A: 08 49 56 49 44 0B FF FF                          // .IVID...

        Name (TCNT, Zero)

  0262: 08 54 43 4E 54 00                                // .TCNT.

        Name (LDLY, 0x64)

  0268: 08 4C 44 4C 59 0A 64                             // .LDLY.d

        Name (ELCT, Zero)

  026F: 08 45 4C 43 54 00                                // .ELCT.

        Name (HVID, Zero)

  0275: 08 48 56 49 44 00                                // .HVID.

        Name (HDID, Zero)

  027B: 08 48 44 49 44 00                                // .HDID.

        Name (FBDL, Zero)

  0281: 08 46 42 44 4C 00                                // .FBDL.

        Name (MBDL, Zero)

  0287: 08 4D 42 44 4C 00                                // .MBDL.

        Name (CBDL, Zero)

  028D: 08 43 42 44 4C 00                                // .CBDL.

        Name (HSTR, Zero)

  0293: 08 48 53 54 52 00                                // .HSTR.

        Name (UULN, Zero)

  0299: 08 55 55 4C 4E 00                                // .UULN.

        Name (INDX, Zero)

  029F: 08 49 4E 44 58 00                                // .INDX.

        Name (POFF, Zero)

  02A5: 08 50 4F 46 46 00                                // .POFF.

        Name (PLEN, Zero)

  02AB: 08 50 4C 45 4E 00                                // .PLEN.

        Name (PDAT, Zero)

  02B1: 08 50 44 41 54 00                                // .PDAT.

        Name (WLSB, Zero)

  02B7: 08 57 4C 53 42 00                                // .WLSB.

        Name (WMSB, Zero)

  02BD: 08 57 4D 53 42 00                                // .WMSB.

        Name (DMLW, Zero)

  02C3: 08 44 4D 4C 57 00                                // .DMLW.

        Name (DAT0, 
  02C9: 08 44 41 54 30                                   // .DAT0

Buffer (0x04EC)
        {
            /* 0000 */  0xD8, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x09,
            /* 0010 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x08, 0x09, 0x04,
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x0C, 0x09, 0x04, 0x00,
            /* 0020 */  0x00, 0x00, 0x00, 0x10, 0x09, 0x04, 0x00, 0x00,
            /* 0028 */  0x00, 0x00, 0x0C, 0x08, 0x04, 0x00, 0x00, 0x00,
            /* 0030 */  0x00, 0x20, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0038 */  0x24, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x28,
            /* 0040 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x09,
            /* 0048 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x30, 0x09, 0x04,
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x2C, 0x08, 0x04, 0x00,
            /* 0058 */  0x00, 0x00, 0x00, 0x40, 0x09, 0x04, 0x00, 0x00,
            /* 0060 */  0x00, 0x00, 0x44, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0068 */  0x00, 0x48, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0070 */  0x4C, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x50,
            /* 0078 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x08,
            /* 0080 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x09, 0x04,
            /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x64, 0x09, 0x04, 0x00,
            /* 0090 */  0x00, 0x00, 0x00, 0x68, 0x09, 0x04, 0x00, 0x00,
            /* 0098 */  0x00, 0x00, 0x6C, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 00A0 */  0x00, 0x70, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 00A8 */  0x6C, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80,
            /* 00B0 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x09,
            /* 00B8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x88, 0x09, 0x04,
            /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x8C, 0x09, 0x04, 0x00,
            /* 00C8 */  0x00, 0x00, 0x00, 0x90, 0x09, 0x04, 0x00, 0x00,
            /* 00D0 */  0x00, 0x00, 0x8C, 0x08, 0x04, 0x00, 0x00, 0x00,
            /* 00D8 */  0x00, 0xA0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 00E0 */  0xA4, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA8,
            /* 00E8 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x09,
            /* 00F0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x09, 0x04,
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0xAC, 0x08, 0x04, 0x00,
            /* 0100 */  0x00, 0x00, 0x00, 0xC0, 0x09, 0x04, 0x00, 0x00,
            /* 0108 */  0x00, 0x00, 0xC4, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0110 */  0x00, 0xC8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0118 */  0xCC, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0,
            /* 0120 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x08,
            /* 0128 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x09, 0x04,
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0xE4, 0x09, 0x04, 0x00,
            /* 0138 */  0x00, 0x00, 0x00, 0xE8, 0x09, 0x04, 0x00, 0x00,
            /* 0140 */  0x00, 0x00, 0xEC, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0148 */  0x00, 0xF0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0150 */  0xEC, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x30,
            /* 0158 */  0x0C, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,
            /* 0160 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x0A, 0x04,
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x08, 0x0A, 0x04, 0x00,
            /* 0170 */  0x00, 0x00, 0x00, 0x0C, 0x0A, 0x04, 0x00, 0x00,
            /* 0178 */  0x00, 0x00, 0xA0, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0180 */  0x00, 0xA4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0188 */  0xA8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC,
            /* 0190 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x0A,
            /* 0198 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x0A, 0x04,
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0xB8, 0x0A, 0x04, 0x00,
            /* 01A8 */  0x00, 0x00, 0x00, 0xBC, 0x0A, 0x04, 0x00, 0x00,
            /* 01B0 */  0x00, 0x00, 0xC0, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 01B8 */  0x00, 0xC4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 01C0 */  0xC8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC,
            /* 01C8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x0A,
            /* 01D0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xD4, 0x0A, 0x04,
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0xD8, 0x0A, 0x04, 0x00,
            /* 01E0 */  0x00, 0x00, 0x00, 0xDC, 0x0A, 0x04, 0x00, 0x00,
            /* 01E8 */  0x00, 0x00, 0xE0, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 01F0 */  0x00, 0xE4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 01F8 */  0xE8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xEC,
            /* 0200 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x0A,
            /* 0208 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xF4, 0x0A, 0x04,
            /* 0210 */  0x00, 0x00, 0x00, 0x00, 0xF8, 0x0A, 0x04, 0x00,
            /* 0218 */  0x00, 0x00, 0x00, 0xFC, 0x0A, 0x04, 0x00, 0x00,
            /* 0220 */  0x00, 0x00, 0x10, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0228 */  0x00, 0x14, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0230 */  0x18, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x1C,
            /* 0238 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x20, 0x0A,
            /* 0240 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x24, 0x0A, 0x04,
            /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x28, 0x0A, 0x04, 0x00,
            /* 0250 */  0x00, 0x00, 0x00, 0x2C, 0x0A, 0x04, 0x00, 0x00,
            /* 0258 */  0x00, 0x00, 0x30, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0260 */  0x00, 0x34, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0268 */  0x38, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x3C,
            /* 0270 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x40, 0x0A,
            /* 0278 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x0A, 0x04,
            /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x48, 0x0A, 0x04, 0x00,
            /* 0288 */  0x00, 0x00, 0x00, 0x4C, 0x0A, 0x04, 0x00, 0x00,
            /* 0290 */  0x00, 0x00, 0x50, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0298 */  0x00, 0x54, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 02A0 */  0x58, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C,
            /* 02A8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x0A,
            /* 02B0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x64, 0x0A, 0x04,
            /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x68, 0x0A, 0x04, 0x00,
            /* 02C0 */  0x00, 0x00, 0x00, 0x6C, 0x0A, 0x04, 0x00, 0x00,
            /* 02C8 */  0x00, 0x00, 0x70, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 02D0 */  0x00, 0x74, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 02D8 */  0x78, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x7C,
            /* 02E0 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0A,
            /* 02E8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x0A, 0x04,
            /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x88, 0x0A, 0x04, 0x00,
            /* 02F8 */  0x00, 0x00, 0x00, 0x8C, 0x0A, 0x04, 0x00, 0x00,
            /* 0300 */  0x00, 0x00, 0x90, 0x0A, 0x04, 0x00, 0x00, 0x00,
            /* 0308 */  0x00, 0x94, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0310 */  0x98, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x9C,
            /* 0318 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x18, 0x09,
            /* 0320 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x38, 0x09, 0x04,
            /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x58, 0x09, 0x04, 0x00,
            /* 0330 */  0x00, 0x00, 0x00, 0x78, 0x09, 0x04, 0x00, 0x00,
            /* 0338 */  0x00, 0x00, 0x98, 0x09, 0x04, 0x00, 0x00, 0x00,
            /* 0340 */  0x00, 0xB8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0348 */  0xD8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF8,
            /* 0350 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x24, 0x02,
            /* 0358 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x01, 0x04,
            /* 0360 */  0x00, 0x00, 0x00, 0x00, 0x60, 0x02, 0x04, 0x00,
            /* 0368 */  0x00, 0x00, 0x00, 0x28, 0x0C, 0x04, 0x00, 0x00,
            /* 0370 */  0x00, 0x00, 0x38, 0x0C, 0x04, 0x00, 0x00, 0x00,
            /* 0378 */  0x00, 0x14, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0380 */  0x0C, 0x00, 0x01, 0x00, 0x19, 0x00, 0x01, 0x00,
            /* 0388 */  0x1A, 0x00, 0x01, 0x00, 0x1C, 0x00, 0x01, 0x00,
            /* 0390 */  0x1D, 0x00, 0x01, 0x00, 0x20, 0x00, 0x02, 0x00,
            /* 0398 */  0x00, 0x22, 0x00, 0x02, 0x00, 0x00, 0x24, 0x00,
            /* 03A0 */  0x02, 0x00, 0x00, 0x26, 0x00, 0x02, 0x00, 0x00,
            /* 03A8 */  0x28, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x2C,
            /* 03B0 */  0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00,
            /* 03B8 */  0x01, 0x00, 0x3D, 0x00, 0x01, 0x00, 0x3E, 0x00,
            /* 03C0 */  0x02, 0x00, 0x00, 0x84, 0x00, 0x04, 0x00, 0x00,
            /* 03C8 */  0x00, 0x00, 0x8C, 0x00, 0x04, 0x00, 0x00, 0x00,
            /* 03D0 */  0x00, 0x92, 0x00, 0x02, 0x00, 0x00, 0x94, 0x00,
            /* 03D8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x98, 0x00, 0x02,
            /* 03E0 */  0x00, 0x00, 0xA2, 0x00, 0x02, 0x00, 0x00, 0xA8,
            /* 03E8 */  0x00, 0x02, 0x00, 0x00, 0xAC, 0x00, 0x04, 0x00,
            /* 03F0 */  0x00, 0x00, 0x00, 0xB0, 0x00, 0x02, 0x00, 0x00,
            /* 03F8 */  0xB4, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0xBC,
            /* 0400 */  0x00, 0x02, 0x00, 0x00, 0xC8, 0x00, 0x02, 0x00,
            /* 0408 */  0x00, 0xD0, 0x00, 0x02, 0x00, 0x00, 0xEC, 0x00,
            /* 0410 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x14, 0x01, 0x04,
            /* 0418 */  0x00, 0x00, 0x00, 0x00, 0x44, 0x01, 0x04, 0x00,
            /* 0420 */  0x00, 0x00, 0x00, 0x50, 0x01, 0x04, 0x00, 0x00,
            /* 0428 */  0x00, 0x00, 0x58, 0x01, 0x04, 0x00, 0x00, 0x00,
            /* 0430 */  0x00, 0x5C, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0438 */  0xFC, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0440 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x02,
            /* 0448 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x08, 0x02, 0x04,
            /* 0450 */  0x00, 0x00, 0x00, 0x00, 0x28, 0x02, 0x04, 0x00,
            /* 0458 */  0x00, 0x00, 0x00, 0x2C, 0x02, 0x04, 0x00, 0x00,
            /* 0460 */  0x00, 0x00, 0x38, 0x02, 0x04, 0x00, 0x00, 0x00,
            /* 0468 */  0x00, 0x40, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 0470 */  0x44, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x50,
            /* 0478 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x58, 0x02,
            /* 0480 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x02, 0x04,
            /* 0488 */  0x00, 0x00, 0x00, 0x00, 0xD0, 0x0C, 0x04, 0x00,
            /* 0490 */  0x00, 0x00, 0x00, 0x34, 0x0D, 0x04, 0x00, 0x00,
            /* 0498 */  0x00, 0x00, 0xF4, 0x00, 0x04, 0x00, 0x00, 0x00,
            /* 04A0 */  0x00, 0xA0, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 04A8 */  0xA4, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA8,
            /* 04B0 */  0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x0D,
            /* 04B8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x0D, 0x04,
            /* 04C0 */  0x00, 0x00, 0x00, 0x00, 0xB4, 0x0D, 0x04, 0x00,
            /* 04C8 */  0x00, 0x00, 0x00, 0xB8, 0x0D, 0x04, 0x00, 0x00,
            /* 04D0 */  0x00, 0x00, 0xBC, 0x0D, 0x04, 0x00, 0x00, 0x00,
            /* 04D8 */  0x00, 0xCC, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00,
            /* 04E0 */  0x04, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x04,
            /* 04E8 */  0xFF, 0xFF, 0xFF, 0xFF                         
        })

  02CE: 11 41 4F 0B EC 04 D8 0D 04 00 00 00 00 00 09 04  // .AO.............
  02DE: 00 00 00 00 04 09 04 00 00 00 00 08 09 04 00 00  // ................
  02EE: 00 00 0C 09 04 00 00 00 00 10 09 04 00 00 00 00  // ................
  02FE: 0C 08 04 00 00 00 00 20 09 04 00 00 00 00 24 09  // ....... ......$.
  030E: 04 00 00 00 00 28 09 04 00 00 00 00 2C 09 04 00  // .....(......,...
  031E: 00 00 00 30 09 04 00 00 00 00 2C 08 04 00 00 00  // ...0......,.....
  032E: 00 40 09 04 00 00 00 00 44 09 04 00 00 00 00 48  // .@......D......H
  033E: 09 04 00 00 00 00 4C 09 04 00 00 00 00 50 09 04  // ......L......P..
  034E: 00 00 00 00 4C 08 04 00 00 00 00 60 09 04 00 00  // ....L......`....
  035E: 00 00 64 09 04 00 00 00 00 68 09 04 00 00 00 00  // ..d......h......
  036E: 6C 09 04 00 00 00 00 70 09 04 00 00 00 00 6C 08  // l......p......l.
  037E: 04 00 00 00 00 80 09 04 00 00 00 00 84 09 04 00  // ................
  038E: 00 00 00 88 09 04 00 00 00 00 8C 09 04 00 00 00  // ................
  039E: 00 90 09 04 00 00 00 00 8C 08 04 00 00 00 00 A0  // ................
  03AE: 09 04 00 00 00 00 A4 09 04 00 00 00 00 A8 09 04  // ................
  03BE: 00 00 00 00 AC 09 04 00 00 00 00 B0 09 04 00 00  // ................
  03CE: 00 00 AC 08 04 00 00 00 00 C0 09 04 00 00 00 00  // ................
  03DE: C4 09 04 00 00 00 00 C8 09 04 00 00 00 00 CC 09  // ................
  03EE: 04 00 00 00 00 D0 09 04 00 00 00 00 CC 08 04 00  // ................
  03FE: 00 00 00 E0 09 04 00 00 00 00 E4 09 04 00 00 00  // ................
  040E: 00 E8 09 04 00 00 00 00 EC 09 04 00 00 00 00 F0  // ................
  041E: 09 04 00 00 00 00 EC 08 04 00 00 00 00 30 0C 04  // .............0..
  042E: 00 00 00 00 00 0A 04 00 00 00 00 04 0A 04 00 00  // ................
  043E: 00 00 08 0A 04 00 00 00 00 0C 0A 04 00 00 00 00  // ................
  044E: A0 0A 04 00 00 00 00 A4 0A 04 00 00 00 00 A8 0A  // ................
  045E: 04 00 00 00 00 AC 0A 04 00 00 00 00 B0 0A 04 00  // ................
  046E: 00 00 00 B4 0A 04 00 00 00 00 B8 0A 04 00 00 00  // ................
  047E: 00 BC 0A 04 00 00 00 00 C0 0A 04 00 00 00 00 C4  // ................
  048E: 0A 04 00 00 00 00 C8 0A 04 00 00 00 00 CC 0A 04  // ................
  049E: 00 00 00 00 D0 0A 04 00 00 00 00 D4 0A 04 00 00  // ................
  04AE: 00 00 D8 0A 04 00 00 00 00 DC 0A 04 00 00 00 00  // ................
  04BE: E0 0A 04 00 00 00 00 E4 0A 04 00 00 00 00 E8 0A  // ................
  04CE: 04 00 00 00 00 EC 0A 04 00 00 00 00 F0 0A 04 00  // ................
  04DE: 00 00 00 F4 0A 04 00 00 00 00 F8 0A 04 00 00 00  // ................
  04EE: 00 FC 0A 04 00 00 00 00 10 0A 04 00 00 00 00 14  // ................
  04FE: 0A 04 00 00 00 00 18 0A 04 00 00 00 00 1C 0A 04  // ................
  050E: 00 00 00 00 20 0A 04 00 00 00 00 24 0A 04 00 00  // .... ......$....
  051E: 00 00 28 0A 04 00 00 00 00 2C 0A 04 00 00 00 00  // ..(......,......
  052E: 30 0A 04 00 00 00 00 34 0A 04 00 00 00 00 38 0A  // 0......4......8.
  053E: 04 00 00 00 00 3C 0A 04 00 00 00 00 40 0A 04 00  // .....<......@...
  054E: 00 00 00 44 0A 04 00 00 00 00 48 0A 04 00 00 00  // ...D......H.....
  055E: 00 4C 0A 04 00 00 00 00 50 0A 04 00 00 00 00 54  // .L......P......T
  056E: 0A 04 00 00 00 00 58 0A 04 00 00 00 00 5C 0A 04  // ......X......\..
  057E: 00 00 00 00 60 0A 04 00 00 00 00 64 0A 04 00 00  // ....`......d....
  058E: 00 00 68 0A 04 00 00 00 00 6C 0A 04 00 00 00 00  // ..h......l......
  059E: 70 0A 04 00 00 00 00 74 0A 04 00 00 00 00 78 0A  // p......t......x.
  05AE: 04 00 00 00 00 7C 0A 04 00 00 00 00 80 0A 04 00  // .....|..........
  05BE: 00 00 00 84 0A 04 00 00 00 00 88 0A 04 00 00 00  // ................
  05CE: 00 8C 0A 04 00 00 00 00 90 0A 04 00 00 00 00 94  // ................
  05DE: 0A 04 00 00 00 00 98 0A 04 00 00 00 00 9C 0A 04  // ................
  05EE: 00 00 00 00 18 09 04 00 00 00 00 38 09 04 00 00  // ...........8....
  05FE: 00 00 58 09 04 00 00 00 00 78 09 04 00 00 00 00  // ..X......x......
  060E: 98 09 04 00 00 00 00 B8 09 04 00 00 00 00 D8 09  // ................
  061E: 04 00 00 00 00 F8 09 04 00 00 00 00 24 02 04 00  // ............$...
  062E: 00 00 00 F8 01 04 00 00 00 00 60 02 04 00 00 00  // ..........`.....
  063E: 00 28 0C 04 00 00 00 00 38 0C 04 00 00 00 00 14  // .(......8.......
  064E: 0D 04 00 00 00 00 0C 00 01 00 19 00 01 00 1A 00  // ................
  065E: 01 00 1C 00 01 00 1D 00 01 00 20 00 02 00 00 22  // .......... ...."
  066E: 00 02 00 00 24 00 02 00 00 26 00 02 00 00 28 00  // ....$....&....(.
  067E: 04 00 00 00 00 2C 00 04 00 00 00 00 3C 00 01 00  // .....,......<...
  068E: 3D 00 01 00 3E 00 02 00 00 84 00 04 00 00 00 00  // =...>...........
  069E: 8C 00 04 00 00 00 00 92 00 02 00 00 94 00 04 00  // ................
  06AE: 00 00 00 98 00 02 00 00 A2 00 02 00 00 A8 00 02  // ................
  06BE: 00 00 AC 00 04 00 00 00 00 B0 00 02 00 00 B4 00  // ................
  06CE: 04 00 00 00 00 BC 00 02 00 00 C8 00 02 00 00 D0  // ................
  06DE: 00 02 00 00 EC 00 04 00 00 00 00 14 01 04 00 00  // ................
  06EE: 00 00 44 01 04 00 00 00 00 50 01 04 00 00 00 00  // ..D......P......
  06FE: 58 01 04 00 00 00 00 5C 01 04 00 00 00 00 FC 01  // X......\........
  070E: 04 00 00 00 00 00 02 04 00 00 00 00 04 02 04 00  // ................
  071E: 00 00 00 08 02 04 00 00 00 00 28 02 04 00 00 00  // ..........(.....
  072E: 00 2C 02 04 00 00 00 00 38 02 04 00 00 00 00 40  // .,......8......@
  073E: 02 04 00 00 00 00 44 02 04 00 00 00 00 50 02 04  // ......D......P..
  074E: 00 00 00 00 58 02 04 00 00 00 00 5C 02 04 00 00  // ....X......\....
  075E: 00 00 D0 0C 04 00 00 00 00 34 0D 04 00 00 00 00  // .........4......
  076E: F4 00 04 00 00 00 00 A0 0D 04 00 00 00 00 A4 0D  // ................
  077E: 04 00 00 00 00 A8 0D 04 00 00 00 00 AC 0D 04 00  // ................
  078E: 00 00 00 B0 0D 04 00 00 00 00 B4 0D 04 00 00 00  // ................
  079E: 00 B8 0D 04 00 00 00 00 BC 0D 04 00 00 00 00 CC  // ................
  07AE: 01 04 00 00 00 00 04 00 02 00 00 FF FF 04 FF FF  // ................
  07BE: FF FF                                            // ..

        Name (DAT1, 
  07C0: 08 44 41 54 31                                   // .DAT1

Buffer (0x43)
        {
            /* 0000 */  0x06, 0x00, 0x02, 0xFF, 0xFF, 0x1E, 0x00, 0x02,
            /* 0008 */  0xFF, 0xFF, 0xAA, 0x00, 0x02, 0xFF, 0xFF, 0xC0,
            /* 0010 */  0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xD2, 0x00,
            /* 0018 */  0x02, 0xFF, 0xFF, 0xC4, 0x01, 0x04, 0xFF, 0xFF,
            /* 0020 */  0xFF, 0xFF, 0xD0, 0x01, 0x04, 0xFF, 0xFF, 0xFF,
            /* 0028 */  0xFF, 0xF0, 0x01, 0x04, 0xFF, 0xFF, 0xFF, 0xFF,
            /* 0030 */  0x9C, 0x0D, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xB2,
            /* 0038 */  0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x04, 0xFF,
            /* 0040 */  0xFF, 0xFF, 0xFF                               
        })

  07C5: 11 47 04 0A 43 06 00 02 FF FF 1E 00 02 FF FF AA  // .G..C...........
  07D5: 00 02 FF FF C0 00 04 FF FF FF FF D2 00 02 FF FF  // ................
  07E5: C4 01 04 FF FF FF FF D0 01 04 FF FF FF FF F0 01  // ................
  07F5: 04 FF FF FF FF 9C 0D 04 FF FF FF FF B2 00 02 FF  // ................
  0805: FF FF FF 04 FF FF FF FF                          // ........

        OperationRegion (PCIS, PCI_Config, Zero, 0xF0)

  080D: 5B 80 50 43 49 53 02 00 0A F0                    // [.PCIS....

        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            DVID,   16, 
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x4C), 
            WVID,   16, 
            WDID,   16
        }


  0817: 5B 81 25 50 43 49 53 13 44 56 49 44 10 00 40 15  // [.%PCIS.DVID..@.
  0827: 53 56 49 44 10 53 44 49 44 10 00 40 0E 57 56 49  // SVID.SDID..@.WVI
  0837: 44 10 57 44 49 44 10                             // D.WDID.

        OperationRegion (GPR, SystemIO, \GBAS, 0x60)

  083E: 5B 80 47 50 52 5F 01 5C 47 42 41 53 0A 60        // [.GPR_.\GBAS.`

        Field (GPR, ByteAcc, Lock, Preserve)
        {
            Offset (0x0C), 
            LVL0,   32, 
            Offset (0x38), 
            LVL1,   32, 
            Offset (0x48), 
            LVL2,   32
        }


  084C: 5B 81 1E 47 50 52 5F 11 00 40 06 4C 56 4C 30 20  // [..GPR_..@.LVL0 
  085C: 00 40 14 4C 56 4C 31 20 00 40 06 4C 56 4C 32 20  // .@.LVL1 .@.LVL2 

        OperationRegion (GPR2, SystemIO, \GBAS, 0x60)

  086C: 5B 80 47 50 52 32 01 5C 47 42 41 53 0A 60        // [.GPR2.\GBAS.`

        Field (GPR2, ByteAcc, Lock, Preserve)
        {
            Offset (0x0C), 
            Offset (0x0F), 
            GP24,   1, 
            Offset (0x38), 
                ,   14, 
            GP46,   1, 
                ,   3, 
            GP50,   1, 
                ,   3, 
            GP54,   1, 
            Offset (0x48), 
                ,   10, 
            GP74,   1
        }


  087A: 5B 81 32 47 50 52 32 11 00 40 06 00 18 47 50 32  // [.2GPR2..@...GP2
  088A: 34 01 00 47 14 00 0E 47 50 34 36 01 00 03 47 50  // 4..G...GP46...GP
  089A: 35 30 01 00 03 47 50 35 34 01 00 49 06 00 0A 47  // 50...GP54..I...G
  08AA: 50 37 34 01                                      // P74.

        OperationRegion (PCAP, PCI_Config, \EECP, 0x14)

  08AE: 5B 80 50 43 41 50 02 5C 45 45 43 50 0A 14        // [.PCAP.\EECP..

        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
                ,   4, 
            EMLW,   6, 
            Offset (0x10), 
            LCTL,   16
        }


  08BC: 5B 81 17 50 43 41 50 03 00 40 06 00 04 45 4D 4C  // [..PCAP..@...EML
  08CC: 57 06 00 16 4C 43 54 4C 10                       // W...LCTL.

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {

  08D5: 14 1F 5F 49 4E 49 00                             // .._INI.

            Store (Zero, \_SB.PCI0.PEG0.PEGP._ADR)
        }


  08DC: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47  // p.\/._SB_PCI0PEG
  08EC: 30 50 45 47 50 5F 41 44 52                       // 0PEGP_ADR

        Method (GMXB, 0, NotSerialized)
        {
            Store (PCFG, HSTR)

  08F5: 14 24 47 4D 58 42 00 70 50 43 46 47 48 53 54 52  // .$GMXB.pPCFGHSTR

            If (LEqual (HSTR, 0x03))
            {

  0905: A0 0C 93 48 53 54 52 0A 03                       // ...HSTR..

                Store (0x08, Local0)
            }

  090E: 70 0A 08 60                                      // p..`

            Else
            {

  0912: A1 05                                            // ..

                Store (0x04, Local0)
            }


  0914: 70 0A 04 60                                      // p..`

            Return (Local0)
        }


  0918: A4 60                                            // .`

        Method (PUAB, 0, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Zero, CBDL)
            Store (PCFG, HSTR)

  091A: 14 46 0F 50 55 41 42 00 70 00 46 42 44 4C 70 00  // .F.PUAB.p.FBDLp.
  092A: 43 42 44 4C 70 50 43 46 47 48 53 54 52           // CBDLpPCFGHSTR

            If (LEqual (HSTR, 0x03))
            {
                Store (Zero, FBDL)

  0937: A0 15 93 48 53 54 52 0A 03 70 00 46 42 44 4C     // ...HSTR..p.FBDL

                Store (0x08, CBDL)
            }

  0946: 70 0A 08 43 42 44 4C                             // p..CBDL

            ElseIf
  094D: A1 26                                            // .&

 (LEqual (LREV, Zero))
            {
                Store (Zero, FBDL)

  094F: A0 14 93 4C 52 45 56 00 70 00 46 42 44 4C        // ...LREV.p.FBDL

                Store (0x04, CBDL)
            }

  095D: 70 0A 04 43 42 44 4C                             // p..CBDL

            Else
            {
                Store (0x04, FBDL)

  0964: A1 0F 70 0A 04 46 42 44 4C                       // ..p..FBDL

                Store (0x04, CBDL)
            }

            Store (One, INDX)

  096D: 70 0A 04 43 42 44 4C 70 01 49 4E 44 58           // p..CBDLp.INDX

            If (
  097A: A0 46 09 92                                      // .F..

LNotEqual (CBDL, Zero))
            {

  097E: 93 43 42 44 4C 00                                // .CBDL.

                While (
  0984: A2 4C 08 92                                      // .L..

LLessEqual (INDX, CBDL))
                {

  0988: 94 49 4E 44 58 43 42 44 4C                       // .INDXCBDL

                    If (LEqual (FBDL, Zero))
                    {

  0991: A0 0D 93 46 42 44 4C 00                          // ...FBDL.

                        Store (Zero, BSP1)
                    }


  0999: 70 00 42 53 50 31                                // p.BSP1

                    If (LEqual (FBDL, One))
                    {

  099F: A0 0D 93 46 42 44 4C 01                          // ...FBDL.

                        Store (Zero, BSP2)
                    }


  09A7: 70 00 42 53 50 32                                // p.BSP2

                    If (LEqual (FBDL, 0x02))
                    {

  09AD: A0 0E 93 46 42 44 4C 0A 02                       // ...FBDL..

                        Store (Zero, BSP3)
                    }


  09B6: 70 00 42 53 50 33                                // p.BSP3

                    If (LEqual (FBDL, 0x03))
                    {

  09BC: A0 0E 93 46 42 44 4C 0A 03                       // ...FBDL..

                        Store (Zero, BSP4)
                    }


  09C5: 70 00 42 53 50 34                                // p.BSP4

                    If (LEqual (FBDL, 0x04))
                    {

  09CB: A0 0E 93 46 42 44 4C 0A 04                       // ...FBDL..

                        Store (Zero, BSP5)
                    }


  09D4: 70 00 42 53 50 35                                // p.BSP5

                    If (LEqual (FBDL, 0x05))
                    {

  09DA: A0 0E 93 46 42 44 4C 0A 05                       // ...FBDL..

                        Store (Zero, BSP6)
                    }


  09E3: 70 00 42 53 50 36                                // p.BSP6

                    If (LEqual (FBDL, 0x06))
                    {

  09E9: A0 0E 93 46 42 44 4C 0A 06                       // ...FBDL..

                        Store (Zero, BSP7)
                    }


  09F2: 70 00 42 53 50 37                                // p.BSP7

                    If (LEqual (FBDL, 0x07))
                    {

  09F8: A0 0E 93 46 42 44 4C 0A 07                       // ...FBDL..

                        Store (Zero, BSP8)
                    }

                    Increment (FBDL)

  0A01: 70 00 42 53 50 38 75 46 42 44 4C                 // p.BSP8uFBDL

                    Increment (INDX)
                }
            }
        }


  0A0C: 75 49 4E 44 58                                   // uINDX

        Method (PDUB, 1, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Arg0, CBDL)

  0A11: 14 46 0F 50 44 55 42 01 70 00 46 42 44 4C 70 68  // .F.PDUB.p.FBDLph
  0A21: 43 42 44 4C                                      // CBDL

            If (LEqual (CBDL, Zero))
            {

  0A25: A0 09 93 43 42 44 4C 00                          // ...CBDL.

                Return (Zero)
            }


  0A2D: A4 00                                            // ..

            If (LEqual (HSTR, 0x03))
            {

  0A2F: A0 25 93 48 53 54 52 0A 03                       // .%.HSTR..

                If (LEqual (LREV, Zero))
                {

  0A38: A0 14 93 4C 52 45 56 00                          // ...LREV.

                    Store (Subtract (0x08, CBDL), FBDL)
                }

  0A40: 70 74 0A 08 43 42 44 4C 00 46 42 44 4C           // pt..CBDL.FBDL

                Else
                {

  0A4D: A1 07                                            // ..

                    Store (Zero, FBDL)
                }
            }

  0A4F: 70 00 46 42 44 4C                                // p.FBDL

            ElseIf
  0A55: A1 1F                                            // ..

 (LEqual (LREV, Zero))
            {

  0A57: A0 14 93 4C 52 45 56 00                          // ...LREV.

                Store (Subtract (0x04, CBDL), FBDL)
            }

  0A5F: 70 74 0A 04 43 42 44 4C 00 46 42 44 4C           // pt..CBDL.FBDL

            Else
            {

  0A6C: A1 08                                            // ..

                Store (0x04, FBDL)
            }

            Store (One, INDX)

  0A6E: 70 0A 04 46 42 44 4C 70 01 49 4E 44 58           // p..FBDLp.INDX

            While (
  0A7B: A2 4C 08 92                                      // .L..

LLessEqual (INDX, CBDL))
            {

  0A7F: 94 49 4E 44 58 43 42 44 4C                       // .INDXCBDL

                If (LEqual (FBDL, Zero))
                {

  0A88: A0 0D 93 46 42 44 4C 00                          // ...FBDL.

                    Store (One, BSP1)
                }


  0A90: 70 01 42 53 50 31                                // p.BSP1

                If (LEqual (FBDL, One))
                {

  0A96: A0 0D 93 46 42 44 4C 01                          // ...FBDL.

                    Store (One, BSP2)
                }


  0A9E: 70 01 42 53 50 32                                // p.BSP2

                If (LEqual (FBDL, 0x02))
                {

  0AA4: A0 0E 93 46 42 44 4C 0A 02                       // ...FBDL..

                    Store (One, BSP3)
                }


  0AAD: 70 01 42 53 50 33                                // p.BSP3

                If (LEqual (FBDL, 0x03))
                {

  0AB3: A0 0E 93 46 42 44 4C 0A 03                       // ...FBDL..

                    Store (One, BSP4)
                }


  0ABC: 70 01 42 53 50 34                                // p.BSP4

                If (LEqual (FBDL, 0x04))
                {

  0AC2: A0 0E 93 46 42 44 4C 0A 04                       // ...FBDL..

                    Store (One, BSP5)
                }


  0ACB: 70 01 42 53 50 35                                // p.BSP5

                If (LEqual (FBDL, 0x05))
                {

  0AD1: A0 0E 93 46 42 44 4C 0A 05                       // ...FBDL..

                    Store (One, BSP6)
                }


  0ADA: 70 01 42 53 50 36                                // p.BSP6

                If (LEqual (FBDL, 0x06))
                {

  0AE0: A0 0E 93 46 42 44 4C 0A 06                       // ...FBDL..

                    Store (One, BSP7)
                }


  0AE9: 70 01 42 53 50 37                                // p.BSP7

                If (LEqual (FBDL, 0x07))
                {

  0AEF: A0 0E 93 46 42 44 4C 0A 07                       // ...FBDL..

                    Store (One, BSP8)
                }

                Increment (FBDL)

  0AF8: 70 01 42 53 50 38 75 46 42 44 4C                 // p.BSP8uFBDL

                Increment (INDX)
            }
        }


  0B03: 75 49 4E 44 58                                   // uINDX

        Method (SPP0, 0, NotSerialized)
        {
            Store (Zero, INDX)

  0B08: 14 48 09 53 50 50 30 00 70 00 49 4E 44 58        // .H.SPP0.p.INDX

            While (One)
            {
                Store (DerefOf (
  0B16: A2 4A 08 01 70 83                                // .J..p.

Index (DAT0, INDX)), WLSB)
                Increment (INDX)
                Store (DerefOf (
  0B1C: 88 44 41 54 30 49 4E 44 58 00 57 4C 53 42 75 49  // .DAT0INDX.WLSBuI
  0B2C: 4E 44 58 70 83                                   // NDXp.

Index (DAT0, INDX)), WMSB)
                Increment (INDX)
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF)
                Store (DerefOf (
  0B31: 88 44 41 54 30 49 4E 44 58 00 57 4D 53 42 75 49  // .DAT0INDX.WMSBuI
  0B41: 4E 44 58 70 7D 79 57 4D 53 42 0A 08 00 57 4C 53  // NDXp}yWMSB...WLS
  0B51: 42 00 50 4F 46 46 70 83                          // B.POFFp.

Index (DAT0, INDX)), PLEN)
                Increment (INDX)

  0B59: 88 44 41 54 30 49 4E 44 58 00 50 4C 45 4E 75 49  // .DAT0INDX.PLENuI
  0B69: 4E 44 58                                         // NDX

                If (LEqual (POFF, 0xFFFF))
                {

  0B6C: A0 0A 93 50 4F 46 46 0B FF FF                    // ...POFF...

                    Break
                }


  0B76: A5                                               // .

                While (LGreater (PLEN, Zero))
                {
                    Store (RBP0 (POFF), 
  0B77: A2 29 94 50 4C 45 4E 00 70 52 42 50 30 50 4F 46  // .).PLEN.pRBP0POF
  0B87: 46                                               // F

Index (DAT0, INDX))
                    Increment (INDX)
                    Increment (POFF)

  0B88: 88 44 41 54 30 49 4E 44 58 00 75 49 4E 44 58 75  // .DAT0INDX.uINDXu
  0B98: 50 4F 46 46                                      // POFF

                    Decrement (PLEN)
                }
            }
        }


  0B9C: 76 50 4C 45 4E                                   // vPLEN

        Method (RPP0, 0, NotSerialized)
        {
            Store (Zero, INDX)

  0BA1: 14 48 09 52 50 50 30 00 70 00 49 4E 44 58        // .H.RPP0.p.INDX

            While (One)
            {
                Store (DerefOf (
  0BAF: A2 4A 08 01 70 83                                // .J..p.

Index (DAT0, INDX)), WLSB)
                Increment (INDX)
                Store (DerefOf (
  0BB5: 88 44 41 54 30 49 4E 44 58 00 57 4C 53 42 75 49  // .DAT0INDX.WLSBuI
  0BC5: 4E 44 58 70 83                                   // NDXp.

Index (DAT0, INDX)), WMSB)
                Increment (INDX)
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF)
                Store (DerefOf (
  0BCA: 88 44 41 54 30 49 4E 44 58 00 57 4D 53 42 75 49  // .DAT0INDX.WMSBuI
  0BDA: 4E 44 58 70 7D 79 57 4D 53 42 0A 08 00 57 4C 53  // NDXp}yWMSB...WLS
  0BEA: 42 00 50 4F 46 46 70 83                          // B.POFFp.

Index (DAT0, INDX)), PLEN)
                Increment (INDX)

  0BF2: 88 44 41 54 30 49 4E 44 58 00 50 4C 45 4E 75 49  // .DAT0INDX.PLENuI
  0C02: 4E 44 58                                         // NDX

                If (LEqual (POFF, 0xFFFF))
                {

  0C05: A0 0A 93 50 4F 46 46 0B FF FF                    // ...POFF...

                    Break
                }


  0C0F: A5                                               // .

                While (LGreater (PLEN, Zero))
                {
                    WBP0 (POFF, 
  0C10: A2 29 94 50 4C 45 4E 00 57 42 50 30 50 4F 46 46  // .).PLEN.WBP0POFF

DerefOf (
  0C20: 83                                               // .

Index (DAT0, INDX)))
                    Increment (INDX)
                    Increment (POFF)

  0C21: 88 44 41 54 30 49 4E 44 58 00 75 49 4E 44 58 75  // .DAT0INDX.uINDXu
  0C31: 50 4F 46 46                                      // POFF

                    Decrement (PLEN)
                }
            }
        }


  0C35: 76 50 4C 45 4E                                   // vPLEN

        Method (CLP0, 0, NotSerialized)
        {
            Store (Zero, INDX)

  0C3A: 14 48 09 43 4C 50 30 00 70 00 49 4E 44 58        // .H.CLP0.p.INDX

            While (One)
            {
                Store (DerefOf (
  0C48: A2 4A 08 01 70 83                                // .J..p.

Index (DAT1, INDX)), WLSB)
                Increment (INDX)
                Store (DerefOf (
  0C4E: 88 44 41 54 31 49 4E 44 58 00 57 4C 53 42 75 49  // .DAT1INDX.WLSBuI
  0C5E: 4E 44 58 70 83                                   // NDXp.

Index (DAT1, INDX)), WMSB)
                Increment (INDX)
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF)
                Store (DerefOf (
  0C63: 88 44 41 54 31 49 4E 44 58 00 57 4D 53 42 75 49  // .DAT1INDX.WMSBuI
  0C73: 4E 44 58 70 7D 79 57 4D 53 42 0A 08 00 57 4C 53  // NDXp}yWMSB...WLS
  0C83: 42 00 50 4F 46 46 70 83                          // B.POFFp.

Index (DAT1, INDX)), PLEN)
                Increment (INDX)

  0C8B: 88 44 41 54 31 49 4E 44 58 00 50 4C 45 4E 75 49  // .DAT1INDX.PLENuI
  0C9B: 4E 44 58                                         // NDX

                If (LEqual (POFF, 0xFFFF))
                {

  0C9E: A0 0A 93 50 4F 46 46 0B FF FF                    // ...POFF...

                    Break
                }


  0CA8: A5                                               // .

                While (LGreater (PLEN, Zero))
                {
                    WBP0 (POFF, 
  0CA9: A2 29 94 50 4C 45 4E 00 57 42 50 30 50 4F 46 46  // .).PLEN.WBP0POFF

DerefOf (
  0CB9: 83                                               // .

Index (DAT1, INDX)))
                    Increment (INDX)
                    Increment (POFF)

  0CBA: 88 44 41 54 31 49 4E 44 58 00 75 49 4E 44 58 75  // .DAT1INDX.uINDXu
  0CCA: 50 4F 46 46                                      // POFF

                    Decrement (PLEN)
                }
            }
        }


  0CCE: 76 50 4C 45 4E                                   // vPLEN

        Method (SGON, 0, Serialized)
        {
            Store (0x8C, P80H)

  0CD3: 14 48 0D 53 47 4F 4E 08 70 0A 8C 50 38 30 48     // .H.SGON.p..P80H

            If (LEqual (CCHK (One), Zero))
            {

  0CE2: A0 0A 93 43 43 48 4B 01 00                       // ...CCHK..

                Return (Zero)
            }

            Store (One, ONOF)
            Store (Zero, GP50)
            Store (Zero, GP54)
            Store (Zero, GP74)
            Store (0x4B, INDX)

  0CEB: A4 00 70 01 4F 4E 4F 46 70 00 47 50 35 30 70 00  // ..p.ONOFp.GP50p.
  0CFB: 47 50 35 34 70 00 47 50 37 34 70 0A 4B 49 4E 44  // GP54p.GP74p.KIND
  0D0B: 58                                               // X

            While (LGreater (INDX, Zero))
            {
                Stall (0x64)

  0D0C: A2 10 94 49 4E 44 58 00 5B 21 0A 64              // ...INDX.[!.d

                Decrement (INDX)
            }

            Store (One, GP50)
            Sleep (0x012C)

  0D18: 76 49 4E 44 58 70 01 47 50 35 30 5B 22 0B 2C 01  // vINDXp.GP50[".,.

            If (
  0D28: A0 1E 92                                         // ...

LGreaterEqual (PCSL, 0x04))
            {

  0D2B: 95 50 43 53 4C 0A 04                             // .PCSL..

                If (LEqual (SC7A, One))
                {
                    C7OK (Zero)
                    RPP0 ()
                    CLP0 ()
                }
            }

            Store (One, TREN)
            Store (Zero, LNKD)

  0D32: A0 14 93 53 43 37 41 01 43 37 4F 4B 00 52 50 50  // ...SC7A.C7OK.RPP
  0D42: 30 43 4C 50 30 70 01 54 52 45 4E 70 00 4C 4E 4B  // 0CLP0p.TRENp.LNK
  0D52: 44                                               // D

            While (LLess (LNKS, 0x07))
            {

  0D53: A2 0B 95 4C 4E 4B 53 0A 07                       // ...LNKS..

                Sleep (One)
            }

            Store (HVID, WVID)
            Store (HDID, WDID)

  0D5C: 5B 22 01 70 48 56 49 44 57 56 49 44 70 48 44 49  // [".pHVIDWVIDpHDI
  0D6C: 44 57 44 49 44                                   // DWDID

            If (\_SB.PCI0.LPCB.EC.ECOK)
            {

  0D71: A0 31 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // .1\/._SB_PCI0LPC
  0D81: 42 45 43 5F 5F 45 43 4F 4B                       // BEC__ECOK

                Store (One, \_SB.PCI0.LPCB.EC.GPUT)
            }

            Store (0x8D, P80H)

  0D8A: 70 01 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
  0D9A: 42 45 43 5F 5F 47 50 55 54 70 0A 8D 50 38 30 48  // BEC__GPUTp..P80H

            Return (One)
        }


  0DAA: A4 01                                            // ..

        Method (SGOF, 0, Serialized)
        {
            Store (0x8E, P80H)

  0DAC: 14 4C 0D 53 47 4F 46 08 70 0A 8E 50 38 30 48     // .L.SGOF.p..P80H

            If (LEqual (CCHK (Zero), Zero))
            {

  0DBB: A0 0A 93 43 43 48 4B 00 00                       // ...CCHK..

                Return (Zero)
            }

            Store (Zero, ONOF)
            Store (LCTL, ELCT)
            Store (SVID, HVID)
            Store (SDID, HDID)
            Store (EMLW, DMLW)

  0DC4: A4 00 70 00 4F 4E 4F 46 70 4C 43 54 4C 45 4C 43  // ..p.ONOFpLCTLELC
  0DD4: 54 70 53 56 49 44 48 56 49 44 70 53 44 49 44 48  // TpSVIDHVIDpSDIDH
  0DE4: 44 49 44 70 45 4D 4C 57 44 4D 4C 57              // DIDpEMLWDMLW

            If (
  0DF0: A0 15 92                                         // ...

LGreaterEqual (PCSL, 0x04))
            {

  0DF3: 95 50 43 53 4C 0A 04                             // .PCSL..

                If (LEqual (SC7A, One))
                {
                    SPP0 ()
                }
            }

            Store (One, LNKD)

  0DFA: A0 0B 93 53 43 37 41 01 53 50 50 30 70 01 4C 4E  // ...SC7A.SPP0p.LN
  0E0A: 4B 44                                            // KD

            While (
  0E0C: A2 0B 92                                         // ...

LNotEqual (LNKS, Zero))
            {

  0E0F: 93 4C 4E 4B 53 00                                // .LNKS.

                Sleep (One)
            }


  0E15: 5B 22 01                                         // [".

            If (\_SB.PCI0.LPCB.EC.ECOK)
            {

  0E18: A0 31 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // .1\/._SB_PCI0LPC
  0E28: 42 45 43 5F 5F 45 43 4F 4B                       // BEC__ECOK

                Store (Zero, \_SB.PCI0.LPCB.EC.GPUT)
            }


  0E31: 70 00 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50 43  // p.\/._SB_PCI0LPC
  0E41: 42 45 43 5F 5F 47 50 55 54                       // BEC__GPUT

            If (
  0E4A: A0 16 92                                         // ...

LGreaterEqual (PCSL, 0x04))
            {

  0E4D: 95 50 43 53 4C 0A 04                             // .PCSL..

                If (LEqual (SC7A, One))
                {
                    C7OK (One)
                }
            }

            Sleep (0x64)
            Store (Zero, GP50)
            Stall (0x64)
            Store (One, GP54)
            Store (One, GP74)
            Sleep (0x012C)
            Store (0x8F, P80H)

  0E54: A0 0C 93 53 43 37 41 01 43 37 4F 4B 01 5B 22 0A  // ...SC7A.C7OK.[".
  0E64: 64 70 00 47 50 35 30 5B 21 0A 64 70 01 47 50 35  // dp.GP50[!.dp.GP5
  0E74: 34 70 01 47 50 37 34 5B 22 0B 2C 01 70 0A 8F 50  // 4p.GP74[".,.p..P
  0E84: 38 30 48                                         // 80H

            Return (Zero)
        }


  0E87: A4 00                                            // ..

        Method (EPON, 0, Serialized)
        {
            Store (One, ONOF)

  0E89: 14 0E 45 50 4F 4E 08 70 01 4F 4E 4F 46           // ..EPON.p.ONOF

            Return (Zero)
        }


  0E96: A4 00                                            // ..

        Method (SGST, 0, Serialized)
        {

  0E98: 14 4F 04 53 47 53 54 08                          // .O.SGST.

            If (And (SGMD, 0x0F))
            {

  0EA0: A0 36 7B 53 47 4D 44 0A 0F 00                    // .6{SGMD...

                If (
  0EAA: A0 0B 92                                         // ...

LNotEqual (SGGP, One))
                {

  0EAD: 93 53 47 47 50 01                                // .SGGP.

                    Return (0x0F)
                }


  0EB3: A4 0A 0F                                         // ...

                If (LEqual (\_SB.PCI0.LPCB.EC.DGPU, One))
                {

  0EB6: A0 1D 93 5C 2F 05 5F 53 42 5F 50 43 49 30 4C 50  // ...\/._SB_PCI0LP
  0EC6: 43 42 45 43 5F 5F 44 47 50 55 01                 // CBEC__DGPU.

                    Return (0x0F)
                }


  0ED1: A4 0A 0F                                         // ...

                Return (0x0F)
            }


  0ED4: A4 0A 0F                                         // ...

            If (
  0ED7: A0 0D 92                                         // ...

LNotEqual (DVID, 0xFFFF))
            {

  0EDA: 93 44 56 49 44 0B FF FF                          // .DVID...

                Return (0x0F)
            }


  0EE2: A4 0A 0F                                         // ...

            Return (0x0F)
        }


  0EE5: A4 0A 0F                                         // ...

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {

  0EE8: 14 1A 5F 44 4F 44 00                             // .._DOD.

            Return (\_SB.PCI0.GFX0._DOD ())
        }


  0EEF: A4 5C 2F 04 5F 53 42 5F 50 43 49 30 47 46 58 30  // .\/._SB_PCI0GFX0
  0EFF: 5F 44 4F 44                                      // _DOD

        Method (GFBE, 0, NotSerialized)
        {

  0F03: 14 0D 47 46 42 45 00                             // ..GFBE.

            Return (
  0F0A: A4                                               // .

ToInteger (GP24))
        }


  0F0B: 99 47 50 32 34 00                                // .GP24.

        Method (SGPE, 1, NotSerialized)
        {

  0F11: 14 0E 53 47 50 45 01                             // ..SGPE.

            Store (ToInteger (Arg0), GP46)
        }


  0F18: 70 99 68 00 47 50 34 36                          // p.h.GP46

        Method (GRST, 1, NotSerialized)
        {

  0F20: 14 0E 47 52 53 54 01                             // ..GRST.

            Store (ToInteger (Arg0), GP50)
        }


  0F27: 70 99 68 00 47 50 35 30                          // p.h.GP50

        Method (SGWR, 1, NotSerialized)
        {
            Store (ToInteger (Arg0), GP54)

  0F2F: 14 16 53 47 57 52 01 70 99 68 00 47 50 35 34     // ..SGWR.p.h.GP54

            Store (ToInteger (Arg0), GP74)
        }


  0F3E: 70 99 68 00 47 50 37 34                          // p.h.GP74

        Method (SGPI, 1, Serialized)
        {

  0F46: 14 44 0A 53 47 50 49 09                          // .D.SGPI.

            If (And (SGMD, 0x0F))
            {

  0F4E: A0 4A 09 7B 53 47 4D 44 0A 0F 00                 // .J.{SGMD...

                If (LEqual (SGGP, One))
                {
                    ShiftRight (Arg0, 0x07, Local1)
                    And (Arg0, 0x7F, Arg0)

  0F59: A0 4F 08 93 53 47 47 50 01 7A 68 0A 07 61 7B 68  // .O..SGGP.zh..a{h
  0F69: 0A 7F 68                                         // ..h

                    If (LLess (Arg0, 0x20))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.LVL0, Local0)

  0F6C: A0 22 95 68 0A 20 70 5C 2F 05 5F 53 42 5F 50 43  // .".h. p\/._SB_PC
  0F7C: 49 30 50 45 47 30 50 45 47 50 4C 56 4C 30 60     // I0PEG0PEGPLVL0`

                        ShiftRight (Local0, Arg0, Local0)
                    }

  0F8B: 7A 60 68 60                                      // z`h`

                    ElseIf
  0F8F: A1 4C 04                                         // .L.

 (LLess (Arg0, 0x40))
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.LVL1, Local0)

  0F92: A0 26 95 68 0A 40 70 5C 2F 05 5F 53 42 5F 50 43  // .&.h.@p\/._SB_PC
  0FA2: 49 30 50 45 47 30 50 45 47 50 4C 56 4C 31 60     // I0PEG0PEGPLVL1`

                        ShiftRight (Local0, Subtract (Arg0, 0x20), Local0)
                    }

  0FB1: 7A 60 74 68 0A 20 00 60                          // z`th. .`

                    Else
                    {
                        Store (\_SB.PCI0.PEG0.PEGP.LVL2, Local0)

  0FB9: A1 22 70 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // ."p\/._SB_PCI0PE
  0FC9: 47 30 50 45 47 50 4C 56 4C 32 60                 // G0PEGPLVL2`

                        ShiftRight (Local0, Subtract (Arg0, 0x40), Local0)
                    }


  0FD4: 7A 60 74 68 0A 40 00 60                          // z`th.@.`

                    If (LEqual (Local1, Zero))
                    {

  0FDC: A0 07 93 61 00                                   // ...a.

                        Not (Local0, Local0)
                    }


  0FE1: 80 60 60                                         // .``

                    Return (
  0FE4: A4                                               // .

And (Local0, One))
                }
            }


  0FE5: 7B 60 01 00                                      // {`..

            Return (Zero)
        }


  0FE9: A4 00                                            // ..

        Method (SGPO, 2, Serialized)
        {

  0FEB: 14 49 11 53 47 50 4F 0A                          // .I.SGPO.

            If (And (SGMD, 0x0F))
            {

  0FF3: A0 4F 10 7B 53 47 4D 44 0A 0F 00                 // .O.{SGMD...

                If (LEqual (SGGP, One))
                {
                    ShiftRight (Arg0, 0x07, Local3)
                    And (Arg0, 0x7F, Arg0)

  0FFE: A0 44 10 93 53 47 47 50 01 7A 68 0A 07 63 7B 68  // .D..SGGP.zh..c{h
  100E: 0A 7F 68                                         // ..h

                    If (LEqual (Local3, Zero))
                    {
                        Not (Arg1, Local3)

  1011: A0 0B 93 63 00 80 69 63                          // ...c..ic

                        And (Local3, One, Local3)
                    }

  1019: 7B 63 01 63                                      // {c.c

                    Else
                    {

  101D: A1 05                                            // ..

                        And (Arg1, One, Local3)
                    }


  101F: 7B 69 01 63                                      // {i.c

                    If (LLess (Arg0, 0x20))
                    {
                        ShiftLeft (Local3, Arg0, Local0)
                        ShiftLeft (One, Arg0, Local1)
                        And (\_SB.PCI0.PEG0.PEGP.LVL0, Not (Local1), Local2)

  1023: A0 44 04 95 68 0A 20 79 63 68 60 79 01 68 61 7B  // .D..h. ych`y.ha{
  1033: 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45 47 30 50  // \/._SB_PCI0PEG0P
  1043: 45 47 50 4C 56 4C 30 80 61 00 62                 // EGPLVL0.a.b

                        Or (Local2, Local0, \_SB.PCI0.PEG0.PEGP.LVL0)
                    }

  104E: 7D 62 60 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // }b`\/._SB_PCI0PE
  105E: 47 30 50 45 47 50 4C 56 4C 30                    // G0PEGPLVL0

                    ElseIf
  1068: A1 48 09                                         // .H.

 (LLess (Arg0, 0x40))
                    {
                        ShiftLeft (Local3, Subtract (Arg0, 0x20), Local0)
                        ShiftLeft (One, Subtract (Arg0, 0x20), Local1)
                        And (\_SB.PCI0.PEG0.PEGP.LVL1, Not (Local1), Local2)

  106B: A0 4C 04 95 68 0A 40 79 63 74 68 0A 20 00 60 79  // .L..h.@ycth. .`y
  107B: 01 74 68 0A 20 00 61 7B 5C 2F 05 5F 53 42 5F 50  // .th. .a{\/._SB_P
  108B: 43 49 30 50 45 47 30 50 45 47 50 4C 56 4C 31 80  // CI0PEG0PEGPLVL1.
  109B: 61 00 62                                         // a.b

                        Or (Local2, Local0, \_SB.PCI0.PEG0.PEGP.LVL1)
                    }

  109E: 7D 62 60 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // }b`\/._SB_PCI0PE
  10AE: 47 30 50 45 47 50 4C 56 4C 31                    // G0PEGPLVL1

                    Else
                    {
                        ShiftLeft (Local3, Subtract (Arg0, 0x40), Local0)
                        ShiftLeft (One, Subtract (Arg0, 0x40), Local1)
                        And (\_SB.PCI0.PEG0.PEGP.LVL2, Not (Local1), Local2)

  10B8: A1 48 04 79 63 74 68 0A 40 00 60 79 01 74 68 0A  // .H.ycth.@.`y.th.
  10C8: 40 00 61 7B 5C 2F 05 5F 53 42 5F 50 43 49 30 50  // @.a{\/._SB_PCI0P
  10D8: 45 47 30 50 45 47 50 4C 56 4C 32 80 61 00 62     // EG0PEGPLVL2.a.b

                        Or (Local2, Local0, \_SB.PCI0.PEG0.PEGP.LVL2)
                    }


  10E7: 7D 62 60 5C 2F 05 5F 53 42 5F 50 43 49 30 50 45  // }b`\/._SB_PCI0PE
  10F7: 47 30 50 45 47 50 4C 56 4C 32                    // G0PEGPLVL2

                    Return (One)
                }
            }


  1101: A4 01                                            // ..

            Return (One)
        }


  1103: A4 01                                            // ..

        Method (CCHK, 1, NotSerialized)
        {

  1105: 14 35 43 43 48 4B 01                             // .5CCHK.

            If (LEqual (PVID, IVID))
            {

  110C: A0 0C 93 50 56 49 44 49 56 49 44                 // ...PVIDIVID

                Return (Zero)
            }


  1117: A4 00                                            // ..

            If (LEqual (Arg0, Zero))
            {

  1119: A0 0E 93 68 00                                   // ...h.

                If (LEqual (ONOF, Zero))
                {

  111E: A0 09 93 4F 4E 4F 46 00                          // ...ONOF.

                    Return (Zero)
                }
            }

  1126: A4 00                                            // ..

            ElseIf
  1128: A1 10                                            // ..

 (LEqual (Arg0, One))
            {

  112A: A0 0E 93 68 01                                   // ...h.

                If (LEqual (ONOF, One))
                {

  112F: A0 09 93 4F 4E 4F 46 01                          // ...ONOF.

                    Return (Zero)
                }
            }


  1137: A4 00                                            // ..

            Return (One)
        }
    }
}



Table Header:
Table Body (Length 0x113B)
