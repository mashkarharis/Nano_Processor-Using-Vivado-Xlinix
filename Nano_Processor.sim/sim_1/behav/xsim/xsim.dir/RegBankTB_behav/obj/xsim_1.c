/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_460(char*, char *);
extern void execute_461(char*, char *);
extern void execute_12(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_39(char*, char *);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_64(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_140(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_151(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_189(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_200(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_211(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_227(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_238(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_249(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_260(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_276(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_298(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_347(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_385(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_396(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[64] = {(funcp)execute_460, (funcp)execute_461, (funcp)execute_12, (funcp)execute_28, (funcp)execute_29, (funcp)execute_30, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_20, (funcp)execute_40, (funcp)execute_41, (funcp)execute_42, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_39, (funcp)transaction_2, (funcp)transaction_14, (funcp)transaction_15, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_31, (funcp)transaction_42, (funcp)transaction_53, (funcp)transaction_64, (funcp)transaction_80, (funcp)transaction_91, (funcp)transaction_102, (funcp)transaction_113, (funcp)transaction_129, (funcp)transaction_140, (funcp)transaction_151, (funcp)transaction_162, (funcp)transaction_178, (funcp)transaction_189, (funcp)transaction_200, (funcp)transaction_211, (funcp)transaction_227, (funcp)transaction_238, (funcp)transaction_249, (funcp)transaction_260, (funcp)transaction_276, (funcp)transaction_287, (funcp)transaction_298, (funcp)transaction_309, (funcp)transaction_325, (funcp)transaction_336, (funcp)transaction_347, (funcp)transaction_358, (funcp)transaction_374, (funcp)transaction_385, (funcp)transaction_396, (funcp)transaction_407};
const int NumRelocateId= 64;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/RegBankTB_behav/xsim.reloc",  (void **)funcTab, 64);
	iki_vhdl_file_variable_register(dp + 92776);
	iki_vhdl_file_variable_register(dp + 92832);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/RegBankTB_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/RegBankTB_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/RegBankTB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/RegBankTB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/RegBankTB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
