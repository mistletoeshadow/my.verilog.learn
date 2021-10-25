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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/FPGA/my.verilog.learn/ram/rtl/uart_byte_tx.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {11U, 0U};
static unsigned int ng4[] = {5207U, 0U};
static int ng5[] = {0, 0};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {2603U, 0U};
static int ng8[] = {2, 0};
static unsigned int ng9[] = {1301U, 0U};
static int ng10[] = {3, 0};
static unsigned int ng11[] = {867U, 0U};
static int ng12[] = {4, 0};
static unsigned int ng13[] = {433U, 0U};
static int ng14[] = {5, 0};
static int ng15[] = {6, 0};
static int ng16[] = {7, 0};
static int ng17[] = {8, 0};
static int ng18[] = {9, 0};
static int ng19[] = {10, 0};



static void Always_38_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 4400U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 6456);
    *((int *)t2) = 1;
    t3 = (t0 + 4432);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t4) = 1;

LAB18:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);

LAB21:
LAB14:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(40, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(42, ng0);
    t5 = ((char*)((ng2)));
    t6 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 1, 0LL);
    goto LAB14;

LAB17:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(44, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 2680);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    goto LAB21;

}

static void Always_48_1(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 4648U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 6472);
    *((int *)t2) = 1;
    t3 = (t0 + 4680);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1800U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 3480);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);

LAB14:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(50, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 8, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(52, ng0);
    t5 = (t0 + 1640U);
    t6 = *((char **)t5);
    t5 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, 0, 8, 0LL);
    goto LAB14;

}

static void Always_56_2(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;

LAB0:    t1 = (t0 + 4896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 6488);
    *((int *)t2) = 1;
    t3 = (t0 + 4928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(59, ng0);

LAB12:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1960U);
    t3 = *((char **)t2);

LAB13:    t2 = ((char*)((ng5)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 32);
    if (t21 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 32);
    if (t21 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 32);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng10)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 32);
    if (t21 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng12)));
    t21 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 32);
    if (t21 == 1)
        goto LAB22;

LAB23:
LAB25:
LAB24:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng4)));
    t5 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 16, 0LL);

LAB26:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(58, ng0);
    t19 = ((char*)((ng4)));
    t20 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 16, 0LL);
    goto LAB11;

LAB14:    xsi_set_current_line(61, ng0);
    t5 = ((char*)((ng4)));
    t6 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 16, 0LL);
    goto LAB26;

LAB16:    xsi_set_current_line(62, ng0);
    t5 = ((char*)((ng7)));
    t6 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 16, 0LL);
    goto LAB26;

LAB18:    xsi_set_current_line(63, ng0);
    t5 = ((char*)((ng9)));
    t6 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 16, 0LL);
    goto LAB26;

LAB20:    xsi_set_current_line(64, ng0);
    t5 = ((char*)((ng11)));
    t6 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 16, 0LL);
    goto LAB26;

LAB22:    xsi_set_current_line(65, ng0);
    t5 = ((char*)((ng13)));
    t6 = (t0 + 3160);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 16, 0LL);
    goto LAB26;

}

static void Always_71_3(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;

LAB0:    t1 = (t0 + 5144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6504);
    *((int *)t2) = 1;
    t3 = (t0 + 5176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2680);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);

LAB14:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(73, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 16, 0LL);
    goto LAB11;

LAB12:    xsi_set_current_line(74, ng0);

LAB15:    xsi_set_current_line(75, ng0);
    t12 = (t0 + 3000);
    t13 = (t12 + 56U);
    t19 = *((char **)t13);
    t20 = (t0 + 3160);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memset(t4, 0, 8);
    t23 = (t19 + 4);
    t24 = (t22 + 4);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t22);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t23);
    t18 = *((unsigned int *)t24);
    t25 = (t17 ^ t18);
    t26 = (t16 | t25);
    t27 = *((unsigned int *)t23);
    t28 = *((unsigned int *)t24);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB19;

LAB16:    if (t29 != 0)
        goto LAB18;

LAB17:    *((unsigned int *)t4) = 1;

LAB19:    t33 = (t4 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t4);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3000);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 16, t5, 16, t6, 16);
    t12 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 16, 0LL);

LAB22:    goto LAB14;

LAB18:    t32 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(76, ng0);
    t39 = ((char*)((ng1)));
    t40 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t40, t39, 0, 0, 16, 0LL);
    goto LAB22;

}

static void Always_84_4(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 5392U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 6520);
    *((int *)t2) = 1;
    t3 = (t0 + 5424);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(85, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3000);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB15;

LAB12:    if (t18 != 0)
        goto LAB14;

