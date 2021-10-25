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
    xilinxcorelib_ver_m_00000000001358910285_1332106834_init();
    xilinxcorelib_ver_m_00000000001687936702_3055161089_init();
    xilinxcorelib_ver_m_00000000000277421008_0121477608_init();
    xilinxcorelib_ver_m_00000000001603977570_0283326780_init();
    work_m_00000000000403262735_1462626234_init();
    work_m_00000000001364085939_2153072382_init();
    work_m_00000000000320699668_1025384689_init();
    work_m_00000000001827224203_3113203713_init();
    work_m_00000000002673673707_1856784803_init();
    work_m_00000000002990893909_0450250084_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002990893909_0450250084");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
