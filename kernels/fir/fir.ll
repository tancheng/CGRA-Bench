; ModuleID = 'fir.bc'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@coefficients = global [32 x float] [float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00], align 16
@input = common global [32 x float] zeroinitializer, align 16
@output = common global [32 x float] zeroinitializer, align 16

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv.i = phi i64 [ 0, %0 ], [ %indvars.iv.next.i, %1 ]
  %sum.02.i = phi float [ 9.990000e+02, %0 ], [ %7, %1 ]
  %2 = getelementptr inbounds [32 x float], [32 x float]* @input, i64 0, i64 %indvars.iv.i
  %3 = load float, float* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds [32 x float], [32 x float]* @coefficients, i64 0, i64 %indvars.iv.i
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = fmul float %3, %5
  %7 = fadd float %sum.02.i, %6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.i, label %fir.exit, label %1

fir.exit:                                         ; preds = %1
  store float %7, float* getelementptr inbounds ([32 x float], [32 x float]* @output, i64 0, i64 0), align 16, !tbaa !2
  ret i32 0
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @fir(float* nocapture readonly %input, float* nocapture %output, float* nocapture readonly %coefficient) #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %sum.02 = phi float [ 9.990000e+02, %0 ], [ %7, %1 ]
  %2 = getelementptr inbounds float, float* %input, i64 %indvars.iv
  %3 = load float, float* %2, align 4, !tbaa !2
  %4 = getelementptr inbounds float, float* %coefficient, i64 %indvars.iv
  %5 = load float, float* %4, align 4, !tbaa !2
  %6 = fmul float %3, %5
  %7 = fadd float %sum.02, %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond, label %8, label %1

; <label>:8                                       ; preds = %1
  store float %7, float* %output, align 4, !tbaa !2
  ret void
}

attributes #0 = { norecurse nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
