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
static const char *ng0 = "/home/hpw/Documents/EC551/LAB2/lab2/lifo6_9.v";
static int ng1[] = {0, 0};
static int ng2[] = {5, 0};
static int ng3[] = {1, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};



static void Cont_39_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t29[8];
    char t30[8];
    char t35[8];
    char *t1;
    char *t2;
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
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;

LAB0:    t1 = (t0 + 2260U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;

LAB7:    memset(t4, 0, 8);
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t13) != 0)
        goto LAB10;

LAB11:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB12;

LAB13:    t25 = *((unsigned int *)t4);
    t26 = (~(t25));
    t27 = *((unsigned int *)t20);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t20) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t29, 8);

LAB20:    t68 = (t0 + 2772);
    t69 = (t68 + 32U);
    t70 = *((char **)t69);
    t71 = (t70 + 32U);
    t72 = *((char **)t71);
    memset(t72, 0, 8);
    t73 = 1U;
    t74 = t73;
    t75 = (t3 + 4);
    t76 = *((unsigned int *)t3);
    t73 = (t73 & t76);
    t77 = *((unsigned int *)t75);
    t74 = (t74 & t77);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t79 | t73);
    t80 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t80 | t74);
    xsi_driver_vfirst_trans(t68, 0, 0);
    t81 = (t0 + 2712);
    *((int *)t81) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB11;

LAB12:    t24 = ((char*)((ng1)));
    goto LAB13;

LAB14:    t31 = (t0 + 1748);
    t32 = (t31 + 36U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng2)));
    memset(t35, 0, 8);
    t36 = (t33 + 4);
    t37 = (t34 + 4);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = (t40 | t43);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t37);
    t47 = (t45 | t46);
    t48 = (~(t47));
    t49 = (t44 & t48);
    if (t49 != 0)
        goto LAB24;

LAB21:    if (t47 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t35) = 1;

LAB24:    memset(t30, 0, 8);
    t51 = (t35 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (~(t52));
    t54 = *((unsigned int *)t35);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t51) != 0)
        goto LAB27;

LAB28:    t58 = (t30 + 4);
    t59 = *((unsigned int *)t30);
    t60 = *((unsigned int *)t58);
    t61 = (t59 || t60);
    if (t61 > 0)
        goto LAB29;

LAB30:    t63 = *((unsigned int *)t30);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t58) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t30) > 0)
        goto LAB35;

LAB36:    memcpy(t29, t67, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t24, 32, t29, 32);
    goto LAB20;

LAB18:    memcpy(t3, t24, 8);
    goto LAB20;

LAB23:    t50 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t50) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t30) = 1;
    goto LAB28;

LAB27:    t57 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB28;

LAB29:    t62 = ((char*)((ng3)));
    goto LAB30;

LAB31:    t67 = ((char*)((ng1)));
    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t29, 32, t62, 32, t67, 32);
    goto LAB37;

LAB35:    memcpy(t29, t62, 8);
    goto LAB37;

}

static void Cont_40_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t5[8];
    char t29[8];
    char t30[8];
    char t35[8];
    char *t1;
    char *t2;
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
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;

LAB0:    t1 = (t0 + 2396U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 600U);
    t6 = *((char **)t2);
    memset(t5, 0, 8);
    t2 = (t6 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB7;

LAB5:    if (*((unsigned int *)t2) == 0)
        goto LAB4;

LAB6:    t12 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t12) = 1;

LAB7:    memset(t4, 0, 8);
    t13 = (t5 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t13) != 0)
        goto LAB10;

LAB11:    t20 = (t4 + 4);
    t21 = *((unsigned int *)t4);
    t22 = *((unsigned int *)t20);
    t23 = (t21 || t22);
    if (t23 > 0)
        goto LAB12;

LAB13:    t25 = *((unsigned int *)t4);
    t26 = (~(t25));
    t27 = *((unsigned int *)t20);
    t28 = (t26 || t27);
    if (t28 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t20) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t29, 8);

LAB20:    t68 = (t0 + 2808);
    t69 = (t68 + 32U);
    t70 = *((char **)t69);
    t71 = (t70 + 32U);
    t72 = *((char **)t71);
    memset(t72, 0, 8);
    t73 = 1U;
    t74 = t73;
    t75 = (t3 + 4);
    t76 = *((unsigned int *)t3);
    t73 = (t73 & t76);
    t77 = *((unsigned int *)t75);
    t74 = (t74 & t77);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t79 | t73);
    t80 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t80 | t74);
    xsi_driver_vfirst_trans(t68, 0, 0);
    t81 = (t0 + 2720);
    *((int *)t81) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t5) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB11;

LAB12:    t24 = ((char*)((ng3)));
    goto LAB13;

