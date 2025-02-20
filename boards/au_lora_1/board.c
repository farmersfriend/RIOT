/*
 * Copyright (C) 2022 Caleb Whiting
 *
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 */

/**
 * @ingroup     boards_au_lora_1
 * @{
 *
 * @file
 * @brief       Board specific implementations for the au_lora_1 board
 *
 * @author      Caleb Whiting <caleb@whiting.io>
 *
 * @}
 */

#include "cpu.h"
#include "board.h"
#include "periph/gpio.h"

void board_init(void)
{
    /* initialize the CPU */
    cpu_init();
}
