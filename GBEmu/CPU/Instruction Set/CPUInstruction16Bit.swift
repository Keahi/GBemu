//
//  LR35902Instruction16Bit.swift
//  GBEmu
//
//  Created by Jacob Ertell on 4/26/23.
//

import Foundation

enum CPUInstruction16Bit: DoubleWord {
    init(rawValue: UInt16) throws {
        guard let instruction = CPUInstruction16Bit(rawValue: rawValue) else {
            throw CPUInstruction16BitDecodeFailure.invalidOpcode
        }

        self = instruction
    }

    case rlc_B          = 0xCB00
    case rlc_C          = 0xCB01
    case rlc_D          = 0xCB02
    case rlc_E          = 0xCB03
    case rlc_H          = 0xCB04
    case rlc_L          = 0xCB05
    case rlc_HLptr      = 0xCB06
    case rlc_A          = 0xCB07
    case rrc_B          = 0xCB08
    case rrc_C          = 0xCB09
    case rrc_D          = 0xCB0A
    case rrc_E          = 0xCB0B
    case rrc_H          = 0xCB0C
    case rrc_L          = 0xCB0D
    case rrc_HLptr      = 0xCB0E
    case rrc_A          = 0xCB0F

    case rl_B           = 0xCB10
    case rl_C           = 0xCB11
    case rl_D           = 0xCB12
    case rl_E           = 0xCB13
    case rl_H           = 0xCB14
    case rl_L           = 0xCB15
    case rl_HLptr       = 0xCB16
    case rl_A           = 0xCB17
    case rr_B           = 0xCB18
    case rr_C           = 0xCB19
    case rr_D           = 0xCB1A
    case rr_E           = 0xCB1B
    case rr_H           = 0xCB1C
    case rr_L           = 0xCB1D
    case rr_HLptr       = 0xCB1E
    case rr_A           = 0xCB1F

    case sla_B          = 0xCB20
    case sla_C          = 0xCB21
    case sla_D          = 0xCB22
    case sla_E          = 0xCB23
    case sla_H          = 0xCB24
    case sla_L          = 0xCB25
    case sla_HLptr      = 0xCB26
    case sla_A          = 0xCB27
    case sra_B          = 0xCB28
    case sra_C          = 0xCB29
    case sra_D          = 0xCB2A
    case sra_E          = 0xCB2B
    case sra_H          = 0xCB2C
    case sra_L          = 0xCB2D
    case sra_HLptr      = 0xCB2E
    case sra_A          = 0xCB2F

    case swap_B         = 0xCB30
    case swap_C         = 0xCB31
    case swap_D         = 0xCB32
    case swap_E         = 0xCB33
    case swap_H         = 0xCB34
    case swap_L         = 0xCB35
    case swap_HLptr     = 0xCB36
    case swap_A         = 0xCB37
    case srl_B          = 0xCB38
    case srl_C          = 0xCB39
    case srl_D          = 0xCB3A
    case srl_E          = 0xCB3B
    case srl_H          = 0xCB3C
    case srl_L          = 0xCB3D
    case srl_HLptr      = 0xCB3E
    case srl_A          = 0xCB3F

    case bit_0_B        = 0xCB40
    case bit_0_C        = 0xCB41
    case bit_0_D        = 0xCB42
    case bit_0_E        = 0xCB43
    case bit_0_H        = 0xCB44
    case bit_0_L        = 0xCB45
    case bit_0_HLptr    = 0xCB46
    case bit_0_A        = 0xCB47
    case bit_1_B        = 0xCB48
    case bit_1_C        = 0xCB49
    case bit_1_D        = 0xCB4A
    case bit_1_E        = 0xCB4B
    case bit_1_H        = 0xCB4C
    case bit_1_L        = 0xCB4D
    case bit_1_HLptr    = 0xCB4E
    case bit_1_A        = 0xCB4F

    case bit_2_B        = 0xCB50
    case bit_2_C        = 0xCB51
    case bit_2_D        = 0xCB52
    case bit_2_E        = 0xCB53
    case bit_2_H        = 0xCB54
    case bit_2_L        = 0xCB55
    case bit_2_HLptr    = 0xCB56
    case bit_2_A        = 0xCB57
    case bit_3_B        = 0xCB58
    case bit_3_C        = 0xCB59
    case bit_3_D        = 0xCB5A
    case bit_3_E        = 0xCB5B
    case bit_3_H        = 0xCB5C
    case bit_3_L        = 0xCB5D
    case bit_3_HLptr    = 0xCB5E
    case bit_3_A        = 0xCB5F

    case bit_4_B        = 0xCB60
    case bit_4_C        = 0xCB61
    case bit_4_D        = 0xCB62
    case bit_4_E        = 0xCB63
    case bit_4_H        = 0xCB64
    case bit_4_L        = 0xCB65
    case bit_4_HLptr    = 0xCB66
    case bit_4_A        = 0xCB67
    case bit_5_B        = 0xCB68
    case bit_5_C        = 0xCB69
    case bit_5_D        = 0xCB6A
    case bit_5_E        = 0xCB6B
    case bit_5_H        = 0xCB6C
    case bit_5_L        = 0xCB6D
    case bit_5_HLptr    = 0xCB6E
    case bit_5_A        = 0xCB6F

    case bit_6_B        = 0xCB70
    case bit_6_C        = 0xCB71
    case bit_6_D        = 0xCB72
    case bit_6_E        = 0xCB73
    case bit_6_H        = 0xCB74
    case bit_6_L        = 0xCB75
    case bit_6_HLptr    = 0xCB76
    case bit_6_A        = 0xCB77
    case bit_7_B        = 0xCB78
    case bit_7_C        = 0xCB79
    case bit_7_D        = 0xCB7A
    case bit_7_E        = 0xCB7B
    case bit_7_H        = 0xCB7C
    case bit_7_L        = 0xCB7D
    case bit_7_HLptr    = 0xCB7E
    case bit_7_A        = 0xCB7F

