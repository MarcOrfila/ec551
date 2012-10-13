/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003437122233_2858095548_init();
    work_m_00000000001874833577_3069169239_init();
    work_m_00000000003454508950_0886308060_init();
    work_m_00000000000718609205_1411027795_init();
    work_m_00000000003942708891_1504297269_init();
    work_m_00000000003175831510_0468318972_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003175831510_0468318972");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
