; ModuleID = 'bf.bc'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

; Function Attrs: norecurse nounwind ssp uwtable
define void @BF_encrypt(i64* nocapture %data, %struct.bf_key_st* nocapture readonly %key, i32 %encrypt) #0 {
  %1 = load i64, i64* %data, align 8, !tbaa !2
  %2 = getelementptr inbounds i64, i64* %data, i64 1
  %3 = load i64, i64* %2, align 8, !tbaa !2
  %4 = icmp eq i32 %encrypt, 0
  br i1 %4, label %37, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 0
  %7 = load i64, i64* %6, align 8, !tbaa !2
  %8 = xor i64 %7, %1
  br label %9

; <label>:9                                       ; preds = %9, %5
  %indvars.iv = phi i64 [ 1, %5 ], [ %indvars.iv.next, %9 ]
  %l.02 = phi i64 [ %8, %5 ], [ %34, %9 ]
  %r.01 = phi i64 [ %3, %5 ], [ %l.02, %9 ]
  %10 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 0, i64 %indvars.iv
  %11 = load i64, i64* %10, align 8, !tbaa !2
  %12 = xor i64 %11, %r.01
  %13 = lshr i64 %l.02, 24
  %14 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %13
  %15 = load i64, i64* %14, align 8, !tbaa !2
  %16 = lshr i64 %l.02, 16
  %17 = and i64 %16, 255
  %18 = or i64 %17, 256
  %19 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %18
  %20 = load i64, i64* %19, align 8, !tbaa !2
  %21 = add i64 %20, %15
  %22 = lshr i64 %l.02, 8
  %23 = and i64 %22, 255
  %24 = or i64 %23, 512
  %25 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %24
  %26 = load i64, i64* %25, align 8, !tbaa !2
  %27 = xor i64 %21, %26
  %28 = and i64 %l.02, 255
  %29 = or i64 %28, 768
  %30 = getelementptr inbounds %struct.bf_key_st, %struct.bf_key_st* %key, i64 0, i32 1, i64 %29
  %31 = load i64, i64* %30, align 8, !tbaa !2
  %32 = add i64 %27, %31
  %33 = and i64 %32, 4294967295
  %34 = xor i64 %12, %33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond, label %35, label %9

; <label>:35                                      ; preds = %9
  %36 = xor i64 %7, %l.02
  br label %37

; <label>:37                                      ; preds = %0, %35
  %r.1 = phi i64 [ %36, %35 ], [ %3, %0 ]
  %l.1 = phi i64 [ %34, %35 ], [ %1, %0 ]
  %38 = and i64 %l.1, 4294967295
  store i64 %38, i64* %2, align 8, !tbaa !2
  %39 = and i64 %r.1, 4294967295
  store i64 %39, i64* %data, align 8, !tbaa !2
  ret void
}

attributes #0 = { norecurse nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