    case res_0_B        = 0xCB80
    case res_0_C        = 0xCB81
    case res_0_D        = 0xCB82
    case res_0_E        = 0xCB83
    case res_0_H        = 0xCB84
    case res_0_L        = 0xCB85
    case res_0_HLptr    = 0xCB86
    case res_0_A        = 0xCB87
    case res_1_B        = 0xCB88
    case res_1_C        = 0xCB89
    case res_1_D        = 0xCB8A
    case res_1_E        = 0xCB8B
    case res_1_H        = 0xCB8C
    case res_1_L        = 0xCB8D
    case res_1_HLptr    = 0xCB8E
    case res_1_A        = 0xCB8F

    case res_2_B        = 0xCB90
    case res_2_C        = 0xCB91
    case res_2_D        = 0xCB92
    case res_2_E        = 0xCB93
    case res_2_H        = 0xCB94
    case res_2_L        = 0xCB95
    case res_2_HLptr    = 0xCB96
    case res_2_A        = 0xCB97
    case res_3_B        = 0xCB98
    case res_3_C        = 0xCB99
    case res_3_D        = 0xCB9A
    case res_3_E        = 0xCB9B
    case res_3_H        = 0xCB9C
    case res_3_L        = 0xCB9D
    case res_3_HLptr    = 0xCB9E
    case res_3_A        = 0xCB9F

    case res_4_B        = 0xCBA0
    case res_4_C        = 0xCBA1
    case res_4_D        = 0xCBA2
    case res_4_E        = 0xCBA3
    case res_4_H        = 0xCBA4
    case res_4_L        = 0xCBA5
    case res_4_HLptr    = 0xCBA6
    case res_4_A        = 0xCBA7
    case res_5_B        = 0xCBA8
    case res_5_C        = 0xCBA9
    case res_5_D        = 0xCBAA
    case res_5_E        = 0xCBAB
    case res_5_H        = 0xCBAC
    case res_5_L        = 0xCBAD
    case res_5_HLptr    = 0xCBAE
    case res_5_A        = 0xCBAF

    case res_6_B        = 0xCBB0
    case res_6_C        = 0xCBB1
    case res_6_D        = 0xCBB2
    case res_6_E        = 0xCBB3
    case res_6_H        = 0xCBB4
    case res_6_L        = 0xCBB5
    case res_6_HLptr    = 0xCBB6
    case res_6_A        = 0xCBB7
    case res_7_B        = 0xCBB8
    case res_7_C        = 0xCBB9
    case res_7_D        = 0xCBBA
    case res_7_E        = 0xCBBB
    case res_7_H        = 0xCBBC
    case res_7_L        = 0xCBBD
    case res_7_HLptr    = 0xCBBE
    case res_7_A        = 0xCBBF

    case set_0_B        = 0xCBC0
    case set_0_C        = 0xCBC1
    case set_0_D        = 0xCBC2
    case set_0_E        = 0xCBC3
    case set_0_H        = 0xCBC4
    case set_0_L        = 0xCBC5
    case set_0_HLptr    = 0xCBC6
    case set_0_A        = 0xCBC7
    case set_1_B        = 0xCBC8
    case set_1_C        = 0xCBC9
    case set_1_D        = 0xCBCA
    case set_1_E        = 0xCBCB
    case set_1_H        = 0xCBCC
    case set_1_L        = 0xCBCD
    case set_1_HLptr    = 0xCBCE
    case set_1_A        = 0xCBCF

    case set_2_B        = 0xCBD0
    case set_2_C        = 0xCBD1
    case set_2_D        = 0xCBD2
    case set_2_E        = 0xCBD3
    case set_2_H        = 0xCBD4
    case set_2_L        = 0xCBD5
    case set_2_HLptr    = 0xCBD6
    case set_2_A        = 0xCBD7
    case set_3_B        = 0xCBD8
    case set_3_C        = 0xCBD9
    case set_3_D        = 0xCBDA
    case set_3_E        = 0xCBDB
    case set_3_H        = 0xCBDC
    case set_3_L        = 0xCBDD
    case set_3_HLptr    = 0xCBDE
    case set_3_A        = 0xCBDF

    case set_4_B        = 0xCBE0
    case set_4_C        = 0xCBE1
    case set_4_D        = 0xCBE2
    case set_4_E        = 0xCBE3
    case set_4_H        = 0xCBE4
    case set_4_L        = 0xCBE5
    case set_4_HLptr    = 0xCBE6
    case set_4_A        = 0xCBE7
    case set_5_B        = 0xCBE8
    case set_5_C        = 0xCBE9
    case set_5_D        = 0xCBEA
    case set_5_E        = 0xCBEB
    case set_5_H        = 0xCBEC
    case set_5_L        = 0xCBED
    case set_5_HLptr    = 0xCBEE
    case set_5_A        = 0xCBEF

    case set_6_B        = 0xCBF0
    case set_6_C        = 0xCBF1
    case set_6_D        = 0xCBF2
    case set_6_E        = 0xCBF3
    case set_6_H        = 0xCBF4
    case set_6_L        = 0xCBF5
    case set_6_HLptr    = 0xCBF6
    case set_6_A        = 0xCBF7
    case set_7_B        = 0xCBF8
    case set_7_C        = 0xCBF9
    case set_7_D        = 0xCBFA
    case set_7_E        = 0xCBFB
    case set_7_H        = 0xCBFC
    case set_7_L        = 0xCBFD
    case set_7_HLptr    = 0xCBFE
    case set_7_A        = 0xCBFF
}
