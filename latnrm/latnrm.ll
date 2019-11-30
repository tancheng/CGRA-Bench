; ModuleID = 'latnrm.bc'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@coefficient = global [16 x float] [float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 0x3FC99999A0000000, float 0x3FCC28F5C0000000, float 0x4002666660000000, float 0x4000CCCCC0000000, float 0x3FDEB851E0000000, float 0x3FD1EB8520000000, float 0xC003333340000000, float 0x4016666660000000], align 16
@internal_state = global [16 x float] [float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 0x3FC99999A0000000, float 0x3FCC28F5C0000000, float 0x4002666660000000, float 0x4000CCCCC0000000, float 0x3FDEB851E0000000, float 0x3FD1EB8520000000, float 0xC003333340000000, float 0x4016666660000000], align 16
@input = common global float 0.000000e+00, align 4
@output = common global float 0.000000e+00, align 4

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
  %1 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @input_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull @input, i32 1, i32 0) #3
  %2 = load float, float* @input, align 4, !tbaa !2
  %q_coef.03.i = load float, float* getelementptr inbounds ([16 x float], [16 x float]* @coefficient, i64 0, i64 0), align 16, !tbaa !2
  br label %3

; <label>:3                                       ; preds = %3, %0
  %indvars.iv11.i = phi i64 [ 0, %0 ], [ %indvars.iv.next12.i, %3 ]
  %q_coef.07.i = phi float [ %q_coef.03.i, %0 ], [ %q_coef.0.i, %3 ]
  %top.05.i = phi float [ %2, %0 ], [ %11, %3 ]
  %bottom.04.i = phi float [ undef, %0 ], [ %14, %3 ]
  %4 = shl nsw i64 %indvars.iv11.i, 1
  %5 = getelementptr inbounds [16 x float], [16 x float]* @coefficient, i64 0, i64 %4
  %6 = load float, float* %5, align 8, !tbaa !2
  %7 = getelementptr inbounds [16 x float], [16 x float]* @internal_state, i64 0, i64 %indvars.iv11.i
  %8 = load float, float* %7, align 4, !tbaa !2
  store float %bottom.04.i, float* %7, align 4, !tbaa !2
  %9 = fmul float %q_coef.07.i, %top.05.i
  %10 = fmul float %6, %8
  %11 = fsub float %9, %10
  %12 = fmul float %q_coef.07.i, %8
  %13 = fmul float %top.05.i, %6
  %14 = fadd float %13, %12
  %15 = or i64 %4, 1
  %16 = getelementptr inbounds [16 x float], [16 x float]* @coefficient, i64 0, i64 %15
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %q_coef.0.i = load float, float* %16, align 4, !tbaa !2
  %exitcond13.i = icmp eq i64 %indvars.iv.next12.i, 8
  br i1 %exitcond13.i, label %17, label %3

; <label>:17                                      ; preds = %3
  store float %14, float* getelementptr inbounds ([16 x float], [16 x float]* @internal_state, i64 0, i64 8), align 16, !tbaa !2
  store float %11, float* getelementptr inbounds ([16 x float], [16 x float]* @internal_state, i64 0, i64 9), align 4, !tbaa !2
  %18 = load float, float* getelementptr inbounds ([16 x float], [16 x float]* @internal_state, i64 0, i64 1), align 4, !tbaa !2
  %19 = fmul float %q_coef.0.i, %18
  %20 = load float, float* getelementptr inbounds ([16 x float], [16 x float]* @internal_state, i64 0, i64 2), align 8, !tbaa !2
  %21 = fmul float %20, %q_coef.03.i
  %22 = fadd float %19, %21
  br label %._crit_edge

