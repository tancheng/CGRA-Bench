; ModuleID = 'fft.bc'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@data_real = common global [256 x float] zeroinitializer, align 16
@data_imag = common global [256 x float] zeroinitializer, align 16
@coef_real = common global [256 x float] zeroinitializer, align 16
@coef_imag = common global [256 x float] zeroinitializer, align 16
@.memset_pattern = private unnamed_addr constant [4 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 16
@.memset_pattern.2 = private unnamed_addr constant [4 x float] [float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00], align 16

; Function Attrs: nounwind ssp uwtable
define i32 @main() #0 {
.preheader.i.preheader:
  %0 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @input_dsp to i32 (float*, i32, i32, ...)*)(float* getelementptr inbounds ([256 x float], [256 x float]* @data_real, i64 0, i64 0), i32 256, i32 0) #3
  call void @memset_pattern16(i8* bitcast ([256 x float]* @data_imag to i8*), i8* bitcast ([4 x float]* @.memset_pattern to i8*), i64 1024) #3
  call void @memset_pattern16(i8* bitcast ([256 x float]* @coef_real to i8*), i8* bitcast ([4 x float]* @.memset_pattern.2 to i8*), i64 1024) #3
  call void @memset_pattern16(i8* bitcast ([256 x float]* @coef_imag to i8*), i8* bitcast ([4 x float]* @.memset_pattern.2 to i8*), i64 1024) #3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge5.i
  %buttersPerGroup.08.i = phi i32 [ %78, %._crit_edge5.i ], [ 128, %.preheader.i.preheader ]
  %groupsPerStage.07.i = phi i32 [ %77, %._crit_edge5.i ], [ 1, %.preheader.i.preheader ]
  %i.06.i = phi i32 [ %79, %._crit_edge5.i ], [ 0, %.preheader.i.preheader ]
  %1 = icmp sgt i32 %groupsPerStage.07.i, 0
  %2 = icmp sgt i32 %buttersPerGroup.08.i, 0
  %or.cond.i = and i1 %2, %1
  br i1 %or.cond.i, label %.lr.ph4.split.us.preheader.i, label %._crit_edge5.i

.lr.ph4.split.us.preheader.i:                     ; preds = %.preheader.i
  %3 = shl i32 1, %i.06.i
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = add nsw i32 %buttersPerGroup.08.i, -1
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1
  %9 = zext i32 %buttersPerGroup.08.i to i64
  %10 = shl nsw i32 %buttersPerGroup.08.i, 1
  %11 = zext i32 %10 to i64
  %12 = zext i32 %6 to i64
  %scevgep6 = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %12
  %scevgep11 = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %12
  %scevgep16 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %12
  %scevgep21 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %12
  br label %.lr.ph4.split.us.i