LAB14:    t31 = (t0 + 1748);
    t32 = (t31 + 36U);
    t33 = *((char **)t32);
    t34 = ((char*)((ng1)));
    memset(t35, 0, 8);
    t36 = (t33 + 4);
    t37 = (t34 + 4);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = (t40 | t43);
    t45 = *((unsigned int *)t36);
    t46 = *((unsigned int *)t37);
    t47 = (t45 | t46);
    t48 = (~(t47));
    t49 = (t44 & t48);
    if (t49 != 0)
        goto LAB24;

LAB21:    if (t47 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t35) = 1;

LAB24:    memset(t30, 0, 8);
    t51 = (t35 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (~(t52));
    t54 = *((unsigned int *)t35);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t51) != 0)
        goto LAB27;

LAB28:    t58 = (t30 + 4);
    t59 = *((unsigned int *)t30);
    t60 = *((unsigned int *)t58);
    t61 = (t59 || t60);
    if (t61 > 0)
        goto LAB29;

LAB30:    t63 = *((unsigned int *)t30);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t58) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t30) > 0)
        goto LAB35;

LAB36:    memcpy(t29, t67, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t24, 32, t29, 32);
    goto LAB20;

LAB18:    memcpy(t3, t24, 8);
    goto LAB20;

LAB23:    t50 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t50) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t30) = 1;
    goto LAB28;

LAB27:    t57 = (t30 + 4);
    *((unsigned int *)t30) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB28;

LAB29:    t62 = ((char*)((ng3)));
    goto LAB30;

LAB31:    t67 = ((char*)((ng1)));
    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t29, 32, t62, 32, t67, 32);
    goto LAB37;

LAB35:    memcpy(t29, t62, 8);
    goto LAB37;

}

static void Always_41_2(char *t0)
{
    char t4[8];
    char t21[8];
    char t22[8];
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
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    int t32;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    int t39;
    int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;

LAB0:    t1 = (t0 + 2532U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2728);
    *((int *)t2) = 1;
    t3 = (t0 + 2556);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(41, ng0);

LAB5:    xsi_set_current_line(42, ng0);
    t5 = (t0 + 600U);
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

LAB11:    xsi_set_current_line(57, ng0);

LAB38:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB39;

LAB40:    xsi_set_current_line(70, ng0);

LAB52:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB53;

LAB54:    xsi_set_current_line(80, ng0);

LAB70:
LAB55:
LAB41:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(42, ng0);

LAB13:    xsi_set_current_line(43, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 1564);
    t23 = (t0 + 1564);
    t24 = (t23 + 44U);
    t25 = *((char **)t24);
    t26 = (t0 + 1564);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    t29 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t21, t22, t25, t28, 2, 1, t29, 32, 1);
    t30 = (t21 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t22 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (!(t34));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    t5 = (t0 + 1564);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1564);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    t5 = (t0 + 1564);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1564);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    t5 = (t0 + 1564);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1564);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    t5 = (t0 + 1564);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1564);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1564);
    t5 = (t0 + 1564);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1564);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    t5 = (t0 + 1656);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1656);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng1)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    t5 = (t0 + 1656);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1656);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB28;

LAB29:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    t5 = (t0 + 1656);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1656);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB30;

LAB31:    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    t5 = (t0 + 1656);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1656);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB32;

LAB33:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    t5 = (t0 + 1656);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1656);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB34;

LAB35:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1656);
    t5 = (t0 + 1656);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1656);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t23, 32, 1);
    t24 = (t4 + 4);
    t7 = *((unsigned int *)t24);
    t32 = (!(t7));
    t25 = (t21 + 4);
    t8 = *((unsigned int *)t25);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB36;

LAB37:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB12;

LAB14:    t37 = *((unsigned int *)t21);
    t38 = *((unsigned int *)t22);
    t39 = (t37 - t38);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, *((unsigned int *)t22), t40, 0LL);
    goto LAB15;

LAB16:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB17;

LAB18:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB19;

LAB20:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB21;

LAB22:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB23;

LAB24:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB25;

LAB26:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB27;

LAB28:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB29;

LAB30:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB31;

LAB32:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB33;

LAB34:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB35;

LAB36:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB37;

LAB39:    xsi_set_current_line(58, ng0);

LAB42:    xsi_set_current_line(59, ng0);
    t5 = (t0 + 1748);
    t6 = (t5 + 36U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = *((unsigned int *)t13);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t19);
    t18 = *((unsigned int *)t20);
    t31 = (t17 ^ t18);
    t34 = (t16 | t31);
    t37 = *((unsigned int *)t19);
    t38 = *((unsigned int *)t20);
    t41 = (t37 | t38);
    t42 = (~(t41));
    t43 = (t34 & t42);
    if (t43 != 0)
        goto LAB46;

LAB43:    if (t41 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t4) = 1;