._crit_edge:                                      ; preds = %17, %._crit_edge
  %23 = phi float [ %22, %17 ], [ %27, %._crit_edge ]
  %indvars.iv.next.i10 = phi i64 [ 2, %17 ], [ %indvars.iv.next.i, %._crit_edge ]
  %indvars.iv.i9 = phi i64 [ 1, %17 ], [ %indvars.iv.next.i10, %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [16 x float], [16 x float]* @coefficient, i64 0, i64 %indvars.iv.i9
  %.pre = load float, float* %.phi.trans.insert, align 4, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i10, 1
  %24 = getelementptr inbounds [16 x float], [16 x float]* @internal_state, i64 0, i64 %indvars.iv.next.i
  %25 = load float, float* %24, align 4, !tbaa !2
  %26 = fmul float %25, %.pre
  %27 = fadd float %23, %26
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.i, label %latnrm.exit, label %._crit_edge

latnrm.exit:                                      ; preds = %._crit_edge
  store float %27, float* @output, align 4, !tbaa !2
  %28 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull @input, i32 1, i32 0) #3
  %29 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull getelementptr inbounds ([16 x float], [16 x float]* @coefficient, i64 0, i64 0), i32 16, i32 0) #3
  %30 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull getelementptr inbounds ([16 x float], [16 x float]* @internal_state, i64 0, i64 0), i32 16, i32 0) #3
  %31 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull @output, i32 1, i32 0) #3
  ret i32 0
}

declare i32 @input_dsp(...) #1

; Function Attrs: norecurse nounwind ssp uwtable
define void @latnrm(float %input, float* nocapture %output, float* nocapture readonly %coefficient, float* nocapture %internal_state) #2 {
  %q_coef.03 = load float, float* %coefficient, align 4, !tbaa !2
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv11 = phi i64 [ 0, %0 ], [ %indvars.iv.next12, %1 ]
  %q_coef.07 = phi float [ %q_coef.03, %0 ], [ %q_coef.0, %1 ]
  %top.05 = phi float [ %input, %0 ], [ %9, %1 ]
  %bottom.04 = phi float [ undef, %0 ], [ %12, %1 ]
  %2 = shl nsw i64 %indvars.iv11, 1
  %3 = getelementptr inbounds float, float* %coefficient, i64 %2
  %4 = load float, float* %3, align 4, !tbaa !2
  %5 = getelementptr inbounds float, float* %internal_state, i64 %indvars.iv11
  %6 = load float, float* %5, align 4, !tbaa !2
  store float %bottom.04, float* %5, align 4, !tbaa !2
  %7 = fmul float %top.05, %q_coef.07
  %8 = fmul float %4, %6
  %9 = fsub float %7, %8
  %10 = fmul float %q_coef.07, %6
  %11 = fmul float %top.05, %4
  %12 = fadd float %11, %10
  %13 = or i64 %2, 1
  %14 = getelementptr inbounds float, float* %coefficient, i64 %13
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %q_coef.0 = load float, float* %14, align 4, !tbaa !2
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 8
  br i1 %exitcond13, label %15, label %1

; <label>:15                                      ; preds = %1
  %16 = getelementptr inbounds float, float* %internal_state, i64 8
  store float %12, float* %16, align 4, !tbaa !2
  %17 = getelementptr inbounds float, float* %internal_state, i64 9
  store float %9, float* %17, align 4, !tbaa !2
  %18 = getelementptr inbounds float, float* %internal_state, i64 1
  %19 = load float, float* %18, align 4, !tbaa !2
  %20 = fmul float %q_coef.0, %19
  br label %21

; <label>:21                                      ; preds = %21, %15
  %indvars.iv = phi i64 [ 1, %15 ], [ %indvars.iv.next, %21 ]
  %sum.02 = phi float [ %20, %15 ], [ %28, %21 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %22 = getelementptr inbounds float, float* %internal_state, i64 %indvars.iv.next
  %23 = load float, float* %22, align 4, !tbaa !2
  %24 = add nsw i64 %indvars.iv, -1
  %25 = getelementptr inbounds float, float* %coefficient, i64 %24
  %26 = load float, float* %25, align 4, !tbaa !2
  %27 = fmul float %23, %26
  %28 = fadd float %sum.02, %27
  %exitcond = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond, label %29, label %21

; <label>:29                                      ; preds = %21
  store float %28, float* %output, align 4, !tbaa !2
  ret void
}

declare i32 @output_dsp(...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
