; ModuleID = 'fft.bc'
source_filename = "fft_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@data_real = dso_local global [256 x float] zeroinitializer, align 16
@data_imag = dso_local global [256 x float] zeroinitializer, align 16
@coef_real = dso_local global [256 x float] zeroinitializer, align 16
@coef_imag = dso_local global [256 x float] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !6 {
  %1 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @input_dsp to i32 (float*, i32, i32, ...)*)(float* getelementptr inbounds ([256 x float], [256 x float]* @data_real, i64 0, i64 0), i32 256, i32 0) #3, !dbg !8
  br label %2, !dbg !9

2:                                                ; preds = %2, %0
  %3 = phi i64 [ 0, %0 ], [ %10, %2 ], !dbg !10
  %4 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %3, !dbg !11
  %5 = bitcast float* %4 to <4 x float>*, !dbg !12
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, <4 x float>* %5, align 16, !dbg !12, !tbaa !13
  %6 = getelementptr inbounds [256 x float], [256 x float]* @coef_real, i64 0, i64 %3, !dbg !17
  %7 = bitcast float* %6 to <4 x float>*, !dbg !18
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %7, align 16, !dbg !18, !tbaa !13
  %8 = getelementptr inbounds [256 x float], [256 x float]* @coef_imag, i64 0, i64 %3, !dbg !19
  %9 = bitcast float* %8 to <4 x float>*, !dbg !20
  store <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float>* %9, align 16, !dbg !20, !tbaa !13
  %10 = add i64 %3, 4, !dbg !10
  %11 = icmp eq i64 %10, 256, !dbg !10
  br i1 %11, label %12, label %2, !dbg !10, !llvm.loop !21

12:                                               ; preds = %2, %151
  %13 = phi i32 [ %153, %151 ], [ 128, %2 ]
  %14 = phi i32 [ %152, %151 ], [ 1, %2 ]
  %15 = phi i32 [ %154, %151 ], [ 0, %2 ]
  %16 = icmp sgt i32 %14, 0, !dbg !26
  %17 = icmp sgt i32 %13, 0
  %18 = and i1 %17, %16, !dbg !29
  br i1 %18, label %19, label %151, !dbg !29

19:                                               ; preds = %12
  %20 = shl nsw i32 -1, %15
  %21 = xor i32 %20, -1
  %22 = sext i32 %21 to i64, !dbg !29
  %23 = zext i32 %13 to i64, !dbg !29
  %24 = zext i32 %14 to i64, !dbg !26
  %25 = shl nuw nsw i64 %23, 1
  %26 = add nsw i64 %23, -1, !dbg !29
  %27 = shl nsw i32 %13, 1, !dbg !29
  %28 = shl nsw i32 %13, 1, !dbg !29
  %29 = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %23, !dbg !29
  %30 = shl nuw nsw i64 %23, 1, !dbg !30
  %31 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %23, !dbg !29
  br label %32, !dbg !29

32:                                               ; preds = %148, %19
  %33 = phi i64 [ 0, %19 ], [ %149, %148 ]
  %34 = trunc i64 %33 to i32, !dbg !30
  %35 = mul i32 %28, %34, !dbg !30
  %36 = add i32 %35, %13, !dbg !30
  %37 = sext i32 %36 to i64, !dbg !30
  %38 = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %37, !dbg !30
  %39 = getelementptr float, float* %29, i64 %37, !dbg !30
  %40 = mul i64 %30, %33, !dbg !30
  %41 = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %40, !dbg !30
  %42 = add i64 %40, %23, !dbg !30
  %43 = getelementptr [256 x float], [256 x float]* @data_real, i64 0, i64 %42, !dbg !30
  %44 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %37, !dbg !30
  %45 = getelementptr float, float* %31, i64 %37, !dbg !30
  %46 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %40, !dbg !30
  %47 = getelementptr [256 x float], [256 x float]* @data_imag, i64 0, i64 %42, !dbg !30
  %48 = trunc i64 %33 to i32, !dbg !30
  %49 = mul i32 %27, %48, !dbg !30
  %50 = add i32 %49, %13, !dbg !30
  %51 = add nsw i64 %33, %22, !dbg !30
  %52 = getelementptr inbounds [256 x float], [256 x float]* @coef_real, i64 0, i64 %51, !dbg !31
  %53 = load float, float* %52, align 4, !dbg !31, !tbaa !13
  %54 = getelementptr inbounds [256 x float], [256 x float]* @coef_imag, i64 0, i64 %51, !dbg !32
  %55 = load float, float* %54, align 4, !dbg !32, !tbaa !13
  %56 = mul i64 %25, %33
  %57 = icmp ult i32 %13, 4, !dbg !33
  br i1 %57, label %118, label %58, !dbg !33

