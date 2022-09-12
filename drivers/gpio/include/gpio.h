/*
 * Copyright (C) 2022 ETH Zurich, University of Bologna
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Title: gpio.h<include>
 * Author: Manuel Eggimann  <meggimann@iis.ee.ethz.ch>
 * Date: 09.03.2022
 *
 * Description: Driver for the GPIO peripheral in Siracusa
 */
#ifndef GPIO_H
#define GPIO_H

#include <stdint.h>

#define SIRACUSA_GPIO_BASE_ADDR 0x1A101000

#define GPIO_DIRECTION_OUTPUT 1
#define GPIO_DIRECTION_INPUT  0


uint32_t configure_gpio(uint32_t number, uint32_t direction);
uint32_t get_gpio(uint32_t number);
uint32_t set_gpio(uint32_t number, uint32_t value);


#endif /* GPIO_H */
