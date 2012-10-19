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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/hpw/Documents/EC551/LAB2/lab2/ALU.v";
static unsigned int ng1[] = {1U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {3U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {6U, 0U};
static unsigned int ng7[] = {7U, 0U};
static int ng8[] = {1, 0};
static int ng9[] = {0, 0};
static unsigned int ng10[] = {0U, 0U};



static void Always_42_0(char *t0)
{
    char t13[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    int t11;
    char *t12;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 2532U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2712);
    *((int *)t2) = 1;
    t3 = (t0 + 2556);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1516U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(44, ng0);

LAB10:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1240U);
    t3 = *((char **)t2);
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 3);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1240U);
    t3 = *((char **)t2);

LAB11:    t2 = ((char*)((ng1)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng2)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB14;

LAB15:    t2 = ((char*)((ng3)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng4)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng5)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB20;

LAB21:    t2 = ((char*)((ng6)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB22;

LAB23:    t2 = ((char*)((ng7)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB24;

LAB25:    t2 = ((char*)((ng10)));
    t11 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t11 == 1)
        goto LAB26;

LAB27:
LAB29:
LAB28:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 6);

LAB30:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1608U);
    t4 = *((char **)t2);
    t2 = (t0 + 2020);
    xsi_vlogvar_assign_value(t2, t4, 0, 0, 1);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(43, ng0);

LAB9:    goto LAB8;

LAB12:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t12 = *((char **)t4);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 6, t5, 3, t12, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t13, 0, 0, 6);
    goto LAB30;

LAB14:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t12 = *((char **)t4);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 6, t5, 3, t12, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t13, 0, 0, 6);
    goto LAB30;

LAB16:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t12 = *((char **)t4);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_multiply(t13, 6, t5, 3, t12, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t13, 0, 0, 6);
    goto LAB30;

LAB18:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t12 = *((char **)t4);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_arith_rshift(t13, 6, t5, 3, t12, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t13, 0, 0, 6);
    goto LAB30;

LAB20:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t12 = *((char **)t4);
    memset(t13, 0, 8);
    xsi_vlog_unsigned_arith_lshift(t13, 6, t5, 3, t12, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t13, 0, 0, 6);
    goto LAB30;

LAB22:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t12 = *((char **)t4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t12);
    t8 = (t6 ^ t7);
    *((unsigned int *)t13) = t8;
    t4 = (t5 + 4);
    t14 = (t12 + 4);
    t15 = (t13 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t14);
    t16 = (t9 | t10);
    *((unsigned int *)t15) = t16;
    t17 = *((unsigned int *)t13);
    t18 = (~(t17));
    *((unsigned int *)t13) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB31;

LAB32:
LAB33:    t23 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t23 & 63U);
    t24 = (t13 + 4);
    t25 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t25 & 63U);
    t26 = (t0 + 1836);
    xsi_vlogvar_assign_value(t26, t13, 0, 0, 6);
    goto LAB30;

LAB24:    xsi_set_current_line(53, ng0);

LAB34:    xsi_set_current_line(53, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t12 = *((char **)t4);
    memset(t13, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB36;

LAB35:    t14 = (t12 + 4);
    if (*((unsigned int *)t14) != 0)
        goto LAB36;

LAB39:    if (*((unsigned int *)t5) > *((unsigned int *)t12))
        goto LAB37;

LAB38:    t24 = (t13 + 4);
    t6 = *((unsigned int *)t24);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 6);

LAB42:    goto LAB30;

LAB26:    xsi_set_current_line(54, ng0);
    t4 = ((char*)((ng9)));
    t5 = (t0 + 1836);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 6);
    goto LAB30;

LAB31:    t21 = *((unsigned int *)t13);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t13) = (t21 | t22);
    goto LAB33;

LAB36:    t15 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB38;

LAB37:    *((unsigned int *)t13) = 1;
    goto LAB38;

LAB40:    xsi_set_current_line(53, ng0);
    t26 = ((char*)((ng8)));
    t27 = (t0 + 1836);
    xsi_vlogvar_assign_value(t27, t26, 0, 0, 6);
    goto LAB42;

}


extern void work_m_00000000002872885239_0886308060_init()
{
	static char *pe[] = {(void *)Always_42_0};
	xsi_register_didat("work_m_00000000002872885239_0886308060", "isim/toptb_isim_beh.exe.sim/work/m_00000000002872885239_0886308060.didat");
	xsi_register_executes(pe);
}