LAB13:    *((unsigned int *)t4) = 1;

LAB15:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(90, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB18:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(86, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB11;

LAB14:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB15;

LAB16:    xsi_set_current_line(88, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2840);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    goto LAB18;

}

static void Always_93_5(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 5640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 6536);
    *((int *)t2) = 1;
    t3 = (t0 + 5672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(94, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB15;

LAB12:    if (t18 != 0)
        goto LAB14;

LAB13:    *((unsigned int *)t4) = 1;

LAB15:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2840);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 4, 0LL);

LAB21:
LAB18:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(95, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 4, 0LL);
    goto LAB11;

LAB14:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB15;

LAB16:    xsi_set_current_line(97, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 4, 0LL);
    goto LAB18;

LAB19:    xsi_set_current_line(99, ng0);
    t12 = (t0 + 3320);
    t13 = (t12 + 56U);
    t19 = *((char **)t13);
    t20 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 4, t19, 4, t20, 4);
    t28 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t28, t4, 0, 0, 4, 0LL);
    goto LAB21;

}

static void Always_103_6(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 5888U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 6552);
    *((int *)t2) = 1;
    t3 = (t0 + 5920);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(104, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    t12 = (t5 + 4);
    t13 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t12);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t12);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB15;

LAB12:    if (t18 != 0)
        goto LAB14;

LAB13:    *((unsigned int *)t4) = 1;

LAB15:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB16;

LAB17:    xsi_set_current_line(109, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB18:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(105, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB11;

LAB14:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB15;

LAB16:    xsi_set_current_line(107, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 2520);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    goto LAB18;

}

static void Always_111_7(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    int t21;

LAB0:    t1 = (t0 + 6136U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 6568);
    *((int *)t2) = 1;
    t3 = (t0 + 6168);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(112, ng0);
    t5 = (t0 + 1480U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB9;

LAB10:    xsi_set_current_line(114, ng0);

LAB12:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 3320);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);

LAB13:    t6 = ((char*)((ng5)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t6, 32);
    if (t21 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng6)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng8)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng10)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng12)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng14)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng15)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB26;

LAB27:    t2 = ((char*)((ng16)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB28;

LAB29:    t2 = ((char*)((ng17)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB30;

LAB31:    t2 = ((char*)((ng18)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB32;

LAB33:    t2 = ((char*)((ng19)));
    t21 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 32);
    if (t21 == 1)
        goto LAB34;

LAB35:
LAB37:
LAB36:    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);

LAB38:
LAB11:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB9:    xsi_set_current_line(113, ng0);
    t19 = ((char*)((ng2)));
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    goto LAB11;

LAB14:    xsi_set_current_line(116, ng0);
    t12 = ((char*)((ng2)));
    t13 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t13, t12, 0, 0, 1, 0LL);
    goto LAB38;

LAB16:    xsi_set_current_line(117, ng0);
    t3 = ((char*)((ng1)));
    t6 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    goto LAB38;

LAB18:    xsi_set_current_line(118, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 0);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 0);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB20:    xsi_set_current_line(119, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 1);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 1);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB22:    xsi_set_current_line(120, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 2);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 2);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB24:    xsi_set_current_line(121, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 3);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 3);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB26:    xsi_set_current_line(122, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 4);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 4);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB28:    xsi_set_current_line(123, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 5);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 5);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB30:    xsi_set_current_line(124, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 6);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 6);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB32:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 3480);
    t6 = (t3 + 56U);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t13 = (t4 + 4);
    t19 = (t12 + 4);
    t7 = *((unsigned int *)t12);
    t8 = (t7 >> 7);
    t9 = (t8 & 1);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t19);
    t11 = (t10 >> 7);
    t14 = (t11 & 1);
    *((unsigned int *)t13) = t14;
    t20 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);
    goto LAB38;

LAB34:    xsi_set_current_line(126, ng0);
    t3 = ((char*)((ng2)));
    t6 = (t0 + 2360);
    xsi_vlogvar_wait_assign_value(t6, t3, 0, 0, 1, 0LL);
    goto LAB38;

}


extern void work_m_00000000001827224203_3113203713_init()
{
	static char *pe[] = {(void *)Always_38_0,(void *)Always_48_1,(void *)Always_56_2,(void *)Always_71_3,(void *)Always_84_4,(void *)Always_93_5,(void *)Always_103_6,(void *)Always_111_7};
	xsi_register_didat("work_m_00000000001827224203_3113203713", "isim/ram_isim_beh.exe.sim/work/m_00000000001827224203_3113203713.didat");
	xsi_register_executes(pe);
}
