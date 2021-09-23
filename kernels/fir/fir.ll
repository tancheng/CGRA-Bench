; ModuleID = 'fir.bc'
source_filename = "fir.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

@input = dso_local local_unnamed_addr global [32 x float] zeroinitializer, align 16
@output = dso_local local_unnamed_addr global [32 x float] zeroinitializer, align 16
@coefficients = dso_local local_unnamed_addr global [32 x float] [float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00, float 2.500000e-01, float 1.500000e+00, float 3.750000e+00, float -2.250000e+00, float 5.000000e-01, float 7.500000e-01, float -3.000000e+00, float 1.250000e+00], align 16

; Function Attrs: nofree norecurse nounwind ssp uwtable mustprogress
define dso_local i32 @main() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %10, %1 ]
  %3 = phi float [ 9.990000e+02, %0 ], [ %9, %1 ]
  %4 = getelementptr inbounds [32 x float], [32 x float]* @input, i64 0, i64 %2
  %5 = load float, float* %4, align 4, !tbaa !3
  %6 = getelementptr inbounds [32 x float], [32 x float]* @coefficients, i64 0, i64 %2
  %7 = load float, float* %6, align 4, !tbaa !3
  %8 = fmul float %5, %7
  %9 = fadd float %3, %8
  %10 = add nuw nsw i64 %2, 1
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %12, label %1, !llvm.loop !7

12:                                               ; preds = %1
  store float %9, float* getelementptr inbounds ([32 x float], [32 x float]* @output, i64 0, i64 0), align 16, !tbaa !3
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind ssp uwtable mustprogress
define dso_local void @_Z3firPfS_S_(float* nocapture readonly %0, float* nocapture %1, float* nocapture readonly %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %13, %4 ]
  %6 = phi float [ 9.990000e+02, %3 ], [ %12, %4 ]
  %7 = getelementptr inbounds float, float* %0, i64 %5
  %8 = load float, float* %7, align 4, !tbaa !3
  %9 = getelementptr inbounds float, float* %2, i64 %5
  %10 = load float, float* %9, align 4, !tbaa !3
  %11 = fmul float %8, %10
  %12 = fadd float %6, %11
  %13 = add nuw nsw i64 %5, 1
  %14 = icmp eq i64 %13, 32
  br i1 %14, label %15, label %4, !llvm.loop !7

15:                                               ; preds = %4
  store float %12, float* %1, align 4, !tbaa !3
  ret void
}

attributes #0 = { nofree norecurse nounwind ssp uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 12.0.0"}
!3 = !{!4, !4, i64 0}
!4 = !{!"float", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
