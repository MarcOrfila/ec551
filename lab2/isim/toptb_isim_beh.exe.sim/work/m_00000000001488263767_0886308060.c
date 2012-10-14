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
static const char *ng0 = "/home/hpw/Documents/EC551/lab2/ALU.v";
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



static void Cont_40_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    t1 = (t0 + 2440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1516U);
    t3 = *((char **)t2);
    t2 = (t0 + 2808);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 2756);
    *((int *)t16) = 1;

LAB1:    return;
}

static void Always_42_1(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
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
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 2576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2764);
    *((int *)t2) = 1;
    t3 = (t0 + 2600);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1240U);
    t5 = *((char **)t4);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 3);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1240U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB24:
LAB23:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 6);

LAB25:    goto LAB2;

LAB7:    xsi_set_current_line(45, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_add(t8, 6, t5, 3, t7, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 6);
    goto LAB25;

LAB9:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_minus(t8, 6, t5, 3, t7, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 6);
    goto LAB25;

LAB11:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_multiply(t8, 6, t5, 3, t7, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 6);
    goto LAB25;

LAB13:    xsi_set_current_line(48, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_arith_rshift(t8, 6, t5, 3, t7, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 6);
    goto LAB25;

LAB15:    xsi_set_current_line(49, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    xsi_vlog_unsigned_arith_lshift(t8, 6, t5, 3, t7, 3);
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t8, 0, 0, 6);
    goto LAB25;

LAB17:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t7 = *((char **)t4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t7);
    t11 = (t9 ^ t10);
    *((unsigned int *)t8) = t11;
    t4 = (t5 + 4);
    t12 = (t7 + 4);
    t13 = (t8 + 4);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t12);
    t16 = (t14 | t15);
    *((unsigned int *)t13) = t16;
    t17 = *((unsigned int *)t8);
    t18 = (~(t17));
    *((unsigned int *)t8) = t18;
    t19 = *((unsigned int *)t13);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB26;

LAB27:
LAB28:    t23 = *((unsigned int *)t8);
    *((unsigned int *)t8) = (t23 & 63U);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    *((unsigned int *)t24) = (t25 & 63U);
    t26 = (t0 + 1836);
    xsi_vlogvar_assign_value(t26, t8, 0, 0, 6);
    goto LAB25;

LAB19:    xsi_set_current_line(51, ng0);

LAB29:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1332U);
    t5 = *((char **)t4);
    t4 = (t0 + 1424U);
    t7 = *((char **)t4);
    memset(t8, 0, 8);
    t4 = (t5 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB31;

LAB30:    t12 = (t7 + 4);
    if (*((unsigned int *)t12) != 0)
        goto LAB31;

LAB34:    if (*((unsigned int *)t5) > *((unsigned int *)t7))
        goto LAB32;

LAB33:    t24 = (t8 + 4);
    t9 = *((unsigned int *)t24);
    t10 = (~(t9));
    t11 = *((unsigned int *)t8);
    t14 = (t11 & t10);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng9)));
    t4 = (t0 + 1836);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 6);

LAB37:    goto LAB25;

LAB21:    xsi_set_current_line(52, ng0);
    t4 = ((char*)((ng9)));
    t5 = (t0 + 1836);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 6);
    goto LAB25;

LAB26:    t21 = *((unsigned int *)t8);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t8) = (t21 | t22);
    goto LAB28;

LAB31:    t13 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t13) = 1;
    goto LAB33;

LAB32:    *((unsigned int *)t8) = 1;
    goto LAB33;

LAB35:    xsi_set_current_line(51, ng0);
    t26 = ((char*)((ng8)));
    t27 = (t0 + 1836);
    xsi_vlogvar_assign_value(t27, t26, 0, 0, 6);
    goto LAB37;

}


extern void work_m_00000000001488263767_0886308060_init()
{
	static char *pe[] = {(void *)Cont_40_0,(void *)Always_42_1};
	xsi_register_didat("work_m_00000000001488263767_0886308060", "isim/toptb_isim_beh.exe.sim/work/m_00000000001488263767_0886308060.didat");
	xsi_register_executes(pe);
}
