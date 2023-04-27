//
//  LR35902Instruction.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/26/23.
//

import Foundation

enum LR35902Instruction: Word {
    init(rawValue: UInt8) throws {
        guard let instruction = LR35902Instruction(rawValue: rawValue) else {
            throw LR35902InstructionDecodeFailure.invalidOpcode
        }

        if instruction == .cb_prefix {
            throw LR35902InstructionDecodeFailure.requires16BitOpcode
        }

        self = instruction
    }

    case nop                = 0x00
    case ld_BC_d16          = 0x01
    case ld_BCptr_A         = 0x02
    case inc_BC             = 0x03
    case inc_B              = 0x04
    case dec_B              = 0x05
    case ld_B_d8            = 0x06
    case rcla               = 0x07
    case ld_a16ptr_SP       = 0x08
    case add_HL_BC          = 0x09
    case ld_A_BCptr         = 0x0A
    case dec_BC             = 0x0B
    case inc_C              = 0x0C
    case dec_C              = 0x0D
    case ld_C_d8            = 0x0E
    case rrca               = 0x0F

    case stop               = 0x10
    case ld_DE_d16          = 0x11
    case ld_DEptr_A         = 0x12
    case inc_DE             = 0x13
    case inc_D              = 0x14
    case dec_D              = 0x15
    case ld_D_d8            = 0x16
    case rla                = 0x17
    case jr_s8              = 0x18
    case add_HL_DE          = 0x19
    case ld_A_DEptr         = 0x1A
    case dec_DE             = 0x1B
    case inc_E              = 0x1C
    case dec_E              = 0x1D
    case ld_E_d8            = 0x1E
    case rra                = 0x1F

    case jr_nz_s8           = 0x20
    case ld_HL_d16          = 0x21
    case ld_HLptrInc_A      = 0x22
    case inc_HL             = 0x23
    case inc_H              = 0x24
    case dec_H              = 0x25
    case ld_H_d8            = 0x26
    case daa                = 0x27
    case jr_z_s8            = 0x28
    case add_HL_HL          = 0x29
    case ld_A_HLptrInc      = 0x2A
    case dec_HL             = 0x2B
    case inc_L              = 0x2C
    case dec_L              = 0x2D
    case ld_L_d8            = 0x2E
    case cpl                = 0x2F

    case jr_nc_s8           = 0x30
    case ld_sp_d16          = 0x31
    case ld_HLptrDec_A      = 0x32
    case inc_SP             = 0x33
    case inc_HLptr          = 0x34
    case dec_HLptr          = 0x35
    case ld_HLptr_d8        = 0x36
    case scf                = 0x37
    case jr_C_s8            = 0x38
    case add_HL_SP          = 0x39
    case ld_A_HLptrDec      = 0x3A
    case dec_SP             = 0x3B
    case inc_A              = 0x3C
    case dec_A              = 0x3D
    case ld_A_d8            = 0x3E
    case ccf                = 0x3F

    case ld_B_B             = 0x40
    case ld_B_C             = 0x41
    case ld_B_D             = 0x42
    case ld_B_E             = 0x43
    case ld_B_H             = 0x44
    case ld_B_L             = 0x45
    case ld_B_HLptr         = 0x46
    case ld_B_A             = 0x47
    case ld_C_B             = 0x48
    case ld_C_C             = 0x49
    case ld_C_D             = 0x4A
    case ld_C_E             = 0x4B
    case ld_C_H             = 0x4C
    case ld_C_L             = 0x4D
    case ld_C_HLptr         = 0x4E
    case ld_C_A             = 0x4F

    case ld_D_B             = 0x50
    case ld_D_C             = 0x51
    case ld_D_D             = 0x52
    case ld_D_E             = 0x53
    case ld_D_H             = 0x54
    case ld_D_L             = 0x55
    case ld_D_HLptr         = 0x56
    case ld_D_A             = 0x57
    case ld_E_B             = 0x58
    case ld_E_C             = 0x59
    case ld_E_D             = 0x5A
    case ld_E_E             = 0x5B
    case ld_E_H             = 0x5C
    case ld_E_L             = 0x5D
    case ld_E_HLptr         = 0x5E
    case ld_E_A             = 0x5F

    case ld_H_B             = 0x60
    case ld_H_C             = 0x61
    case ld_H_D             = 0x62
    case ld_H_E             = 0x63
    case ld_H_H             = 0x64
    case ld_H_L             = 0x65
    case ld_H_HLptr         = 0x66
    case ld_H_A             = 0x67
    case ld_L_B             = 0x68
    case ld_L_C             = 0x69
    case ld_L_D             = 0x6A
    case ld_L_E             = 0x6B
    case ld_L_H             = 0x6C
    case ld_L_L             = 0x6D
    case ld_L_HLptr         = 0x6E
    case ld_L_A             = 0x6F