.lr.ph4.split.us.i:                               ; preds = %._crit_edge.us.i, %.lr.ph4.split.us.preheader.i
  %indvars.iv12.i = phi i64 [ 0, %.lr.ph4.split.us.preheader.i ], [ %indvars.iv.next13.i, %._crit_edge.us.i ]
  %13 = mul i64 %11, %indvars.iv12.i
  %14 = add i64 %9, %13
  %sext = shl i64 %14, 32
  %15 = ashr exact i64 %sext, 32
  %scevgep = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %15
  %scevgep7 = getelementptr float, float* %scevgep6, i64 %15
  %sext42 = shl i64 %13, 32
  %16 = ashr exact i64 %sext42, 32
  %scevgep9 = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %16
  %scevgep12 = getelementptr float, float* %scevgep11, i64 %16
  %scevgep14 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %15
  %scevgep17 = getelementptr float, float* %scevgep16, i64 %15
  %scevgep19 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %16
  %scevgep22 = getelementptr float, float* %scevgep21, i64 %16
  %17 = add nsw i64 %indvars.iv12.i, %5
  %18 = getelementptr inbounds [256 x float], [256 x float]* @coef_real, i64 0, i64 %17
  %19 = load float, float* %18, align 4, !tbaa !2
  %20 = getelementptr inbounds [256 x float], [256 x float]* @coef_imag, i64 0, i64 %17
  %21 = load float, float* %20, align 4, !tbaa !2
  %22 = trunc i64 %indvars.iv12.i to i32
  %23 = shl nsw i32 %22, 1
  %24 = mul nsw i32 %23, %buttersPerGroup.08.i
  %25 = add nsw i32 %24, %buttersPerGroup.08.i
  %26 = sext i32 %25 to i64
  %27 = sext i32 %24 to i64
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %scalar.ph, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph4.split.us.i
  %n.vec = and i64 %8, 8589934588
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %bound0 = icmp ule float* %scevgep, %scevgep12
  %bound1 = icmp ule float* %scevgep9, %scevgep7
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ule float* %scevgep14, %scevgep22
  %bound125 = icmp ule float* %scevgep19, %scevgep17
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert29 = insertelement <4 x float> undef, float %19, i32 0
  %broadcast.splat30 = shufflevector <4 x float> %broadcast.splatinsert29, <4 x float> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <4 x float> undef, float %21, i32 0
  %broadcast.splat33 = shufflevector <4 x float> %broadcast.splatinsert32, <4 x float> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %28 = add i64 %index, %26
  %29 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %28
  %30 = bitcast float* %29 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %30, align 4, !tbaa !2
  %31 = fmul <4 x float> %broadcast.splat30, %wide.load
  %32 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %28
  %33 = bitcast float* %32 to <4 x float>*
  %wide.load31 = load <4 x float>, <4 x float>* %33, align 4, !tbaa !2
  %34 = fmul <4 x float> %broadcast.splat33, %wide.load31
  %35 = fsub <4 x float> %31, %34
  %36 = fmul <4 x float> %broadcast.splat33, %wide.load
  %37 = fmul <4 x float> %broadcast.splat30, %wide.load31
  %38 = fadd <4 x float> %36, %37
  %39 = add i64 %index, %27
  %40 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %39
  %41 = bitcast float* %40 to <4 x float>*
  %wide.load36 = load <4 x float>, <4 x float>* %41, align 8, !tbaa !2
  %42 = fsub <4 x float> %wide.load36, %35
  %43 = bitcast float* %29 to <4 x float>*
  store <4 x float> %42, <4 x float>* %43, align 4, !tbaa !2
  %44 = bitcast float* %40 to <4 x float>*
  %wide.load37 = load <4 x float>, <4 x float>* %44, align 8, !tbaa !2
  %45 = fadd <4 x float> %35, %wide.load37
  %46 = bitcast float* %40 to <4 x float>*
  store <4 x float> %45, <4 x float>* %46, align 8, !tbaa !2
  %47 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %39
  %48 = bitcast float* %47 to <4 x float>*
  %wide.load38 = load <4 x float>, <4 x float>* %48, align 8, !tbaa !2
  %49 = fsub <4 x float> %wide.load38, %38
  %50 = bitcast float* %32 to <4 x float>*
  store <4 x float> %49, <4 x float>* %50, align 4, !tbaa !2
  %51 = bitcast float* %47 to <4 x float>*
  %wide.load39 = load <4 x float>, <4 x float>* %51, align 8, !tbaa !2
  %52 = fadd <4 x float> %38, %wide.load39
  %53 = bitcast float* %47 to <4 x float>*
  store <4 x float> %52, <4 x float>* %53, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %54 = icmp eq i64 %index.next, %n.vec
  br i1 %54, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph4.split.us.i, %min.iters.checked, %vector.memcheck, %middle.block, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %n.vec, %middle.block ], [ 0, %.lr.ph4.split.us.i ], [ 0, %min.iters.checked ], [ 0, %vector.memcheck ]
  %55 = add nsw i64 %indvars.iv.i, %26
  %56 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !2
  %58 = fmul float %19, %57
  %59 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %55
  %60 = load float, float* %59, align 4, !tbaa !2
  %61 = fmul float %21, %60
  %62 = fsub float %58, %61
  %63 = fmul float %21, %57
  %64 = fmul float %19, %60
  %65 = fadd float %63, %64
  %66 = add nsw i64 %indvars.iv.i, %27
  %67 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !2
  %69 = fsub float %68, %62
  store float %69, float* %56, align 4, !tbaa !2
  %70 = load float, float* %67, align 4, !tbaa !2
  %71 = fadd float %62, %70
  store float %71, float* %67, align 4, !tbaa !2
  %72 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %66
  %73 = load float, float* %72, align 4, !tbaa !2
  %74 = fsub float %73, %65
  store float %74, float* %59, align 4, !tbaa !2
  %75 = load float, float* %72, align 4, !tbaa !2
  %76 = fadd float %65, %75
  store float %76, float* %72, align 4, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %buttersPerGroup.08.i
  br i1 %exitcond, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !9