58:                                               ; preds = %32
  %59 = trunc i64 %26 to i32, !dbg !33
  %60 = add i32 %50, %59, !dbg !33
  %61 = icmp slt i32 %60, %50, !dbg !33
  %62 = icmp ugt i64 %26, 4294967295, !dbg !33
  %63 = or i1 %61, %62, !dbg !33
  br i1 %63, label %118, label %64, !dbg !33

64:                                               ; preds = %58
  %65 = icmp ult float* %38, %43, !dbg !33
  %66 = icmp ult float* %41, %39, !dbg !33
  %67 = and i1 %65, %66, !dbg !33
  %68 = icmp ult float* %44, %47, !dbg !33
  %69 = icmp ult float* %46, %45, !dbg !33
  %70 = and i1 %68, %69, !dbg !33
  %71 = or i1 %67, %70, !dbg !33
  br i1 %71, label %118, label %72, !dbg !33

72:                                               ; preds = %64
  %73 = and i64 %23, 4294967292, !dbg !33
  %74 = insertelement <4 x float> poison, float %53, i32 0, !dbg !33
  %75 = shufflevector <4 x float> %74, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !33
  %76 = insertelement <4 x float> poison, float %55, i32 0, !dbg !33
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !33
  br label %78, !dbg !33

78:                                               ; preds = %78, %72
  %79 = phi i64 [ 0, %72 ], [ %114, %78 ], !dbg !34
  %80 = add nuw nsw i64 %79, %56, !dbg !35
  %81 = trunc i64 %80 to i32, !dbg !36
  %82 = add i32 %13, %81, !dbg !36
  %83 = sext i32 %82 to i64, !dbg !37
  %84 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %83, !dbg !37
  %85 = bitcast float* %84 to <4 x float>*, !dbg !37
  %86 = load <4 x float>, <4 x float>* %85, align 4, !dbg !37, !tbaa !13, !alias.scope !38, !noalias !41
  %87 = fmul <4 x float> %75, %86, !dbg !43
  %88 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %83, !dbg !44
  %89 = bitcast float* %88 to <4 x float>*, !dbg !44
  %90 = load <4 x float>, <4 x float>* %89, align 4, !dbg !44, !tbaa !13, !alias.scope !45, !noalias !47
  %91 = fmul <4 x float> %77, %90, !dbg !49
  %92 = fsub <4 x float> %87, %91, !dbg !50
  %93 = fmul <4 x float> %77, %86, !dbg !51
  %94 = fmul <4 x float> %75, %90, !dbg !52
  %95 = fadd <4 x float> %93, %94, !dbg !53
  %96 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %80, !dbg !54
  %97 = bitcast float* %96 to <4 x float>*, !dbg !54
  %98 = load <4 x float>, <4 x float>* %97, align 8, !dbg !54, !tbaa !13, !alias.scope !41
  %99 = fsub <4 x float> %98, %92, !dbg !55
  %100 = bitcast float* %84 to <4 x float>*, !dbg !56
  store <4 x float> %99, <4 x float>* %100, align 4, !dbg !56, !tbaa !13, !alias.scope !38, !noalias !41
  %101 = bitcast float* %96 to <4 x float>*, !dbg !57
  %102 = load <4 x float>, <4 x float>* %101, align 8, !dbg !57, !tbaa !13, !alias.scope !41
  %103 = fadd <4 x float> %92, %102, !dbg !57
  %104 = bitcast float* %96 to <4 x float>*, !dbg !57
  store <4 x float> %103, <4 x float>* %104, align 8, !dbg !57, !tbaa !13, !alias.scope !41
  %105 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %80, !dbg !58
  %106 = bitcast float* %105 to <4 x float>*, !dbg !58
  %107 = load <4 x float>, <4 x float>* %106, align 8, !dbg !58, !tbaa !13, !alias.scope !47
  %108 = fsub <4 x float> %107, %95, !dbg !59
  %109 = bitcast float* %88 to <4 x float>*, !dbg !60
  store <4 x float> %108, <4 x float>* %109, align 4, !dbg !60, !tbaa !13, !alias.scope !45, !noalias !47
  %110 = bitcast float* %105 to <4 x float>*, !dbg !61
  %111 = load <4 x float>, <4 x float>* %110, align 8, !dbg !61, !tbaa !13, !alias.scope !47
  %112 = fadd <4 x float> %95, %111, !dbg !61
  %113 = bitcast float* %105 to <4 x float>*, !dbg !61
  store <4 x float> %112, <4 x float>* %113, align 8, !dbg !61, !tbaa !13, !alias.scope !47
  %114 = add i64 %79, 4, !dbg !34
  %115 = icmp eq i64 %114, %73, !dbg !34
  br i1 %115, label %116, label %78, !dbg !34, !llvm.loop !62

