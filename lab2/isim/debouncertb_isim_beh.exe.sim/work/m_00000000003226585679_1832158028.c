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
static const char *ng0 = "/home/hpw/Documents/EC551/lab2/debouncer.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};



static void Always_20_0(char *t0)
{
    char t4[8];
    char t32[8];
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
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;

LAB0:    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 2152);
    *((int *)t2) = 1;
    t3 = (t0 + 1996);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(20, ng0);

LAB5:    xsi_set_current_line(21, ng0);
    t5 = (t0 + 680U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(22, ng0);

LAB14:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 864U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t5);
    t17 = *((unsigned int *)t6);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t4) = 1;

LAB18:    t13 = (t4 + 4);
    t23 = *((unsigned int *)t13);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB19;

LAB20:    xsi_set_current_line(38, ng0);

LAB50:    xsi_set_current_line(39, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1276);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 26, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1460);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1092);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1184);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 264);
    t12 = *((char **)t6);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t13 = (t12 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t12);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t6);
    t11 = *((unsigned int *)t13);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t6);
    t17 = *((unsigned int *)t13);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB54;

LAB51:    if (t18 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t4) = 1;

LAB54:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(44, ng0);

LAB59:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1184);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 26, t6, 32);
    t12 = (t0 + 1184);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 26, 0LL);

LAB57:
LAB21:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(21, ng0);

LAB13:    xsi_set_current_line(21, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 1184);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 26, 0LL);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1276);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 26, 0LL);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1092);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1368);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(21, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1460);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB17:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB18;

LAB19:    xsi_set_current_line(23, ng0);

LAB22:    xsi_set_current_line(24, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 1184);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 26, 0LL);
    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1368);
    t3 = (t2 + 36U);
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
        goto LAB26;

LAB23:    if (t18 != 0)
        goto LAB25;

LAB24:    *((unsigned int *)t4) = 1;

LAB26:    t20 = (t4 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(36, ng0);

LAB49:
LAB29:    goto LAB21;

LAB25:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB26;

LAB27:    xsi_set_current_line(25, ng0);

LAB30:    xsi_set_current_line(26, ng0);
    t28 = (t0 + 1460);
    t29 = (t28 + 36U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng2)));
    memset(t32, 0, 8);
    t33 = (t30 + 4);
    t34 = (t31 + 4);
    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t31);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB34;

LAB31:    if (t44 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t32) = 1;

LAB34:    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(29, ng0);

LAB39:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1276);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 264);
    t12 = *((char **)t6);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 32, t12, 32, t6, 32);
    memset(t32, 0, 8);
    t13 = (t5 + 4);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t4);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t13);
    t11 = *((unsigned int *)t19);
    t14 = (t10 ^ t11);
    t15 = (t9 | t14);
    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t19);
    t18 = (t16 | t17);
    t21 = (~(t18));
    t22 = (t15 & t21);
    if (t22 != 0)
        goto LAB43;

LAB40:    if (t18 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t32) = 1;

LAB43:    t28 = (t32 + 4);
    t23 = *((unsigned int *)t28);
    t24 = (~(t23));
    t25 = *((unsigned int *)t32);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB44;

LAB45:    xsi_set_current_line(32, ng0);

LAB48:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1276);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 26, t6, 32);
    t12 = (t0 + 1276);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 26, 0LL);

LAB46:
LAB37:    goto LAB29;

LAB33:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(26, ng0);

LAB38:    xsi_set_current_line(27, ng0);
    t54 = ((char*)((ng2)));
    t55 = (t0 + 1092);
    xsi_vlogvar_wait_assign_value(t55, t54, 0, 0, 1, 0LL);
    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1460);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB37;

LAB42:    t20 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB43;

LAB44:    xsi_set_current_line(30, ng0);

LAB47:    xsi_set_current_line(31, ng0);
    t29 = ((char*)((ng2)));
    t30 = (t0 + 1460);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 1, 0LL);
    goto LAB46;

LAB53:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB54;

LAB55:    xsi_set_current_line(42, ng0);

LAB58:    xsi_set_current_line(43, ng0);
    t28 = ((char*)((ng2)));
    t29 = (t0 + 1368);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 1, 0LL);
    goto LAB57;

}


extern void work_m_00000000003226585679_1832158028_init()
{
	static char *pe[] = {(void *)Always_20_0};
	xsi_register_didat("work_m_00000000003226585679_1832158028", "isim/debouncertb_isim_beh.exe.sim/work/m_00000000003226585679_1832158028.didat");
	xsi_register_executes(pe);
}