    case ld_HLptr_B         = 0x70
    case ld_HLptr_C         = 0x71
    case ld_HLptr_D         = 0x72
    case ld_HLptr_E         = 0x73
    case ld_HLptr_H         = 0x74
    case ld_HLptr_L         = 0x75
    case halt               = 0x76
    case ld_HLptr_A         = 0x77
    case ld_A_B             = 0x78
    case ld_A_C             = 0x79
    case ld_A_D             = 0x7A
    case ld_A_E             = 0x7B
    case ld_A_H             = 0x7C
    case ld_A_L             = 0x7D
    case ld_A_HLptr         = 0x7E
    case ld_A_A             = 0x7F

    case add_A_B            = 0x80
    case add_A_C            = 0x81
    case add_A_D            = 0x82
    case add_A_E            = 0x83
    case add_A_H            = 0x84
    case add_A_L            = 0x85
    case add_A_HLptr        = 0x86
    case add_A_A            = 0x87
    case adc_A_B            = 0x88
    case adc_A_C            = 0x89
    case adc_A_D            = 0x8A
    case adc_A_E            = 0x8B
    case adc_A_H            = 0x8C
    case adc_A_L            = 0x8D
    case adc_A_HLptr        = 0x8E
    case adc_A_A            = 0x8F

    case sub_B              = 0x90
    case sub_C              = 0x91
    case sub_D              = 0x92
    case sub_E              = 0x93
    case sub_H              = 0x94
    case sub_L              = 0x95
    case sub_HLptr          = 0x96
    case sub_A              = 0x97
    case sbc_A_B            = 0x98
    case sbc_A_C            = 0x99
    case sbc_A_D            = 0x9A
    case sbc_A_E            = 0x9B
    case sbc_A_H            = 0x9C
    case sbc_A_L            = 0x9D
    case sbc_A_HLptr        = 0x9E
    case sbc_A_A            = 0x9F

    case and_B              = 0xA0
    case and_C              = 0xA1
    case and_D              = 0xA2
    case and_E              = 0xA3
    case and_H              = 0xA4
    case and_L              = 0xA5
    case and_HLptr          = 0xA6
    case and_A              = 0xA7
    case xor_B              = 0xA8
    case xor_C              = 0xA9
    case xor_D              = 0xAA
    case xor_E              = 0xAB
    case xor_H              = 0xAC
    case xor_L              = 0xAD
    case xor_HLptr          = 0xAE
    case xor_A              = 0xAF

    case or_B               = 0xB0
    case or_C               = 0xB1
    case or_D               = 0xB2
    case or_E               = 0xB3
    case or_H               = 0xB4
    case or_L               = 0xB5
    case or_HLptr           = 0xB6
    case or_A               = 0xB7
    case cp_B               = 0xB8
    case cp_C               = 0xB9
    case cp_D               = 0xBA
    case cp_E               = 0xBB
    case cp_H               = 0xBC
    case cp_L               = 0xBD
    case cp_HLptr           = 0xBE
    case cp_A               = 0xBF

    case ret_nz             = 0xC0
    case pop_BC             = 0xC1
    case jp_nz_a16          = 0xC2
    case jp_a16             = 0xC3
    case call_nz_a16        = 0xC4
    case push_BC            = 0xC5
    case add_A_d8           = 0xC6
    case rst_0              = 0xC7
    case ret_z              = 0xC8
    case ret                = 0xC9
    case jp_z_a16           = 0xCA
    case cb_prefix          = 0xCB // 0xCB is always translated into a 16-bit opcode
    case call_z_a16         = 0xCC
    case call_a16           = 0xCD
    case adc_A_d8           = 0xCE
    case rst_1              = 0xCF

    case ret_nc             = 0xD0
    case pop_DE             = 0xD1
    case jp_nc_a16          = 0xD2
    // 0xD3
    case call_nc_a16        = 0xD4
    case push_DE            = 0xD5
    case sub_d8             = 0xD6
    case rst_2              = 0xD7
    case ret_c              = 0xD8
    case reti               = 0xD9
    case jp_c_a16           = 0xDA
    // 0xDB
    case call_c_a16         = 0xDC
    // 0xDD
    case sbc_A_d8           = 0xDE
    case rst_3              = 0xDF

    case ld_a8ptr_A         = 0xE0
    case pop_HL             = 0xE1
    case ld_Cptr_A          = 0xE2
    // 0xE3
    // 0xE4
    case push_HL            = 0xE5
    case and_d8             = 0xE6
    case rst_4              = 0xE7
    case add_SP_s8          = 0xE8
    case jp_HL              = 0xE9
    case ld_a16ptr_A        = 0xEA
    // 0xEB
    // 0xEC
    // 0xED
    case xor_d8             = 0xEE
    case rst_5              = 0xEF

    case ld_A_a8ptr         = 0xF0
    case pop_AF             = 0xF1
    case ld_A_Cptr          = 0xF2
    case di                 = 0xF3
    // 0xF4
    case push_AF            = 0xF5
    case or_d8              = 0xF6
    case rst_6              = 0xF7
    case ld_HL_SP_plus_s8   = 0xF8
    case ld_SP_HL           = 0xF9
    case ld_A_a16ptr        = 0xFA
    case ei                 = 0xFB
    // 0xFC
    // 0xFD
    case cp_d8              = 0xFE
    case rst_7              = 0xFF
}