._crit_edge.us.i:                                 ; preds = %middle.block, %scalar.ph
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %lftr.wideiv2 = trunc i64 %indvars.iv.next13.i to i32
  %exitcond3 = icmp eq i32 %lftr.wideiv2, %groupsPerStage.07.i
  br i1 %exitcond3, label %._crit_edge5.i, label %.lr.ph4.split.us.i

._crit_edge5.i:                                   ; preds = %._crit_edge.us.i, %.preheader.i
  %77 = shl i32 %groupsPerStage.07.i, 1
  %78 = ashr i32 %buttersPerGroup.08.i, 1
  %79 = add nuw nsw i32 %i.06.i, 1
  %exitcond16.i = icmp eq i32 %79, 8
  br i1 %exitcond16.i, label %fft.exit, label %.preheader.i

fft.exit:                                         ; preds = %._crit_edge5.i
  %80 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull getelementptr inbounds ([256 x float], [256 x float]* @data_real, i64 0, i64 0), i32 256, i32 0) #3
  %81 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull getelementptr inbounds ([256 x float], [256 x float]* @data_imag, i64 0, i64 0), i32 256, i32 0) #3
  %82 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull getelementptr inbounds ([256 x float], [256 x float]* @coef_real, i64 0, i64 0), i32 256, i32 0) #3
  %83 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* nonnull getelementptr inbounds ([256 x float], [256 x float]* @coef_imag, i64 0, i64 0), i32 256, i32 0) #3
  ret i32 0
}

declare i32 @input_dsp(...) #1

; Function Attrs: norecurse nounwind ssp uwtable
define void @fft(float* nocapture %data_real, float* nocapture %data_imag, float* nocapture readonly %coef_real, float* nocapture readonly %coef_imag) #2 {
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge5, %0
  %buttersPerGroup.08 = phi i32 [ 128, %0 ], [ %78, %._crit_edge5 ]
  %groupsPerStage.07 = phi i32 [ 1, %0 ], [ %77, %._crit_edge5 ]
  %i.06 = phi i32 [ 0, %0 ], [ %79, %._crit_edge5 ]
  %1 = icmp sgt i32 %groupsPerStage.07, 0
  %2 = icmp sgt i32 %buttersPerGroup.08, 0
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %.lr.ph4.split.us.preheader, label %._crit_edge5

.lr.ph4.split.us.preheader:                       ; preds = %.preheader
  %3 = shl i32 1, %i.06
  %4 = add nsw i32 %3, -1
  %5 = sext i32 %4 to i64
  %6 = add nsw i32 %buttersPerGroup.08, -1
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %7, 1
  %9 = zext i32 %buttersPerGroup.08 to i64
  %10 = shl nsw i32 %buttersPerGroup.08, 1
  %11 = zext i32 %10 to i64
  %12 = zext i32 %6 to i64
  %scevgep18 = getelementptr float, float* %data_real, i64 %12
  %scevgep23 = getelementptr float, float* %data_real, i64 %12
  %scevgep28 = getelementptr float, float* %data_imag, i64 %12
  %scevgep33 = getelementptr float, float* %data_imag, i64 %12
  br label %.lr.ph4.split.us