116:                                              ; preds = %78
  %117 = icmp eq i64 %73, %23, !dbg !33
  br i1 %117, label %148, label %118, !dbg !33

118:                                              ; preds = %64, %58, %32, %116
  %119 = phi i64 [ 0, %64 ], [ 0, %58 ], [ 0, %32 ], [ %73, %116 ]
  br label %120, !dbg !33

120:                                              ; preds = %118, %120
  %121 = phi i64 [ %146, %120 ], [ %119, %118 ]
  %122 = add nuw nsw i64 %121, %56, !dbg !35
  %123 = trunc i64 %122 to i32, !dbg !36
  %124 = add i32 %13, %123, !dbg !36
  %125 = sext i32 %124 to i64, !dbg !37
  %126 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %125, !dbg !37
  %127 = load float, float* %126, align 4, !dbg !37, !tbaa !13
  %128 = fmul float %53, %127, !dbg !43
  %129 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %125, !dbg !44
  %130 = load float, float* %129, align 4, !dbg !44, !tbaa !13
  %131 = fmul float %55, %130, !dbg !49
  %132 = fsub float %128, %131, !dbg !50
  %133 = fmul float %55, %127, !dbg !51
  %134 = fmul float %53, %130, !dbg !52
  %135 = fadd float %133, %134, !dbg !53
  %136 = getelementptr inbounds [256 x float], [256 x float]* @data_real, i64 0, i64 %122, !dbg !54
  %137 = load float, float* %136, align 4, !dbg !54, !tbaa !13
  %138 = fsub float %137, %132, !dbg !55
  store float %138, float* %126, align 4, !dbg !56, !tbaa !13
  %139 = load float, float* %136, align 4, !dbg !57, !tbaa !13
  %140 = fadd float %132, %139, !dbg !57
  store float %140, float* %136, align 4, !dbg !57, !tbaa !13
  %141 = getelementptr inbounds [256 x float], [256 x float]* @data_imag, i64 0, i64 %122, !dbg !58
  %142 = load float, float* %141, align 4, !dbg !58, !tbaa !13
  %143 = fsub float %142, %135, !dbg !59
  store float %143, float* %129, align 4, !dbg !60, !tbaa !13
  %144 = load float, float* %141, align 4, !dbg !61, !tbaa !13
  %145 = fadd float %135, %144, !dbg !61
  store float %145, float* %141, align 4, !dbg !61, !tbaa !13
  %146 = add nuw nsw i64 %121, 1, !dbg !34
  %147 = icmp eq i64 %146, %23, !dbg !64
  br i1 %147, label %148, label %120, !dbg !33, !llvm.loop !65

148:                                              ; preds = %120, %116
  %149 = add nuw nsw i64 %33, 1, !dbg !66
  %150 = icmp eq i64 %149, %24, !dbg !26
  br i1 %150, label %151, label %32, !dbg !29, !llvm.loop !67

151:                                              ; preds = %148, %12
  %152 = shl i32 %14, 1, !dbg !69
  %153 = ashr i32 %13, 1, !dbg !70
  %154 = add nuw nsw i32 %15, 1, !dbg !71
  %155 = icmp eq i32 %154, 8, !dbg !72
  br i1 %155, label %156, label %12, !dbg !73, !llvm.loop !74