LAB46:    t24 = (t4 + 4);
    t44 = *((unsigned int *)t24);
    t45 = (~(t44));
    t46 = *((unsigned int *)t4);
    t47 = (t46 & t45);
    t48 = (t47 != 0);
    if (t48 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(64, ng0);

LAB51:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1564);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1564);
    t12 = (t6 + 44U);
    t13 = *((char **)t12);
    t19 = (t0 + 1564);
    t20 = (t19 + 40U);
    t23 = *((char **)t20);
    t24 = (t0 + 1748);
    t25 = (t24 + 36U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t4, 6, t5, t13, t23, 2, 1, t26, 1, 2);
    t27 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t27, t4, 0, 0, 6, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = (t0 + 1656);
    t12 = (t6 + 44U);
    t13 = *((char **)t12);
    t19 = (t0 + 1656);
    t20 = (t19 + 40U);
    t23 = *((char **)t20);
    t24 = (t0 + 1748);
    t25 = (t24 + 36U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t4, 3, t5, t13, t23, 2, 1, t26, 1, 2);
    t27 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t27, t4, 0, 0, 3, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1748);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 32, t5, 1, t6, 32);
    t12 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 1, 0LL);

LAB49:    goto LAB41;

LAB45:    t23 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB46;

LAB47:    xsi_set_current_line(59, ng0);

LAB50:    xsi_set_current_line(61, ng0);
    t25 = ((char*)((ng1)));
    t26 = (t0 + 1380);
    xsi_vlogvar_wait_assign_value(t26, t25, 0, 0, 6, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1472);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    goto LAB49;

LAB53:    xsi_set_current_line(71, ng0);

LAB56:    xsi_set_current_line(72, ng0);
    t5 = (t0 + 1748);
    t6 = (t5 + 36U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t19 = (t12 + 4);
    t20 = (t13 + 4);
    t14 = *((unsigned int *)t12);
    t15 = *((unsigned int *)t13);
    t16 = (t14 ^ t15);
    t17 = *((unsigned int *)t19);
    t18 = *((unsigned int *)t20);
    t31 = (t17 ^ t18);
    t34 = (t16 | t31);
    t37 = *((unsigned int *)t19);
    t38 = *((unsigned int *)t20);
    t41 = (t37 | t38);
    t42 = (~(t41));
    t43 = (t34 & t42);
    if (t43 != 0)
        goto LAB60;

LAB57:    if (t41 != 0)
        goto LAB59;

LAB58:    *((unsigned int *)t4) = 1;

LAB60:    t24 = (t4 + 4);
    t44 = *((unsigned int *)t24);
    t45 = (~(t44));
    t46 = *((unsigned int *)t4);
    t47 = (t46 & t45);
    t48 = (t47 != 0);
    if (t48 > 0)
        goto LAB61;

LAB62:    xsi_set_current_line(74, ng0);

LAB65:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t0 + 1564);
    t5 = (t0 + 1564);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1564);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = (t0 + 1748);
    t24 = (t23 + 36U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng3)));
    memset(t22, 0, 8);
    xsi_vlog_unsigned_add(t22, 32, t25, 1, t26, 32);
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t22, 32, 2);
    t27 = (t4 + 4);
    t7 = *((unsigned int *)t27);
    t32 = (!(t7));
    t28 = (t21 + 4);
    t8 = *((unsigned int *)t28);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB66;

LAB67:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);
    t2 = (t0 + 1656);
    t5 = (t0 + 1656);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = (t0 + 1656);
    t19 = (t13 + 40U);
    t20 = *((char **)t19);
    t23 = (t0 + 1748);
    t24 = (t23 + 36U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng3)));
    memset(t22, 0, 8);
    xsi_vlog_unsigned_add(t22, 32, t25, 1, t26, 32);
    xsi_vlog_generic_convert_array_indices(t4, t21, t12, t20, 2, 1, t22, 32, 2);
    t27 = (t4 + 4);
    t7 = *((unsigned int *)t27);
    t32 = (!(t7));
    t28 = (t21 + 4);
    t8 = *((unsigned int *)t28);
    t35 = (!(t8));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB68;

LAB69:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1748);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 1, t6, 32);
    t12 = (t0 + 1748);
    xsi_vlogvar_wait_assign_value(t12, t4, 0, 0, 1, 0LL);

LAB63:    goto LAB55;

LAB59:    t23 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB60;

LAB61:    xsi_set_current_line(72, ng0);

LAB64:    goto LAB63;

LAB66:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB67;

LAB68:    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t21);
    t39 = (t9 - t10);
    t40 = (t39 + 1);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, *((unsigned int *)t21), t40, 0LL);
    goto LAB69;

}


extern void work_m_00000000001507397526_2445112196_init()
{
	static char *pe[] = {(void *)Cont_39_0,(void *)Cont_40_1,(void *)Always_41_2};
	xsi_register_didat("work_m_00000000001507397526_2445112196", "isim/toptb_isim_beh.exe.sim/work/m_00000000001507397526_2445112196.didat");
	xsi_register_executes(pe);
}