.lr.ph4.split.us:                                 ; preds = %._crit_edge.us, %.lr.ph4.split.us.preheader
  %indvars.iv12 = phi i64 [ 0, %.lr.ph4.split.us.preheader ], [ %indvars.iv.next13, %._crit_edge.us ]
  %13 = mul i64 %11, %indvars.iv12
  %14 = add i64 %9, %13
  %sext = shl i64 %14, 32
  %15 = ashr exact i64 %sext, 32
  %scevgep = getelementptr float, float* %data_real, i64 %15
  %scevgep19 = getelementptr float, float* %scevgep18, i64 %15
  %sext70 = shl i64 %13, 32
  %16 = ashr exact i64 %sext70, 32
  %scevgep21 = getelementptr float, float* %data_real, i64 %16
  %scevgep24 = getelementptr float, float* %scevgep23, i64 %16
  %scevgep26 = getelementptr float, float* %data_imag, i64 %15
  %scevgep29 = getelementptr float, float* %scevgep28, i64 %15
  %scevgep31 = getelementptr float, float* %data_imag, i64 %16
  %scevgep34 = getelementptr float, float* %scevgep33, i64 %16
  %17 = add nsw i64 %5, %indvars.iv12
  %18 = getelementptr inbounds float, float* %coef_real, i64 %17
  %19 = load float, float* %18, align 4, !tbaa !2
  %20 = getelementptr inbounds float, float* %coef_imag, i64 %17
  %21 = load float, float* %20, align 4, !tbaa !2
  %22 = trunc i64 %indvars.iv12 to i32
  %23 = shl nsw i32 %22, 1
  %24 = mul nsw i32 %23, %buttersPerGroup.08
  %25 = add nsw i32 %24, %buttersPerGroup.08
  %26 = sext i32 %25 to i64
  %27 = sext i32 %24 to i64
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %scalar.ph, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph4.split.us
  %n.vec = and i64 %8, 8589934588
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %scalar.ph, label %vector.memcheck

