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
extern void execute_930(char*, char *);
extern void execute_931(char*, char *);
extern void execute_920(char*, char *);
extern void execute_921(char*, char *);
extern void execute_922(char*, char *);
extern void execute_923(char*, char *);
extern void execute_924(char*, char *);
extern void execute_925(char*, char *);
extern void execute_926(char*, char *);
extern void execute_927(char*, char *);
extern void execute_928(char*, char *);
extern void execute_929(char*, char *);
extern void execute_15(char*, char *);
extern void execute_23(char*, char *);
extern void execute_36(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_272(char*, char *);
extern void execute_273(char*, char *);
extern void execute_274(char*, char *);
extern void execute_275(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_260(char*, char *);
extern void execute_261(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_289(char*, char *);
extern void execute_291(char*, char *);
extern void execute_307(char*, char *);
extern void execute_308(char*, char *);
extern void execute_309(char*, char *);
extern void execute_310(char*, char *);
extern void execute_311(char*, char *);
extern void execute_312(char*, char *);
extern void execute_313(char*, char *);
extern void execute_314(char*, char *);
extern void execute_319(char*, char *);
extern void execute_320(char*, char *);
extern void execute_321(char*, char *);
extern void execute_322(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_878(char*, char *);
extern void execute_879(char*, char *);
extern void execute_880(char*, char *);
extern void execute_881(char*, char *);
extern void execute_914(char*, char *);
extern void execute_915(char*, char *);
extern void execute_916(char*, char *);
extern void execute_917(char*, char *);
extern void execute_918(char*, char *);
extern void execute_919(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_27(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_259(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_260(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_261(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_275(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_291(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_302(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_313(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_324(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_340(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_351(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_362(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_373(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_389(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_411(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_422(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_438(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_460(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_471(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_487(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_498(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_509(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_520(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_536(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_547(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_558(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_569(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_585(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_596(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_607(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_618(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_634(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_645(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_656(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[144] = {(funcp)execute_930, (funcp)execute_931, (funcp)execute_920, (funcp)execute_921, (funcp)execute_922, (funcp)execute_923, (funcp)execute_924, (funcp)execute_925, (funcp)execute_926, (funcp)execute_927, (funcp)execute_928, (funcp)execute_929, (funcp)execute_15, (funcp)execute_23, (funcp)execute_36, (funcp)execute_31, (funcp)execute_32, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_272, (funcp)execute_273, (funcp)execute_274, (funcp)execute_275, (funcp)execute_276, (funcp)execute_277, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_260, (funcp)execute_261, (funcp)execute_262, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_289, (funcp)execute_291, (funcp)execute_307, (funcp)execute_308, (funcp)execute_309, (funcp)execute_310, (funcp)execute_311, (funcp)execute_312, (funcp)execute_313, (funcp)execute_314, (funcp)execute_319, (funcp)execute_320, (funcp)execute_321, (funcp)execute_322, (funcp)execute_323, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_328, (funcp)execute_878, (funcp)execute_879, (funcp)execute_880, (funcp)execute_881, (funcp)execute_914, (funcp)execute_915, (funcp)execute_916, (funcp)execute_917, (funcp)execute_918, (funcp)execute_919, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_7, (funcp)transaction_10, (funcp)transaction_15, (funcp)transaction_16, (funcp)transaction_18, (funcp)transaction_21, (funcp)transaction_26, (funcp)transaction_27, (funcp)transaction_28, (funcp)transaction_29, (funcp)transaction_30, (funcp)transaction_31, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_65, (funcp)transaction_258, (funcp)transaction_259, (funcp)transaction_260, (funcp)transaction_261, (funcp)transaction_274, (funcp)transaction_275, (funcp)transaction_291, (funcp)transaction_302, (funcp)transaction_313, (funcp)transaction_324, (funcp)transaction_340, (funcp)transaction_351, (funcp)transaction_362, (funcp)transaction_373, (funcp)transaction_389, (funcp)transaction_400, (funcp)transaction_411, (funcp)transaction_422, (funcp)transaction_438, (funcp)transaction_449, (funcp)transaction_460, (funcp)transaction_471, (funcp)transaction_487, (funcp)transaction_498, (funcp)transaction_509, (funcp)transaction_520, (funcp)transaction_536, (funcp)transaction_547, (funcp)transaction_558, (funcp)transaction_569, (funcp)transaction_585, (funcp)transaction_596, (funcp)transaction_607, (funcp)transaction_618, (funcp)transaction_634, (funcp)transaction_645, (funcp)transaction_656, (funcp)transaction_667};
const int NumRelocateId= 144;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/TB_Micro_Processor_behav/xsim.reloc",  (void **)funcTab, 144);
	iki_vhdl_file_variable_register(dp + 190096);
	iki_vhdl_file_variable_register(dp + 190152);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/TB_Micro_Processor_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/TB_Micro_Processor_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/TB_Micro_Processor_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/TB_Micro_Processor_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/TB_Micro_Processor_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
