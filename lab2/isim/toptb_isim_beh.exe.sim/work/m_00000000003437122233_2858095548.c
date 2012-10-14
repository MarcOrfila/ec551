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
static const char *ng0 = "/home/hpw/Documents/EC551/lab2/clkdiv.v";
static int ng1[] = {0, 0};
static int ng2[] = {150000, 0};
static int ng3[] = {1, 0};



static void Always_29_0(char *t0)
{
    char t4[8];
    char t21[8];
    char t22[8];
    char t44[8];
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
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t45;
    unsigned int t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;

LAB0:    t1 = (t0 + 1524U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1704);
    *((int *)t2) = 1;
    t3 = (t0 + 1548);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
    t5 = (t0 + 692U);
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

LAB11:    xsi_set_current_line(30, ng0);

LAB14:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t22, 0, 8);
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
    t23 = (~(t18));
    t24 = (t15 & t23);
    if (t24 != 0)
        goto LAB18;

LAB15:    if (t18 != 0)
        goto LAB17;

LAB16:    *((unsigned int *)t22) = 1;

LAB18:    memset(t21, 0, 8);
    t20 = (t22 + 4);
    t25 = *((unsigned int *)t20);
    t26 = (~(t25));
    t27 = *((unsigned int *)t22);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t20) != 0)
        goto LAB21;

LAB22:    t31 = (t21 + 4);
    t32 = *((unsigned int *)t21);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB23;

LAB24:    t36 = *((unsigned int *)t21);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t31) > 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t21) > 0)
        goto LAB29;

LAB30:    memcpy(t4, t44, 8);

LAB31:    t45 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t45, t4, 0, 0, 18, 0LL);
    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng2)));
    memset(t22, 0, 8);
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
    t23 = (~(t18));
    t24 = (t15 & t23);
    if (t24 != 0)
        goto LAB35;

LAB32:    if (t18 != 0)
        goto LAB34;

LAB33:    *((unsigned int *)t22) = 1;

LAB35:    memset(t21, 0, 8);
    t20 = (t22 + 4);
    t25 = *((unsigned int *)t20);
    t26 = (~(t25));
    t27 = *((unsigned int *)t22);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB36;

LAB37:    if (*((unsigned int *)t20) != 0)
        goto LAB38;

LAB39:    t31 = (t21 + 4);
    t32 = *((unsigned int *)t21);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB40;

LAB41:    t56 = *((unsigned int *)t21);
    t57 = (~(t56));
    t58 = *((unsigned int *)t31);
    t59 = (t57 || t58);
    if (t59 > 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t31) > 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t21) > 0)
        goto LAB46;

LAB47:    memcpy(t4, t62, 8);

LAB48:    t63 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t63, t4, 0, 0, 1, 0LL);

LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(30, ng0);

LAB13:    xsi_set_current_line(30, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 1012);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 18, 0LL);
    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 920);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB17:    t19 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB18;

LAB19:    *((unsigned int *)t21) = 1;
    goto LAB22;

LAB21:    t30 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB22;

LAB23:    t35 = ((char*)((ng1)));
    goto LAB24;

LAB25:    t40 = (t0 + 1012);
    t41 = (t40 + 36U);
    t42 = *((char **)t41);
    t43 = ((char*)((ng3)));
    memset(t44, 0, 8);
    xsi_vlog_unsigned_add(t44, 32, t42, 18, t43, 32);
    goto LAB26;

LAB27:    xsi_vlog_unsigned_bit_combine(t4, 32, t35, 32, t44, 32);
    goto LAB31;

LAB29:    memcpy(t4, t35, 8);
    goto LAB31;

LAB34:    t19 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB35;

LAB36:    *((unsigned int *)t21) = 1;
    goto LAB39;

LAB38:    t30 = (t21 + 4);
    *((unsigned int *)t21) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB39;

LAB40:    t35 = (t0 + 920);
    t40 = (t35 + 36U);
    t41 = *((char **)t40);
    memset(t44, 0, 8);
    t42 = (t41 + 4);
    t36 = *((unsigned int *)t42);
    t37 = (~(t36));
    t38 = *((unsigned int *)t41);
    t39 = (t38 & t37);
    t46 = (t39 & 1U);
    if (t46 != 0)
        goto LAB52;

LAB50:    if (*((unsigned int *)t42) == 0)
        goto LAB49;

LAB51:    t43 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t43) = 1;

LAB52:    t45 = (t44 + 4);
    t47 = (t41 + 4);
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    *((unsigned int *)t44) = t49;
    *((unsigned int *)t45) = 0;
    if (*((unsigned int *)t47) != 0)
        goto LAB54;

LAB53:    t54 = *((unsigned int *)t44);
    *((unsigned int *)t44) = (t54 & 1U);
    t55 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t55 & 1U);
    goto LAB41;

LAB42:    t60 = (t0 + 920);
    t61 = (t60 + 36U);
    t62 = *((char **)t61);
    goto LAB43;

LAB44:    xsi_vlog_unsigned_bit_combine(t4, 1, t44, 1, t62, 1);
    goto LAB48;

LAB46:    memcpy(t4, t44, 8);
    goto LAB48;

LAB49:    *((unsigned int *)t44) = 1;
    goto LAB52;

LAB54:    t50 = *((unsigned int *)t44);
    t51 = *((unsigned int *)t47);
    *((unsigned int *)t44) = (t50 | t51);
    t52 = *((unsigned int *)t45);
    t53 = *((unsigned int *)t47);
    *((unsigned int *)t45) = (t52 | t53);
    goto LAB53;

}


extern void work_m_00000000003437122233_2858095548_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000003437122233_2858095548", "isim/toptb_isim_beh.exe.sim/work/m_00000000003437122233_2858095548.didat");
	xsi_register_executes(pe);
}