vector.memcheck:                                  ; preds = %min.iters.checked
  %bound0 = icmp ule float* %scevgep, %scevgep24
  %bound1 = icmp ule float* %scevgep21, %scevgep19
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp uge float* %scevgep28, %data_real
  %bound137 = icmp uge float* %scevgep18, %data_imag
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx = or i1 %found.conflict, %found.conflict38
  %bound039 = icmp ule float* %scevgep, %scevgep34
  %bound140 = icmp ule float* %scevgep31, %scevgep19
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx, %found.conflict41
  %bound043 = icmp ule float* %scevgep21, %scevgep29
  %bound144 = icmp ule float* %scevgep26, %scevgep24
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx46 = or i1 %conflict.rdx42, %found.conflict45
  %bound047 = icmp uge float* %scevgep33, %data_real
  %bound148 = icmp uge float* %scevgep23, %data_imag
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx46, %found.conflict49
  %bound051 = icmp ule float* %scevgep26, %scevgep34
  %bound152 = icmp ule float* %scevgep31, %scevgep29
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %conflict.rdx50, %found.conflict53
  br i1 %conflict.rdx54, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert57 = insertelement <4 x float> undef, float %19, i32 0
  %broadcast.splat58 = shufflevector <4 x float> %broadcast.splatinsert57, <4 x float> undef, <4 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <4 x float> undef, float %21, i32 0
  %broadcast.splat61 = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %28 = add i64 %26, %index
  %29 = getelementptr inbounds float, float* %data_real, i64 %28
  %30 = bitcast float* %29 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %30, align 4, !tbaa !2
  %31 = fmul <4 x float> %broadcast.splat58, %wide.load
  %32 = getelementptr inbounds float, float* %data_imag, i64 %28
  %33 = bitcast float* %32 to <4 x float>*
  %wide.load59 = load <4 x float>, <4 x float>* %33, align 4, !tbaa !2
  %34 = fmul <4 x float> %broadcast.splat61, %wide.load59
  %35 = fsub <4 x float> %31, %34
  %36 = fmul <4 x float> %broadcast.splat61, %wide.load
  %37 = fmul <4 x float> %broadcast.splat58, %wide.load59
  %38 = fadd <4 x float> %36, %37
  %39 = add i64 %index, %27
  %40 = getelementptr inbounds float, float* %data_real, i64 %39
  %41 = bitcast float* %40 to <4 x float>*
  %wide.load64 = load <4 x float>, <4 x float>* %41, align 4, !tbaa !2
  %42 = fsub <4 x float> %wide.load64, %35
  %43 = bitcast float* %29 to <4 x float>*
  store <4 x float> %42, <4 x float>* %43, align 4, !tbaa !2
  %44 = bitcast float* %40 to <4 x float>*
  %wide.load65 = load <4 x float>, <4 x float>* %44, align 4, !tbaa !2
  %45 = fadd <4 x float> %35, %wide.load65
  %46 = bitcast float* %40 to <4 x float>*
  store <4 x float> %45, <4 x float>* %46, align 4, !tbaa !2
  %47 = getelementptr inbounds float, float* %data_imag, i64 %39
  %48 = bitcast float* %47 to <4 x float>*
  %wide.load66 = load <4 x float>, <4 x float>* %48, align 4, !tbaa !2
  %49 = fsub <4 x float> %wide.load66, %38
  %50 = bitcast float* %32 to <4 x float>*
  store <4 x float> %49, <4 x float>* %50, align 4, !tbaa !2
  %51 = bitcast float* %47 to <4 x float>*
  %wide.load67 = load <4 x float>, <4 x float>* %51, align 4, !tbaa !2
  %52 = fadd <4 x float> %38, %wide.load67
  %53 = bitcast float* %47 to <4 x float>*
  store <4 x float> %52, <4 x float>* %53, align 4, !tbaa !2
  %index.next = add i64 %index, 4
  %54 = icmp eq i64 %index.next, %n.vec
  br i1 %54, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph4.split.us, %min.iters.checked, %vector.memcheck, %middle.block, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %n.vec, %middle.block ], [ 0, %.lr.ph4.split.us ], [ 0, %min.iters.checked ], [ 0, %vector.memcheck ]
  %55 = add nsw i64 %26, %indvars.iv
  %56 = getelementptr inbounds float, float* %data_real, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !2
  %58 = fmul float %19, %57
  %59 = getelementptr inbounds float, float* %data_imag, i64 %55
  %60 = load float, float* %59, align 4, !tbaa !2
  %61 = fmul float %21, %60
  %62 = fsub float %58, %61
  %63 = fmul float %21, %57
  %64 = fmul float %19, %60
  %65 = fadd float %63, %64
  %66 = add nsw i64 %indvars.iv, %27
  %67 = getelementptr inbounds float, float* %data_real, i64 %66
  %68 = load float, float* %67, align 4, !tbaa !2
  %69 = fsub float %68, %62
  store float %69, float* %56, align 4, !tbaa !2
  %70 = load float, float* %67, align 4, !tbaa !2
  %71 = fadd float %62, %70
  store float %71, float* %67, align 4, !tbaa !2
  %72 = getelementptr inbounds float, float* %data_imag, i64 %66
  %73 = load float, float* %72, align 4, !tbaa !2
  %74 = fsub float %73, %65
  store float %74, float* %59, align 4, !tbaa !2
  %75 = load float, float* %72, align 4, !tbaa !2
  %76 = fadd float %65, %75
  store float %76, float* %72, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv, %buttersPerGroup.08
  br i1 %exitcond11, label %._crit_edge.us, label %scalar.ph, !llvm.loop !11

._crit_edge.us:                                   ; preds = %middle.block, %scalar.ph
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv.next13 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %groupsPerStage.07
  br i1 %exitcond15, label %._crit_edge5, label %.lr.ph4.split.us

._crit_edge5:                                     ; preds = %._crit_edge.us, %.preheader
  %77 = shl i32 %groupsPerStage.07, 1
  %78 = ashr i32 %buttersPerGroup.08, 1
  %79 = add nuw nsw i32 %i.06, 1
  %exitcond16 = icmp eq i32 %79, 8
  br i1 %exitcond16, label %80, label %.preheader

; <label>:80                                      ; preds = %._crit_edge5
  ret void
}

declare i32 @output_dsp(...) #1

declare void @memset_pattern16(i8*, i8*, i64)

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
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.vectorize.width", i32 1}
!8 = !{!"llvm.loop.interleave.count", i32 1}
!9 = distinct !{!9, !7, !8}
!10 = distinct !{!10, !7, !8}
!11 = distinct !{!11, !7, !8}
