; ModuleID = '/home/cedric/Documents/Cours_2A/Toto/Projet_avance_SE/HLS/sc_loop/nexys4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ssdm_ins_Conversion_4 = constant i1 false
@ssdm_ins_Conversion_3 = constant i8 0
@ssdm_ins_Conversion_1 = constant i1 false
@ssdm_ins_Conversion_s = constant i8 0
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@Conversion_ssdm_thread_M_do_conversion = external global i1
@p_str9 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@p_str7 = private unnamed_addr constant [15 x i8] c"__ssdm_reset__\00", align 1
@p_str6 = private unnamed_addr constant [14 x i8] c"do_conversion\00", align 1
@p_str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@p_str2 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@p_str13 = private unnamed_addr constant [16 x i8] c"\22unsigned char\22\00", align 1
@p_str10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"\22bool\22\00", align 1
@p_str = private unnamed_addr constant [11 x i8] c"Conversion\00", align 1

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecStateEnd(...) nounwind {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecStateBegin(...) nounwind {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecSensitive(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecProtocol(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDef(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecProcessDecl(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPort(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_5 = trunc i8 %empty to i7
  ret i7 %empty_5
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_6 = zext i1 %1 to i8
  %empty_7 = shl i8 %empty, 1
  %empty_8 = or i8 %empty_7, %empty_6
  ret i8 %empty_8
}

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i8 @_autotb_FifoRead_i8(i8*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define void @"Conversion::do_conversion"(i1* %clk, i1* %reset, i8* %e, i8* %s) {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clk), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !57
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [4 x i8]* @p_str2, i32 0, i32 0, i1* %clk) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecProcessDef([11 x i8]* @p_str, i32 2, [14 x i8]* @p_str6) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecProtocol(i32 1, [1 x i8]* @p_str5) nounwind
  %p_ssdm_reset_v = call i32 (...)* @_ssdm_op_SpecStateBegin(i32 0, i32 0, i32 1) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecStateEnd(i32 %p_ssdm_reset_v) nounwind
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str7, i32 %tmp_1)
  br label %1

; <label>:1                                       ; preds = %1, %0
  %tmp_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %e)
  %tmp = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %tmp_3, i32 1, i32 7)
  %x = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp, i1 false)
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %s, i8 %x)
  br label %1
}

define weak void @"Conversion::Conversion"(i1* %clk, i1* %reset, i8* %e, i8* %s) {
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %clk), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %reset), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %e), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %s), !map !57
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str5, i32 4, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPort([1 x i8]* @p_str5, i32 5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i8* %s) nounwind
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @p_str, [11 x i8]* @p_str) nounwind
  %Conversion_ssdm_t = load i1* @Conversion_ssdm_thread_M_do_conversion, align 1
  br i1 %Conversion_ssdm_t, label %1, label %2

; <label>:1                                       ; preds = %0
  call void @"Conversion::do_conversion"(i1* %clk, i1* %reset, i8* %e, i8* %s)
  unreachable

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecProcessDecl([11 x i8]* @p_str, i32 2, [14 x i8]* @p_str6) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([14 x i8]* @p_str6, [4 x i8]* @p_str2, i1* %clk, i32 1) nounwind
  call void (...)* @_ssdm_op_SpecSensitive([14 x i8]* @p_str6, [6 x i8]* @p_str3, i1* %reset, i32 3) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [4 x i8]* @p_str2, i32 0, i32 0, i1* %clk) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str, i32 0, [7 x i8]* @p_str1, [6 x i8]* @p_str3, i32 0, i32 0, i1* %reset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %e, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str, i32 4, [16 x i8]* @p_str13, [2 x i8]* @p_str9, i32 0, i32 0, i8* %e) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %s, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5, [1 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str5, [1 x i8]* @p_str5) nounwind
  call void (...)* @_ssdm_op_SpecPort([11 x i8]* @p_str, i32 5, [16 x i8]* @p_str13, [2 x i8]* @p_str10, i32 0, i32 0, i8* %s) nounwind
  ret void
}

!opencl.kernels = !{!0, !7, !13, !15, !0, !0, !21, !24, !24, !29, !29, !0, !0, !0, !31, !31, !0, !0, !0, !0, !0, !31, !31, !0, !0, !0, !0, !0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!33, !40}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space"}
!2 = metadata !{metadata !"kernel_arg_access_qual"}
!3 = metadata !{metadata !"kernel_arg_type"}
!4 = metadata !{metadata !"kernel_arg_type_qual"}
!5 = metadata !{metadata !"kernel_arg_name"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"t"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"volatile uchar &", metadata !"const uchar &"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"P", metadata !"val"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"volatile uchar &"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"P"}
!24 = metadata !{null, metadata !25, metadata !9, metadata !26, metadata !27, metadata !28, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"char*"}
!27 = metadata !{metadata !"kernel_arg_type_qual", metadata !"const"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !""}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !28, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"::sc_core::sc_module_name"}
!31 = metadata !{null, metadata !25, metadata !9, metadata !26, metadata !27, metadata !32, metadata !6}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"name_"}
!33 = metadata !{metadata !34, [1 x i32]* @llvm_global_ctors_0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"llvm.global_ctors.0", metadata !38, metadata !"", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 1}
!40 = metadata !{metadata !41, i1* @Conversion_ssdm_thread_M_do_conversion}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"Conversion::__ssdm_thread_M_do_conversion", metadata !38, metadata !"bool", i32 0, i32 0}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"Conversion.clk.m_if.Val", metadata !38, metadata !"bool", i32 0, i32 0}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"Conversion.reset.m_if.Val", metadata !38, metadata !"bool", i32 0, i32 0}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 7, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"Conversion.e.m_if.Val", metadata !38, metadata !"unsigned char", i32 0, i32 7}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 7, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"Conversion.s.m_if.Val", metadata !38, metadata !"unsigned char", i32 0, i32 7}