156:                                              ; preds = %151
  %157 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* getelementptr inbounds ([256 x float], [256 x float]* @data_real, i64 0, i64 0), i32 256, i32 0) #3, !dbg !76
  %158 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* getelementptr inbounds ([256 x float], [256 x float]* @data_imag, i64 0, i64 0), i32 256, i32 0) #3, !dbg !77
  %159 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* getelementptr inbounds ([256 x float], [256 x float]* @coef_real, i64 0, i64 0), i32 256, i32 0) #3, !dbg !78
  %160 = tail call i32 (float*, i32, i32, ...) bitcast (i32 (...)* @output_dsp to i32 (float*, i32, i32, ...)*)(float* getelementptr inbounds ([256 x float], [256 x float]* @coef_imag, i64 0, i64 0), i32 256, i32 0) #3, !dbg !79
  ret i32 0, !dbg !80
}

declare dso_local i32 @input_dsp(...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @fft(float* nocapture %0, float* nocapture %1, float* nocapture readonly %2, float* nocapture readonly %3) local_unnamed_addr #2 !dbg !27 {
  br label %5, !dbg !81

5:                                                ; preds = %4, %161
  %6 = phi i32 [ 128, %4 ], [ %163, %161 ]
  %7 = phi i32 [ 1, %4 ], [ %162, %161 ]
  %8 = phi i32 [ 0, %4 ], [ %164, %161 ]
  %9 = icmp sgt i32 %7, 0, !dbg !82
  %10 = icmp sgt i32 %6, 0
  %11 = and i1 %9, %10, !dbg !83
  br i1 %11, label %12, label %161, !dbg !83

12:                                               ; preds = %5
  %13 = shl nsw i32 -1, %8
  %14 = xor i32 %13, -1
  %15 = sext i32 %14 to i64, !dbg !83
  %16 = zext i32 %6 to i64, !dbg !83
  %17 = zext i32 %7 to i64, !dbg !82
  %18 = zext i32 %6 to i64
  %19 = add nsw i64 %18, -1, !dbg !83
  %20 = shl nsw i32 %6, 1, !dbg !83
  %21 = shl nsw i32 %6, 1, !dbg !83
  %22 = getelementptr float, float* %0, i64 %18, !dbg !83
  %23 = shl nuw nsw i64 %18, 1, !dbg !84
  %24 = getelementptr float, float* %1, i64 %18, !dbg !83
  br label %25, !dbg !83

25:                                               ; preds = %12, %158
  %26 = phi i64 [ 0, %12 ], [ %159, %158 ]
  %27 = trunc i64 %26 to i32, !dbg !84
  %28 = mul i32 %21, %27, !dbg !84
  %29 = add i32 %28, %6, !dbg !84
  %30 = sext i32 %29 to i64, !dbg !84
  %31 = getelementptr float, float* %0, i64 %30, !dbg !84
  %32 = getelementptr float, float* %22, i64 %30, !dbg !84
  %33 = mul i64 %23, %26, !dbg !84
  %34 = getelementptr float, float* %0, i64 %33, !dbg !84
  %35 = add i64 %33, %18, !dbg !84
  %36 = getelementptr float, float* %0, i64 %35, !dbg !84
  %37 = getelementptr float, float* %1, i64 %30, !dbg !84
  %38 = getelementptr float, float* %24, i64 %30, !dbg !84
  %39 = getelementptr float, float* %1, i64 %33, !dbg !84
  %40 = getelementptr float, float* %1, i64 %35, !dbg !84
  %41 = trunc i64 %26 to i32, !dbg !84
  %42 = mul i32 %20, %41, !dbg !84
  %43 = add i32 %42, %6, !dbg !84
  %44 = add nsw i64 %26, %15, !dbg !84
  %45 = getelementptr inbounds float, float* %2, i64 %44, !dbg !85
  %46 = load float, float* %45, align 4, !dbg !85, !tbaa !13
  %47 = getelementptr inbounds float, float* %3, i64 %44, !dbg !86
  %48 = load float, float* %47, align 4, !dbg !86, !tbaa !13
  %49 = shl nuw nsw i64 %26, 1
  %50 = mul nsw i64 %49, %16
  %51 = icmp ult i32 %6, 4, !dbg !87
  br i1 %51, label %128, label %52, !dbg !87

52:                                               ; preds = %25
  %53 = trunc i64 %19 to i32, !dbg !87
  %54 = add i32 %43, %53, !dbg !87
  %55 = icmp slt i32 %54, %43, !dbg !87
  %56 = icmp ugt i64 %19, 4294967295, !dbg !87
  %57 = or i1 %55, %56, !dbg !87
  br i1 %57, label %128, label %58, !dbg !87

58:                                               ; preds = %52
  %59 = icmp ult float* %31, %36, !dbg !87
  %60 = icmp ult float* %34, %32, !dbg !87
  %61 = and i1 %59, %60, !dbg !87
  %62 = icmp ugt float* %24, %0, !dbg !87
  %63 = icmp ugt float* %22, %1, !dbg !87
  %64 = and i1 %62, %63, !dbg !87
  %65 = or i1 %61, %64, !dbg !87
  %66 = icmp ult float* %31, %40, !dbg !87
  %67 = icmp ult float* %39, %32, !dbg !87
  %68 = and i1 %66, %67, !dbg !87
  %69 = or i1 %65, %68, !dbg !87
  %70 = icmp ult float* %34, %38, !dbg !87
  %71 = icmp ult float* %37, %36, !dbg !87
  %72 = and i1 %70, %71, !dbg !87
  %73 = or i1 %69, %72, !dbg !87
  %74 = icmp ult float* %34, %40, !dbg !87
  %75 = icmp ult float* %39, %36, !dbg !87
  %76 = and i1 %74, %75, !dbg !87
  %77 = or i1 %73, %76, !dbg !87
  %78 = icmp ult float* %37, %40, !dbg !87
  %79 = icmp ult float* %39, %38, !dbg !87
  %80 = and i1 %78, %79, !dbg !87
  %81 = or i1 %77, %80, !dbg !87
  br i1 %81, label %128, label %82, !dbg !87

82:                                               ; preds = %58
  %83 = and i64 %18, 4294967292, !dbg !87
  %84 = insertelement <4 x float> poison, float %46, i32 0, !dbg !87
  %85 = shufflevector <4 x float> %84, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !87
  %86 = insertelement <4 x float> poison, float %48, i32 0, !dbg !87
  %87 = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> zeroinitializer, !dbg !87
  br label %88, !dbg !87

88:                                               ; preds = %88, %82
  %89 = phi i64 [ 0, %82 ], [ %124, %88 ], !dbg !88
  %90 = add nuw nsw i64 %89, %50, !dbg !89
  %91 = trunc i64 %90 to i32, !dbg !90
  %92 = add i32 %6, %91, !dbg !90
  %93 = sext i32 %92 to i64, !dbg !91
  %94 = getelementptr inbounds float, float* %0, i64 %93, !dbg !91
  %95 = bitcast float* %94 to <4 x float>*, !dbg !91
  %96 = load <4 x float>, <4 x float>* %95, align 4, !dbg !91, !tbaa !13, !alias.scope !92, !noalias !95
  %97 = fmul <4 x float> %85, %96, !dbg !99
  %98 = getelementptr inbounds float, float* %1, i64 %93, !dbg !100
  %99 = bitcast float* %98 to <4 x float>*, !dbg !100
  %100 = load <4 x float>, <4 x float>* %99, align 4, !dbg !100, !tbaa !13, !alias.scope !101, !noalias !102
  %101 = fmul <4 x float> %87, %100, !dbg !103
  %102 = fsub <4 x float> %97, %101, !dbg !104
  %103 = fmul <4 x float> %87, %96, !dbg !105
  %104 = fmul <4 x float> %85, %100, !dbg !106
  %105 = fadd <4 x float> %103, %104, !dbg !107
  %106 = getelementptr inbounds float, float* %0, i64 %90, !dbg !108
  %107 = bitcast float* %106 to <4 x float>*, !dbg !108
  %108 = load <4 x float>, <4 x float>* %107, align 4, !dbg !108, !tbaa !13, !alias.scope !109, !noalias !110
  %109 = fsub <4 x float> %108, %102, !dbg !111
  %110 = bitcast float* %94 to <4 x float>*, !dbg !112
  store <4 x float> %109, <4 x float>* %110, align 4, !dbg !112, !tbaa !13, !alias.scope !92, !noalias !95
  %111 = bitcast float* %106 to <4 x float>*, !dbg !113
  %112 = load <4 x float>, <4 x float>* %111, align 4, !dbg !113, !tbaa !13, !alias.scope !109, !noalias !110
  %113 = fadd <4 x float> %102, %112, !dbg !113
  %114 = bitcast float* %106 to <4 x float>*, !dbg !113
  store <4 x float> %113, <4 x float>* %114, align 4, !dbg !113, !tbaa !13, !alias.scope !109, !noalias !110
  %115 = getelementptr inbounds float, float* %1, i64 %90, !dbg !114
  %116 = bitcast float* %115 to <4 x float>*, !dbg !114
  %117 = load <4 x float>, <4 x float>* %116, align 4, !dbg !114, !tbaa !13, !alias.scope !102
  %118 = fsub <4 x float> %117, %105, !dbg !115
  %119 = bitcast float* %98 to <4 x float>*, !dbg !116
  store <4 x float> %118, <4 x float>* %119, align 4, !dbg !116, !tbaa !13, !alias.scope !101, !noalias !102
  %120 = bitcast float* %115 to <4 x float>*, !dbg !117
  %121 = load <4 x float>, <4 x float>* %120, align 4, !dbg !117, !tbaa !13, !alias.scope !102
  %122 = fadd <4 x float> %105, %121, !dbg !117
  %123 = bitcast float* %115 to <4 x float>*, !dbg !117
  store <4 x float> %122, <4 x float>* %123, align 4, !dbg !117, !tbaa !13, !alias.scope !102
  %124 = add i64 %89, 4, !dbg !88
  %125 = icmp eq i64 %124, %83, !dbg !88
  br i1 %125, label %126, label %88, !dbg !88, !llvm.loop !118

126:                                              ; preds = %88
  %127 = icmp eq i64 %83, %18, !dbg !87
  br i1 %127, label %158, label %128, !dbg !87

128:                                              ; preds = %58, %52, %25, %126
  %129 = phi i64 [ 0, %58 ], [ 0, %52 ], [ 0, %25 ], [ %83, %126 ]
  br label %130, !dbg !87

130:                                              ; preds = %128, %130
  %131 = phi i64 [ %156, %130 ], [ %129, %128 ]
  %132 = add nuw nsw i64 %131, %50, !dbg !89
  %133 = trunc i64 %132 to i32, !dbg !90
  %134 = add i32 %6, %133, !dbg !90
  %135 = sext i32 %134 to i64, !dbg !91
  %136 = getelementptr inbounds float, float* %0, i64 %135, !dbg !91
  %137 = load float, float* %136, align 4, !dbg !91, !tbaa !13
  %138 = fmul float %46, %137, !dbg !99
  %139 = getelementptr inbounds float, float* %1, i64 %135, !dbg !100
  %140 = load float, float* %139, align 4, !dbg !100, !tbaa !13
  %141 = fmul float %48, %140, !dbg !103
  %142 = fsub float %138, %141, !dbg !104
  %143 = fmul float %48, %137, !dbg !105
  %144 = fmul float %46, %140, !dbg !106
  %145 = fadd float %143, %144, !dbg !107
  %146 = getelementptr inbounds float, float* %0, i64 %132, !dbg !108
  %147 = load float, float* %146, align 4, !dbg !108, !tbaa !13
  %148 = fsub float %147, %142, !dbg !111
  store float %148, float* %136, align 4, !dbg !112, !tbaa !13
  %149 = load float, float* %146, align 4, !dbg !113, !tbaa !13
  %150 = fadd float %142, %149, !dbg !113
  store float %150, float* %146, align 4, !dbg !113, !tbaa !13
  %151 = getelementptr inbounds float, float* %1, i64 %132, !dbg !114
  %152 = load float, float* %151, align 4, !dbg !114, !tbaa !13
  %153 = fsub float %152, %145, !dbg !115
  store float %153, float* %139, align 4, !dbg !116, !tbaa !13
  %154 = load float, float* %151, align 4, !dbg !117, !tbaa !13
  %155 = fadd float %145, %154, !dbg !117
  store float %155, float* %151, align 4, !dbg !117, !tbaa !13
  %156 = add nuw nsw i64 %131, 1, !dbg !88
  %157 = icmp eq i64 %156, %18, !dbg !120
  br i1 %157, label %158, label %130, !dbg !87, !llvm.loop !121

158:                                              ; preds = %130, %126
  %159 = add nuw nsw i64 %26, 1, !dbg !122
  %160 = icmp eq i64 %159, %17, !dbg !82
  br i1 %160, label %161, label %25, !dbg !83, !llvm.loop !123

161:                                              ; preds = %158, %5
  %162 = shl i32 %7, 1, !dbg !125
  %163 = ashr i32 %6, 1, !dbg !126
  %164 = add nuw nsw i32 %8, 1, !dbg !127
  %165 = icmp eq i32 %164, 8, !dbg !128
  br i1 %165, label %166, label %5, !dbg !81, !llvm.loop !129

166:                                              ; preds = %161
  ret void, !dbg !131
}

