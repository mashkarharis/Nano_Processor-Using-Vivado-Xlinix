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
extern void execute_913(char*, char *);
extern void execute_914(char*, char *);
extern void execute_915(char*, char *);
extern void execute_916(char*, char *);
extern void execute_917(char*, char *);
extern void execute_918(char*, char *);
extern void execute_919(char*, char *);
extern void execute_920(char*, char *);
extern void execute_14(char*, char *);
extern void execute_22(char*, char *);
extern void execute_35(char*, char *);
extern void execute_30(char*, char *);
extern void execute_31(char*, char *);
extern void execute_54(char*, char *);
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
extern void execute_265(char*, char *);
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
extern void execute_259(char*, char *);
extern void execute_260(char*, char *);
extern void execute_261(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_282(char*, char *);
extern void execute_284(char*, char *);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_304(char*, char *);
extern void execute_305(char*, char *);
extern void execute_306(char*, char *);
extern void execute_307(char*, char *);
extern void execute_312(char*, char *);
extern void execute_313(char*, char *);
extern void execute_314(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void execute_317(char*, char *);
extern void execute_318(char*, char *);
extern void execute_319(char*, char *);
extern void execute_320(char*, char *);
extern void execute_321(char*, char *);
extern void execute_871(char*, char *);
extern void execute_872(char*, char *);
extern void execute_873(char*, char *);
extern void execute_874(char*, char *);
extern void execute_907(char*, char *);
extern void execute_908(char*, char *);
extern void execute_909(char*, char *);
extern void execute_910(char*, char *);
extern void execute_911(char*, char *);
extern void execute_912(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_8(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_19(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_24(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_25(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_26(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_27(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_30(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_31(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_256(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_257(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_259(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_270(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_271(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_287(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_298(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_336(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_347(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_385(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_396(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_407(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_418(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_434(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_445(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_456(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_467(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_483(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_494(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_505(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_516(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_554(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_565(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_581(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_592(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_603(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_614(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_630(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_641(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_652(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_663(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[134] = {(funcp)execute_913, (funcp)execute_914, (funcp)execute_915, (funcp)execute_916, (funcp)execute_917, (funcp)execute_918, (funcp)execute_919, (funcp)execute_920, (funcp)execute_14, (funcp)execute_22, (funcp)execute_35, (funcp)execute_30, (funcp)execute_31, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_272, (funcp)execute_273, (funcp)execute_274, (funcp)execute_275, (funcp)execute_259, (funcp)execute_260, (funcp)execute_261, (funcp)execute_262, (funcp)execute_263, (funcp)execute_264, (funcp)execute_277, (funcp)execute_278, (funcp)execute_279, (funcp)execute_280, (funcp)execute_282, (funcp)execute_284, (funcp)execute_300, (funcp)execute_301, (funcp)execute_302, (funcp)execute_303, (funcp)execute_304, (funcp)execute_305, (funcp)execute_306, (funcp)execute_307, (funcp)execute_312, (funcp)execute_313, (funcp)execute_314, (funcp)execute_315, (funcp)execute_316, (funcp)execute_317, (funcp)execute_318, (funcp)execute_319, (funcp)execute_320, (funcp)execute_321, (funcp)execute_871, (funcp)execute_872, (funcp)execute_873, (funcp)execute_874, (funcp)execute_907, (funcp)execute_908, (funcp)execute_909, (funcp)execute_910, (funcp)execute_911, (funcp)execute_912, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_8, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_16, (funcp)transaction_19, (funcp)transaction_24, (funcp)transaction_25, (funcp)transaction_26, (funcp)transaction_27, (funcp)transaction_28, (funcp)transaction_29, (funcp)transaction_30, (funcp)transaction_31, (funcp)transaction_63, (funcp)transaction_256, (funcp)transaction_257, (funcp)transaction_258, (funcp)transaction_259, (funcp)transaction_270, (funcp)transaction_271, (funcp)transaction_287, (funcp)transaction_298, (funcp)transaction_309, (funcp)transaction_320, (funcp)transaction_336, (funcp)transaction_347, (funcp)transaction_358, (funcp)transaction_369, (funcp)transaction_385, (funcp)transaction_396, (funcp)transaction_407, (funcp)transaction_418, (funcp)transaction_434, (funcp)transaction_445, (funcp)transaction_456, (funcp)transaction_467, (funcp)transaction_483, (funcp)transaction_494, (funcp)transaction_505, (funcp)transaction_516, (funcp)transaction_532, (funcp)transaction_543, (funcp)transaction_554, (funcp)transaction_565, (funcp)transaction_581, (funcp)transaction_592, (funcp)transaction_603, (funcp)transaction_614, (funcp)transaction_630, (funcp)transaction_641, (funcp)transaction_652, (funcp)transaction_663};
const int NumRelocateId= 134;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Micro_Processor_behav/xsim.reloc",  (void **)funcTab, 134);
	iki_vhdl_file_variable_register(dp + 188944);
	iki_vhdl_file_variable_register(dp + 189000);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Micro_Processor_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Micro_Processor_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/Micro_Processor_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Micro_Processor_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Micro_Processor_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