declare dso_local i32 @output_dsp(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree norecurse nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 12.0.0-++20210319082646+4990141a4366-1~exp1~20210319193401.61", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fft_256.c", directory: "/home/cheng/workspace/projects/cgra/cgra-bench/kernels/fft")
!2 = !{}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"Ubuntu clang version 12.0.0-++20210319082646+4990141a4366-1~exp1~20210319193401.61"}
!6 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 17, type: !7, scopeLine: 18, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!7 = !DISubroutineType(types: !2)
!8 = !DILocation(line: 22, column: 3, scope: !6)
!9 = !DILocation(line: 24, column: 3, scope: !6)
!10 = !DILocation(line: 24, column: 23, scope: !6)
!11 = !DILocation(line: 25, column: 5, scope: !6)
!12 = !DILocation(line: 25, column: 18, scope: !6)
!13 = !{!14, !14, i64 0}
!14 = !{!"float", !15, i64 0}
!15 = !{!"omnipotent char", !16, i64 0}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !DILocation(line: 26, column: 5, scope: !6)
!18 = !DILocation(line: 26, column: 18, scope: !6)
!19 = !DILocation(line: 27, column: 5, scope: !6)
!20 = !DILocation(line: 27, column: 18, scope: !6)
!21 = distinct !{!21, !9, !22, !23, !24, !25}
!22 = !DILocation(line: 28, column: 3, scope: !6)
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !DILocation(line: 55, column: 19, scope: !27, inlinedAt: !28)
!27 = distinct !DISubprogram(name: "fft", scope: !1, file: !1, line: 37, type: !7, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!28 = distinct !DILocation(line: 29, column: 3, scope: !6)
!29 = !DILocation(line: 55, column: 5, scope: !27, inlinedAt: !28)
!30 = !DILocation(line: 56, column: 30, scope: !27, inlinedAt: !28)
!31 = !DILocation(line: 56, column: 12, scope: !27, inlinedAt: !28)
!32 = !DILocation(line: 57, column: 12, scope: !27, inlinedAt: !28)
!33 = !DILocation(line: 59, column: 7, scope: !27, inlinedAt: !28)
!34 = !DILocation(line: 59, column: 40, scope: !27, inlinedAt: !28)
!35 = !DILocation(line: 60, column: 55, scope: !27, inlinedAt: !28)
!36 = !DILocation(line: 60, column: 71, scope: !27, inlinedAt: !28)
!37 = !DILocation(line: 60, column: 26, scope: !27, inlinedAt: !28)
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = !DILocation(line: 60, column: 24, scope: !27, inlinedAt: !28)
!44 = !DILocation(line: 61, column: 26, scope: !27, inlinedAt: !28)
!45 = !{!46}
!46 = distinct !{!46, !40}
!47 = !{!48}
!48 = distinct !{!48, !40}
!49 = !DILocation(line: 61, column: 24, scope: !27, inlinedAt: !28)
!50 = !DILocation(line: 60, column: 75, scope: !27, inlinedAt: !28)
!51 = !DILocation(line: 62, column: 24, scope: !27, inlinedAt: !28)
!52 = !DILocation(line: 63, column: 24, scope: !27, inlinedAt: !28)
!53 = !DILocation(line: 62, column: 75, scope: !27, inlinedAt: !28)
!54 = !DILocation(line: 65, column: 21, scope: !27, inlinedAt: !28)
!55 = !DILocation(line: 65, column: 54, scope: !27, inlinedAt: !28)
!56 = !DILocation(line: 64, column: 58, scope: !27, inlinedAt: !28)
!57 = !DILocation(line: 66, column: 42, scope: !27, inlinedAt: !28)
!58 = !DILocation(line: 68, column: 21, scope: !27, inlinedAt: !28)
!59 = !DILocation(line: 68, column: 54, scope: !27, inlinedAt: !28)
!60 = !DILocation(line: 67, column: 58, scope: !27, inlinedAt: !28)
!61 = !DILocation(line: 69, column: 42, scope: !27, inlinedAt: !28)
!62 = distinct !{!62, !33, !63, !23, !24, !25}
!63 = !DILocation(line: 70, column: 7, scope: !27, inlinedAt: !28)
!64 = !DILocation(line: 59, column: 21, scope: !27, inlinedAt: !28)
!65 = distinct !{!65, !33, !63, !23, !24, !25}
!66 = !DILocation(line: 55, column: 37, scope: !27, inlinedAt: !28)
!67 = distinct !{!67, !29, !68, !23, !24}
!68 = !DILocation(line: 71, column: 5, scope: !27, inlinedAt: !28)
!69 = !DILocation(line: 72, column: 20, scope: !27, inlinedAt: !28)
!70 = !DILocation(line: 73, column: 21, scope: !27, inlinedAt: !28)
!71 = !DILocation(line: 54, column: 28, scope: !27, inlinedAt: !28)
!72 = !DILocation(line: 54, column: 17, scope: !27, inlinedAt: !28)
!73 = !DILocation(line: 54, column: 3, scope: !27, inlinedAt: !28)
!74 = distinct !{!74, !73, !75, !23, !24}
!75 = !DILocation(line: 74, column: 3, scope: !27, inlinedAt: !28)
!76 = !DILocation(line: 31, column: 3, scope: !6)
!77 = !DILocation(line: 32, column: 3, scope: !6)
!78 = !DILocation(line: 33, column: 3, scope: !6)
!79 = !DILocation(line: 34, column: 3, scope: !6)
!80 = !DILocation(line: 35, column: 1, scope: !6)
!81 = !DILocation(line: 54, column: 3, scope: !27)
!82 = !DILocation(line: 55, column: 19, scope: !27)
!83 = !DILocation(line: 55, column: 5, scope: !27)
!84 = !DILocation(line: 56, column: 30, scope: !27)
!85 = !DILocation(line: 56, column: 12, scope: !27)
!86 = !DILocation(line: 57, column: 12, scope: !27)
!87 = !DILocation(line: 59, column: 7, scope: !27)
!88 = !DILocation(line: 59, column: 40, scope: !27)
!89 = !DILocation(line: 60, column: 55, scope: !27)
!90 = !DILocation(line: 60, column: 71, scope: !27)
!91 = !DILocation(line: 60, column: 26, scope: !27)
!92 = !{!93}
!93 = distinct !{!93, !94}
!94 = distinct !{!94, !"LVerDomain"}
!95 = !{!96, !97, !98}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !94}
!98 = distinct !{!98, !94}
!99 = !DILocation(line: 60, column: 24, scope: !27)
!100 = !DILocation(line: 61, column: 26, scope: !27)
!101 = !{!97}
!102 = !{!98}
!103 = !DILocation(line: 61, column: 24, scope: !27)
!104 = !DILocation(line: 60, column: 75, scope: !27)
!105 = !DILocation(line: 62, column: 24, scope: !27)
!106 = !DILocation(line: 63, column: 24, scope: !27)
!107 = !DILocation(line: 62, column: 75, scope: !27)
!108 = !DILocation(line: 65, column: 21, scope: !27)
!109 = !{!96}
!110 = !{!97, !98}
!111 = !DILocation(line: 65, column: 54, scope: !27)
!112 = !DILocation(line: 64, column: 58, scope: !27)
!113 = !DILocation(line: 66, column: 42, scope: !27)
!114 = !DILocation(line: 68, column: 21, scope: !27)
!115 = !DILocation(line: 68, column: 54, scope: !27)
!116 = !DILocation(line: 67, column: 58, scope: !27)
!117 = !DILocation(line: 69, column: 42, scope: !27)
!118 = distinct !{!118, !87, !119, !23, !24, !25}
!119 = !DILocation(line: 70, column: 7, scope: !27)
!120 = !DILocation(line: 59, column: 21, scope: !27)
!121 = distinct !{!121, !87, !119, !23, !24, !25}
!122 = !DILocation(line: 55, column: 37, scope: !27)
!123 = distinct !{!123, !83, !124, !23, !24}
!124 = !DILocation(line: 71, column: 5, scope: !27)
!125 = !DILocation(line: 72, column: 20, scope: !27)
!126 = !DILocation(line: 73, column: 21, scope: !27)
!127 = !DILocation(line: 54, column: 28, scope: !27)
!128 = !DILocation(line: 54, column: 17, scope: !27)
!129 = distinct !{!129, !81, !130, !23, !24}
!130 = !DILocation(line: 74, column: 3, scope: !27)
!131 = !DILocation(line: 75, column: 1, scope: !27)
