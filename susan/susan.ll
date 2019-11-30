; ModuleID = 'susan.bc'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00"
@str.32 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00"
@str.33 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00"
@str.34 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00"
@str.35 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00"
@str.36 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00"
@str.37 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00"
@str.38 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00"
@str.39 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00"
@str.40 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00"
@str.41 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00"
@str.42 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00"
@str.43 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00"
@str.44 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00"
@str.45 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00"
@str.46 = private unnamed_addr constant [25 x i8] c"No argument following -t\00"
@str.47 = private unnamed_addr constant [25 x i8] c"No argument following -d\00"

; Function Attrs: noreturn nounwind ssp uwtable
define i32 @usage() #0 {
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @str, i64 0, i64 0))
  %puts1 = tail call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @str.32, i64 0, i64 0))
  %puts2 = tail call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str.33, i64 0, i64 0))
  %puts3 = tail call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @str.34, i64 0, i64 0))
  %puts4 = tail call i32 @puts(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @str.35, i64 0, i64 0))
  %puts5 = tail call i32 @puts(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @str.36, i64 0, i64 0))
  %puts6 = tail call i32 @puts(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @str.37, i64 0, i64 0))
  %puts7 = tail call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @str.38, i64 0, i64 0))
  %puts8 = tail call i32 @puts(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @str.39, i64 0, i64 0))
  %puts9 = tail call i32 @puts(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @str.40, i64 0, i64 0))
  %puts10 = tail call i32 @puts(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @str.41, i64 0, i64 0))
  %puts11 = tail call i32 @puts(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @str.42, i64 0, i64 0))
  %puts12 = tail call i32 @puts(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @str.43, i64 0, i64 0))
  tail call void @exit(i32 0) #12
  unreachable
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: nounwind ssp uwtable
define i32 @getint(%struct.__sFILE* nocapture %fd) #3 {
  %dummy = alloca [10000 x i8], align 16
  %1 = getelementptr inbounds [10000 x i8], [10000 x i8]* %dummy, i64 0, i64 0
  call void @llvm.lifetime.start(i64 10000, i8* %1) #11
  %2 = tail call i32 @getc(%struct.__sFILE* %fd)
  br label %3

; <label>:3                                       ; preds = %0, %10
  %c.0 = phi i32 [ %2, %0 ], [ %11, %10 ]
  switch i32 %c.0, label %8 [
    i32 35, label %.thread
    i32 -1, label %5
  ]

.thread:                                          ; preds = %3
  %4 = call i8* @fgets(i8* %1, i32 9000, %struct.__sFILE* %fd)
  br label %10

; <label>:5                                       ; preds = %3
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %6, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 0) #12
  unreachable

; <label>:8                                       ; preds = %3
  %c.0.off = add i32 %c.0, -48
  %9 = icmp ult i32 %c.0.off, 10
  br i1 %9, label %.preheader, label %10

; <label>:10                                      ; preds = %.thread, %8
  %11 = call i32 @getc(%struct.__sFILE* %fd)
  br label %3

.preheader:                                       ; preds = %8, %.preheader
  %c.1 = phi i32 [ %15, %.preheader ], [ %c.0, %8 ]
  %i.0 = phi i32 [ %14, %.preheader ], [ 0, %8 ]
  %12 = mul nsw i32 %i.0, 10
  %13 = add nsw i32 %c.1, -48
  %14 = add nsw i32 %13, %12
  %15 = call i32 @getc(%struct.__sFILE* %fd)
  %16 = icmp eq i32 %15, -1
  %.off = add i32 %15, -48
  %17 = icmp ugt i32 %.off, 9
  %or.cond = or i1 %16, %17
  br i1 %or.cond, label %18, label %.preheader

; <label>:18                                      ; preds = %.preheader
  call void @llvm.lifetime.end(i64 10000, i8* %1) #11
  ret i32 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare i32 @getc(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind ssp uwtable
define void @get_image(i8* %filename, i8** nocapture %in, i32* nocapture %x_size, i32* nocapture %y_size) #3 {
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)) #11
  %2 = icmp eq %struct.__sFILE* %1, null
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %filename)
  tail call void @exit(i32 0) #12
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @fgetc(%struct.__sFILE* nonnull %1)
  %8 = tail call i32 @fgetc(%struct.__sFILE* nonnull %1)
  %sext.mask = and i32 %7, 255
  %9 = icmp eq i32 %sext.mask, 80
  %sext.mask1 = and i32 %8, 255
  %10 = icmp eq i32 %sext.mask1, 53
  %or.cond = and i1 %9, %10
  br i1 %or.cond, label %14, label %11

; <label>:11                                      ; preds = %6
  %12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %12, i8* nonnull getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i8* %filename)
  tail call void @exit(i32 0) #12
  unreachable

; <label>:14                                      ; preds = %6
  %15 = tail call i32 @getint(%struct.__sFILE* nonnull %1)
  store i32 %15, i32* %x_size, align 4, !tbaa !6
  %16 = tail call i32 @getint(%struct.__sFILE* nonnull %1)
  store i32 %16, i32* %y_size, align 4, !tbaa !6
  %17 = tail call i32 @getint(%struct.__sFILE* nonnull %1)
  %18 = load i32, i32* %x_size, align 4, !tbaa !6
  %19 = load i32, i32* %y_size, align 4, !tbaa !6
  %20 = mul nsw i32 %19, %18
  %21 = sext i32 %20 to i64
  %22 = tail call i8* @malloc(i64 %21)
  store i8* %22, i8** %in, align 8, !tbaa !2
  %23 = tail call i64 @fread(i8* %22, i64 1, i64 %21, %struct.__sFILE* nonnull %1)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

; <label>:25                                      ; preds = %14
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %27 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %26, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i8* %filename)
  tail call void @exit(i32 0) #12
  unreachable

; <label>:28                                      ; preds = %14
  %29 = tail call i32 @fclose(%struct.__sFILE* nonnull %1)
  ret void
}

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #5

; Function Attrs: nounwind
declare i32 @fgetc(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct.__sFILE* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @put_image(i8* %filename, i8* %in, i32 %x_size, i32 %y_size) #3 {
  %1 = tail call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #11
  %2 = icmp eq %struct.__sFILE* %1, null
  br i1 %2, label %3, label %6

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %4, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8* %filename)
  tail call void @exit(i32 0) #12
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 3, i64 1, %struct.__sFILE* nonnull %1)
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* nonnull %1, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %x_size, i32 %y_size)
  %9 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i64 4, i64 1, %struct.__sFILE* nonnull %1)
  %10 = mul nsw i32 %y_size, %x_size
  %11 = sext i32 %10 to i64
  %12 = tail call i64 @"\01_fwrite"(i8* %in, i64 %11, i64 1, %struct.__sFILE* nonnull %1) #11
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %6
  %15 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %16 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %15, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8* %filename)
  tail call void @exit(i32 0) #12
  unreachable

; <label>:17                                      ; preds = %6
  %18 = tail call i32 @fclose(%struct.__sFILE* nonnull %1)
  ret i32 undef
}

declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #5

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @int_to_uchar(i32* nocapture readonly %r, i8* nocapture %in, i32 %size) #6 {
  %1 = load i32, i32* %r, align 4, !tbaa !6
  %2 = icmp sgt i32 %size, 0
  br i1 %2, label %.lr.ph6.preheader, label %._crit_edge

.lr.ph6.preheader:                                ; preds = %0
  %exitcond1217 = icmp eq i32 %size, 1
  br i1 %exitcond1217, label %._crit_edge7, label %.lr.ph6..lr.ph6_crit_edge.lr.ph

.lr.ph6..lr.ph6_crit_edge.lr.ph:                  ; preds = %.lr.ph6.preheader
  %3 = add i32 %size, -2
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %.lr.ph6..lr.ph6_crit_edge, label %min.iters.checked

min.iters.checked:                                ; preds = %.lr.ph6..lr.ph6_crit_edge.lr.ph
  %n.vec = and i64 %5, 8589934588
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = or i64 %n.vec, 1
  br i1 %cmp.zero, label %.lr.ph6..lr.ph6_crit_edge, label %vector.ph

vector.ph:                                        ; preds = %min.iters.checked
  %minmax.ident.splatinsert28 = insertelement <4 x i32> undef, i32 %1, i32 0
  %minmax.ident.splat29 = shufflevector <4 x i32> %minmax.ident.splatinsert28, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert = insertelement <4 x i32> undef, i32 %1, i32 0
  %minmax.ident.splat = shufflevector <4 x i32> %minmax.ident.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %minmax.ident.splat, %vector.ph ], [ %11, %vector.body ]
  %vec.phi22 = phi <4 x i32> [ %minmax.ident.splat29, %vector.ph ], [ %9, %vector.body ]
  %offset.idx = or i64 %index, 1
  %6 = getelementptr inbounds i32, i32* %r, i64 %offset.idx
  %7 = bitcast i32* %6 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %7, align 4, !tbaa !6
  %8 = icmp sgt <4 x i32> %wide.load, %vec.phi22
  %9 = select <4 x i1> %8, <4 x i32> %wide.load, <4 x i32> %vec.phi22
  %10 = icmp slt <4 x i32> %wide.load, %vec.phi
  %11 = select <4 x i1> %10, <4 x i32> %wide.load, <4 x i32> %vec.phi
  %index.next = add i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %rdx.shuf30 = shufflevector <4 x i32> %9, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp31 = icmp sgt <4 x i32> %9, %rdx.shuf30
  %rdx.minmax.select32 = select <4 x i1> %rdx.minmax.cmp31, <4 x i32> %9, <4 x i32> %rdx.shuf30
  %rdx.shuf33 = shufflevector <4 x i32> %rdx.minmax.select32, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp34 = icmp sgt <4 x i32> %rdx.minmax.select32, %rdx.shuf33
  %rdx.minmax.cmp34.elt = extractelement <4 x i1> %rdx.minmax.cmp34, i32 0
  %rdx.minmax.select32.elt = extractelement <4 x i32> %rdx.minmax.select32, i32 0
  %rdx.shuf33.elt = extractelement <4 x i32> %rdx.minmax.select32, i32 1
  %13 = select i1 %rdx.minmax.cmp34.elt, i32 %rdx.minmax.select32.elt, i32 %rdx.shuf33.elt
  %rdx.shuf = shufflevector <4 x i32> %11, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp = icmp slt <4 x i32> %11, %rdx.shuf
  %rdx.minmax.select = select <4 x i1> %rdx.minmax.cmp, <4 x i32> %11, <4 x i32> %rdx.shuf
  %rdx.shuf25 = shufflevector <4 x i32> %rdx.minmax.select, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp26 = icmp slt <4 x i32> %rdx.minmax.select, %rdx.shuf25
  %rdx.minmax.cmp26.elt = extractelement <4 x i1> %rdx.minmax.cmp26, i32 0
  %rdx.minmax.select.elt = extractelement <4 x i32> %rdx.minmax.select, i32 0
  %rdx.shuf25.elt = extractelement <4 x i32> %rdx.minmax.select, i32 1
  %14 = select i1 %rdx.minmax.cmp26.elt, i32 %rdx.minmax.select.elt, i32 %rdx.shuf25.elt
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %._crit_edge7, label %.lr.ph6..lr.ph6_crit_edge

.lr.ph6..lr.ph6_crit_edge:                        ; preds = %.lr.ph6..lr.ph6_crit_edge.lr.ph, %min.iters.checked, %middle.block, %.lr.ph6..lr.ph6_crit_edge
  %indvars.iv.next1020 = phi i64 [ %indvars.iv.next10, %.lr.ph6..lr.ph6_crit_edge ], [ %ind.end, %middle.block ], [ 1, %.lr.ph6..lr.ph6_crit_edge.lr.ph ], [ 1, %min.iters.checked ]
  %min_r.119 = phi i32 [ %min_r.1, %.lr.ph6..lr.ph6_crit_edge ], [ %14, %middle.block ], [ %1, %.lr.ph6..lr.ph6_crit_edge.lr.ph ], [ %1, %min.iters.checked ]
  %.max_r.018 = phi i32 [ %.max_r.0, %.lr.ph6..lr.ph6_crit_edge ], [ %13, %middle.block ], [ %1, %.lr.ph6..lr.ph6_crit_edge.lr.ph ], [ %1, %min.iters.checked ]
  %.phi.trans.insert = getelementptr inbounds i32, i32* %r, i64 %indvars.iv.next1020
  %.pre = load i32, i32* %.phi.trans.insert, align 4, !tbaa !6
  %15 = icmp sgt i32 %.pre, %.max_r.018
  %.max_r.0 = select i1 %15, i32 %.pre, i32 %.max_r.018
  %16 = icmp slt i32 %.pre, %min_r.119
  %min_r.1 = select i1 %16, i32 %.pre, i32 %min_r.119
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv.next1020, 1
  %lftr.wideiv11 = trunc i64 %indvars.iv.next10 to i32
  %exitcond12 = icmp eq i32 %lftr.wideiv11, %size
  br i1 %exitcond12, label %._crit_edge7, label %.lr.ph6..lr.ph6_crit_edge, !llvm.loop !11

._crit_edge7:                                     ; preds = %.lr.ph6..lr.ph6_crit_edge, %middle.block, %.lr.ph6.preheader
  %min_r.1.lcssa = phi i32 [ %1, %.lr.ph6.preheader ], [ %min_r.1, %.lr.ph6..lr.ph6_crit_edge ], [ %14, %middle.block ]
  %.max_r.0.lcssa = phi i32 [ %1, %.lr.ph6.preheader ], [ %.max_r.0, %.lr.ph6..lr.ph6_crit_edge ], [ %13, %middle.block ]
  %17 = sub nsw i32 %.max_r.0.lcssa, %min_r.1.lcssa
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %._crit_edge7
  %18 = sub nsw i32 %1, %min_r.1.lcssa
  %19 = mul nsw i32 %18, 255
  %20 = sdiv i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %in, align 1, !tbaa !13
  %exitcond15 = icmp eq i32 %size, 1
  br i1 %exitcond15, label %._crit_edge, label %.lr.ph..lr.ph_crit_edge

.lr.ph..lr.ph_crit_edge:                          ; preds = %.lr.ph.preheader, %.lr.ph..lr.ph_crit_edge
  %indvars.iv.next16 = phi i64 [ %indvars.iv.next, %.lr.ph..lr.ph_crit_edge ], [ 1, %.lr.ph.preheader ]
  %.phi.trans.insert13 = getelementptr inbounds i32, i32* %r, i64 %indvars.iv.next16
  %.pre14 = load i32, i32* %.phi.trans.insert13, align 4, !tbaa !6
  %22 = sub nsw i32 %.pre14, %min_r.1.lcssa
  %23 = mul nsw i32 %22, 255
  %24 = sdiv i32 %23, %17
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, i8* %in, i64 %indvars.iv.next16
  store i8 %25, i8* %26, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next16, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %size
  br i1 %exitcond, label %._crit_edge, label %.lr.ph..lr.ph_crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.lr.ph..lr.ph_crit_edge, %0, %._crit_edge7
  ret i32 undef
}

; Function Attrs: nounwind ssp uwtable
define void @setup_brightness_lut(i8** nocapture %bp, i32 %thresh, i32 %form) #3 {
  %1 = tail call i8* @malloc(i64 516)
  %2 = getelementptr inbounds i8, i8* %1, i64 258
  store i8* %2, i8** %bp, align 8, !tbaa !2
  %3 = sitofp i32 %thresh to float
  %4 = icmp eq i32 %form, 6
  br i1 %4, label %.split.us, label %.split

.split.us:                                        ; preds = %0, %.split.us..split.us_crit_edge
  %5 = phi i8* [ %.pre6, %.split.us..split.us_crit_edge ], [ %2, %0 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split.us..split.us_crit_edge ], [ -256, %0 ]
  %6 = trunc i64 %indvars.iv to i32
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %7, %3
  %9 = fmul float %8, %8
  %10 = fmul float %9, %9
  %11 = fmul float %9, %10
  %12 = fsub float -0.000000e+00, %11
  %13 = fpext float %12 to double
  %14 = tail call double @exp(double %13) #8
  %15 = fmul double %14, 1.000000e+02
  %16 = fptrunc double %15 to float
  %17 = fptoui float %16 to i8
  %18 = getelementptr inbounds i8, i8* %5, i64 %indvars.iv
  store i8 %17, i8* %18, align 1, !tbaa !13
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond, label %.us-lcssa.us, label %.split.us..split.us_crit_edge

.split.us..split.us_crit_edge:                    ; preds = %.split.us
  %.pre6 = load i8*, i8** %bp, align 8, !tbaa !2
  br label %.split.us

.split:                                           ; preds = %0, %.split..split_crit_edge
  %19 = phi i8* [ %.pre, %.split..split_crit_edge ], [ %2, %0 ]
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %.split..split_crit_edge ], [ -256, %0 ]
  %20 = trunc i64 %indvars.iv3 to i32
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, %3
  %23 = fmul float %22, %22
  %24 = fsub float -0.000000e+00, %23
  %25 = fpext float %24 to double
  %26 = tail call double @exp(double %25) #8
  %27 = fmul double %26, 1.000000e+02
  %28 = fptrunc double %27 to float
  %29 = fptoui float %28 to i8
  %30 = getelementptr inbounds i8, i8* %19, i64 %indvars.iv3
  store i8 %29, i8* %30, align 1, !tbaa !13
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 257
  br i1 %exitcond5, label %.us-lcssa.us, label %.split..split_crit_edge

.split..split_crit_edge:                          ; preds = %.split
  %.pre = load i8*, i8** %bp, align 8, !tbaa !2
  br label %.split

.us-lcssa.us:                                     ; preds = %.split, %.split.us
  ret void
}

; Function Attrs: nounwind readnone
declare double @exp(double) #7

; Function Attrs: nounwind ssp uwtable
define i32 @susan_principle(i8* nocapture readonly %in, i32* %r, i8* readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
  %1 = bitcast i32* %r to i8*
  %2 = mul nsw i32 %y_size, %x_size
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %6 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 %4, i64 %5) #11
  %7 = add i32 %y_size, -3
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %0
  %9 = add i32 %x_size, -3
  %10 = icmp sgt i32 %9, 3
  %11 = sext i32 %9 to i64
  %12 = add nsw i32 %x_size, -5
  %13 = sext i32 %12 to i64
  %14 = add nsw i32 %x_size, -6
  %15 = sext i32 %14 to i64
  %16 = sext i32 %x_size to i64
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv5 = phi i64 [ 3, %.preheader.lr.ph ], [ %indvars.iv.next6, %._crit_edge ]
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %17 = add nsw i64 %indvars.iv5, -3
  %18 = mul nsw i64 %17, %16
  %19 = getelementptr inbounds i8, i8* %in, i64 %18
  %20 = mul nsw i64 %indvars.iv5, %16
  %21 = trunc i64 %20 to i32
  br label %22

; <label>:22                                      ; preds = %322, %.lr.ph
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %322 ]
  %j.01 = phi i32 [ 3, %.lr.ph ], [ %323, %322 ]
  %23 = getelementptr inbounds i8, i8* %19, i64 %indvars.iv
  %24 = getelementptr inbounds i8, i8* %23, i64 -1
  %25 = add nsw i32 %j.01, %21
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %in, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !13
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i8, i8* %bp, i64 %29
  %31 = getelementptr inbounds i8, i8* %24, i64 1
  %32 = load i8, i8* %24, align 1, !tbaa !13
  %33 = zext i8 %32 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %37, 100
  %39 = getelementptr inbounds i8, i8* %31, i64 1
  %40 = load i8, i8* %31, align 1, !tbaa !13
  %41 = zext i8 %40 to i64
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds i8, i8* %30, i64 %42
  %44 = load i8, i8* %43, align 1, !tbaa !13
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %38, %45
  %47 = load i8, i8* %39, align 1, !tbaa !13
  %48 = zext i8 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, i8* %30, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %46, %52
  %54 = getelementptr inbounds i8, i8* %39, i64 %11
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %54, align 1, !tbaa !13
  %57 = zext i8 %56 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, i8* %30, i64 %58
  %60 = load i8, i8* %59, align 1, !tbaa !13
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %53, %61
  %63 = getelementptr inbounds i8, i8* %55, i64 1
  %64 = load i8, i8* %55, align 1, !tbaa !13
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, i8* %30, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !13
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %62, %69
  %71 = getelementptr inbounds i8, i8* %63, i64 1
  %72 = load i8, i8* %63, align 1, !tbaa !13
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, i8* %30, i64 %74
  %76 = load i8, i8* %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %70, %77
  %79 = getelementptr inbounds i8, i8* %71, i64 1
  %80 = load i8, i8* %71, align 1, !tbaa !13
  %81 = zext i8 %80 to i64
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i8, i8* %30, i64 %82
  %84 = load i8, i8* %83, align 1, !tbaa !13
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %78, %85
  %87 = load i8, i8* %79, align 1, !tbaa !13
  %88 = zext i8 %87 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, i8* %30, i64 %89
  %91 = load i8, i8* %90, align 1, !tbaa !13
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %86, %92
  %94 = getelementptr inbounds i8, i8* %79, i64 %13
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %94, align 1, !tbaa !13
  %97 = zext i8 %96 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, i8* %30, i64 %98
  %100 = load i8, i8* %99, align 1, !tbaa !13
  %101 = zext i8 %100 to i32
  %102 = add nsw i32 %93, %101
  %103 = getelementptr inbounds i8, i8* %95, i64 1
  %104 = load i8, i8* %95, align 1, !tbaa !13
  %105 = zext i8 %104 to i64
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, i8* %30, i64 %106
  %108 = load i8, i8* %107, align 1, !tbaa !13
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %102, %109
  %111 = getelementptr inbounds i8, i8* %103, i64 1
  %112 = load i8, i8* %103, align 1, !tbaa !13
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, i8* %30, i64 %114
  %116 = load i8, i8* %115, align 1, !tbaa !13
  %117 = zext i8 %116 to i32
  %118 = add nsw i32 %110, %117
  %119 = getelementptr inbounds i8, i8* %111, i64 1
  %120 = load i8, i8* %111, align 1, !tbaa !13
  %121 = zext i8 %120 to i64
  %122 = sub nsw i64 0, %121
  %123 = getelementptr inbounds i8, i8* %30, i64 %122
  %124 = load i8, i8* %123, align 1, !tbaa !13
  %125 = zext i8 %124 to i32
  %126 = add nsw i32 %118, %125
  %127 = getelementptr inbounds i8, i8* %119, i64 1
  %128 = load i8, i8* %119, align 1, !tbaa !13
  %129 = zext i8 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i8, i8* %30, i64 %130
  %132 = load i8, i8* %131, align 1, !tbaa !13
  %133 = zext i8 %132 to i32
  %134 = add nsw i32 %126, %133
  %135 = getelementptr inbounds i8, i8* %127, i64 1
  %136 = load i8, i8* %127, align 1, !tbaa !13
  %137 = zext i8 %136 to i64
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, i8* %30, i64 %138
  %140 = load i8, i8* %139, align 1, !tbaa !13
  %141 = zext i8 %140 to i32
  %142 = add nsw i32 %134, %141
  %143 = load i8, i8* %135, align 1, !tbaa !13
  %144 = zext i8 %143 to i64
  %145 = sub nsw i64 0, %144
  %146 = getelementptr inbounds i8, i8* %30, i64 %145
  %147 = load i8, i8* %146, align 1, !tbaa !13
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %142, %148
  %150 = getelementptr inbounds i8, i8* %135, i64 %15
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %150, align 1, !tbaa !13
  %153 = zext i8 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, i8* %30, i64 %154
  %156 = load i8, i8* %155, align 1, !tbaa !13
  %157 = zext i8 %156 to i32
  %158 = add nsw i32 %149, %157
  %159 = getelementptr inbounds i8, i8* %151, i64 1
  %160 = load i8, i8* %151, align 1, !tbaa !13
  %161 = zext i8 %160 to i64
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, i8* %30, i64 %162
  %164 = load i8, i8* %163, align 1, !tbaa !13
  %165 = zext i8 %164 to i32
  %166 = add nsw i32 %158, %165
  %167 = load i8, i8* %159, align 1, !tbaa !13
  %168 = zext i8 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, i8* %30, i64 %169
  %171 = load i8, i8* %170, align 1, !tbaa !13
  %172 = zext i8 %171 to i32
  %173 = add nsw i32 %166, %172
  %174 = getelementptr inbounds i8, i8* %159, i64 2
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %174, align 1, !tbaa !13
  %177 = zext i8 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, i8* %30, i64 %178
  %180 = load i8, i8* %179, align 1, !tbaa !13
  %181 = zext i8 %180 to i32
  %182 = add nsw i32 %173, %181
  %183 = getelementptr inbounds i8, i8* %175, i64 1
  %184 = load i8, i8* %175, align 1, !tbaa !13
  %185 = zext i8 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, i8* %30, i64 %186
  %188 = load i8, i8* %187, align 1, !tbaa !13
  %189 = zext i8 %188 to i32
  %190 = add nsw i32 %182, %189
  %191 = load i8, i8* %183, align 1, !tbaa !13
  %192 = zext i8 %191 to i64
  %193 = sub nsw i64 0, %192
  %194 = getelementptr inbounds i8, i8* %30, i64 %193
  %195 = load i8, i8* %194, align 1, !tbaa !13
  %196 = zext i8 %195 to i32
  %197 = add nsw i32 %190, %196
  %198 = getelementptr inbounds i8, i8* %183, i64 %15
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  %200 = load i8, i8* %198, align 1, !tbaa !13
  %201 = zext i8 %200 to i64
  %202 = sub nsw i64 0, %201
  %203 = getelementptr inbounds i8, i8* %30, i64 %202
  %204 = load i8, i8* %203, align 1, !tbaa !13
  %205 = zext i8 %204 to i32
  %206 = add nsw i32 %197, %205
  %207 = getelementptr inbounds i8, i8* %199, i64 1
  %208 = load i8, i8* %199, align 1, !tbaa !13
  %209 = zext i8 %208 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, i8* %30, i64 %210
  %212 = load i8, i8* %211, align 1, !tbaa !13
  %213 = zext i8 %212 to i32
  %214 = add nsw i32 %206, %213
  %215 = getelementptr inbounds i8, i8* %207, i64 1
  %216 = load i8, i8* %207, align 1, !tbaa !13
  %217 = zext i8 %216 to i64
  %218 = sub nsw i64 0, %217
  %219 = getelementptr inbounds i8, i8* %30, i64 %218
  %220 = load i8, i8* %219, align 1, !tbaa !13
  %221 = zext i8 %220 to i32
  %222 = add nsw i32 %214, %221
  %223 = getelementptr inbounds i8, i8* %215, i64 1
  %224 = load i8, i8* %215, align 1, !tbaa !13
  %225 = zext i8 %224 to i64
  %226 = sub nsw i64 0, %225
  %227 = getelementptr inbounds i8, i8* %30, i64 %226
  %228 = load i8, i8* %227, align 1, !tbaa !13
  %229 = zext i8 %228 to i32
  %230 = add nsw i32 %222, %229
  %231 = getelementptr inbounds i8, i8* %223, i64 1
  %232 = load i8, i8* %223, align 1, !tbaa !13
  %233 = zext i8 %232 to i64
  %234 = sub nsw i64 0, %233
  %235 = getelementptr inbounds i8, i8* %30, i64 %234
  %236 = load i8, i8* %235, align 1, !tbaa !13
  %237 = zext i8 %236 to i32
  %238 = add nsw i32 %230, %237
  %239 = getelementptr inbounds i8, i8* %231, i64 1
  %240 = load i8, i8* %231, align 1, !tbaa !13
  %241 = zext i8 %240 to i64
  %242 = sub nsw i64 0, %241
  %243 = getelementptr inbounds i8, i8* %30, i64 %242
  %244 = load i8, i8* %243, align 1, !tbaa !13
  %245 = zext i8 %244 to i32
  %246 = add nsw i32 %238, %245
  %247 = load i8, i8* %239, align 1, !tbaa !13
  %248 = zext i8 %247 to i64
  %249 = sub nsw i64 0, %248
  %250 = getelementptr inbounds i8, i8* %30, i64 %249
  %251 = load i8, i8* %250, align 1, !tbaa !13
  %252 = zext i8 %251 to i32
  %253 = add nsw i32 %246, %252
  %254 = getelementptr inbounds i8, i8* %239, i64 %13
  %255 = getelementptr inbounds i8, i8* %254, i64 1
  %256 = load i8, i8* %254, align 1, !tbaa !13
  %257 = zext i8 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = getelementptr inbounds i8, i8* %30, i64 %258
  %260 = load i8, i8* %259, align 1, !tbaa !13
  %261 = zext i8 %260 to i32
  %262 = add nsw i32 %253, %261
  %263 = getelementptr inbounds i8, i8* %255, i64 1
  %264 = load i8, i8* %255, align 1, !tbaa !13
  %265 = zext i8 %264 to i64
  %266 = sub nsw i64 0, %265
  %267 = getelementptr inbounds i8, i8* %30, i64 %266
  %268 = load i8, i8* %267, align 1, !tbaa !13
  %269 = zext i8 %268 to i32
  %270 = add nsw i32 %262, %269
  %271 = getelementptr inbounds i8, i8* %263, i64 1
  %272 = load i8, i8* %263, align 1, !tbaa !13
  %273 = zext i8 %272 to i64
  %274 = sub nsw i64 0, %273
  %275 = getelementptr inbounds i8, i8* %30, i64 %274
  %276 = load i8, i8* %275, align 1, !tbaa !13
  %277 = zext i8 %276 to i32
  %278 = add nsw i32 %270, %277
  %279 = getelementptr inbounds i8, i8* %271, i64 1
  %280 = load i8, i8* %271, align 1, !tbaa !13
  %281 = zext i8 %280 to i64
  %282 = sub nsw i64 0, %281
  %283 = getelementptr inbounds i8, i8* %30, i64 %282
  %284 = load i8, i8* %283, align 1, !tbaa !13
  %285 = zext i8 %284 to i32
  %286 = add nsw i32 %278, %285
  %287 = load i8, i8* %279, align 1, !tbaa !13
  %288 = zext i8 %287 to i64
  %289 = sub nsw i64 0, %288
  %290 = getelementptr inbounds i8, i8* %30, i64 %289
  %291 = load i8, i8* %290, align 1, !tbaa !13
  %292 = zext i8 %291 to i32
  %293 = add nsw i32 %286, %292
  %294 = getelementptr inbounds i8, i8* %279, i64 %11
  %295 = getelementptr inbounds i8, i8* %294, i64 1
  %296 = load i8, i8* %294, align 1, !tbaa !13
  %297 = zext i8 %296 to i64
  %298 = sub nsw i64 0, %297
  %299 = getelementptr inbounds i8, i8* %30, i64 %298
  %300 = load i8, i8* %299, align 1, !tbaa !13
  %301 = zext i8 %300 to i32
  %302 = add nsw i32 %293, %301
  %303 = getelementptr inbounds i8, i8* %295, i64 1
  %304 = load i8, i8* %295, align 1, !tbaa !13
  %305 = zext i8 %304 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i8, i8* %30, i64 %306
  %308 = load i8, i8* %307, align 1, !tbaa !13
  %309 = zext i8 %308 to i32
  %310 = add nsw i32 %302, %309
  %311 = load i8, i8* %303, align 1, !tbaa !13
  %312 = zext i8 %311 to i64
  %313 = sub nsw i64 0, %312
  %314 = getelementptr inbounds i8, i8* %30, i64 %313
  %315 = load i8, i8* %314, align 1, !tbaa !13
  %316 = zext i8 %315 to i32
  %317 = add nsw i32 %310, %316
  %318 = icmp sgt i32 %317, %max_no
  br i1 %318, label %322, label %319

; <label>:319                                     ; preds = %22
  %320 = sub nsw i32 %max_no, %317
  %321 = getelementptr inbounds i32, i32* %r, i64 %26
  store i32 %320, i32* %321, align 4, !tbaa !6
  br label %322

; <label>:322                                     ; preds = %22, %319
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %323 = add nuw nsw i32 %j.01, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %._crit_edge, label %22

._crit_edge:                                      ; preds = %322, %.preheader
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %lftr.wideiv7 = trunc i64 %indvars.iv.next6 to i32
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %7
  br i1 %exitcond8, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %._crit_edge, %0
  ret i32 undef
}

; Function Attrs: nounwind
declare i8* @__memset_chk(i8*, i32, i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #8

; Function Attrs: nounwind ssp uwtable
define i32 @susan_principle_small(i8* nocapture readonly %in, i32* %r, i8* nocapture readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
  %1 = bitcast i32* %r to i8*
  %2 = mul nsw i32 %y_size, %x_size
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %6 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 %4, i64 %5) #11
  %7 = add i32 %y_size, -1
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %0
  %9 = add i32 %x_size, -1
  %10 = icmp sgt i32 %9, 1
  %11 = add nsw i32 %x_size, -2
  %12 = sext i32 %11 to i64
  br i1 %10, label %.lr.ph.us.preheader, label %._crit_edge4

.lr.ph.us.preheader:                              ; preds = %.preheader.lr.ph
  %13 = sext i32 %x_size to i64
  br label %.lr.ph.us

; <label>:14                                      ; preds = %90, %.lr.ph.us
  %indvars.iv = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next, %90 ]
  %j.01.us = phi i32 [ 1, %.lr.ph.us ], [ %91, %90 ]
  %15 = getelementptr inbounds i8, i8* %94, i64 %indvars.iv
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  %17 = add nsw i32 %j.01.us, %96
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %in, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i8, i8* %bp, i64 %21
  %23 = getelementptr inbounds i8, i8* %16, i64 1
  %24 = load i8, i8* %16, align 1, !tbaa !13
  %25 = zext i8 %24 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !13
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 100
  %31 = getelementptr inbounds i8, i8* %23, i64 1
  %32 = load i8, i8* %23, align 1, !tbaa !13
  %33 = zext i8 %32 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds i8, i8* %22, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %30, %37
  %39 = load i8, i8* %31, align 1, !tbaa !13
  %40 = zext i8 %39 to i64
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds i8, i8* %22, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %38, %44
  %46 = getelementptr inbounds i8, i8* %31, i64 %12
  %47 = load i8, i8* %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, i8* %22, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %45, %52
  %54 = getelementptr inbounds i8, i8* %46, i64 2
  %55 = load i8, i8* %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i64
  %57 = sub nsw i64 0, %56
  %58 = getelementptr inbounds i8, i8* %22, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !13
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %53, %60
  %62 = getelementptr inbounds i8, i8* %54, i64 %12
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %62, align 1, !tbaa !13
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, i8* %22, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !13
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %61, %69
  %71 = getelementptr inbounds i8, i8* %63, i64 1
  %72 = load i8, i8* %63, align 1, !tbaa !13
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, i8* %22, i64 %74
  %76 = load i8, i8* %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %70, %77
  %79 = load i8, i8* %71, align 1, !tbaa !13
  %80 = zext i8 %79 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds i8, i8* %22, i64 %81
  %83 = load i8, i8* %82, align 1, !tbaa !13
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %78, %84
  %86 = icmp slt i32 %85, 731
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %14
  %88 = sub nsw i32 730, %85
  %89 = getelementptr inbounds i32, i32* %r, i64 %18
  store i32 %88, i32* %89, align 4, !tbaa !6
  br label %90

; <label>:90                                      ; preds = %87, %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %91 = add nuw nsw i32 %j.01.us, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %._crit_edge.us, label %14

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph.us.preheader
  %indvars.iv6 = phi i64 [ 1, %.lr.ph.us.preheader ], [ %indvars.iv.next7, %._crit_edge.us ]
  %92 = add nsw i64 %indvars.iv6, -1
  %93 = mul nsw i64 %92, %13
  %94 = getelementptr inbounds i8, i8* %in, i64 %93
  %95 = mul nsw i64 %indvars.iv6, %13
  %96 = trunc i64 %95 to i32
  br label %14

._crit_edge.us:                                   ; preds = %90
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv8 = trunc i64 %indvars.iv.next7 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %7
  br i1 %exitcond9, label %._crit_edge4, label %.lr.ph.us

._crit_edge4:                                     ; preds = %._crit_edge.us, %.preheader.lr.ph, %0
  ret i32 undef
}

; Function Attrs: norecurse nounwind readonly ssp uwtable
define zeroext i8 @median(i8* nocapture readonly %in, i32 %i, i32 %j, i32 %x_size) #9 {
  %p = alloca [8 x i32], align 16
  %1 = bitcast [8 x i32]* %p to i8*
  call void @llvm.lifetime.start(i64 32, i8* %1) #11
  %2 = add nsw i32 %i, -1
  %3 = mul nsw i32 %2, %x_size
  %4 = add nsw i32 %3, %j
  %5 = add nsw i32 %4, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %in, i64 %6
  %8 = load i8, i8* %7, align 1, !tbaa !13
  %9 = sext i32 %4 to i64
  %10 = getelementptr inbounds i8, i8* %in, i64 %9
  %11 = load i8, i8* %10, align 1, !tbaa !13
  %12 = add nsw i32 %4, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %in, i64 %13
  %15 = load i8, i8* %14, align 1, !tbaa !13
  %16 = mul nsw i32 %x_size, %i
  %17 = add nsw i32 %16, %j
  %18 = add nsw i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %in, i64 %19
  %21 = load i8, i8* %20, align 1, !tbaa !13
  %22 = insertelement <4 x i8> undef, i8 %8, i32 0
  %23 = insertelement <4 x i8> %22, i8 %11, i32 1
  %24 = insertelement <4 x i8> %23, i8 %15, i32 2
  %25 = insertelement <4 x i8> %24, i8 %21, i32 3
  %26 = zext <4 x i8> %25 to <4 x i32>
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 3
  %28 = bitcast [8 x i32]* %p to <4 x i32>*
  store <4 x i32> %26, <4 x i32>* %28, align 16, !tbaa !6
  %29 = add nsw i32 %17, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %in, i64 %30
  %32 = load i8, i8* %31, align 1, !tbaa !13
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 4
  %34 = add nsw i32 %i, 1
  %35 = mul nsw i32 %34, %x_size
  %36 = add nsw i32 %35, %j
  %37 = add nsw i32 %36, -1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %in, i64 %38
  %40 = load i8, i8* %39, align 1, !tbaa !13
  %41 = sext i32 %36 to i64
  %42 = getelementptr inbounds i8, i8* %in, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !13
  %44 = add nsw i32 %36, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %in, i64 %45
  %47 = load i8, i8* %46, align 1, !tbaa !13
  %48 = insertelement <4 x i8> undef, i8 %32, i32 0
  %49 = insertelement <4 x i8> %48, i8 %40, i32 1
  %50 = insertelement <4 x i8> %49, i8 %43, i32 2
  %51 = insertelement <4 x i8> %50, i8 %47, i32 3
  %52 = zext <4 x i8> %51 to <4 x i32>
  %53 = bitcast i32* %33 to <4 x i32>*
  store <4 x i32> %52, <4 x i32>* %53, align 16, !tbaa !6
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %0, %._crit_edge
  %indvars.iv3 = phi i32 [ 7, %0 ], [ %indvars.iv.next4, %._crit_edge ]
  %k.02 = phi i32 [ 0, %0 ], [ %60, %._crit_edge ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.backedge, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.backedge ]
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 %indvars.iv
  %55 = load i32, i32* %54, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %p, i64 0, i64 %indvars.iv.next
  %57 = load i32, i32* %56, align 4, !tbaa !6
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %.backedge

.backedge:                                        ; preds = %.lr.ph, %59
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv3
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

; <label>:59                                      ; preds = %.lr.ph
  store i32 %57, i32* %54, align 4, !tbaa !6
  store i32 %55, i32* %56, align 4, !tbaa !6
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge
  %60 = add nuw nsw i32 %k.02, 1
  %indvars.iv.next4 = add nsw i32 %indvars.iv3, -1
  %exitcond5 = icmp eq i32 %60, 7
  br i1 %exitcond5, label %61, label %.lr.ph.preheader

; <label>:61                                      ; preds = %._crit_edge
  %62 = load i32, i32* %27, align 4, !tbaa !6
  %63 = load i32, i32* %33, align 16, !tbaa !6
  %64 = add nsw i32 %63, %62
  %65 = sdiv i32 %64, 2
  %66 = trunc i32 %65 to i8
  call void @llvm.lifetime.end(i64 32, i8* nonnull %1) #11
  ret i8 %66
}

; Function Attrs: nounwind ssp uwtable
define i32 @enlarge(i8** nocapture %in, i8* %tmp_image, i32* nocapture %x_size, i32* nocapture %y_size, i32 %border) #3 {
  %1 = load i32, i32* %y_size, align 4, !tbaa !6
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %.lr.ph13, label %.preheader2

.lr.ph13:                                         ; preds = %0
  %3 = shl i32 %border, 1
  %4 = sext i32 %border to i64
  br label %9

.preheader2:                                      ; preds = %9, %0
  %5 = icmp sgt i32 %border, 0
  br i1 %5, label %.lr.ph10, label %.preheader1.._crit_edge7_crit_edge

.lr.ph10:                                         ; preds = %.preheader2
  %6 = add nsw i32 %border, -1
  %7 = shl nsw i32 %border, 1
  %8 = sext i32 %border to i64
  br label %28

; <label>:9                                       ; preds = %.lr.ph13, %9
  %i.011 = phi i32 [ 0, %.lr.ph13 ], [ %24, %9 ]
  %10 = add nsw i32 %i.011, %border
  %11 = load i32, i32* %x_size, align 4, !tbaa !6
  %12 = add nsw i32 %11, %3
  %13 = mul nsw i32 %12, %10
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %tmp_image, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 %4
  %17 = load i8*, i8** %in, align 8, !tbaa !2
  %18 = mul nsw i32 %11, %i.011
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = sext i32 %11 to i64
  %22 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %16, i1 false)
  %23 = tail call i8* @__memcpy_chk(i8* %16, i8* %20, i64 %21, i64 %22) #11
  %24 = add nuw nsw i32 %i.011, 1
  %25 = load i32, i32* %y_size, align 4, !tbaa !6
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %9, label %.preheader2

.preheader1:                                      ; preds = %28
  br i1 %5, label %.preheader.lr.ph, label %.preheader1.._crit_edge7_crit_edge

.preheader1.._crit_edge7_crit_edge:               ; preds = %.preheader2, %.preheader1
  %.pre15 = shl nsw i32 %border, 1
  br label %._crit_edge7

.preheader.lr.ph:                                 ; preds = %.preheader1
  %27 = shl nsw i32 %border, 1
  %.pre = load i32, i32* %y_size, align 4, !tbaa !6
  br label %.preheader

; <label>:28                                      ; preds = %28, %.lr.ph10
  %i.1.neg9 = phi i32 [ 0, %.lr.ph10 ], [ %i.1.neg, %28 ]
  %i.18 = phi i32 [ 0, %.lr.ph10 ], [ %61, %28 ]
  %29 = add i32 %6, %i.1.neg9
  %30 = load i32, i32* %x_size, align 4, !tbaa !6
  %31 = add nsw i32 %30, %7
  %32 = mul nsw i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %tmp_image, i64 %33
  %35 = getelementptr inbounds i8, i8* %34, i64 %8
  %36 = load i8*, i8** %in, align 8, !tbaa !2
  %37 = mul nsw i32 %30, %i.18
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = sext i32 %30 to i64
  %41 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %35, i1 false)
  %42 = tail call i8* @__memcpy_chk(i8* %35, i8* %39, i64 %40, i64 %41) #11
  %43 = load i32, i32* %y_size, align 4, !tbaa !6
  %44 = add i32 %i.18, %border
  %45 = add i32 %44, %43
  %46 = load i32, i32* %x_size, align 4, !tbaa !6
  %47 = add nsw i32 %46, %7
  %48 = mul nsw i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %tmp_image, i64 %49
  %51 = getelementptr inbounds i8, i8* %50, i64 %8
  %52 = load i8*, i8** %in, align 8, !tbaa !2
  %53 = add nsw i32 %i.1.neg9, -1
  %54 = add i32 %53, %43
  %55 = mul nsw i32 %54, %46
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = sext i32 %46 to i64
  %59 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %51, i1 false)
  %60 = tail call i8* @__memcpy_chk(i8* %51, i8* %57, i64 %58, i64 %59) #11
  %61 = add nuw nsw i32 %i.18, 1
  %i.1.neg = xor i32 %i.18, -1
  %exitcond14 = icmp eq i32 %61, %border
  br i1 %exitcond14, label %.preheader1, label %28

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %62 = phi i32 [ %.pre, %.preheader.lr.ph ], [ %94, %._crit_edge ]
  %i.2.neg6 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.2.neg, %._crit_edge ]
  %i.24 = phi i32 [ 0, %.preheader.lr.ph ], [ %95, %._crit_edge ]
  %63 = add nsw i32 %62, %27
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %65 = add nsw i32 %i.2.neg6, -1
  br label %66

; <label>:66                                      ; preds = %.lr.ph, %66
  %j.03 = phi i32 [ 0, %.lr.ph ], [ %90, %66 ]
  %67 = load i32, i32* %x_size, align 4, !tbaa !6
  %68 = add nsw i32 %67, %27
  %69 = mul nsw i32 %68, %j.03
  %70 = add nsw i32 %69, %border
  %71 = add nsw i32 %70, %i.24
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %tmp_image, i64 %72
  %74 = load i8, i8* %73, align 1, !tbaa !13
  %75 = add i32 %65, %70
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %tmp_image, i64 %76
  store i8 %74, i8* %77, align 1, !tbaa !13
  %78 = load i32, i32* %x_size, align 4, !tbaa !6
  %79 = add nsw i32 %78, %27
  %80 = mul nsw i32 %79, %j.03
  %81 = add i32 %78, %border
  %82 = add i32 %81, %80
  %83 = add i32 %65, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %tmp_image, i64 %84
  %86 = load i8, i8* %85, align 1, !tbaa !13
  %87 = add nsw i32 %82, %i.24
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %tmp_image, i64 %88
  store i8 %86, i8* %89, align 1, !tbaa !13
  %90 = add nuw nsw i32 %j.03, 1
  %91 = load i32, i32* %y_size, align 4, !tbaa !6
  %92 = add nsw i32 %91, %27
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %66, label %._crit_edge

._crit_edge:                                      ; preds = %66, %.preheader
  %94 = phi i32 [ %62, %.preheader ], [ %91, %66 ]
  %95 = add nuw nsw i32 %i.24, 1
  %i.2.neg = xor i32 %i.24, -1
  %exitcond = icmp eq i32 %95, %border
  br i1 %exitcond, label %._crit_edge7, label %.preheader

._crit_edge7:                                     ; preds = %._crit_edge, %.preheader1.._crit_edge7_crit_edge
  %.pre-phi = phi i32 [ %.pre15, %.preheader1.._crit_edge7_crit_edge ], [ %27, %._crit_edge ]
  %96 = load i32, i32* %x_size, align 4, !tbaa !6
  %97 = add nsw i32 %96, %.pre-phi
  store i32 %97, i32* %x_size, align 4, !tbaa !6
  %98 = load i32, i32* %y_size, align 4, !tbaa !6
  %99 = add nsw i32 %98, %.pre-phi
  store i32 %99, i32* %y_size, align 4, !tbaa !6
  store i8* %tmp_image, i8** %in, align 8, !tbaa !2
  ret i32 undef
}

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #1

; Function Attrs: nounwind ssp uwtable
define void @susan_smoothing(i32 %three_by_three, i8* %in, double, i32 %x_size, i32 %y_size, i8* nocapture readonly %bp) #3 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %dt = fptrunc double %0 to float
  store i8* %in, i8** %2, align 8, !tbaa !2
  store i32 %x_size, i32* %3, align 4, !tbaa !6
  store i32 %y_size, i32* %4, align 4, !tbaa !6
  %5 = icmp eq i32 %three_by_three, 0
  br i1 %5, label %6, label %11

; <label>:6                                       ; preds = %1
  %7 = fpext float %dt to double
  %8 = fmul double %7, 1.500000e+00
  %9 = fptosi double %8 to i32
  %10 = add nsw i32 %9, 1
  br label %11

; <label>:11                                      ; preds = %1, %6
  %mask_size.0 = phi i32 [ %10, %6 ], [ 1, %1 ]
  %12 = fcmp ogt float %dt, 1.500000e+01
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %11
  %14 = fpext float %dt to double
  %15 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0), double %14)
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([60 x i8], [60 x i8]* @str.44, i64 0, i64 0))
  %puts3 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @str.45, i64 0, i64 0))
  tail call void @exit(i32 0) #12
  unreachable

; <label>:16                                      ; preds = %11
  %17 = shl nsw i32 %mask_size.0, 1
  %18 = or i32 %17, 1
  %19 = icmp sgt i32 %18, %x_size
  %20 = icmp sgt i32 %18, %y_size
  %or.cond = or i1 %19, %20
  br i1 %or.cond, label %21, label %23

; <label>:21                                      ; preds = %16
  %22 = tail call i32 (i8*, ...) @printf(i8* nonnull getelementptr inbounds ([65 x i8], [65 x i8]* @.str.28, i64 0, i64 0), i32 %mask_size.0, i32 %x_size, i32 %y_size)
  tail call void @exit(i32 0) #12
  unreachable

; <label>:23                                      ; preds = %16
  %24 = add nsw i32 %17, %x_size
  %25 = add nsw i32 %17, %y_size
  %26 = mul nsw i32 %25, %24
  %27 = sext i32 %26 to i64
  %28 = tail call i8* @malloc(i64 %27)
  %29 = call i32 @enlarge(i8** nonnull %2, i8* %28, i32* nonnull %3, i32* nonnull %4, i32 %mask_size.0)
  br i1 %5, label %33, label %.preheader8

.preheader8:                                      ; preds = %23
  %30 = load i32, i32* %4, align 4, !tbaa !6
  %31 = add nsw i32 %30, -1
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %.preheader7.preheader, label %.loopexit

.preheader7.preheader:                            ; preds = %.preheader8
  %.pre = load i32, i32* %3, align 4, !tbaa !6
  br label %.preheader7

; <label>:33                                      ; preds = %23
  %34 = load i32, i32* %3, align 4, !tbaa !6
  %35 = sub nsw i32 %34, %18
  %36 = mul nsw i32 %18, %18
  %37 = zext i32 %36 to i64
  %38 = tail call i8* @malloc(i64 %37)
  %39 = fmul float %dt, %dt
  %40 = fsub float -0.000000e+00, %39
  %41 = sub nsw i32 0, %mask_size.0
  %42 = icmp slt i32 %mask_size.0, %41
  br i1 %42, label %.preheader5, label %.lr.ph36

.lr.ph36:                                         ; preds = %33, %._crit_edge37
  %dpt.041 = phi i8* [ %60, %._crit_edge37 ], [ %38, %33 ]
  %i.039 = phi i32 [ %63, %._crit_edge37 ], [ %41, %33 ]
  %43 = mul nsw i32 %i.039, %i.039
  br label %50

.preheader5:                                      ; preds = %._crit_edge37, %33
  %44 = load i32, i32* %4, align 4, !tbaa !6
  %45 = sub nsw i32 %44, %mask_size.0
  %46 = icmp slt i32 %mask_size.0, %45
  br i1 %46, label %.preheader4.lr.ph, label %.loopexit

.preheader4.lr.ph:                                ; preds = %.preheader5
  %47 = sext i32 %mask_size.0 to i64
  %48 = sub nsw i64 0, %47
  %49 = sext i32 %35 to i64
  %.pre87 = load i32, i32* %3, align 4, !tbaa !6
  br label %.preheader4

; <label>:50                                      ; preds = %50, %.lr.ph36
  %dpt.135 = phi i8* [ %dpt.041, %.lr.ph36 ], [ %60, %50 ]
  %j.034 = phi i32 [ %41, %.lr.ph36 ], [ %61, %50 ]
  %51 = mul nsw i32 %j.034, %j.034
  %52 = add nuw nsw i32 %51, %43
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %53, %40
  %55 = fpext float %54 to double
  %56 = tail call double @exp(double %55) #8
  %57 = fmul double %56, 1.000000e+02
  %58 = fptosi double %57 to i32
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, i8* %dpt.135, i64 1
  store i8 %59, i8* %dpt.135, align 1, !tbaa !13
  %61 = add nsw i32 %j.034, 1
  %62 = icmp slt i32 %j.034, %mask_size.0
  br i1 %62, label %50, label %._crit_edge37

._crit_edge37:                                    ; preds = %50
  %63 = add nsw i32 %i.039, 1
  %64 = icmp slt i32 %i.039, %mask_size.0
  br i1 %64, label %.lr.ph36, label %.preheader5

.preheader4:                                      ; preds = %.preheader4.lr.ph, %._crit_edge29
  %65 = phi i32 [ %.pre87, %.preheader4.lr.ph ], [ %132, %._crit_edge29 ]
  %out.033 = phi i8* [ %in, %.preheader4.lr.ph ], [ %out.1.lcssa, %._crit_edge29 ]
  %i.131 = phi i32 [ %mask_size.0, %.preheader4.lr.ph ], [ %133, %._crit_edge29 ]
  %66 = sub nsw i32 %65, %mask_size.0
  %67 = icmp slt i32 %mask_size.0, %66
  br i1 %67, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %.preheader4
  %68 = sub nsw i32 %i.131, %mask_size.0
  br i1 %42, label %.preheader, label %.lr.ph.preheader

.preheader:                                       ; preds = %.lr.ph28, %.preheader
  %69 = phi i32 [ %77, %.preheader ], [ %65, %.lr.ph28 ]
  %out.127.us = phi i8* [ %out.2.us, %.preheader ], [ %out.033, %.lr.ph28 ]
  %j.126.us = phi i32 [ %76, %.preheader ], [ %mask_size.0, %.lr.ph28 ]
  %70 = load i8*, i8** %2, align 8, !tbaa !2
  %71 = mul nsw i32 %69, %i.131
  %72 = add nsw i32 %71, %j.126.us
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1, !tbaa !13
  %out.2.us = getelementptr inbounds i8, i8* %out.127.us, i64 1
  store i8 %75, i8* %out.127.us, align 1, !tbaa !13
  %76 = add nsw i32 %j.126.us, 1
  %77 = load i32, i32* %3, align 4, !tbaa !6
  %78 = sub nsw i32 %77, %mask_size.0
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %.preheader, label %._crit_edge29

.lr.ph.preheader:                                 ; preds = %.lr.ph28, %127
  %indvars.iv = phi i64 [ %indvars.iv.next, %127 ], [ %47, %.lr.ph28 ]
  %80 = phi i32 [ %128, %127 ], [ %65, %.lr.ph28 ]
  %out.127 = phi i8* [ %out.2, %127 ], [ %out.033, %.lr.ph28 ]
  %81 = load i8*, i8** %2, align 8, !tbaa !2
  %82 = mul nsw i32 %80, %i.131
  %83 = trunc i64 %indvars.iv to i32
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load i8, i8* %86, align 1, !tbaa !13
  %88 = zext i8 %87 to i32
  %89 = zext i8 %87 to i64
  %90 = getelementptr inbounds i8, i8* %bp, i64 %89
  %91 = mul nsw i32 %80, %68
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %81, i64 %92
  %94 = getelementptr inbounds i8, i8* %93, i64 %indvars.iv
  %95 = getelementptr inbounds i8, i8* %94, i64 %48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %total.022 = phi i32 [ %112, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %dpt.221 = phi i8* [ %101, %._crit_edge ], [ %38, %.lr.ph.preheader ]
  %ip.020 = phi i8* [ %115, %._crit_edge ], [ %95, %.lr.ph.preheader ]
  %area.019 = phi i32 [ %110, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %y.018 = phi i32 [ %116, %._crit_edge ], [ %41, %.lr.ph.preheader ]
  br label %96

; <label>:96                                      ; preds = %96, %.lr.ph
  %total.114 = phi i32 [ %total.022, %.lr.ph ], [ %112, %96 ]
  %dpt.313 = phi i8* [ %dpt.221, %.lr.ph ], [ %101, %96 ]
  %ip.112 = phi i8* [ %ip.020, %.lr.ph ], [ %97, %96 ]
  %area.111 = phi i32 [ %area.019, %.lr.ph ], [ %110, %96 ]
  %x.010 = phi i32 [ %41, %.lr.ph ], [ %113, %96 ]
  %97 = getelementptr inbounds i8, i8* %ip.112, i64 1
  %98 = load i8, i8* %ip.112, align 1, !tbaa !13
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, %total.114
  %101 = getelementptr inbounds i8, i8* %dpt.313, i64 1
  %102 = load i8, i8* %dpt.313, align 1, !tbaa !13
  %103 = zext i8 %102 to i32
  %104 = sext i32 %100 to i64
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds i8, i8* %90, i64 %105
  %107 = load i8, i8* %106, align 1, !tbaa !13
  %108 = zext i8 %107 to i32
  %109 = mul nuw nsw i32 %108, %103
  %110 = add nsw i32 %109, %area.111
  %111 = mul nsw i32 %109, %100
  %112 = add nsw i32 %111, %total.114
  %113 = add nsw i32 %x.010, 1
  %114 = icmp slt i32 %x.010, %mask_size.0
  br i1 %114, label %96, label %._crit_edge

._crit_edge:                                      ; preds = %96
  %115 = getelementptr inbounds i8, i8* %97, i64 %49
  %116 = add nsw i32 %y.018, 1
  %117 = icmp slt i32 %y.018, %mask_size.0
  br i1 %117, label %.lr.ph, label %._crit_edge23

._crit_edge23:                                    ; preds = %._crit_edge
  %118 = add nsw i32 %110, -10000
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

; <label>:120                                     ; preds = %._crit_edge23
  %121 = tail call zeroext i8 @median(i8* %81, i32 %i.131, i32 %83, i32 %80)
  br label %127

; <label>:122                                     ; preds = %._crit_edge23
  %123 = mul nsw i32 %88, -10000
  %124 = add i32 %112, %123
  %125 = sdiv i32 %124, %118
  %126 = trunc i32 %125 to i8
  br label %127

; <label>:127                                     ; preds = %120, %122
  %storemerge2 = phi i8 [ %126, %122 ], [ %121, %120 ]
  %out.2 = getelementptr inbounds i8, i8* %out.127, i64 1
  store i8 %storemerge2, i8* %out.127, align 1, !tbaa !13
  %indvars.iv.next = add i64 %indvars.iv, 1
  %128 = load i32, i32* %3, align 4, !tbaa !6
  %129 = sub nsw i32 %128, %mask_size.0
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %indvars.iv.next, %130
  br i1 %131, label %.lr.ph.preheader, label %._crit_edge29

._crit_edge29:                                    ; preds = %127, %.preheader, %.preheader4
  %132 = phi i32 [ %65, %.preheader4 ], [ %77, %.preheader ], [ %128, %127 ]
  %out.1.lcssa = phi i8* [ %out.033, %.preheader4 ], [ %out.2.us, %.preheader ], [ %out.2, %127 ]
  %133 = add nsw i32 %i.131, 1
  %134 = load i32, i32* %4, align 4, !tbaa !6
  %135 = sub nsw i32 %134, %mask_size.0
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %.preheader4, label %.loopexit

.preheader7:                                      ; preds = %.preheader7.preheader, %._crit_edge45
  %137 = phi i32 [ %271, %._crit_edge45 ], [ %30, %.preheader7.preheader ]
  %138 = phi i32 [ %272, %._crit_edge45 ], [ %.pre, %.preheader7.preheader ]
  %out.349 = phi i8* [ %out.4.lcssa, %._crit_edge45 ], [ %in, %.preheader7.preheader ]
  %i.247 = phi i32 [ %273, %._crit_edge45 ], [ 1, %.preheader7.preheader ]
  %139 = add nsw i32 %138, -1
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %.preheader7
  %141 = add nsw i32 %i.247, -1
  br label %142

; <label>:142                                     ; preds = %.lr.ph44, %266
  %indvars.iv84 = phi i64 [ 1, %.lr.ph44 ], [ %indvars.iv.next85, %266 ]
  %143 = phi i32 [ %138, %.lr.ph44 ], [ %267, %266 ]
  %out.443 = phi i8* [ %out.349, %.lr.ph44 ], [ %out.5, %266 ]
  %144 = load i8*, i8** %2, align 8, !tbaa !2
  %145 = mul nsw i32 %143, %141
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = getelementptr inbounds i8, i8* %147, i64 %indvars.iv84
  %149 = getelementptr inbounds i8, i8* %148, i64 -1
  %150 = mul nsw i32 %143, %i.247
  %151 = trunc i64 %indvars.iv84 to i32
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %144, i64 %153
  %155 = load i8, i8* %154, align 1, !tbaa !13
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds i8, i8* %bp, i64 %156
  %158 = getelementptr inbounds i8, i8* %149, i64 1
  %159 = load i8, i8* %149, align 1, !tbaa !13
  %160 = zext i8 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, i8* %157, i64 %161
  %163 = load i8, i8* %162, align 1, !tbaa !13
  %164 = zext i8 %163 to i32
  %165 = getelementptr inbounds i8, i8* %158, i64 1
  %166 = load i8, i8* %158, align 1, !tbaa !13
  %167 = zext i8 %166 to i64
  %168 = sub nsw i64 0, %167
  %169 = getelementptr inbounds i8, i8* %157, i64 %168
  %170 = load i8, i8* %169, align 1, !tbaa !13
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* %165, align 1, !tbaa !13
  %173 = zext i8 %172 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds i8, i8* %157, i64 %174
  %176 = load i8, i8* %175, align 1, !tbaa !13
  %177 = zext i8 %176 to i32
  %178 = add nsw i32 %143, -2
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %165, i64 %179
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %180, align 1, !tbaa !13
  %183 = zext i8 %182 to i64
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds i8, i8* %157, i64 %184
  %186 = load i8, i8* %185, align 1, !tbaa !13
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds i8, i8* %181, i64 1
  %189 = load i8, i8* %181, align 1, !tbaa !13
  %190 = zext i8 %189 to i64
  %191 = sub nsw i64 0, %190
  %192 = getelementptr inbounds i8, i8* %157, i64 %191
  %193 = load i8, i8* %192, align 1, !tbaa !13
  %194 = zext i8 %193 to i32
  %195 = load i8, i8* %188, align 1, !tbaa !13
  %196 = zext i8 %195 to i64
  %197 = sub nsw i64 0, %196
  %198 = getelementptr inbounds i8, i8* %157, i64 %197
  %199 = load i8, i8* %198, align 1, !tbaa !13
  %200 = zext i8 %199 to i32
  %201 = getelementptr inbounds i8, i8* %188, i64 %179
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %201, align 1, !tbaa !13
  %204 = zext i8 %203 to i64
  %205 = sub nsw i64 0, %204
  %206 = getelementptr inbounds i8, i8* %157, i64 %205
  %207 = load i8, i8* %206, align 1, !tbaa !13
  %208 = zext i8 %207 to i32
  %209 = getelementptr inbounds i8, i8* %202, i64 1
  %210 = load i8, i8* %202, align 1, !tbaa !13
  %211 = zext i8 %210 to i64
  %212 = sub nsw i64 0, %211
  %213 = getelementptr inbounds i8, i8* %157, i64 %212
  %214 = load i8, i8* %213, align 1, !tbaa !13
  %215 = zext i8 %214 to i32
  %216 = load i8, i8* %209, align 1, !tbaa !13
  %217 = zext i8 %216 to i64
  %218 = sub nsw i64 0, %217
  %219 = getelementptr inbounds i8, i8* %157, i64 %218
  %220 = load i8, i8* %219, align 1, !tbaa !13
  %221 = zext i8 %220 to i32
  %222 = add nsw i32 %164, -100
  %223 = add nsw i32 %222, %171
  %224 = add nsw i32 %223, %177
  %225 = add nsw i32 %224, %187
  %226 = add nsw i32 %225, %194
  %227 = add nsw i32 %226, %200
  %228 = add i32 %227, %208
  %229 = add i32 %228, %215
  %230 = add i32 %229, %221
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %234

; <label>:232                                     ; preds = %142
  %233 = tail call zeroext i8 @median(i8* %144, i32 %i.247, i32 %151, i32 %143)
  br label %266

; <label>:234                                     ; preds = %142
  %235 = zext i8 %159 to i32
  %236 = mul nuw nsw i32 %164, %235
  %237 = zext i8 %166 to i32
  %238 = mul nuw nsw i32 %171, %237
  %239 = zext i8 %172 to i32
  %240 = mul nuw nsw i32 %177, %239
  %241 = zext i8 %182 to i32
  %242 = mul nuw nsw i32 %187, %241
  %243 = zext i8 %189 to i32
  %244 = mul nuw nsw i32 %194, %243
  %245 = zext i8 %195 to i32
  %246 = mul nuw nsw i32 %200, %245
  %247 = zext i8 %203 to i32
  %248 = mul nuw nsw i32 %208, %247
  %249 = zext i8 %210 to i32
  %250 = mul nuw nsw i32 %215, %249
  %251 = zext i8 %216 to i32
  %252 = mul nuw nsw i32 %221, %251
  %253 = zext i8 %155 to i32
  %254 = mul nsw i32 %253, -100
  %255 = add i32 %236, %254
  %256 = add i32 %255, %238
  %257 = add i32 %256, %240
  %258 = add i32 %257, %242
  %259 = add i32 %258, %244
  %260 = add i32 %259, %246
  %261 = add i32 %260, %248
  %262 = add i32 %261, %250
  %263 = add i32 %262, %252
  %264 = sdiv i32 %263, %230
  %265 = trunc i32 %264 to i8
  br label %266

; <label>:266                                     ; preds = %232, %234
  %storemerge = phi i8 [ %265, %234 ], [ %233, %232 ]
  %out.5 = getelementptr inbounds i8, i8* %out.443, i64 1
  store i8 %storemerge, i8* %out.443, align 1, !tbaa !13
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %267 = load i32, i32* %3, align 4, !tbaa !6
  %268 = add nsw i32 %267, -1
  %269 = sext i32 %268 to i64
  %270 = icmp slt i64 %indvars.iv.next85, %269
  br i1 %270, label %142, label %._crit_edge45.loopexit

._crit_edge45.loopexit:                           ; preds = %266
  %.pre86 = load i32, i32* %4, align 4, !tbaa !6
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %._crit_edge45.loopexit, %.preheader7
  %271 = phi i32 [ %137, %.preheader7 ], [ %.pre86, %._crit_edge45.loopexit ]
  %272 = phi i32 [ %138, %.preheader7 ], [ %267, %._crit_edge45.loopexit ]
  %out.4.lcssa = phi i8* [ %out.349, %.preheader7 ], [ %out.5, %._crit_edge45.loopexit ]
  %273 = add nuw nsw i32 %i.247, 1
  %274 = add nsw i32 %271, -1
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %.preheader7, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge45, %._crit_edge29, %.preheader8, %.preheader5
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @edge_draw(i8* nocapture %in, i8* %mid, i32 %x_size, i32 %y_size, i32 %drawing_mode) #6 {
  %1 = icmp eq i32 %drawing_mode, 0
  %2 = mul i32 %y_size, %x_size
  br i1 %1, label %.preheader1, label %.preheader

.preheader1:                                      ; preds = %0
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph6, label %._crit_edge

.lr.ph6:                                          ; preds = %.preheader1
  %4 = ptrtoint i8* %mid to i64
  %5 = sext i32 %x_size to i64
  %6 = sub nsw i64 0, %5
  %7 = add nsw i32 %x_size, -2
  %8 = sext i32 %7 to i64
  br label %11

.preheader:                                       ; preds = %28, %0
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %10 = ptrtoint i8* %mid to i64
  br label %31

; <label>:11                                      ; preds = %28, %.lr.ph6
  %midp.05 = phi i8* [ %mid, %.lr.ph6 ], [ %29, %28 ]
  %i.04 = phi i32 [ 0, %.lr.ph6 ], [ %30, %28 ]
  %12 = load i8, i8* %midp.05, align 1, !tbaa !13
  %13 = icmp ult i8 %12, 8
  br i1 %13, label %14, label %28

; <label>:14                                      ; preds = %11
  %15 = ptrtoint i8* %midp.05 to i64
  %16 = sub i64 %15, %4
  %17 = getelementptr inbounds i8, i8* %in, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 %6
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 -1, i8* %19, align 1, !tbaa !13
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 -1, i8* %20, align 1, !tbaa !13
  store i8 -1, i8* %21, align 1, !tbaa !13
  %22 = getelementptr inbounds i8, i8* %21, i64 %8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 -1, i8* %22, align 1, !tbaa !13
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 -1, i8* %24, align 1, !tbaa !13
  %25 = getelementptr inbounds i8, i8* %24, i64 %8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 -1, i8* %25, align 1, !tbaa !13
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 -1, i8* %26, align 1, !tbaa !13
  store i8 -1, i8* %27, align 1, !tbaa !13
  br label %28

; <label>:28                                      ; preds = %14, %11
  %29 = getelementptr inbounds i8, i8* %midp.05, i64 1
  %30 = add nuw nsw i32 %i.04, 1
  %exitcond7 = icmp eq i32 %30, %2
  br i1 %exitcond7, label %.preheader, label %11

; <label>:31                                      ; preds = %38, %.lr.ph
  %midp.13 = phi i8* [ %mid, %.lr.ph ], [ %39, %38 ]
  %i.12 = phi i32 [ 0, %.lr.ph ], [ %40, %38 ]
  %32 = load i8, i8* %midp.13, align 1, !tbaa !13
  %33 = icmp ult i8 %32, 8
  br i1 %33, label %34, label %38

; <label>:34                                      ; preds = %31
  %35 = ptrtoint i8* %midp.13 to i64
  %36 = sub i64 %35, %10
  %37 = getelementptr inbounds i8, i8* %in, i64 %36
  store i8 0, i8* %37, align 1, !tbaa !13
  br label %38

; <label>:38                                      ; preds = %34, %31
  %39 = getelementptr inbounds i8, i8* %midp.13, i64 1
  %40 = add nuw nsw i32 %i.12, 1
  %exitcond = icmp eq i32 %40, %2
  br i1 %exitcond, label %._crit_edge, label %31

._crit_edge:                                      ; preds = %38, %.preheader1, %.preheader
  ret i32 undef
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @susan_thin(i32* nocapture readonly %r, i8* %mid, i32 %x_size, i32 %y_size) #6 {
  %l = alloca [9 x i32], align 16
  %1 = bitcast [9 x i32]* %l to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #11
  %2 = add nsw i32 %y_size, -4
  %3 = icmp sgt i32 %2, 4
  br i1 %3, label %.preheader22.lr.ph, label %._crit_edge40

.preheader22.lr.ph:                               ; preds = %0
  %4 = add nsw i32 %x_size, -4
  %5 = icmp sgt i32 %4, 4
  %6 = sext i32 %x_size to i64
  %7 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 0
  %8 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 1
  %9 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 2
  %10 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 3
  %11 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 4
  %12 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 5
  %13 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 6
  %14 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 7
  %15 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 8
  br label %.preheader22

.preheader22:                                     ; preds = %.preheader22.lr.ph, %._crit_edge
  %i.039 = phi i32 [ 4, %.preheader22.lr.ph ], [ %522, %._crit_edge ]
  %b.038 = phi i32 [ undef, %.preheader22.lr.ph ], [ %b.1.lcssa, %._crit_edge ]
  %a.037 = phi i32 [ undef, %.preheader22.lr.ph ], [ %a.1.lcssa, %._crit_edge ]
  br i1 %5, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader22, %.thread13
  %j.034 = phi i32 [ %520, %.thread13 ], [ 4, %.preheader22 ]
  %i.133 = phi i32 [ %i.7, %.thread13 ], [ %i.039, %.preheader22 ]
  %b.132 = phi i32 [ %b.6, %.thread13 ], [ %b.038, %.preheader22 ]
  %a.131 = phi i32 [ %a.6, %.thread13 ], [ %a.037, %.preheader22 ]
  %16 = mul nsw i32 %i.133, %x_size
  %17 = add nsw i32 %16, %j.034
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %mid, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %21 = icmp ult i8 %20, 8
  br i1 %21, label %22, label %.thread13

; <label>:22                                      ; preds = %.lr.ph
  %23 = getelementptr inbounds i32, i32* %r, i64 %18
  %24 = load i32, i32* %23, align 4, !tbaa !6
  %25 = add i32 %i.133, -1
  %26 = mul nsw i32 %25, %x_size
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %mid, i64 %27
  %29 = sext i32 %j.034 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  %32 = load i8, i8* %31, align 1, !tbaa !13
  %33 = icmp ult i8 %32, 8
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds i8, i8* %31, i64 1
  %36 = load i8, i8* %35, align 1, !tbaa !13
  %37 = icmp ult i8 %36, 8
  %38 = zext i1 %37 to i32
  %39 = add nuw nsw i32 %38, %34
  %40 = getelementptr inbounds i8, i8* %31, i64 2
  %41 = load i8, i8* %40, align 1, !tbaa !13
  %42 = icmp ult i8 %41, 8
  %43 = zext i1 %42 to i32
  %44 = add nuw nsw i32 %39, %43
  %45 = getelementptr inbounds i8, i8* %31, i64 %6
  %46 = load i8, i8* %45, align 1, !tbaa !13
  %47 = icmp ult i8 %46, 8
  %48 = zext i1 %47 to i32
  %49 = add nuw nsw i32 %44, %48
  %50 = getelementptr inbounds i8, i8* %45, i64 2
  %51 = load i8, i8* %50, align 1, !tbaa !13
  %52 = icmp ult i8 %51, 8
  %53 = zext i1 %52 to i32
  %54 = add nuw nsw i32 %49, %53
  %55 = getelementptr inbounds i8, i8* %45, i64 %6
  %56 = load i8, i8* %55, align 1, !tbaa !13
  %57 = icmp ult i8 %56, 8
  %58 = zext i1 %57 to i32
  %59 = add nuw nsw i32 %54, %58
  %60 = getelementptr inbounds i8, i8* %55, i64 1
  %61 = load i8, i8* %60, align 1, !tbaa !13
  %62 = icmp ult i8 %61, 8
  %63 = zext i1 %62 to i32
  %64 = add nuw nsw i32 %59, %63
  %65 = getelementptr inbounds i8, i8* %55, i64 2
  %66 = load i8, i8* %65, align 1, !tbaa !13
  %67 = icmp ult i8 %66, 8
  %68 = zext i1 %67 to i32
  %69 = add nsw i32 %64, %68
  switch i32 %69, label %227 [
    i32 0, label %70
    i32 1, label %71
  ]

; <label>:70                                      ; preds = %22
  store i8 100, i8* %19, align 1, !tbaa !13
  br label %.thread13

; <label>:71                                      ; preds = %22
  %72 = icmp ult i8 %20, 6
  br i1 %72, label %73, label %.thread13

; <label>:73                                      ; preds = %71
  %74 = add nsw i32 %26, %j.034
  %75 = add nsw i32 %74, -1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %r, i64 %76
  %78 = load i32, i32* %77, align 4, !tbaa !6
  store i32 %78, i32* %7, align 16, !tbaa !6
  %79 = sext i32 %74 to i64
  %80 = getelementptr inbounds i32, i32* %r, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !6
  store i32 %81, i32* %8, align 4, !tbaa !6
  %82 = add nsw i32 %74, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %r, i64 %83
  %85 = load i32, i32* %84, align 4, !tbaa !6
  store i32 %85, i32* %9, align 8, !tbaa !6
  %86 = add nsw i32 %17, -1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %r, i64 %87
  %89 = load i32, i32* %88, align 4, !tbaa !6
  store i32 %89, i32* %10, align 4, !tbaa !6
  store i32 0, i32* %11, align 16, !tbaa !6
  %90 = add nsw i32 %17, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %r, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !6
  store i32 %93, i32* %12, align 4, !tbaa !6
  %94 = add nsw i32 %i.133, 1
  %95 = mul nsw i32 %94, %x_size
  %96 = add nsw i32 %95, %j.034
  %97 = add nsw i32 %96, -1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %r, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !6
  store i32 %100, i32* %13, align 8, !tbaa !6
  %101 = sext i32 %96 to i64
  %102 = getelementptr inbounds i32, i32* %r, i64 %101
  %103 = load i32, i32* %102, align 4, !tbaa !6
  store i32 %103, i32* %14, align 4, !tbaa !6
  %104 = add nsw i32 %96, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %r, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !6
  store i32 %107, i32* %15, align 16, !tbaa !6
  %108 = getelementptr inbounds i8, i8* %mid, i64 %76
  %109 = load i8, i8* %108, align 1, !tbaa !13
  %110 = icmp ult i8 %109, 8
  br i1 %110, label %111, label %117

; <label>:111                                     ; preds = %73
  store i32 0, i32* %7, align 16, !tbaa !6
  store i32 0, i32* %8, align 4, !tbaa !6
  store i32 0, i32* %10, align 4, !tbaa !6
  %112 = shl nsw i32 %85, 1
  store i32 %112, i32* %9, align 8, !tbaa !6
  %113 = shl nsw i32 %100, 1
  store i32 %113, i32* %13, align 8, !tbaa !6
  %114 = mul nsw i32 %93, 3
  store i32 %114, i32* %12, align 4, !tbaa !6
  %115 = mul nsw i32 %103, 3
  store i32 %115, i32* %14, align 4, !tbaa !6
  %116 = shl nsw i32 %107, 2
  store i32 %116, i32* %15, align 16, !tbaa !6
  br label %.preheader

; <label>:117                                     ; preds = %73
  %118 = getelementptr inbounds i8, i8* %mid, i64 %79
  %119 = load i8, i8* %118, align 1, !tbaa !13
  %120 = icmp ult i8 %119, 8
  br i1 %120, label %121, label %127

; <label>:121                                     ; preds = %117
  store i32 0, i32* %8, align 4, !tbaa !6
  store i32 0, i32* %7, align 16, !tbaa !6
  store i32 0, i32* %9, align 8, !tbaa !6
  %122 = shl nsw i32 %89, 1
  store i32 %122, i32* %10, align 4, !tbaa !6
  %123 = shl nsw i32 %93, 1
  store i32 %123, i32* %12, align 4, !tbaa !6
  %124 = mul nsw i32 %100, 3
  store i32 %124, i32* %13, align 8, !tbaa !6
  %125 = mul nsw i32 %107, 3
  store i32 %125, i32* %15, align 16, !tbaa !6
  %126 = shl nsw i32 %103, 2
  store i32 %126, i32* %14, align 4, !tbaa !6
  br label %.preheader

; <label>:127                                     ; preds = %117
  %128 = getelementptr inbounds i8, i8* %mid, i64 %83
  %129 = load i8, i8* %128, align 1, !tbaa !13
  %130 = icmp ult i8 %129, 8
  br i1 %130, label %131, label %137

; <label>:131                                     ; preds = %127
  store i32 0, i32* %9, align 8, !tbaa !6
  store i32 0, i32* %8, align 4, !tbaa !6
  store i32 0, i32* %12, align 4, !tbaa !6
  %132 = shl nsw i32 %78, 1
  store i32 %132, i32* %7, align 16, !tbaa !6
  %133 = shl nsw i32 %107, 1
  store i32 %133, i32* %15, align 16, !tbaa !6
  %134 = mul nsw i32 %89, 3
  store i32 %134, i32* %10, align 4, !tbaa !6
  %135 = mul nsw i32 %103, 3
  store i32 %135, i32* %14, align 4, !tbaa !6
  %136 = shl nsw i32 %100, 2
  store i32 %136, i32* %13, align 8, !tbaa !6
  br label %.preheader

; <label>:137                                     ; preds = %127
  %138 = getelementptr inbounds i8, i8* %mid, i64 %87
  %139 = load i8, i8* %138, align 1, !tbaa !13
  %140 = icmp ult i8 %139, 8
  br i1 %140, label %141, label %147

; <label>:141                                     ; preds = %137
  store i32 0, i32* %10, align 4, !tbaa !6
  store i32 0, i32* %7, align 16, !tbaa !6
  store i32 0, i32* %13, align 8, !tbaa !6
  %142 = shl nsw i32 %81, 1
  store i32 %142, i32* %8, align 4, !tbaa !6
  %143 = shl nsw i32 %103, 1
  store i32 %143, i32* %14, align 4, !tbaa !6
  %144 = mul nsw i32 %85, 3
  store i32 %144, i32* %9, align 8, !tbaa !6
  %145 = mul nsw i32 %107, 3
  store i32 %145, i32* %15, align 16, !tbaa !6
  %146 = shl nsw i32 %93, 2
  store i32 %146, i32* %12, align 4, !tbaa !6
  br label %.preheader

; <label>:147                                     ; preds = %137
  %148 = getelementptr inbounds i8, i8* %mid, i64 %91
  %149 = load i8, i8* %148, align 1, !tbaa !13
  %150 = icmp ult i8 %149, 8
  br i1 %150, label %151, label %157

; <label>:151                                     ; preds = %147
  store i32 0, i32* %12, align 4, !tbaa !6
  store i32 0, i32* %9, align 8, !tbaa !6
  store i32 0, i32* %15, align 16, !tbaa !6
  %152 = shl nsw i32 %81, 1
  store i32 %152, i32* %8, align 4, !tbaa !6
  %153 = shl nsw i32 %103, 1
  store i32 %153, i32* %14, align 4, !tbaa !6
  %154 = mul nsw i32 %78, 3
  store i32 %154, i32* %7, align 16, !tbaa !6
  %155 = mul nsw i32 %100, 3
  store i32 %155, i32* %13, align 8, !tbaa !6
  %156 = shl nsw i32 %89, 2
  store i32 %156, i32* %10, align 4, !tbaa !6
  br label %.preheader

; <label>:157                                     ; preds = %147
  %158 = getelementptr inbounds i8, i8* %mid, i64 %98
  %159 = load i8, i8* %158, align 1, !tbaa !13
  %160 = icmp ult i8 %159, 8
  br i1 %160, label %161, label %167

; <label>:161                                     ; preds = %157
  store i32 0, i32* %13, align 8, !tbaa !6
  store i32 0, i32* %10, align 4, !tbaa !6
  store i32 0, i32* %14, align 4, !tbaa !6
  %162 = shl nsw i32 %78, 1
  store i32 %162, i32* %7, align 16, !tbaa !6
  %163 = shl nsw i32 %107, 1
  store i32 %163, i32* %15, align 16, !tbaa !6
  %164 = mul nsw i32 %81, 3
  store i32 %164, i32* %8, align 4, !tbaa !6
  %165 = mul nsw i32 %93, 3
  store i32 %165, i32* %12, align 4, !tbaa !6
  %166 = shl nsw i32 %85, 2
  store i32 %166, i32* %9, align 8, !tbaa !6
  br label %.preheader

; <label>:167                                     ; preds = %157
  %168 = getelementptr inbounds i8, i8* %mid, i64 %101
  %169 = load i8, i8* %168, align 1, !tbaa !13
  %170 = icmp ult i8 %169, 8
  br i1 %170, label %171, label %177

; <label>:171                                     ; preds = %167
  store i32 0, i32* %14, align 4, !tbaa !6
  store i32 0, i32* %13, align 8, !tbaa !6
  store i32 0, i32* %15, align 16, !tbaa !6
  %172 = shl nsw i32 %89, 1
  store i32 %172, i32* %10, align 4, !tbaa !6
  %173 = shl nsw i32 %93, 1
  store i32 %173, i32* %12, align 4, !tbaa !6
  %174 = mul nsw i32 %78, 3
  store i32 %174, i32* %7, align 16, !tbaa !6
  %175 = mul nsw i32 %85, 3
  store i32 %175, i32* %9, align 8, !tbaa !6
  %176 = shl nsw i32 %81, 2
  store i32 %176, i32* %8, align 4, !tbaa !6
  br label %.preheader

; <label>:177                                     ; preds = %167
  %178 = getelementptr inbounds i8, i8* %mid, i64 %105
  %179 = load i8, i8* %178, align 1, !tbaa !13
  %180 = icmp ult i8 %179, 8
  br i1 %180, label %181, label %.preheader

; <label>:181                                     ; preds = %177
  store i32 0, i32* %15, align 16, !tbaa !6
  store i32 0, i32* %12, align 4, !tbaa !6
  store i32 0, i32* %14, align 4, !tbaa !6
  %182 = shl nsw i32 %100, 1
  store i32 %182, i32* %13, align 8, !tbaa !6
  %183 = shl nsw i32 %85, 1
  store i32 %183, i32* %9, align 8, !tbaa !6
  %184 = mul nsw i32 %81, 3
  store i32 %184, i32* %8, align 4, !tbaa !6
  %185 = mul nsw i32 %89, 3
  store i32 %185, i32* %10, align 4, !tbaa !6
  %186 = shl nsw i32 %78, 2
  store i32 %186, i32* %7, align 16, !tbaa !6
  br label %.preheader

.preheader:                                       ; preds = %111, %131, %151, %171, %181, %177, %161, %141, %121, %195
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %195 ], [ 0, %121 ], [ 0, %141 ], [ 0, %161 ], [ 0, %177 ], [ 0, %181 ], [ 0, %171 ], [ 0, %151 ], [ 0, %131 ], [ 0, %111 ]
  %b.229 = phi i32 [ %x.0.b.3, %195 ], [ %b.132, %121 ], [ %b.132, %141 ], [ %b.132, %161 ], [ %b.132, %177 ], [ %b.132, %181 ], [ %b.132, %171 ], [ %b.132, %151 ], [ %b.132, %131 ], [ %b.132, %111 ]
  %a.228 = phi i32 [ %y.0.a.3, %195 ], [ %a.131, %121 ], [ %a.131, %141 ], [ %a.131, %161 ], [ %a.131, %177 ], [ %a.131, %181 ], [ %a.131, %171 ], [ %a.131, %151 ], [ %a.131, %131 ], [ %a.131, %111 ]
  %m.027 = phi i32 [ %.m.1, %195 ], [ 0, %121 ], [ 0, %141 ], [ 0, %161 ], [ 0, %177 ], [ 0, %181 ], [ 0, %171 ], [ 0, %151 ], [ 0, %131 ], [ 0, %111 ]
  %187 = mul nuw nsw i64 %indvars.iv41, 3
  %188 = trunc i64 %indvars.iv41 to i32
  br label %189

; <label>:189                                     ; preds = %189, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %189 ]
  %b.325 = phi i32 [ %b.229, %.preheader ], [ %x.0.b.3, %189 ]
  %a.324 = phi i32 [ %a.228, %.preheader ], [ %y.0.a.3, %189 ]
  %m.123 = phi i32 [ %m.027, %.preheader ], [ %.m.1, %189 ]
  %190 = add nuw nsw i64 %indvars.iv, %187
  %191 = getelementptr inbounds [9 x i32], [9 x i32]* %l, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4, !tbaa !6
  %193 = icmp sgt i32 %192, %m.123
  %.m.1 = select i1 %193, i32 %192, i32 %m.123
  %y.0.a.3 = select i1 %193, i32 %188, i32 %a.324
  %194 = trunc i64 %indvars.iv to i32
  %x.0.b.3 = select i1 %193, i32 %194, i32 %b.325
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %195, label %189

; <label>:195                                     ; preds = %189
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond43 = icmp eq i64 %indvars.iv.next42, 3
  br i1 %exitcond43, label %196, label %.preheader

; <label>:196                                     ; preds = %195
  %197 = icmp sgt i32 %.m.1, 0
  br i1 %197, label %198, label %227

; <label>:198                                     ; preds = %196
  %199 = icmp ult i8 %20, 4
  br i1 %199, label %200, label %208

; <label>:200                                     ; preds = %198
  %201 = add i32 %25, %y.0.a.3
  %202 = mul nsw i32 %201, %x_size
  %203 = add i32 %j.034, -1
  %204 = add i32 %203, %x.0.b.3
  %205 = add i32 %204, %202
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %mid, i64 %206
  store i8 4, i8* %207, align 1, !tbaa !13
  br label %217

; <label>:208                                     ; preds = %198
  %209 = add i8 %20, 1
  %210 = add i32 %25, %y.0.a.3
  %211 = mul nsw i32 %210, %x_size
  %212 = add i32 %j.034, -1
  %213 = add i32 %212, %x.0.b.3
  %214 = add i32 %213, %211
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %mid, i64 %215
  store i8 %209, i8* %216, align 1, !tbaa !13
  br label %217

; <label>:217                                     ; preds = %208, %200
  %218 = shl i32 %y.0.a.3, 1
  %219 = add nsw i32 %218, %x.0.b.3
  %220 = icmp slt i32 %219, 3
  br i1 %220, label %221, label %227

; <label>:221                                     ; preds = %217
  %222 = add i32 %25, %y.0.a.3
  %223 = add i32 %j.034, -2
  %224 = add i32 %223, %x.0.b.3
  %225 = icmp slt i32 %222, 4
  %. = select i1 %225, i32 4, i32 %222
  %226 = icmp slt i32 %224, 4
  %.7 = select i1 %226, i32 4, i32 %224
  br label %227

; <label>:227                                     ; preds = %221, %22, %196, %217
  %a.5 = phi i32 [ %y.0.a.3, %217 ], [ %y.0.a.3, %196 ], [ %a.131, %22 ], [ %y.0.a.3, %221 ]
  %b.5 = phi i32 [ %x.0.b.3, %217 ], [ %x.0.b.3, %196 ], [ %b.132, %22 ], [ %x.0.b.3, %221 ]
  %i.3 = phi i32 [ %i.133, %217 ], [ %i.133, %196 ], [ %i.133, %22 ], [ %., %221 ]
  %j.1 = phi i32 [ %j.034, %217 ], [ %j.034, %196 ], [ %j.034, %22 ], [ %.7, %221 ]
  %228 = icmp eq i32 %69, 2
  br i1 %228, label %229, label %439

; <label>:229                                     ; preds = %227
  %230 = add nsw i32 %i.3, -1
  %231 = mul nsw i32 %230, %x_size
  %232 = add nsw i32 %231, %j.1
  %233 = add nsw i32 %232, -1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %mid, i64 %234
  %236 = load i8, i8* %235, align 1, !tbaa !13
  %237 = icmp ult i8 %236, 8
  %238 = zext i1 %237 to i32
  %239 = add nsw i32 %232, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %mid, i64 %240
  %242 = load i8, i8* %241, align 1, !tbaa !13
  %243 = icmp ult i8 %242, 8
  %244 = zext i1 %243 to i32
  %245 = add nsw i32 %i.3, 1
  %246 = mul nsw i32 %245, %x_size
  %247 = add nsw i32 %246, %j.1
  %248 = add nsw i32 %247, -1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %mid, i64 %249
  %251 = load i8, i8* %250, align 1, !tbaa !13
  %252 = icmp ult i8 %251, 8
  %253 = zext i1 %252 to i32
  %254 = add nsw i32 %247, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %mid, i64 %255
  %257 = load i8, i8* %256, align 1, !tbaa !13
  %258 = icmp ult i8 %257, 8
  %259 = zext i1 %258 to i32
  %260 = add nuw nsw i32 %244, %238
  %261 = add nuw nsw i32 %260, %253
  %262 = add nuw nsw i32 %261, %259
  %263 = icmp eq i32 %262, 2
  br i1 %263, label %264, label %332

; <label>:264                                     ; preds = %229
  %265 = or i32 %259, %238
  %266 = or i32 %253, %244
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %332, label %269

; <label>:269                                     ; preds = %264
  %not. = xor i1 %243, true
  %.1 = sext i1 %not. to i32
  %.2 = sext i1 %243 to i32
  %.4 = xor i32 %244, 1
  %x.1 = select i1 %237, i32 %.1, i32 %244
  %y.1 = select i1 %237, i32 %.2, i32 %.4
  %270 = add nsw i32 %y.1, %i.3
  %271 = mul nsw i32 %270, %x_size
  %272 = add i32 %x.1, %j.1
  %273 = add i32 %272, %271
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %r, i64 %274
  %276 = load i32, i32* %275, align 4, !tbaa !6
  %277 = sitofp i32 %276 to float
  %278 = sitofp i32 %24 to float
  %279 = fdiv float %277, %278
  %280 = fpext float %279 to double
  %281 = fcmp ogt double %280, 7.000000e-01
  br i1 %281, label %282, label %.thread13

; <label>:282                                     ; preds = %269
  %283 = icmp eq i32 %x.1, 0
  br i1 %283, label %284, label %305

; <label>:284                                     ; preds = %282
  %285 = shl nsw i32 %y.1, 1
  %286 = add nsw i32 %285, %i.3
  %287 = mul nsw i32 %286, %x_size
  %288 = add nsw i32 %287, %j.1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %mid, i64 %289
  %291 = load i8, i8* %290, align 1, !tbaa !13
  %292 = icmp ugt i8 %291, 7
  br i1 %292, label %293, label %305

; <label>:293                                     ; preds = %284
  %294 = add nsw i32 %288, -1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %mid, i64 %295
  %297 = load i8, i8* %296, align 1, !tbaa !13
  %298 = icmp ugt i8 %297, 7
  br i1 %298, label %299, label %305

; <label>:299                                     ; preds = %293
  %300 = add nsw i32 %288, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %mid, i64 %301
  %303 = load i8, i8* %302, align 1, !tbaa !13
  %304 = icmp ugt i8 %303, 7
  br i1 %304, label %._crit_edge44, label %305

._crit_edge44:                                    ; preds = %299
  %.pre = mul nsw i32 %i.3, %x_size
  %.pre45 = add nsw i32 %.pre, %j.1
  br label %328

; <label>:305                                     ; preds = %299, %293, %284, %282
  %306 = icmp eq i32 %y.1, 0
  br i1 %306, label %307, label %.thread13

; <label>:307                                     ; preds = %305
  %308 = mul nsw i32 %i.3, %x_size
  %309 = add nsw i32 %308, %j.1
  %310 = shl nsw i32 %x.1, 1
  %311 = add nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %mid, i64 %312
  %314 = load i8, i8* %313, align 1, !tbaa !13
  %315 = icmp ugt i8 %314, 7
  br i1 %315, label %316, label %.thread13

; <label>:316                                     ; preds = %307
  %317 = add nsw i32 %310, %247
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %mid, i64 %318
  %320 = load i8, i8* %319, align 1, !tbaa !13
  %321 = icmp ugt i8 %320, 7
  br i1 %321, label %322, label %.thread13

; <label>:322                                     ; preds = %316
  %323 = add nsw i32 %310, %232
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %mid, i64 %324
  %326 = load i8, i8* %325, align 1, !tbaa !13
  %327 = icmp ugt i8 %326, 7
  br i1 %327, label %328, label %.thread13

; <label>:328                                     ; preds = %._crit_edge44, %322
  %.pre-phi46 = phi i32 [ %.pre45, %._crit_edge44 ], [ %309, %322 ]
  %329 = sext i32 %.pre-phi46 to i64
  %330 = getelementptr inbounds i8, i8* %mid, i64 %329
  store i8 100, i8* %330, align 1, !tbaa !13
  %331 = getelementptr inbounds i8, i8* %mid, i64 %274
  store i8 3, i8* %331, align 1, !tbaa !13
  br label %.thread13

; <label>:332                                     ; preds = %264, %229
  %333 = sext i32 %232 to i64
  %334 = getelementptr inbounds i8, i8* %mid, i64 %333
  %335 = load i8, i8* %334, align 1, !tbaa !13
  %336 = icmp ult i8 %335, 8
  %337 = zext i1 %336 to i32
  %338 = mul nsw i32 %i.3, %x_size
  %339 = add nsw i32 %338, %j.1
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %mid, i64 %341
  %343 = load i8, i8* %342, align 1, !tbaa !13
  %344 = icmp ult i8 %343, 8
  %345 = zext i1 %344 to i32
  %346 = sext i32 %247 to i64
  %347 = getelementptr inbounds i8, i8* %mid, i64 %346
  %348 = load i8, i8* %347, align 1, !tbaa !13
  %349 = icmp ult i8 %348, 8
  %350 = zext i1 %349 to i32
  %351 = add nsw i32 %339, -1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %mid, i64 %352
  %354 = load i8, i8* %353, align 1, !tbaa !13
  %355 = icmp ult i8 %354, 8
  %356 = zext i1 %355 to i32
  %357 = add nuw nsw i32 %345, %337
  %358 = add nuw nsw i32 %357, %350
  %359 = add nuw nsw i32 %358, %356
  %360 = icmp eq i32 %359, 2
  br i1 %360, label %361, label %.thread13

; <label>:361                                     ; preds = %332
  %362 = or i32 %356, %345
  %363 = or i32 %350, %337
  %364 = and i32 %362, %363
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %.thread13, label %366

; <label>:366                                     ; preds = %361
  %367 = add nsw i32 %i.3, -2
  %368 = mul nsw i32 %367, %x_size
  %369 = add nsw i32 %368, %j.1
  %370 = add nsw i32 %369, -1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %mid, i64 %371
  %373 = load i8, i8* %372, align 1, !tbaa !13
  %374 = icmp ult i8 %373, 8
  %375 = zext i1 %374 to i32
  %376 = add nsw i32 %369, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %mid, i64 %377
  %379 = load i8, i8* %378, align 1, !tbaa !13
  %380 = icmp ult i8 %379, 8
  %381 = zext i1 %380 to i32
  %382 = or i32 %381, %375
  %383 = and i32 %382, %337
  %384 = add nsw i32 %232, -2
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %mid, i64 %385
  %387 = load i8, i8* %386, align 1, !tbaa !13
  %388 = icmp ult i8 %387, 8
  %389 = zext i1 %388 to i32
  %390 = add nsw i32 %247, -2
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %mid, i64 %391
  %393 = load i8, i8* %392, align 1, !tbaa !13
  %394 = icmp ult i8 %393, 8
  %395 = zext i1 %394 to i32
  %396 = or i32 %395, %389
  %397 = and i32 %396, %356
  %398 = or i32 %397, %383
  %399 = add nsw i32 %232, 2
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %mid, i64 %400
  %402 = load i8, i8* %401, align 1, !tbaa !13
  %403 = icmp ult i8 %402, 8
  %404 = zext i1 %403 to i32
  %405 = add nsw i32 %247, 2
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, i8* %mid, i64 %406
  %408 = load i8, i8* %407, align 1, !tbaa !13
  %409 = icmp ult i8 %408, 8
  %410 = zext i1 %409 to i32
  %411 = or i32 %410, %404
  %412 = and i32 %411, %345
  %413 = or i32 %398, %412
  %414 = add nsw i32 %i.3, 2
  %415 = mul nsw i32 %414, %x_size
  %416 = add nsw i32 %415, %j.1
  %417 = add nsw i32 %416, -1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, i8* %mid, i64 %418
  %420 = load i8, i8* %419, align 1, !tbaa !13
  %421 = icmp ult i8 %420, 8
  %422 = zext i1 %421 to i32
  %423 = add nsw i32 %416, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %mid, i64 %424
  %426 = load i8, i8* %425, align 1, !tbaa !13
  %427 = icmp ult i8 %426, 8
  %428 = zext i1 %427 to i32
  %429 = or i32 %428, %422
  %430 = and i32 %429, %350
  %431 = or i32 %413, %430
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %.thread13, label %433

; <label>:433                                     ; preds = %366
  %434 = sext i32 %339 to i64
  %435 = getelementptr inbounds i8, i8* %mid, i64 %434
  store i8 100, i8* %435, align 1, !tbaa !13
  %436 = add nsw i32 %j.1, -2
  %437 = icmp slt i32 %i.3, 5
  %.5 = select i1 %437, i32 4, i32 %230
  %438 = icmp slt i32 %436, 4
  %.8 = select i1 %438, i32 4, i32 %436
  br label %.thread13

; <label>:439                                     ; preds = %227
  %440 = icmp sgt i32 %69, 2
  br i1 %440, label %441, label %.thread13

; <label>:441                                     ; preds = %439
  %442 = add nsw i32 %i.3, -1
  %443 = mul nsw i32 %442, %x_size
  %444 = add nsw i32 %443, %j.1
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %mid, i64 %445
  %447 = load i8, i8* %446, align 1, !tbaa !13
  %448 = icmp ult i8 %447, 8
  %449 = zext i1 %448 to i32
  %450 = mul nsw i32 %i.3, %x_size
  %451 = add nsw i32 %450, %j.1
  %452 = add nsw i32 %451, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %mid, i64 %453
  %455 = load i8, i8* %454, align 1, !tbaa !13
  %456 = icmp ult i8 %455, 8
  %457 = zext i1 %456 to i32
  %458 = add nsw i32 %i.3, 1
  %459 = mul nsw i32 %458, %x_size
  %460 = add nsw i32 %459, %j.1
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, i8* %mid, i64 %461
  %463 = load i8, i8* %462, align 1, !tbaa !13
  %464 = icmp ult i8 %463, 8
  %465 = zext i1 %464 to i32
  %466 = add nsw i32 %451, -1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, i8* %mid, i64 %467
  %469 = load i8, i8* %468, align 1, !tbaa !13
  %470 = icmp ult i8 %469, 8
  %471 = zext i1 %470 to i32
  %472 = add nuw nsw i32 %457, %449
  %473 = add nuw nsw i32 %472, %465
  %474 = add nuw nsw i32 %473, %471
  %475 = icmp ugt i32 %474, 1
  br i1 %475, label %476, label %.thread13

; <label>:476                                     ; preds = %441
  %477 = add nsw i32 %444, -1
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %mid, i64 %478
  %480 = load i8, i8* %479, align 1, !tbaa !13
  %481 = icmp ult i8 %480, 8
  %482 = zext i1 %481 to i32
  %483 = add nsw i32 %444, 1
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i8, i8* %mid, i64 %484
  %486 = load i8, i8* %485, align 1, !tbaa !13
  %487 = icmp ult i8 %486, 8
  %488 = zext i1 %487 to i32
  %489 = add nsw i32 %460, -1
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, i8* %mid, i64 %490
  %492 = load i8, i8* %491, align 1, !tbaa !13
  %493 = icmp ult i8 %492, 8
  %494 = zext i1 %493 to i32
  %495 = add nsw i32 %460, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, i8* %mid, i64 %496
  %498 = load i8, i8* %497, align 1, !tbaa !13
  %499 = icmp ult i8 %498, 8
  %500 = zext i1 %499 to i32
  %501 = or i32 %482, %449
  %502 = or i32 %488, %457
  %503 = or i32 %500, %465
  %504 = or i32 %494, %471
  %505 = and i32 %502, %449
  %506 = and i32 %503, %457
  %507 = and i32 %504, %465
  %508 = and i32 %501, %471
  %.neg18 = add nuw nsw i32 %502, %501
  %.neg19 = sub nsw i32 %.neg18, %508
  %.neg20 = add nsw i32 %.neg19, %504
  %509 = sub nsw i32 %.neg20, %505
  %510 = add nsw i32 %509, %503
  %511 = sub i32 %510, %507
  %512 = sub i32 %511, %506
  %513 = icmp slt i32 %512, 2
  br i1 %513, label %514, label %.thread13

; <label>:514                                     ; preds = %476
  %515 = sext i32 %451 to i64
  %516 = getelementptr inbounds i8, i8* %mid, i64 %515
  store i8 100, i8* %516, align 1, !tbaa !13
  %517 = add nsw i32 %j.1, -2
  %518 = icmp slt i32 %i.3, 5
  %.6 = select i1 %518, i32 4, i32 %442
  %519 = icmp slt i32 %517, 4
  %.9 = select i1 %519, i32 4, i32 %517
  br label %.thread13

.thread13:                                        ; preds = %71, %70, %332, %269, %328, %322, %316, %307, %305, %361, %366, %433, %514, %.lr.ph, %441, %476, %439
  %a.6 = phi i32 [ %a.5, %476 ], [ %a.5, %441 ], [ %a.5, %439 ], [ %a.131, %.lr.ph ], [ %a.5, %514 ], [ %a.5, %433 ], [ %a.5, %332 ], [ %a.5, %361 ], [ %a.5, %366 ], [ %a.5, %269 ], [ %a.5, %305 ], [ %a.5, %307 ], [ %a.5, %316 ], [ %a.5, %322 ], [ %a.5, %328 ], [ %a.131, %70 ], [ %a.131, %71 ]
  %b.6 = phi i32 [ %b.5, %476 ], [ %b.5, %441 ], [ %b.5, %439 ], [ %b.132, %.lr.ph ], [ %b.5, %514 ], [ %b.5, %433 ], [ %b.5, %332 ], [ %b.5, %361 ], [ %b.5, %366 ], [ %b.5, %269 ], [ %b.5, %305 ], [ %b.5, %307 ], [ %b.5, %316 ], [ %b.5, %322 ], [ %b.5, %328 ], [ %b.132, %70 ], [ %b.132, %71 ]
  %i.7 = phi i32 [ %i.3, %476 ], [ %i.3, %441 ], [ %i.3, %439 ], [ %i.133, %.lr.ph ], [ %.6, %514 ], [ %.5, %433 ], [ %i.3, %332 ], [ %i.3, %361 ], [ %i.3, %366 ], [ %i.3, %269 ], [ %i.3, %305 ], [ %i.3, %307 ], [ %i.3, %316 ], [ %i.3, %322 ], [ %i.3, %328 ], [ %i.133, %70 ], [ %i.133, %71 ]
  %j.3 = phi i32 [ %j.1, %476 ], [ %j.1, %441 ], [ %j.1, %439 ], [ %j.034, %.lr.ph ], [ %.9, %514 ], [ %.8, %433 ], [ %j.1, %332 ], [ %j.1, %361 ], [ %j.1, %366 ], [ %j.1, %269 ], [ %j.1, %305 ], [ %j.1, %307 ], [ %j.1, %316 ], [ %j.1, %322 ], [ %j.1, %328 ], [ %j.034, %70 ], [ %j.034, %71 ]
  %520 = add nsw i32 %j.3, 1
  %521 = icmp slt i32 %520, %4
  br i1 %521, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.thread13, %.preheader22
  %i.1.lcssa = phi i32 [ %i.039, %.preheader22 ], [ %i.7, %.thread13 ]
  %b.1.lcssa = phi i32 [ %b.038, %.preheader22 ], [ %b.6, %.thread13 ]
  %a.1.lcssa = phi i32 [ %a.037, %.preheader22 ], [ %a.6, %.thread13 ]
  %522 = add nsw i32 %i.1.lcssa, 1
  %523 = icmp slt i32 %522, %2
  br i1 %523, label %.preheader22, label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge, %0
  call void @llvm.lifetime.end(i64 36, i8* %1) #11
  ret i32 undef
}

; Function Attrs: nounwind ssp uwtable
define i32 @susan_edges(i8* nocapture readonly %in, i32* %r, i8* nocapture %mid, i8* readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
  %1 = bitcast i32* %r to i8*
  %2 = mul nsw i32 %y_size, %x_size
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %6 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 %4, i64 %5) #11
  %7 = add i32 %y_size, -3
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %.preheader94.lr.ph, label %.preheader93

.preheader94.lr.ph:                               ; preds = %0
  %9 = add i32 %x_size, -3
  %10 = icmp sgt i32 %9, 3
  %11 = sext i32 %9 to i64
  %12 = add nsw i32 %x_size, -5
  %13 = sext i32 %12 to i64
  %14 = add nsw i32 %x_size, -6
  %15 = sext i32 %14 to i64
  %16 = sext i32 %x_size to i64
  br label %.preheader94

.preheader94:                                     ; preds = %._crit_edge102, %.preheader94.lr.ph
  %indvars.iv123 = phi i64 [ 3, %.preheader94.lr.ph ], [ %indvars.iv.next124, %._crit_edge102 ]
  br i1 %10, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %.preheader94
  %17 = add nsw i64 %indvars.iv123, -3
  %18 = mul nsw i64 %17, %16
  %19 = getelementptr inbounds i8, i8* %in, i64 %18
  %20 = mul nsw i64 %indvars.iv123, %16
  %21 = trunc i64 %20 to i32
  br label %33

.preheader93:                                     ; preds = %._crit_edge102, %0
  %22 = add i32 %y_size, -4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %.preheader.lr.ph, label %._crit_edge99

.preheader.lr.ph:                                 ; preds = %.preheader93
  %24 = add i32 %x_size, -4
  %25 = icmp sgt i32 %24, 4
  %26 = add nsw i32 %x_size, -3
  %27 = sext i32 %26 to i64
  %28 = add nsw i32 %x_size, -5
  %29 = sext i32 %28 to i64
  %30 = add nsw i32 %x_size, -6
  %31 = sext i32 %30 to i64
  %32 = sext i32 %x_size to i64
  br label %.preheader

; <label>:33                                      ; preds = %333, %.lr.ph101
  %indvars.iv119 = phi i64 [ 3, %.lr.ph101 ], [ %indvars.iv.next120, %333 ]
  %j.0100 = phi i32 [ 3, %.lr.ph101 ], [ %334, %333 ]
  %34 = getelementptr inbounds i8, i8* %19, i64 %indvars.iv119
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  %36 = add nsw i32 %j.0100, %21
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %in, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !13
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, i8* %bp, i64 %40
  %42 = getelementptr inbounds i8, i8* %35, i64 1
  %43 = load i8, i8* %35, align 1, !tbaa !13
  %44 = zext i8 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %48, 100
  %50 = getelementptr inbounds i8, i8* %42, i64 1
  %51 = load i8, i8* %42, align 1, !tbaa !13
  %52 = zext i8 %51 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i8, i8* %41, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %49, %56
  %58 = load i8, i8* %50, align 1, !tbaa !13
  %59 = zext i8 %58 to i64
  %60 = sub nsw i64 0, %59
  %61 = getelementptr inbounds i8, i8* %41, i64 %60
  %62 = load i8, i8* %61, align 1, !tbaa !13
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %57, %63
  %65 = getelementptr inbounds i8, i8* %50, i64 %11
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %65, align 1, !tbaa !13
  %68 = zext i8 %67 to i64
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, i8* %41, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %64, %72
  %74 = getelementptr inbounds i8, i8* %66, i64 1
  %75 = load i8, i8* %66, align 1, !tbaa !13
  %76 = zext i8 %75 to i64
  %77 = sub nsw i64 0, %76
  %78 = getelementptr inbounds i8, i8* %41, i64 %77
  %79 = load i8, i8* %78, align 1, !tbaa !13
  %80 = zext i8 %79 to i32
  %81 = add nuw nsw i32 %73, %80
  %82 = getelementptr inbounds i8, i8* %74, i64 1
  %83 = load i8, i8* %74, align 1, !tbaa !13
  %84 = zext i8 %83 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, i8* %41, i64 %85
  %87 = load i8, i8* %86, align 1, !tbaa !13
  %88 = zext i8 %87 to i32
  %89 = add nuw nsw i32 %81, %88
  %90 = getelementptr inbounds i8, i8* %82, i64 1
  %91 = load i8, i8* %82, align 1, !tbaa !13
  %92 = zext i8 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, i8* %41, i64 %93
  %95 = load i8, i8* %94, align 1, !tbaa !13
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %89, %96
  %98 = load i8, i8* %90, align 1, !tbaa !13
  %99 = zext i8 %98 to i64
  %100 = sub nsw i64 0, %99
  %101 = getelementptr inbounds i8, i8* %41, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !13
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %97, %103
  %105 = getelementptr inbounds i8, i8* %90, i64 %13
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %105, align 1, !tbaa !13
  %108 = zext i8 %107 to i64
  %109 = sub nsw i64 0, %108
  %110 = getelementptr inbounds i8, i8* %41, i64 %109
  %111 = load i8, i8* %110, align 1, !tbaa !13
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %104, %112
  %114 = getelementptr inbounds i8, i8* %106, i64 1
  %115 = load i8, i8* %106, align 1, !tbaa !13
  %116 = zext i8 %115 to i64
  %117 = sub nsw i64 0, %116
  %118 = getelementptr inbounds i8, i8* %41, i64 %117
  %119 = load i8, i8* %118, align 1, !tbaa !13
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %113, %120
  %122 = getelementptr inbounds i8, i8* %114, i64 1
  %123 = load i8, i8* %114, align 1, !tbaa !13
  %124 = zext i8 %123 to i64
  %125 = sub nsw i64 0, %124
  %126 = getelementptr inbounds i8, i8* %41, i64 %125
  %127 = load i8, i8* %126, align 1, !tbaa !13
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %121, %128
  %130 = getelementptr inbounds i8, i8* %122, i64 1
  %131 = load i8, i8* %122, align 1, !tbaa !13
  %132 = zext i8 %131 to i64
  %133 = sub nsw i64 0, %132
  %134 = getelementptr inbounds i8, i8* %41, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !13
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %129, %136
  %138 = getelementptr inbounds i8, i8* %130, i64 1
  %139 = load i8, i8* %130, align 1, !tbaa !13
  %140 = zext i8 %139 to i64
  %141 = sub nsw i64 0, %140
  %142 = getelementptr inbounds i8, i8* %41, i64 %141
  %143 = load i8, i8* %142, align 1, !tbaa !13
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 %137, %144
  %146 = getelementptr inbounds i8, i8* %138, i64 1
  %147 = load i8, i8* %138, align 1, !tbaa !13
  %148 = zext i8 %147 to i64
  %149 = sub nsw i64 0, %148
  %150 = getelementptr inbounds i8, i8* %41, i64 %149
  %151 = load i8, i8* %150, align 1, !tbaa !13
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %145, %152
  %154 = load i8, i8* %146, align 1, !tbaa !13
  %155 = zext i8 %154 to i64
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, i8* %41, i64 %156
  %158 = load i8, i8* %157, align 1, !tbaa !13
  %159 = zext i8 %158 to i32
  %160 = add nsw i32 %153, %159
  %161 = getelementptr inbounds i8, i8* %146, i64 %15
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %161, align 1, !tbaa !13
  %164 = zext i8 %163 to i64
  %165 = sub nsw i64 0, %164
  %166 = getelementptr inbounds i8, i8* %41, i64 %165
  %167 = load i8, i8* %166, align 1, !tbaa !13
  %168 = zext i8 %167 to i32
  %169 = add nsw i32 %160, %168
  %170 = getelementptr inbounds i8, i8* %162, i64 1
  %171 = load i8, i8* %162, align 1, !tbaa !13
  %172 = zext i8 %171 to i64
  %173 = sub nsw i64 0, %172
  %174 = getelementptr inbounds i8, i8* %41, i64 %173
  %175 = load i8, i8* %174, align 1, !tbaa !13
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %169, %176
  %178 = load i8, i8* %170, align 1, !tbaa !13
  %179 = zext i8 %178 to i64
  %180 = sub nsw i64 0, %179
  %181 = getelementptr inbounds i8, i8* %41, i64 %180
  %182 = load i8, i8* %181, align 1, !tbaa !13
  %183 = zext i8 %182 to i32
  %184 = add nsw i32 %177, %183
  %185 = getelementptr inbounds i8, i8* %170, i64 2
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %185, align 1, !tbaa !13
  %188 = zext i8 %187 to i64
  %189 = sub nsw i64 0, %188
  %190 = getelementptr inbounds i8, i8* %41, i64 %189
  %191 = load i8, i8* %190, align 1, !tbaa !13
  %192 = zext i8 %191 to i32
  %193 = add nsw i32 %184, %192
  %194 = getelementptr inbounds i8, i8* %186, i64 1
  %195 = load i8, i8* %186, align 1, !tbaa !13
  %196 = zext i8 %195 to i64
  %197 = sub nsw i64 0, %196
  %198 = getelementptr inbounds i8, i8* %41, i64 %197
  %199 = load i8, i8* %198, align 1, !tbaa !13
  %200 = zext i8 %199 to i32
  %201 = add nsw i32 %193, %200
  %202 = load i8, i8* %194, align 1, !tbaa !13
  %203 = zext i8 %202 to i64
  %204 = sub nsw i64 0, %203
  %205 = getelementptr inbounds i8, i8* %41, i64 %204
  %206 = load i8, i8* %205, align 1, !tbaa !13
  %207 = zext i8 %206 to i32
  %208 = add nsw i32 %201, %207
  %209 = getelementptr inbounds i8, i8* %194, i64 %15
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  %211 = load i8, i8* %209, align 1, !tbaa !13
  %212 = zext i8 %211 to i64
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, i8* %41, i64 %213
  %215 = load i8, i8* %214, align 1, !tbaa !13
  %216 = zext i8 %215 to i32
  %217 = add nsw i32 %208, %216
  %218 = getelementptr inbounds i8, i8* %210, i64 1
  %219 = load i8, i8* %210, align 1, !tbaa !13
  %220 = zext i8 %219 to i64
  %221 = sub nsw i64 0, %220
  %222 = getelementptr inbounds i8, i8* %41, i64 %221
  %223 = load i8, i8* %222, align 1, !tbaa !13
  %224 = zext i8 %223 to i32
  %225 = add nsw i32 %217, %224
  %226 = getelementptr inbounds i8, i8* %218, i64 1
  %227 = load i8, i8* %218, align 1, !tbaa !13
  %228 = zext i8 %227 to i64
  %229 = sub nsw i64 0, %228
  %230 = getelementptr inbounds i8, i8* %41, i64 %229
  %231 = load i8, i8* %230, align 1, !tbaa !13
  %232 = zext i8 %231 to i32
  %233 = add nsw i32 %225, %232
  %234 = getelementptr inbounds i8, i8* %226, i64 1
  %235 = load i8, i8* %226, align 1, !tbaa !13
  %236 = zext i8 %235 to i64
  %237 = sub nsw i64 0, %236
  %238 = getelementptr inbounds i8, i8* %41, i64 %237
  %239 = load i8, i8* %238, align 1, !tbaa !13
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %233, %240
  %242 = getelementptr inbounds i8, i8* %234, i64 1
  %243 = load i8, i8* %234, align 1, !tbaa !13
  %244 = zext i8 %243 to i64
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, i8* %41, i64 %245
  %247 = load i8, i8* %246, align 1, !tbaa !13
  %248 = zext i8 %247 to i32
  %249 = add nsw i32 %241, %248
  %250 = getelementptr inbounds i8, i8* %242, i64 1
  %251 = load i8, i8* %242, align 1, !tbaa !13
  %252 = zext i8 %251 to i64
  %253 = sub nsw i64 0, %252
  %254 = getelementptr inbounds i8, i8* %41, i64 %253
  %255 = load i8, i8* %254, align 1, !tbaa !13
  %256 = zext i8 %255 to i32
  %257 = add nsw i32 %249, %256
  %258 = load i8, i8* %250, align 1, !tbaa !13
  %259 = zext i8 %258 to i64
  %260 = sub nsw i64 0, %259
  %261 = getelementptr inbounds i8, i8* %41, i64 %260
  %262 = load i8, i8* %261, align 1, !tbaa !13
  %263 = zext i8 %262 to i32
  %264 = add nsw i32 %257, %263
  %265 = getelementptr inbounds i8, i8* %250, i64 %13
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i8, i8* %265, align 1, !tbaa !13
  %268 = zext i8 %267 to i64
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds i8, i8* %41, i64 %269
  %271 = load i8, i8* %270, align 1, !tbaa !13
  %272 = zext i8 %271 to i32
  %273 = add nsw i32 %264, %272
  %274 = getelementptr inbounds i8, i8* %266, i64 1
  %275 = load i8, i8* %266, align 1, !tbaa !13
  %276 = zext i8 %275 to i64
  %277 = sub nsw i64 0, %276
  %278 = getelementptr inbounds i8, i8* %41, i64 %277
  %279 = load i8, i8* %278, align 1, !tbaa !13
  %280 = zext i8 %279 to i32
  %281 = add nsw i32 %273, %280
  %282 = getelementptr inbounds i8, i8* %274, i64 1
  %283 = load i8, i8* %274, align 1, !tbaa !13
  %284 = zext i8 %283 to i64
  %285 = sub nsw i64 0, %284
  %286 = getelementptr inbounds i8, i8* %41, i64 %285
  %287 = load i8, i8* %286, align 1, !tbaa !13
  %288 = zext i8 %287 to i32
  %289 = add nsw i32 %281, %288
  %290 = getelementptr inbounds i8, i8* %282, i64 1
  %291 = load i8, i8* %282, align 1, !tbaa !13
  %292 = zext i8 %291 to i64
  %293 = sub nsw i64 0, %292
  %294 = getelementptr inbounds i8, i8* %41, i64 %293
  %295 = load i8, i8* %294, align 1, !tbaa !13
  %296 = zext i8 %295 to i32
  %297 = add nsw i32 %289, %296
  %298 = load i8, i8* %290, align 1, !tbaa !13
  %299 = zext i8 %298 to i64
  %300 = sub nsw i64 0, %299
  %301 = getelementptr inbounds i8, i8* %41, i64 %300
  %302 = load i8, i8* %301, align 1, !tbaa !13
  %303 = zext i8 %302 to i32
  %304 = add nsw i32 %297, %303
  %305 = getelementptr inbounds i8, i8* %290, i64 %11
  %306 = getelementptr inbounds i8, i8* %305, i64 1
  %307 = load i8, i8* %305, align 1, !tbaa !13
  %308 = zext i8 %307 to i64
  %309 = sub nsw i64 0, %308
  %310 = getelementptr inbounds i8, i8* %41, i64 %309
  %311 = load i8, i8* %310, align 1, !tbaa !13
  %312 = zext i8 %311 to i32
  %313 = add nsw i32 %304, %312
  %314 = getelementptr inbounds i8, i8* %306, i64 1
  %315 = load i8, i8* %306, align 1, !tbaa !13
  %316 = zext i8 %315 to i64
  %317 = sub nsw i64 0, %316
  %318 = getelementptr inbounds i8, i8* %41, i64 %317
  %319 = load i8, i8* %318, align 1, !tbaa !13
  %320 = zext i8 %319 to i32
  %321 = add nsw i32 %313, %320
  %322 = load i8, i8* %314, align 1, !tbaa !13
  %323 = zext i8 %322 to i64
  %324 = sub nsw i64 0, %323
  %325 = getelementptr inbounds i8, i8* %41, i64 %324
  %326 = load i8, i8* %325, align 1, !tbaa !13
  %327 = zext i8 %326 to i32
  %328 = add nsw i32 %321, %327
  %329 = icmp sgt i32 %328, %max_no
  br i1 %329, label %333, label %330

; <label>:330                                     ; preds = %33
  %331 = sub nsw i32 %max_no, %328
  %332 = getelementptr inbounds i32, i32* %r, i64 %37
  store i32 %331, i32* %332, align 4, !tbaa !6
  br label %333

; <label>:333                                     ; preds = %33, %330
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %334 = add nuw nsw i32 %j.0100, 1
  %lftr.wideiv121 = trunc i64 %indvars.iv.next120 to i32
  %exitcond122 = icmp eq i32 %lftr.wideiv121, %9
  br i1 %exitcond122, label %._crit_edge102, label %33

._crit_edge102:                                   ; preds = %333, %.preheader94
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %lftr.wideiv125 = trunc i64 %indvars.iv.next124 to i32
  %exitcond126 = icmp eq i32 %lftr.wideiv125, %7
  br i1 %exitcond126, label %.preheader93, label %.preheader94

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv115 = phi i64 [ 4, %.preheader.lr.ph ], [ %indvars.iv.next116, %._crit_edge ]
  br i1 %25, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %335 = mul nsw i64 %indvars.iv115, %32
  %336 = add nsw i64 %indvars.iv115, -3
  %337 = mul nsw i64 %336, %32
  %338 = getelementptr inbounds i8, i8* %in, i64 %337
  %339 = trunc i64 %335 to i32
  %340 = trunc i64 %indvars.iv115 to i32
  %341 = trunc i64 %indvars.iv115 to i32
  br label %342

; <label>:342                                     ; preds = %.critedge1, %.lr.ph
  %indvars.iv = phi i64 [ 4, %.lr.ph ], [ %indvars.iv.next, %.critedge1 ]
  %j.195 = phi i32 [ 4, %.lr.ph ], [ %1045, %.critedge1 ]
  %343 = add nsw i32 %j.195, %339
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %r, i64 %344
  %346 = load i32, i32* %345, align 4, !tbaa !6
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %.critedge1

; <label>:348                                     ; preds = %342
  %349 = sub nsw i32 %max_no, %346
  %350 = getelementptr inbounds i8, i8* %in, i64 %344
  %351 = load i8, i8* %350, align 1, !tbaa !13
  %352 = zext i8 %351 to i64
  %353 = getelementptr inbounds i8, i8* %bp, i64 %352
  %354 = icmp sgt i32 %349, 600
  %355 = getelementptr inbounds i8, i8* %338, i64 %indvars.iv
  %356 = getelementptr inbounds i8, i8* %355, i64 -1
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  br i1 %354, label %358, label %._crit_edge127

._crit_edge127:                                   ; preds = %348
  %.pre132 = getelementptr inbounds i8, i8* %357, i64 1
  %.pre134 = getelementptr inbounds i8, i8* %.pre132, i64 %27
  %.pre136 = getelementptr inbounds i8, i8* %.pre134, i64 1
  %.pre138 = getelementptr inbounds i8, i8* %.pre136, i64 1
  %.pre140 = getelementptr inbounds i8, i8* %.pre138, i64 1
  %.pre142 = getelementptr inbounds i8, i8* %.pre140, i64 1
  %.pre144 = getelementptr inbounds i8, i8* %.pre142, i64 %29
  %.pre146 = getelementptr inbounds i8, i8* %.pre144, i64 1
  %.pre148 = getelementptr inbounds i8, i8* %.pre146, i64 1
  %.pre150 = getelementptr inbounds i8, i8* %.pre148, i64 1
  %.pre152 = getelementptr inbounds i8, i8* %.pre150, i64 1
  %.pre154 = getelementptr inbounds i8, i8* %.pre152, i64 1
  %.pre156 = getelementptr inbounds i8, i8* %.pre154, i64 1
  %.pre158 = getelementptr inbounds i8, i8* %.pre156, i64 %31
  %.pre160 = getelementptr inbounds i8, i8* %.pre158, i64 1
  %.pre162 = getelementptr inbounds i8, i8* %.pre160, i64 1
  %.pre164 = getelementptr inbounds i8, i8* %.pre162, i64 2
  %.pre166 = getelementptr inbounds i8, i8* %.pre164, i64 1
  %.pre168 = getelementptr inbounds i8, i8* %.pre166, i64 1
  %.pre170 = getelementptr inbounds i8, i8* %.pre168, i64 %31
  %.pre172 = getelementptr inbounds i8, i8* %.pre170, i64 1
  %.pre174 = getelementptr inbounds i8, i8* %.pre172, i64 1
  %.pre176 = getelementptr inbounds i8, i8* %.pre174, i64 1
  %.pre178 = getelementptr inbounds i8, i8* %.pre176, i64 1
  %.pre180 = getelementptr inbounds i8, i8* %.pre178, i64 1
  %.pre182 = getelementptr inbounds i8, i8* %.pre180, i64 1
  %.pre184 = getelementptr inbounds i8, i8* %.pre182, i64 %29
  %.pre186 = getelementptr inbounds i8, i8* %.pre184, i64 1
  %.pre188 = getelementptr inbounds i8, i8* %.pre186, i64 1
  %.pre190 = getelementptr inbounds i8, i8* %.pre188, i64 1
  %.pre192 = getelementptr inbounds i8, i8* %.pre190, i64 1
  %.pre194 = getelementptr inbounds i8, i8* %.pre192, i64 %27
  %.pre196 = getelementptr inbounds i8, i8* %.pre194, i64 1
  %.pre198 = getelementptr inbounds i8, i8* %.pre196, i64 1
  br label %716

; <label>:358                                     ; preds = %348
  %359 = load i8, i8* %356, align 1, !tbaa !13
  %360 = zext i8 %359 to i64
  %361 = sub nsw i64 0, %360
  %362 = getelementptr inbounds i8, i8* %353, i64 %361
  %363 = load i8, i8* %362, align 1, !tbaa !13
  %364 = zext i8 %363 to i32
  %365 = getelementptr inbounds i8, i8* %357, i64 1
  %366 = load i8, i8* %357, align 1, !tbaa !13
  %367 = zext i8 %366 to i64
  %368 = sub nsw i64 0, %367
  %369 = getelementptr inbounds i8, i8* %353, i64 %368
  %370 = load i8, i8* %369, align 1, !tbaa !13
  %371 = zext i8 %370 to i32
  %372 = add nuw nsw i32 %371, %364
  %373 = load i8, i8* %365, align 1, !tbaa !13
  %374 = zext i8 %373 to i64
  %375 = sub nsw i64 0, %374
  %376 = getelementptr inbounds i8, i8* %353, i64 %375
  %377 = load i8, i8* %376, align 1, !tbaa !13
  %378 = zext i8 %377 to i32
  %379 = add nuw nsw i32 %372, %378
  %380 = getelementptr inbounds i8, i8* %365, i64 %27
  %381 = getelementptr inbounds i8, i8* %380, i64 1
  %382 = load i8, i8* %380, align 1, !tbaa !13
  %383 = zext i8 %382 to i64
  %384 = sub nsw i64 0, %383
  %385 = getelementptr inbounds i8, i8* %353, i64 %384
  %386 = load i8, i8* %385, align 1, !tbaa !13
  %387 = zext i8 %386 to i32
  %388 = shl nuw nsw i32 %387, 1
  %389 = getelementptr inbounds i8, i8* %381, i64 1
  %390 = load i8, i8* %381, align 1, !tbaa !13
  %391 = zext i8 %390 to i64
  %392 = sub nsw i64 0, %391
  %393 = getelementptr inbounds i8, i8* %353, i64 %392
  %394 = load i8, i8* %393, align 1, !tbaa !13
  %395 = zext i8 %394 to i32
  %396 = shl nuw nsw i32 %395, 1
  %397 = getelementptr inbounds i8, i8* %389, i64 1
  %398 = load i8, i8* %389, align 1, !tbaa !13
  %399 = zext i8 %398 to i64
  %400 = sub nsw i64 0, %399
  %401 = getelementptr inbounds i8, i8* %353, i64 %400
  %402 = load i8, i8* %401, align 1, !tbaa !13
  %403 = zext i8 %402 to i32
  %404 = shl nuw nsw i32 %403, 1
  %405 = getelementptr inbounds i8, i8* %397, i64 1
  %406 = load i8, i8* %397, align 1, !tbaa !13
  %407 = zext i8 %406 to i64
  %408 = sub nsw i64 0, %407
  %409 = getelementptr inbounds i8, i8* %353, i64 %408
  %410 = load i8, i8* %409, align 1, !tbaa !13
  %411 = zext i8 %410 to i32
  %412 = shl nuw nsw i32 %411, 1
  %413 = load i8, i8* %405, align 1, !tbaa !13
  %414 = zext i8 %413 to i64
  %415 = sub nsw i64 0, %414
  %416 = getelementptr inbounds i8, i8* %353, i64 %415
  %417 = load i8, i8* %416, align 1, !tbaa !13
  %418 = zext i8 %417 to i32
  %419 = shl nuw nsw i32 %418, 1
  %420 = getelementptr inbounds i8, i8* %405, i64 %29
  %421 = getelementptr inbounds i8, i8* %420, i64 1
  %422 = load i8, i8* %420, align 1, !tbaa !13
  %423 = zext i8 %422 to i64
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, i8* %353, i64 %424
  %426 = load i8, i8* %425, align 1, !tbaa !13
  %427 = zext i8 %426 to i32
  %428 = getelementptr inbounds i8, i8* %421, i64 1
  %429 = load i8, i8* %421, align 1, !tbaa !13
  %430 = zext i8 %429 to i64
  %431 = sub nsw i64 0, %430
  %432 = getelementptr inbounds i8, i8* %353, i64 %431
  %433 = load i8, i8* %432, align 1, !tbaa !13
  %434 = zext i8 %433 to i32
  %435 = shl nuw nsw i32 %434, 1
  %436 = getelementptr inbounds i8, i8* %428, i64 1
  %437 = load i8, i8* %428, align 1, !tbaa !13
  %438 = zext i8 %437 to i64
  %439 = sub nsw i64 0, %438
  %440 = getelementptr inbounds i8, i8* %353, i64 %439
  %441 = load i8, i8* %440, align 1, !tbaa !13
  %442 = zext i8 %441 to i32
  %443 = getelementptr inbounds i8, i8* %436, i64 1
  %444 = load i8, i8* %436, align 1, !tbaa !13
  %445 = zext i8 %444 to i64
  %446 = sub nsw i64 0, %445
  %447 = getelementptr inbounds i8, i8* %353, i64 %446
  %448 = load i8, i8* %447, align 1, !tbaa !13
  %449 = zext i8 %448 to i32
  %450 = getelementptr inbounds i8, i8* %443, i64 1
  %451 = load i8, i8* %443, align 1, !tbaa !13
  %452 = zext i8 %451 to i64
  %453 = sub nsw i64 0, %452
  %454 = getelementptr inbounds i8, i8* %353, i64 %453
  %455 = load i8, i8* %454, align 1, !tbaa !13
  %456 = zext i8 %455 to i32
  %457 = getelementptr inbounds i8, i8* %450, i64 1
  %458 = load i8, i8* %450, align 1, !tbaa !13
  %459 = zext i8 %458 to i64
  %460 = sub nsw i64 0, %459
  %461 = getelementptr inbounds i8, i8* %353, i64 %460
  %462 = load i8, i8* %461, align 1, !tbaa !13
  %463 = zext i8 %462 to i32
  %464 = load i8, i8* %457, align 1, !tbaa !13
  %465 = zext i8 %464 to i64
  %466 = sub nsw i64 0, %465
  %467 = getelementptr inbounds i8, i8* %353, i64 %466
  %468 = load i8, i8* %467, align 1, !tbaa !13
  %469 = zext i8 %468 to i32
  %470 = getelementptr inbounds i8, i8* %457, i64 %31
  %471 = getelementptr inbounds i8, i8* %470, i64 1
  %472 = load i8, i8* %470, align 1, !tbaa !13
  %473 = zext i8 %472 to i64
  %474 = sub nsw i64 0, %473
  %475 = getelementptr inbounds i8, i8* %353, i64 %474
  %476 = load i8, i8* %475, align 1, !tbaa !13
  %477 = zext i8 %476 to i32
  %478 = getelementptr inbounds i8, i8* %471, i64 1
  %479 = load i8, i8* %471, align 1, !tbaa !13
  %480 = zext i8 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = getelementptr inbounds i8, i8* %353, i64 %481
  %483 = load i8, i8* %482, align 1, !tbaa !13
  %484 = zext i8 %483 to i32
  %485 = shl nuw nsw i32 %484, 1
  %486 = load i8, i8* %478, align 1, !tbaa !13
  %487 = zext i8 %486 to i64
  %488 = sub nsw i64 0, %487
  %489 = getelementptr inbounds i8, i8* %353, i64 %488
  %490 = load i8, i8* %489, align 1, !tbaa !13
  %491 = zext i8 %490 to i32
  %492 = getelementptr inbounds i8, i8* %478, i64 2
  %493 = getelementptr inbounds i8, i8* %492, i64 1
  %494 = load i8, i8* %492, align 1, !tbaa !13
  %495 = zext i8 %494 to i64
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, i8* %353, i64 %496
  %498 = load i8, i8* %497, align 1, !tbaa !13
  %499 = zext i8 %498 to i32
  %500 = getelementptr inbounds i8, i8* %493, i64 1
  %501 = load i8, i8* %493, align 1, !tbaa !13
  %502 = zext i8 %501 to i64
  %503 = sub nsw i64 0, %502
  %504 = getelementptr inbounds i8, i8* %353, i64 %503
  %505 = load i8, i8* %504, align 1, !tbaa !13
  %506 = zext i8 %505 to i32
  %507 = load i8, i8* %500, align 1, !tbaa !13
  %508 = zext i8 %507 to i64
  %509 = sub nsw i64 0, %508
  %510 = getelementptr inbounds i8, i8* %353, i64 %509
  %511 = load i8, i8* %510, align 1, !tbaa !13
  %512 = zext i8 %511 to i32
  %513 = getelementptr inbounds i8, i8* %500, i64 %31
  %514 = getelementptr inbounds i8, i8* %513, i64 1
  %515 = load i8, i8* %513, align 1, !tbaa !13
  %516 = zext i8 %515 to i64
  %517 = sub nsw i64 0, %516
  %518 = getelementptr inbounds i8, i8* %353, i64 %517
  %519 = load i8, i8* %518, align 1, !tbaa !13
  %520 = zext i8 %519 to i32
  %521 = getelementptr inbounds i8, i8* %514, i64 1
  %522 = load i8, i8* %514, align 1, !tbaa !13
  %523 = zext i8 %522 to i64
  %524 = sub nsw i64 0, %523
  %525 = getelementptr inbounds i8, i8* %353, i64 %524
  %526 = load i8, i8* %525, align 1, !tbaa !13
  %527 = zext i8 %526 to i32
  %528 = shl nuw nsw i32 %527, 1
  %529 = getelementptr inbounds i8, i8* %521, i64 1
  %530 = load i8, i8* %521, align 1, !tbaa !13
  %531 = zext i8 %530 to i64
  %532 = sub nsw i64 0, %531
  %533 = getelementptr inbounds i8, i8* %353, i64 %532
  %534 = load i8, i8* %533, align 1, !tbaa !13
  %535 = zext i8 %534 to i32
  %536 = getelementptr inbounds i8, i8* %529, i64 1
  %537 = load i8, i8* %529, align 1, !tbaa !13
  %538 = zext i8 %537 to i64
  %539 = sub nsw i64 0, %538
  %540 = getelementptr inbounds i8, i8* %353, i64 %539
  %541 = load i8, i8* %540, align 1, !tbaa !13
  %542 = zext i8 %541 to i32
  %543 = getelementptr inbounds i8, i8* %536, i64 1
  %544 = load i8, i8* %536, align 1, !tbaa !13
  %545 = zext i8 %544 to i64
  %546 = sub nsw i64 0, %545
  %547 = getelementptr inbounds i8, i8* %353, i64 %546
  %548 = load i8, i8* %547, align 1, !tbaa !13
  %549 = zext i8 %548 to i32
  %550 = getelementptr inbounds i8, i8* %543, i64 1
  %551 = load i8, i8* %543, align 1, !tbaa !13
  %552 = zext i8 %551 to i64
  %553 = sub nsw i64 0, %552
  %554 = getelementptr inbounds i8, i8* %353, i64 %553
  %555 = load i8, i8* %554, align 1, !tbaa !13
  %556 = zext i8 %555 to i32
  %557 = load i8, i8* %550, align 1, !tbaa !13
  %558 = zext i8 %557 to i64
  %559 = sub nsw i64 0, %558
  %560 = getelementptr inbounds i8, i8* %353, i64 %559
  %561 = load i8, i8* %560, align 1, !tbaa !13
  %562 = zext i8 %561 to i32
  %563 = getelementptr inbounds i8, i8* %550, i64 %29
  %564 = getelementptr inbounds i8, i8* %563, i64 1
  %565 = load i8, i8* %563, align 1, !tbaa !13
  %566 = zext i8 %565 to i64
  %567 = sub nsw i64 0, %566
  %568 = getelementptr inbounds i8, i8* %353, i64 %567
  %569 = load i8, i8* %568, align 1, !tbaa !13
  %570 = zext i8 %569 to i32
  %571 = shl nuw nsw i32 %570, 1
  %572 = getelementptr inbounds i8, i8* %564, i64 1
  %573 = load i8, i8* %564, align 1, !tbaa !13
  %574 = zext i8 %573 to i64
  %575 = sub nsw i64 0, %574
  %576 = getelementptr inbounds i8, i8* %353, i64 %575
  %577 = load i8, i8* %576, align 1, !tbaa !13
  %578 = zext i8 %577 to i32
  %579 = getelementptr inbounds i8, i8* %572, i64 1
  %580 = load i8, i8* %572, align 1, !tbaa !13
  %581 = zext i8 %580 to i64
  %582 = sub nsw i64 0, %581
  %583 = getelementptr inbounds i8, i8* %353, i64 %582
  %584 = load i8, i8* %583, align 1, !tbaa !13
  %585 = zext i8 %584 to i32
  %586 = getelementptr inbounds i8, i8* %579, i64 1
  %587 = load i8, i8* %579, align 1, !tbaa !13
  %588 = zext i8 %587 to i64
  %589 = sub nsw i64 0, %588
  %590 = getelementptr inbounds i8, i8* %353, i64 %589
  %591 = load i8, i8* %590, align 1, !tbaa !13
  %592 = zext i8 %591 to i32
  %593 = load i8, i8* %586, align 1, !tbaa !13
  %594 = zext i8 %593 to i64
  %595 = sub nsw i64 0, %594
  %596 = getelementptr inbounds i8, i8* %353, i64 %595
  %597 = load i8, i8* %596, align 1, !tbaa !13
  %598 = zext i8 %597 to i32
  %599 = shl nuw nsw i32 %598, 1
  %600 = getelementptr inbounds i8, i8* %586, i64 %27
  %601 = getelementptr inbounds i8, i8* %600, i64 1
  %602 = load i8, i8* %600, align 1, !tbaa !13
  %603 = zext i8 %602 to i64
  %604 = sub nsw i64 0, %603
  %605 = getelementptr inbounds i8, i8* %353, i64 %604
  %606 = load i8, i8* %605, align 1, !tbaa !13
  %607 = zext i8 %606 to i32
  %608 = getelementptr inbounds i8, i8* %601, i64 1
  %609 = load i8, i8* %601, align 1, !tbaa !13
  %610 = zext i8 %609 to i64
  %611 = sub nsw i64 0, %610
  %612 = getelementptr inbounds i8, i8* %353, i64 %611
  %613 = load i8, i8* %612, align 1, !tbaa !13
  %614 = zext i8 %613 to i32
  %615 = load i8, i8* %608, align 1, !tbaa !13
  %616 = zext i8 %615 to i64
  %617 = sub nsw i64 0, %616
  %618 = getelementptr inbounds i8, i8* %353, i64 %617
  %619 = load i8, i8* %618, align 1, !tbaa !13
  %620 = zext i8 %619 to i32
  %tmp = sub nsw i32 %469, %427
  %tmp31 = sub nsw i32 %tmp, %477
  %tmp32 = add nsw i32 %tmp31, %512
  %tmp33 = sub nsw i32 %tmp32, %520
  %tmp34 = add nsw i32 %tmp33, %562
  %tmp35 = mul nsw i32 %tmp34, 3
  %tmp36 = add nuw nsw i32 %506, %463
  %tmp37 = add nuw nsw i32 %tmp36, %556
  %tmp38 = shl nuw nsw i32 %tmp37, 1
  %621 = sub nsw i32 %378, %364
  %622 = sub nsw i32 %621, %388
  %623 = sub nsw i32 %622, %395
  %624 = add nsw i32 %623, %411
  %625 = add nsw i32 %624, %419
  %626 = sub nsw i32 %625, %435
  %627 = sub i32 %626, %442
  %628 = add i32 %627, %456
  %629 = sub i32 %628, %485
  %630 = sub i32 %629, %491
  %631 = add i32 %630, %499
  %632 = sub i32 %631, %528
  %633 = sub i32 %632, %535
  %634 = add i32 %633, %549
  %635 = add i32 %634, %tmp38
  %636 = sub i32 %635, %571
  %637 = sub i32 %636, %578
  %638 = add i32 %637, %tmp35
  %639 = add i32 %638, %592
  %640 = add i32 %639, %599
  %641 = sub i32 %640, %607
  %642 = add i32 %641, %620
  %tmp40 = sub nsw i32 %607, %379
  %tmp41 = add nsw i32 %tmp40, %614
  %tmp42 = add nsw i32 %tmp41, %620
  %tmp43 = mul nsw i32 %tmp42, 3
  %tmp44 = add nuw nsw i32 %585, %578
  %tmp45 = add nuw nsw i32 %tmp44, %592
  %tmp46 = shl nuw nsw i32 %tmp45, 1
  %sum = add nuw nsw i32 %396, %388
  %sum105 = add nuw nsw i32 %sum, %404
  %sum106 = add nuw nsw i32 %sum105, %412
  %sum107 = add nuw nsw i32 %sum106, %419
  %sum108 = add nuw nsw i32 %sum107, %427
  %sum109 = add i32 %sum108, %434
  %sum110 = add i32 %sum109, %442
  %sum111 = add i32 %sum110, %449
  %sum112 = add i32 %sum111, %456
  %sum113 = add i32 %sum112, %463
  %sum114 = add i32 %sum113, %469
  %643 = sub i32 %520, %sum114
  %644 = add i32 %643, %527
  %645 = add i32 %644, %535
  %646 = add i32 %645, %542
  %647 = add i32 %646, %549
  %648 = add i32 %647, %556
  %649 = add i32 %648, %562
  %650 = add i32 %649, %571
  %651 = add i32 %650, %599
  %652 = add i32 %651, %tmp46
  %653 = add i32 %652, %tmp43
  %654 = mul nsw i32 %642, %642
  %655 = mul nsw i32 %653, %653
  %656 = add nuw nsw i32 %655, %654
  %657 = sitofp i32 %656 to float
  %sqrtf = tail call float @sqrtf(float %657) #7
  %658 = fpext float %sqrtf to double
  %659 = sitofp i32 %349 to float
  %660 = fpext float %659 to double
  %661 = fmul double %660, 9.000000e-01
  %662 = fcmp ogt double %658, %661
  br i1 %662, label %663, label %716

; <label>:663                                     ; preds = %358
  %664 = icmp eq i32 %642, 0
  br i1 %664, label %669, label %665

; <label>:665                                     ; preds = %663
  %666 = sitofp i32 %653 to float
  %667 = sitofp i32 %642 to float
  %668 = fdiv float %666, %667
  br label %669

; <label>:669                                     ; preds = %663, %665
  %z.0 = phi float [ %668, %665 ], [ 1.000000e+06, %663 ]
  %670 = fcmp olt float %z.0, 0.000000e+00
  %671 = fsub float -0.000000e+00, %z.0
  %z.1 = select i1 %670, float %671, float %z.0
  %672 = fcmp olt float %z.1, 5.000000e-01
  br i1 %672, label %676, label %673

; <label>:673                                     ; preds = %669
  %674 = fcmp ogt float %z.1, 2.000000e+00
  br i1 %674, label %676, label %675

; <label>:675                                     ; preds = %673
  %. = select i1 %670, i32 -1, i32 1
  br label %676

; <label>:676                                     ; preds = %675, %673, %669
  %a.0 = phi i32 [ 0, %669 ], [ 1, %673 ], [ %., %675 ]
  %b.0 = phi i32 [ 1, %669 ], [ 0, %673 ], [ 1, %675 ]
  %677 = add nsw i32 %a.0, %340
  %678 = mul nsw i32 %677, %x_size
  %679 = trunc i64 %indvars.iv to i32
  %680 = add i32 %b.0, %679
  %681 = add i32 %680, %678
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i32, i32* %r, i64 %682
  %684 = load i32, i32* %683, align 4, !tbaa !6
  %685 = icmp sgt i32 %346, %684
  br i1 %685, label %686, label %.critedge1

; <label>:686                                     ; preds = %676
  %687 = sub nsw i32 %340, %a.0
  %688 = mul nsw i32 %687, %x_size
  %689 = sub i32 %679, %b.0
  %690 = add i32 %689, %688
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i32, i32* %r, i64 %691
  %693 = load i32, i32* %692, align 4, !tbaa !6
  %694 = icmp slt i32 %346, %693
  br i1 %694, label %.critedge1, label %695

; <label>:695                                     ; preds = %686
  %696 = shl nsw i32 %a.0, 1
  %697 = add nsw i32 %696, %340
  %698 = mul nsw i32 %697, %x_size
  %699 = shl nuw nsw i32 %b.0, 1
  %700 = add i32 %699, %679
  %701 = add i32 %700, %698
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds i32, i32* %r, i64 %702
  %704 = load i32, i32* %703, align 4, !tbaa !6
  %705 = icmp sgt i32 %346, %704
  br i1 %705, label %706, label %.critedge1

; <label>:706                                     ; preds = %695
  %707 = sub nsw i32 %340, %696
  %708 = mul nsw i32 %707, %x_size
  %709 = sub i32 %679, %699
  %710 = add i32 %709, %708
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i32, i32* %r, i64 %711
  %713 = load i32, i32* %712, align 4, !tbaa !6
  %714 = icmp slt i32 %346, %713
  br i1 %714, label %.critedge1, label %.critedge

.critedge:                                        ; preds = %706
  %715 = getelementptr inbounds i8, i8* %mid, i64 %344
  store i8 1, i8* %715, align 1, !tbaa !13
  br label %.critedge1

; <label>:716                                     ; preds = %._crit_edge127, %358
  %.pre-phi199 = phi i8* [ %.pre198, %._crit_edge127 ], [ %608, %358 ]
  %.pre-phi197 = phi i8* [ %.pre196, %._crit_edge127 ], [ %601, %358 ]
  %.pre-phi195 = phi i8* [ %.pre194, %._crit_edge127 ], [ %600, %358 ]
  %.pre-phi193 = phi i8* [ %.pre192, %._crit_edge127 ], [ %586, %358 ]
  %.pre-phi191 = phi i8* [ %.pre190, %._crit_edge127 ], [ %579, %358 ]
  %.pre-phi189 = phi i8* [ %.pre188, %._crit_edge127 ], [ %572, %358 ]
  %.pre-phi187 = phi i8* [ %.pre186, %._crit_edge127 ], [ %564, %358 ]
  %.pre-phi185 = phi i8* [ %.pre184, %._crit_edge127 ], [ %563, %358 ]
  %.pre-phi183 = phi i8* [ %.pre182, %._crit_edge127 ], [ %550, %358 ]
  %.pre-phi181 = phi i8* [ %.pre180, %._crit_edge127 ], [ %543, %358 ]
  %.pre-phi179 = phi i8* [ %.pre178, %._crit_edge127 ], [ %536, %358 ]
  %.pre-phi177 = phi i8* [ %.pre176, %._crit_edge127 ], [ %529, %358 ]
  %.pre-phi175 = phi i8* [ %.pre174, %._crit_edge127 ], [ %521, %358 ]
  %.pre-phi173 = phi i8* [ %.pre172, %._crit_edge127 ], [ %514, %358 ]
  %.pre-phi171 = phi i8* [ %.pre170, %._crit_edge127 ], [ %513, %358 ]
  %.pre-phi169 = phi i8* [ %.pre168, %._crit_edge127 ], [ %500, %358 ]
  %.pre-phi167 = phi i8* [ %.pre166, %._crit_edge127 ], [ %493, %358 ]
  %.pre-phi165 = phi i8* [ %.pre164, %._crit_edge127 ], [ %492, %358 ]
  %.pre-phi163 = phi i8* [ %.pre162, %._crit_edge127 ], [ %478, %358 ]
  %.pre-phi161 = phi i8* [ %.pre160, %._crit_edge127 ], [ %471, %358 ]
  %.pre-phi159 = phi i8* [ %.pre158, %._crit_edge127 ], [ %470, %358 ]
  %.pre-phi157 = phi i8* [ %.pre156, %._crit_edge127 ], [ %457, %358 ]
  %.pre-phi155 = phi i8* [ %.pre154, %._crit_edge127 ], [ %450, %358 ]
  %.pre-phi153 = phi i8* [ %.pre152, %._crit_edge127 ], [ %443, %358 ]
  %.pre-phi151 = phi i8* [ %.pre150, %._crit_edge127 ], [ %436, %358 ]
  %.pre-phi149 = phi i8* [ %.pre148, %._crit_edge127 ], [ %428, %358 ]
  %.pre-phi147 = phi i8* [ %.pre146, %._crit_edge127 ], [ %421, %358 ]
  %.pre-phi145 = phi i8* [ %.pre144, %._crit_edge127 ], [ %420, %358 ]
  %.pre-phi143 = phi i8* [ %.pre142, %._crit_edge127 ], [ %405, %358 ]
  %.pre-phi141 = phi i8* [ %.pre140, %._crit_edge127 ], [ %397, %358 ]
  %.pre-phi139 = phi i8* [ %.pre138, %._crit_edge127 ], [ %389, %358 ]
  %.pre-phi137 = phi i8* [ %.pre136, %._crit_edge127 ], [ %381, %358 ]
  %.pre-phi135 = phi i8* [ %.pre134, %._crit_edge127 ], [ %380, %358 ]
  %.pre-phi133 = phi i8* [ %.pre132, %._crit_edge127 ], [ %365, %358 ]
  %717 = load i8, i8* %356, align 1, !tbaa !13
  %718 = zext i8 %717 to i64
  %719 = sub nsw i64 0, %718
  %720 = getelementptr inbounds i8, i8* %353, i64 %719
  %721 = load i8, i8* %720, align 1, !tbaa !13
  %722 = zext i8 %721 to i32
  %723 = load i8, i8* %357, align 1, !tbaa !13
  %724 = zext i8 %723 to i64
  %725 = sub nsw i64 0, %724
  %726 = getelementptr inbounds i8, i8* %353, i64 %725
  %727 = load i8, i8* %726, align 1, !tbaa !13
  %728 = zext i8 %727 to i32
  %729 = load i8, i8* %.pre-phi133, align 1, !tbaa !13
  %730 = zext i8 %729 to i64
  %731 = sub nsw i64 0, %730
  %732 = getelementptr inbounds i8, i8* %353, i64 %731
  %733 = load i8, i8* %732, align 1, !tbaa !13
  %734 = zext i8 %733 to i32
  %735 = sub nsw i32 %722, %734
  %736 = load i8, i8* %.pre-phi135, align 1, !tbaa !13
  %737 = zext i8 %736 to i64
  %738 = sub nsw i64 0, %737
  %739 = getelementptr inbounds i8, i8* %353, i64 %738
  %740 = load i8, i8* %739, align 1, !tbaa !13
  %741 = zext i8 %740 to i32
  %742 = shl nuw nsw i32 %741, 2
  %743 = load i8, i8* %.pre-phi137, align 1, !tbaa !13
  %744 = zext i8 %743 to i64
  %745 = sub nsw i64 0, %744
  %746 = getelementptr inbounds i8, i8* %353, i64 %745
  %747 = load i8, i8* %746, align 1, !tbaa !13
  %748 = zext i8 %747 to i32
  %749 = load i8, i8* %.pre-phi139, align 1, !tbaa !13
  %750 = zext i8 %749 to i64
  %751 = sub nsw i64 0, %750
  %752 = getelementptr inbounds i8, i8* %353, i64 %751
  %753 = load i8, i8* %752, align 1, !tbaa !13
  %754 = zext i8 %753 to i32
  %755 = load i8, i8* %.pre-phi141, align 1, !tbaa !13
  %756 = zext i8 %755 to i64
  %757 = sub nsw i64 0, %756
  %758 = getelementptr inbounds i8, i8* %353, i64 %757
  %759 = load i8, i8* %758, align 1, !tbaa !13
  %760 = zext i8 %759 to i32
  %761 = shl nuw nsw i32 %760, 1
  %762 = load i8, i8* %.pre-phi143, align 1, !tbaa !13
  %763 = zext i8 %762 to i64
  %764 = sub nsw i64 0, %763
  %765 = getelementptr inbounds i8, i8* %353, i64 %764
  %766 = load i8, i8* %765, align 1, !tbaa !13
  %767 = zext i8 %766 to i32
  %768 = shl nuw nsw i32 %767, 2
  %769 = load i8, i8* %.pre-phi145, align 1, !tbaa !13
  %770 = zext i8 %769 to i64
  %771 = sub nsw i64 0, %770
  %772 = getelementptr inbounds i8, i8* %353, i64 %771
  %773 = load i8, i8* %772, align 1, !tbaa !13
  %774 = zext i8 %773 to i32
  %775 = load i8, i8* %.pre-phi147, align 1, !tbaa !13
  %776 = zext i8 %775 to i64
  %777 = sub nsw i64 0, %776
  %778 = getelementptr inbounds i8, i8* %353, i64 %777
  %779 = load i8, i8* %778, align 1, !tbaa !13
  %780 = zext i8 %779 to i32
  %781 = load i8, i8* %.pre-phi149, align 1, !tbaa !13
  %782 = zext i8 %781 to i64
  %783 = sub nsw i64 0, %782
  %784 = getelementptr inbounds i8, i8* %353, i64 %783
  %785 = load i8, i8* %784, align 1, !tbaa !13
  %786 = zext i8 %785 to i32
  %787 = load i8, i8* %.pre-phi151, align 1, !tbaa !13
  %788 = zext i8 %787 to i64
  %789 = sub nsw i64 0, %788
  %790 = getelementptr inbounds i8, i8* %353, i64 %789
  %791 = load i8, i8* %790, align 1, !tbaa !13
  %792 = zext i8 %791 to i32
  %793 = load i8, i8* %.pre-phi153, align 1, !tbaa !13
  %794 = zext i8 %793 to i64
  %795 = sub nsw i64 0, %794
  %796 = getelementptr inbounds i8, i8* %353, i64 %795
  %797 = load i8, i8* %796, align 1, !tbaa !13
  %798 = zext i8 %797 to i32
  %799 = load i8, i8* %.pre-phi155, align 1, !tbaa !13
  %800 = zext i8 %799 to i64
  %801 = sub nsw i64 0, %800
  %802 = getelementptr inbounds i8, i8* %353, i64 %801
  %803 = load i8, i8* %802, align 1, !tbaa !13
  %804 = zext i8 %803 to i32
  %805 = shl nuw nsw i32 %804, 1
  %806 = load i8, i8* %.pre-phi157, align 1, !tbaa !13
  %807 = zext i8 %806 to i64
  %808 = sub nsw i64 0, %807
  %809 = getelementptr inbounds i8, i8* %353, i64 %808
  %810 = load i8, i8* %809, align 1, !tbaa !13
  %811 = zext i8 %810 to i32
  %812 = load i8, i8* %.pre-phi171, align 1, !tbaa !13
  %813 = zext i8 %812 to i64
  %814 = sub nsw i64 0, %813
  %815 = getelementptr inbounds i8, i8* %353, i64 %814
  %816 = load i8, i8* %815, align 1, !tbaa !13
  %817 = zext i8 %816 to i32
  %818 = load i8, i8* %.pre-phi173, align 1, !tbaa !13
  %819 = zext i8 %818 to i64
  %820 = sub nsw i64 0, %819
  %821 = getelementptr inbounds i8, i8* %353, i64 %820
  %822 = load i8, i8* %821, align 1, !tbaa !13
  %823 = zext i8 %822 to i32
  %824 = shl nuw nsw i32 %823, 1
  %825 = load i8, i8* %.pre-phi175, align 1, !tbaa !13
  %826 = zext i8 %825 to i64
  %827 = sub nsw i64 0, %826
  %828 = getelementptr inbounds i8, i8* %353, i64 %827
  %829 = load i8, i8* %828, align 1, !tbaa !13
  %830 = zext i8 %829 to i32
  %831 = load i8, i8* %.pre-phi177, align 1, !tbaa !13
  %832 = zext i8 %831 to i64
  %833 = sub nsw i64 0, %832
  %834 = getelementptr inbounds i8, i8* %353, i64 %833
  %835 = load i8, i8* %834, align 1, !tbaa !13
  %836 = zext i8 %835 to i32
  %837 = load i8, i8* %.pre-phi179, align 1, !tbaa !13
  %838 = zext i8 %837 to i64
  %839 = sub nsw i64 0, %838
  %840 = getelementptr inbounds i8, i8* %353, i64 %839
  %841 = load i8, i8* %840, align 1, !tbaa !13
  %842 = zext i8 %841 to i32
  %843 = load i8, i8* %.pre-phi181, align 1, !tbaa !13
  %844 = zext i8 %843 to i64
  %845 = sub nsw i64 0, %844
  %846 = getelementptr inbounds i8, i8* %353, i64 %845
  %847 = load i8, i8* %846, align 1, !tbaa !13
  %848 = zext i8 %847 to i32
  %849 = load i8, i8* %.pre-phi183, align 1, !tbaa !13
  %850 = zext i8 %849 to i64
  %851 = sub nsw i64 0, %850
  %852 = getelementptr inbounds i8, i8* %353, i64 %851
  %853 = load i8, i8* %852, align 1, !tbaa !13
  %854 = zext i8 %853 to i32
  %855 = load i8, i8* %.pre-phi185, align 1, !tbaa !13
  %856 = zext i8 %855 to i64
  %857 = sub nsw i64 0, %856
  %858 = getelementptr inbounds i8, i8* %353, i64 %857
  %859 = load i8, i8* %858, align 1, !tbaa !13
  %860 = zext i8 %859 to i32
  %861 = shl nuw nsw i32 %860, 2
  %862 = load i8, i8* %.pre-phi187, align 1, !tbaa !13
  %863 = zext i8 %862 to i64
  %864 = sub nsw i64 0, %863
  %865 = getelementptr inbounds i8, i8* %353, i64 %864
  %866 = load i8, i8* %865, align 1, !tbaa !13
  %867 = zext i8 %866 to i32
  %868 = shl nuw nsw i32 %867, 1
  %869 = load i8, i8* %.pre-phi189, align 1, !tbaa !13
  %870 = zext i8 %869 to i64
  %871 = sub nsw i64 0, %870
  %872 = getelementptr inbounds i8, i8* %353, i64 %871
  %873 = load i8, i8* %872, align 1, !tbaa !13
  %874 = zext i8 %873 to i32
  %875 = load i8, i8* %.pre-phi191, align 1, !tbaa !13
  %876 = zext i8 %875 to i64
  %877 = sub nsw i64 0, %876
  %878 = getelementptr inbounds i8, i8* %353, i64 %877
  %879 = load i8, i8* %878, align 1, !tbaa !13
  %880 = zext i8 %879 to i32
  %881 = load i8, i8* %.pre-phi193, align 1, !tbaa !13
  %882 = zext i8 %881 to i64
  %883 = sub nsw i64 0, %882
  %884 = getelementptr inbounds i8, i8* %353, i64 %883
  %885 = load i8, i8* %884, align 1, !tbaa !13
  %886 = zext i8 %885 to i32
  %887 = shl nuw nsw i32 %886, 2
  %888 = load i8, i8* %.pre-phi195, align 1, !tbaa !13
  %889 = zext i8 %888 to i64
  %890 = sub nsw i64 0, %889
  %891 = getelementptr inbounds i8, i8* %353, i64 %890
  %892 = load i8, i8* %891, align 1, !tbaa !13
  %893 = zext i8 %892 to i32
  %894 = load i8, i8* %.pre-phi197, align 1, !tbaa !13
  %895 = zext i8 %894 to i64
  %896 = sub nsw i64 0, %895
  %897 = getelementptr inbounds i8, i8* %353, i64 %896
  %898 = load i8, i8* %897, align 1, !tbaa !13
  %899 = zext i8 %898 to i32
  %900 = load i8, i8* %.pre-phi199, align 1, !tbaa !13
  %901 = zext i8 %900 to i64
  %902 = sub nsw i64 0, %901
  %903 = getelementptr inbounds i8, i8* %353, i64 %902
  %904 = load i8, i8* %903, align 1, !tbaa !13
  %905 = zext i8 %904 to i32
  %tmp56 = add nuw nsw i32 %754, %748
  %tmp57 = add nuw nsw i32 %tmp56, %760
  %tmp58 = add nuw nsw i32 %tmp57, %867
  %tmp59 = add nuw nsw i32 %tmp58, %874
  %tmp60 = add nuw nsw i32 %tmp59, %880
  %tmp61 = shl nuw nsw i32 %tmp60, 2
  %tmp62 = add nuw nsw i32 %728, %722
  %tmp63 = add nuw nsw i32 %tmp62, %734
  %906 = add nuw nsw i32 %tmp63, %893
  %907 = add nuw nsw i32 %906, %899
  %tmp64 = add nuw nsw i32 %907, %905
  %tmp65 = mul nuw nsw i32 %tmp64, 9
  %908 = add nuw nsw i32 %768, %742
  %909 = add nuw nsw i32 %908, %774
  %910 = add nuw nsw i32 %909, %780
  %911 = add nuw nsw i32 %910, %786
  %912 = add nuw nsw i32 %911, %792
  %913 = add i32 %912, %798
  %914 = add i32 %913, %804
  %915 = add i32 %914, %811
  %916 = add i32 %915, %817
  %917 = add i32 %916, %823
  %918 = add i32 %917, %830
  %919 = add i32 %918, %836
  %920 = add i32 %919, %842
  %921 = add i32 %920, %848
  %922 = add i32 %921, %854
  %923 = add i32 %922, %861
  %924 = add i32 %923, %887
  %925 = add i32 %924, %tmp61
  %926 = add i32 %925, %tmp65
  %tmp69 = add nsw i32 %774, %735
  %tmp70 = sub nsw i32 %tmp69, %811
  %tmp71 = sub nsw i32 %tmp70, %817
  %tmp72 = add nsw i32 %tmp71, %854
  %tmp73 = sub nsw i32 %tmp72, %893
  %tmp74 = add i32 %tmp73, %905
  %tmp75 = mul i32 %tmp74, 3
  %tmp76 = add nuw nsw i32 %780, %748
  %tmp77 = add nuw nsw i32 %tmp76, %848
  %tmp78 = add nuw nsw i32 %tmp77, %880
  %tmp79 = shl nuw nsw i32 %tmp78, 1
  %927 = sub nsw i32 %742, %761
  %928 = sub nsw i32 %927, %768
  %929 = add nsw i32 %928, %786
  %930 = sub nsw i32 %929, %798
  %931 = sub nsw i32 %930, %805
  %932 = sub i32 %931, %824
  %933 = sub i32 %932, %830
  %934 = add i32 %933, %842
  %935 = sub i32 %934, %861
  %936 = sub i32 %935, %868
  %937 = add i32 %936, %887
  %938 = add i32 %937, %tmp79
  %939 = add i32 %938, %tmp75
  %940 = icmp eq i32 %926, 0
  br i1 %940, label %.thread7, label %941

; <label>:941                                     ; preds = %716
  %942 = load i8, i8* %.pre-phi159, align 1, !tbaa !13
  %943 = zext i8 %942 to i64
  %944 = sub nsw i64 0, %943
  %945 = getelementptr inbounds i8, i8* %353, i64 %944
  %946 = load i8, i8* %945, align 1, !tbaa !13
  %947 = zext i8 %946 to i32
  %948 = load i8, i8* %.pre-phi161, align 1, !tbaa !13
  %949 = zext i8 %948 to i64
  %950 = sub nsw i64 0, %949
  %951 = getelementptr inbounds i8, i8* %353, i64 %950
  %952 = load i8, i8* %951, align 1, !tbaa !13
  %953 = zext i8 %952 to i32
  %954 = load i8, i8* %.pre-phi163, align 1, !tbaa !13
  %955 = zext i8 %954 to i64
  %956 = sub nsw i64 0, %955
  %957 = getelementptr inbounds i8, i8* %353, i64 %956
  %958 = load i8, i8* %957, align 1, !tbaa !13
  %959 = zext i8 %958 to i32
  %960 = load i8, i8* %.pre-phi165, align 1, !tbaa !13
  %961 = zext i8 %960 to i64
  %962 = sub nsw i64 0, %961
  %963 = getelementptr inbounds i8, i8* %353, i64 %962
  %964 = load i8, i8* %963, align 1, !tbaa !13
  %965 = zext i8 %964 to i32
  %966 = load i8, i8* %.pre-phi167, align 1, !tbaa !13
  %967 = zext i8 %966 to i64
  %968 = sub nsw i64 0, %967
  %969 = getelementptr inbounds i8, i8* %353, i64 %968
  %970 = load i8, i8* %969, align 1, !tbaa !13
  %971 = zext i8 %970 to i32
  %972 = load i8, i8* %.pre-phi169, align 1, !tbaa !13
  %973 = zext i8 %972 to i64
  %974 = sub nsw i64 0, %973
  %975 = getelementptr inbounds i8, i8* %353, i64 %974
  %976 = load i8, i8* %975, align 1, !tbaa !13
  %977 = zext i8 %976 to i32
  %tmp80 = add nuw nsw i32 %804, %780
  %tmp81 = add nuw nsw i32 %tmp80, %823
  %tmp82 = add nuw nsw i32 %tmp81, %848
  %tmp83 = add nuw nsw i32 %tmp82, %953
  %tmp84 = add nuw nsw i32 %tmp83, %971
  %tmp85 = shl nuw nsw i32 %tmp84, 2
  %tmp86 = add nuw nsw i32 %811, %774
  %tmp87 = add nuw nsw i32 %tmp86, %817
  %tmp88 = add nuw nsw i32 %tmp87, %854
  %tmp89 = add nuw nsw i32 %tmp88, %947
  %tmp90 = add nuw nsw i32 %tmp89, %977
  %tmp91 = mul nuw nsw i32 %tmp90, 9
  %978 = add nuw nsw i32 %734, %722
  %979 = add nuw nsw i32 %978, %742
  %980 = add nuw nsw i32 %979, %748
  %981 = add nuw nsw i32 %980, %760
  %982 = add nuw nsw i32 %981, %768
  %983 = add nuw nsw i32 %982, %786
  %984 = add i32 %983, %798
  %985 = add i32 %984, %830
  %986 = add i32 %985, %842
  %987 = add i32 %986, %861
  %988 = add i32 %987, %867
  %989 = add i32 %988, %880
  %990 = add i32 %989, %887
  %991 = add i32 %990, %893
  %992 = add i32 %991, %905
  %993 = add i32 %992, %959
  %994 = add i32 %993, %965
  %995 = add i32 %994, %tmp85
  %996 = add i32 %995, %tmp91
  %997 = sitofp i32 %996 to float
  %998 = sitofp i32 %926 to float
  %999 = fdiv float %997, %998
  %1000 = fcmp olt float %999, 5.000000e-01
  br i1 %1000, label %.thread7, label %1001

; <label>:1001                                    ; preds = %941
  %1002 = fcmp ogt float %999, 2.000000e+00
  br i1 %1002, label %.thread7, label %1003

; <label>:1003                                    ; preds = %1001
  %1004 = icmp sgt i32 %939, 0
  %.5 = select i1 %1004, i32 -1, i32 1
  br label %.thread7

.thread7:                                         ; preds = %716, %1003, %1001, %941
  %a.1 = phi i32 [ 0, %941 ], [ 1, %1001 ], [ %.5, %1003 ], [ 1, %716 ]
  %b.1 = phi i32 [ 1, %941 ], [ 0, %1001 ], [ 1, %1003 ], [ 0, %716 ]
  %1005 = add nsw i32 %a.1, %341
  %1006 = mul nsw i32 %1005, %x_size
  %1007 = trunc i64 %indvars.iv to i32
  %1008 = add i32 %b.1, %1007
  %1009 = add i32 %1008, %1006
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds i32, i32* %r, i64 %1010
  %1012 = load i32, i32* %1011, align 4, !tbaa !6
  %1013 = icmp sgt i32 %346, %1012
  br i1 %1013, label %1014, label %.critedge1

; <label>:1014                                    ; preds = %.thread7
  %1015 = sub nsw i32 %341, %a.1
  %1016 = mul nsw i32 %1015, %x_size
  %1017 = sub i32 %1007, %b.1
  %1018 = add i32 %1017, %1016
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds i32, i32* %r, i64 %1019
  %1021 = load i32, i32* %1020, align 4, !tbaa !6
  %1022 = icmp slt i32 %346, %1021
  br i1 %1022, label %.critedge1, label %1023

; <label>:1023                                    ; preds = %1014
  %1024 = shl nsw i32 %a.1, 1
  %1025 = add nsw i32 %1024, %341
  %1026 = mul nsw i32 %1025, %x_size
  %1027 = shl nuw nsw i32 %b.1, 1
  %1028 = add i32 %1027, %1007
  %1029 = add i32 %1028, %1026
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds i32, i32* %r, i64 %1030
  %1032 = load i32, i32* %1031, align 4, !tbaa !6
  %1033 = icmp sgt i32 %346, %1032
  br i1 %1033, label %1034, label %.critedge1

; <label>:1034                                    ; preds = %1023
  %1035 = sub nsw i32 %341, %1024
  %1036 = mul nsw i32 %1035, %x_size
  %1037 = sub i32 %1007, %1027
  %1038 = add i32 %1037, %1036
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds i32, i32* %r, i64 %1039
  %1041 = load i32, i32* %1040, align 4, !tbaa !6
  %1042 = icmp slt i32 %346, %1041
  br i1 %1042, label %.critedge1, label %1043

; <label>:1043                                    ; preds = %1034
  %1044 = getelementptr inbounds i8, i8* %mid, i64 %344
  store i8 2, i8* %1044, align 1, !tbaa !13
  br label %.critedge1

.critedge1:                                       ; preds = %676, %686, %695, %706, %.critedge, %1034, %1014, %342, %.thread7, %1023, %1043
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1045 = add nuw nsw i32 %j.195, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %24
  br i1 %exitcond, label %._crit_edge, label %342

._crit_edge:                                      ; preds = %.critedge1, %.preheader
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %lftr.wideiv117 = trunc i64 %indvars.iv.next116 to i32
  %exitcond118 = icmp eq i32 %lftr.wideiv117, %22
  br i1 %exitcond118, label %._crit_edge99, label %.preheader

._crit_edge99:                                    ; preds = %._crit_edge, %.preheader93
  ret i32 undef
}

; Function Attrs: nounwind ssp uwtable
define i32 @susan_edges_small(i8* nocapture readonly %in, i32* %r, i8* nocapture %mid, i8* nocapture readonly %bp, i32 %max_no, i32 %x_size, i32 %y_size) #3 {
  %1 = bitcast i32* %r to i8*
  %2 = mul nsw i32 %y_size, %x_size
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %6 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 %4, i64 %5) #11
  %7 = add i32 %y_size, -1
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %.preheader12.lr.ph, label %.preheader11

.preheader12.lr.ph:                               ; preds = %0
  %9 = add i32 %x_size, -1
  %10 = icmp sgt i32 %9, 1
  %11 = add nsw i32 %x_size, -2
  %12 = sext i32 %11 to i64
  br i1 %10, label %.lr.ph19.us.preheader, label %.preheader11

.lr.ph19.us.preheader:                            ; preds = %.preheader12.lr.ph
  %13 = sext i32 %x_size to i64
  br label %.lr.ph19.us

; <label>:14                                      ; preds = %90, %.lr.ph19.us
  %indvars.iv29 = phi i64 [ 1, %.lr.ph19.us ], [ %indvars.iv.next30, %90 ]
  %j.018.us = phi i32 [ 1, %.lr.ph19.us ], [ %91, %90 ]
  %15 = getelementptr inbounds i8, i8* %94, i64 %indvars.iv29
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  %17 = add nsw i32 %j.018.us, %96
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %in, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !13
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds i8, i8* %bp, i64 %21
  %23 = getelementptr inbounds i8, i8* %16, i64 1
  %24 = load i8, i8* %16, align 1, !tbaa !13
  %25 = zext i8 %24 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i8, i8* %27, align 1, !tbaa !13
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %29, 100
  %31 = getelementptr inbounds i8, i8* %23, i64 1
  %32 = load i8, i8* %23, align 1, !tbaa !13
  %33 = zext i8 %32 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds i8, i8* %22, i64 %34
  %36 = load i8, i8* %35, align 1, !tbaa !13
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %30, %37
  %39 = load i8, i8* %31, align 1, !tbaa !13
  %40 = zext i8 %39 to i64
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds i8, i8* %22, i64 %41
  %43 = load i8, i8* %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %38, %44
  %46 = getelementptr inbounds i8, i8* %31, i64 %12
  %47 = load i8, i8* %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, i8* %22, i64 %49
  %51 = load i8, i8* %50, align 1, !tbaa !13
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %45, %52
  %54 = getelementptr inbounds i8, i8* %46, i64 2
  %55 = load i8, i8* %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i64
  %57 = sub nsw i64 0, %56
  %58 = getelementptr inbounds i8, i8* %22, i64 %57
  %59 = load i8, i8* %58, align 1, !tbaa !13
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %53, %60
  %62 = getelementptr inbounds i8, i8* %54, i64 %12
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %62, align 1, !tbaa !13
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, i8* %22, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !13
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %61, %69
  %71 = getelementptr inbounds i8, i8* %63, i64 1
  %72 = load i8, i8* %63, align 1, !tbaa !13
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, i8* %22, i64 %74
  %76 = load i8, i8* %75, align 1, !tbaa !13
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %70, %77
  %79 = load i8, i8* %71, align 1, !tbaa !13
  %80 = zext i8 %79 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds i8, i8* %22, i64 %81
  %83 = load i8, i8* %82, align 1, !tbaa !13
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %78, %84
  %86 = icmp slt i32 %85, 731
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %14
  %88 = sub nsw i32 730, %85
  %89 = getelementptr inbounds i32, i32* %r, i64 %18
  store i32 %88, i32* %89, align 4, !tbaa !6
  br label %90

; <label>:90                                      ; preds = %87, %14
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %91 = add nuw nsw i32 %j.018.us, 1
  %lftr.wideiv31 = trunc i64 %indvars.iv.next30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv31, %9
  br i1 %exitcond32, label %._crit_edge20.us, label %14

.lr.ph19.us:                                      ; preds = %._crit_edge20.us, %.lr.ph19.us.preheader
  %indvars.iv33 = phi i64 [ 1, %.lr.ph19.us.preheader ], [ %indvars.iv.next34, %._crit_edge20.us ]
  %92 = add nsw i64 %indvars.iv33, -1
  %93 = mul nsw i64 %92, %13
  %94 = getelementptr inbounds i8, i8* %in, i64 %93
  %95 = mul nsw i64 %indvars.iv33, %13
  %96 = trunc i64 %95 to i32
  br label %14

._crit_edge20.us:                                 ; preds = %90
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %7
  br i1 %exitcond36, label %.preheader11, label %.lr.ph19.us

.preheader11:                                     ; preds = %._crit_edge20.us, %.preheader12.lr.ph, %0
  %97 = add i32 %y_size, -2
  %98 = icmp sgt i32 %97, 2
  br i1 %98, label %.preheader.lr.ph, label %._crit_edge17

.preheader.lr.ph:                                 ; preds = %.preheader11
  %99 = add nsw i32 %x_size, -2
  %100 = icmp sgt i32 %99, 2
  %101 = sext i32 %99 to i64
  %102 = sext i32 %x_size to i64
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv25 = phi i64 [ 2, %.preheader.lr.ph ], [ %indvars.iv.next26, %._crit_edge ]
  br i1 %100, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %103 = mul nsw i64 %indvars.iv25, %102
  %104 = add nsw i64 %indvars.iv25, -1
  %105 = mul nsw i64 %104, %102
  %106 = getelementptr inbounds i8, i8* %in, i64 %105
  %107 = trunc i64 %103 to i32
  %108 = trunc i64 %indvars.iv25 to i32
  %109 = trunc i64 %indvars.iv25 to i32
  br label %110

; <label>:110                                     ; preds = %.critedge1, %.lr.ph
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %.critedge1 ]
  %j.113 = phi i32 [ 2, %.lr.ph ], [ %323, %.critedge1 ]
  %111 = add nsw i32 %j.113, %107
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %r, i64 %112
  %114 = load i32, i32* %113, align 4, !tbaa !6
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %.critedge1

; <label>:116                                     ; preds = %110
  %117 = sub nsw i32 730, %114
  %118 = getelementptr inbounds i8, i8* %in, i64 %112
  %119 = load i8, i8* %118, align 1, !tbaa !13
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds i8, i8* %bp, i64 %120
  %122 = icmp sgt i32 %117, 250
  %123 = getelementptr inbounds i8, i8* %106, i64 %indvars.iv
  %124 = getelementptr inbounds i8, i8* %123, i64 -1
  br i1 %122, label %125, label %._crit_edge38

._crit_edge38:                                    ; preds = %116
  %.pre = load i8, i8* %124, align 1, !tbaa !13
  %.phi.trans.insert42 = getelementptr inbounds i8, i8* %124, i64 1
  %.pre43 = load i8, i8* %.phi.trans.insert42, align 1, !tbaa !13
  %.phi.trans.insert47 = getelementptr inbounds i8, i8* %.phi.trans.insert42, i64 1
  %.pre48 = load i8, i8* %.phi.trans.insert47, align 1, !tbaa !13
  %.pre52 = getelementptr inbounds i8, i8* %.phi.trans.insert47, i64 %101
  %.pre54 = getelementptr inbounds i8, i8* %.pre52, i64 2
  %.pre56 = getelementptr inbounds i8, i8* %.pre54, i64 %101
  %.pre58 = getelementptr inbounds i8, i8* %.pre56, i64 1
  %.pre60 = getelementptr inbounds i8, i8* %.pre58, i64 1
  br label %231

; <label>:125                                     ; preds = %116
  %126 = getelementptr inbounds i8, i8* %124, i64 1
  %127 = load i8, i8* %124, align 1, !tbaa !13
  %128 = zext i8 %127 to i64
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds i8, i8* %121, i64 %129
  %131 = load i8, i8* %130, align 1, !tbaa !13
  %132 = zext i8 %131 to i32
  %133 = getelementptr inbounds i8, i8* %126, i64 1
  %134 = load i8, i8* %126, align 1, !tbaa !13
  %135 = zext i8 %134 to i64
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds i8, i8* %121, i64 %136
  %138 = load i8, i8* %137, align 1, !tbaa !13
  %139 = zext i8 %138 to i32
  %sum = add nuw nsw i32 %139, %132
  %140 = load i8, i8* %133, align 1, !tbaa !13
  %141 = zext i8 %140 to i64
  %142 = sub nsw i64 0, %141
  %143 = getelementptr inbounds i8, i8* %121, i64 %142
  %144 = load i8, i8* %143, align 1, !tbaa !13
  %145 = zext i8 %144 to i32
  %146 = sub nsw i32 %145, %132
  %sum23 = add nuw nsw i32 %sum, %145
  %147 = getelementptr inbounds i8, i8* %133, i64 %101
  %148 = load i8, i8* %147, align 1, !tbaa !13
  %149 = zext i8 %148 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, i8* %121, i64 %150
  %152 = load i8, i8* %151, align 1, !tbaa !13
  %153 = zext i8 %152 to i32
  %154 = sub nsw i32 %146, %153
  %155 = getelementptr inbounds i8, i8* %147, i64 2
  %156 = load i8, i8* %155, align 1, !tbaa !13
  %157 = zext i8 %156 to i64
  %158 = sub nsw i64 0, %157
  %159 = getelementptr inbounds i8, i8* %121, i64 %158
  %160 = load i8, i8* %159, align 1, !tbaa !13
  %161 = zext i8 %160 to i32
  %162 = add nsw i32 %154, %161
  %163 = getelementptr inbounds i8, i8* %155, i64 %101
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %163, align 1, !tbaa !13
  %166 = zext i8 %165 to i64
  %167 = sub nsw i64 0, %166
  %168 = getelementptr inbounds i8, i8* %121, i64 %167
  %169 = load i8, i8* %168, align 1, !tbaa !13
  %170 = zext i8 %169 to i32
  %171 = sub nsw i32 %162, %170
  %172 = sub nsw i32 %170, %sum23
  %173 = getelementptr inbounds i8, i8* %164, i64 1
  %174 = load i8, i8* %164, align 1, !tbaa !13
  %175 = zext i8 %174 to i64
  %176 = sub nsw i64 0, %175
  %177 = getelementptr inbounds i8, i8* %121, i64 %176
  %178 = load i8, i8* %177, align 1, !tbaa !13
  %179 = zext i8 %178 to i32
  %180 = add nsw i32 %172, %179
  %181 = load i8, i8* %173, align 1, !tbaa !13
  %182 = zext i8 %181 to i64
  %183 = sub nsw i64 0, %182
  %184 = getelementptr inbounds i8, i8* %121, i64 %183
  %185 = load i8, i8* %184, align 1, !tbaa !13
  %186 = zext i8 %185 to i32
  %187 = add nsw i32 %171, %186
  %188 = add nsw i32 %180, %186
  %189 = mul nsw i32 %187, %187
  %190 = mul nsw i32 %188, %188
  %191 = add nuw nsw i32 %189, %190
  %192 = sitofp i32 %191 to float
  %sqrtf = tail call float @sqrtf(float %192) #7
  %193 = fpext float %sqrtf to double
  %194 = sitofp i32 %117 to float
  %195 = fpext float %194 to double
  %196 = fmul double %195, 4.000000e-01
  %197 = fcmp ogt double %193, %196
  br i1 %197, label %198, label %231

; <label>:198                                     ; preds = %125
  %199 = icmp eq i32 %187, 0
  br i1 %199, label %204, label %200

; <label>:200                                     ; preds = %198
  %201 = sitofp i32 %188 to float
  %202 = sitofp i32 %187 to float
  %203 = fdiv float %201, %202
  br label %204

; <label>:204                                     ; preds = %198, %200
  %z.0 = phi float [ %203, %200 ], [ 1.000000e+06, %198 ]
  %205 = fcmp olt float %z.0, 0.000000e+00
  %206 = fsub float -0.000000e+00, %z.0
  %z.1 = select i1 %205, float %206, float %z.0
  %207 = fcmp olt float %z.1, 5.000000e-01
  br i1 %207, label %211, label %208

; <label>:208                                     ; preds = %204
  %209 = fcmp ogt float %z.1, 2.000000e+00
  br i1 %209, label %211, label %210

; <label>:210                                     ; preds = %208
  %. = select i1 %205, i32 -1, i32 1
  br label %211

; <label>:211                                     ; preds = %210, %208, %204
  %a.0 = phi i32 [ 0, %204 ], [ 1, %208 ], [ %., %210 ]
  %b.0 = phi i32 [ 1, %204 ], [ 0, %208 ], [ 1, %210 ]
  %212 = add nsw i32 %a.0, %108
  %213 = mul nsw i32 %212, %x_size
  %214 = trunc i64 %indvars.iv to i32
  %215 = add i32 %b.0, %214
  %216 = add i32 %215, %213
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %r, i64 %217
  %219 = load i32, i32* %218, align 4, !tbaa !6
  %220 = icmp sgt i32 %114, %219
  br i1 %220, label %221, label %.critedge1

; <label>:221                                     ; preds = %211
  %222 = sub nsw i32 %108, %a.0
  %223 = mul nsw i32 %222, %x_size
  %224 = sub i32 %214, %b.0
  %225 = add i32 %224, %223
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %r, i64 %226
  %228 = load i32, i32* %227, align 4, !tbaa !6
  %229 = icmp slt i32 %114, %228
  br i1 %229, label %.critedge1, label %.critedge

.critedge:                                        ; preds = %221
  %230 = getelementptr inbounds i8, i8* %mid, i64 %112
  store i8 1, i8* %230, align 1, !tbaa !13
  br label %.critedge1

; <label>:231                                     ; preds = %._crit_edge38, %125
  %.pre-phi61 = phi i8* [ %.pre60, %._crit_edge38 ], [ %173, %125 ]
  %.pre-phi59 = phi i8* [ %.pre58, %._crit_edge38 ], [ %164, %125 ]
  %.pre-phi57 = phi i8* [ %.pre56, %._crit_edge38 ], [ %163, %125 ]
  %.pre-phi55 = phi i8* [ %.pre54, %._crit_edge38 ], [ %155, %125 ]
  %.pre-phi53 = phi i8* [ %.pre52, %._crit_edge38 ], [ %147, %125 ]
  %232 = phi i8 [ %.pre48, %._crit_edge38 ], [ %140, %125 ]
  %233 = phi i8 [ %.pre43, %._crit_edge38 ], [ %134, %125 ]
  %234 = phi i8 [ %.pre, %._crit_edge38 ], [ %127, %125 ]
  %235 = zext i8 %234 to i64
  %236 = sub nsw i64 0, %235
  %237 = getelementptr inbounds i8, i8* %121, i64 %236
  %238 = load i8, i8* %237, align 1, !tbaa !13
  %239 = zext i8 %238 to i32
  %240 = zext i8 %233 to i64
  %241 = sub nsw i64 0, %240
  %242 = getelementptr inbounds i8, i8* %121, i64 %241
  %243 = load i8, i8* %242, align 1, !tbaa !13
  %244 = zext i8 %243 to i32
  %245 = add nuw nsw i32 %244, %239
  %246 = zext i8 %232 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds i8, i8* %121, i64 %247
  %249 = load i8, i8* %248, align 1, !tbaa !13
  %250 = zext i8 %249 to i32
  %251 = add nuw nsw i32 %245, %250
  %252 = sub nsw i32 %239, %250
  %253 = load i8, i8* %.pre-phi57, align 1, !tbaa !13
  %254 = zext i8 %253 to i64
  %255 = sub nsw i64 0, %254
  %256 = getelementptr inbounds i8, i8* %121, i64 %255
  %257 = load i8, i8* %256, align 1, !tbaa !13
  %258 = zext i8 %257 to i32
  %259 = add nuw nsw i32 %251, %258
  %260 = sub nsw i32 %252, %258
  %261 = load i8, i8* %.pre-phi59, align 1, !tbaa !13
  %262 = zext i8 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, i8* %121, i64 %263
  %265 = load i8, i8* %264, align 1, !tbaa !13
  %266 = zext i8 %265 to i32
  %267 = add nuw nsw i32 %259, %266
  %268 = load i8, i8* %.pre-phi61, align 1, !tbaa !13
  %269 = zext i8 %268 to i64
  %270 = sub nsw i64 0, %269
  %271 = getelementptr inbounds i8, i8* %121, i64 %270
  %272 = load i8, i8* %271, align 1, !tbaa !13
  %273 = zext i8 %272 to i32
  %274 = add nuw nsw i32 %267, %273
  %275 = add nsw i32 %260, %273
  %276 = icmp eq i32 %274, 0
  br i1 %276, label %.thread5, label %277

; <label>:277                                     ; preds = %231
  %278 = add nuw nsw i32 %250, %239
  %279 = load i8, i8* %.pre-phi53, align 1, !tbaa !13
  %280 = zext i8 %279 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, i8* %121, i64 %281
  %283 = load i8, i8* %282, align 1, !tbaa !13
  %284 = zext i8 %283 to i32
  %285 = load i8, i8* %.pre-phi55, align 1, !tbaa !13
  %286 = zext i8 %285 to i64
  %287 = sub nsw i64 0, %286
  %288 = getelementptr inbounds i8, i8* %121, i64 %287
  %289 = load i8, i8* %288, align 1, !tbaa !13
  %290 = zext i8 %289 to i32
  %291 = add nuw nsw i32 %278, %258
  %292 = add nuw nsw i32 %291, %273
  %293 = add nuw nsw i32 %292, %284
  %294 = add nuw nsw i32 %293, %290
  %295 = sitofp i32 %294 to float
  %296 = sitofp i32 %274 to float
  %297 = fdiv float %295, %296
  %298 = fcmp olt float %297, 5.000000e-01
  br i1 %298, label %.thread5, label %299

; <label>:299                                     ; preds = %277
  %300 = fcmp ogt float %297, 2.000000e+00
  br i1 %300, label %.thread5, label %301

; <label>:301                                     ; preds = %299
  %302 = icmp sgt i32 %275, 0
  %.3 = select i1 %302, i32 -1, i32 1
  br label %.thread5

.thread5:                                         ; preds = %231, %301, %299, %277
  %a.1 = phi i32 [ 0, %277 ], [ 1, %299 ], [ %.3, %301 ], [ 1, %231 ]
  %b.1 = phi i32 [ 1, %277 ], [ 0, %299 ], [ 1, %301 ], [ 0, %231 ]
  %303 = add nsw i32 %a.1, %109
  %304 = mul nsw i32 %303, %x_size
  %305 = trunc i64 %indvars.iv to i32
  %306 = add i32 %b.1, %305
  %307 = add i32 %306, %304
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %r, i64 %308
  %310 = load i32, i32* %309, align 4, !tbaa !6
  %311 = icmp sgt i32 %114, %310
  br i1 %311, label %312, label %.critedge1

; <label>:312                                     ; preds = %.thread5
  %313 = sub nsw i32 %109, %a.1
  %314 = mul nsw i32 %313, %x_size
  %315 = sub i32 %305, %b.1
  %316 = add i32 %315, %314
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %r, i64 %317
  %319 = load i32, i32* %318, align 4, !tbaa !6
  %320 = icmp slt i32 %114, %319
  br i1 %320, label %.critedge1, label %321

; <label>:321                                     ; preds = %312
  %322 = getelementptr inbounds i8, i8* %mid, i64 %112
  store i8 2, i8* %322, align 1, !tbaa !13
  br label %.critedge1

.critedge1:                                       ; preds = %211, %221, %.critedge, %312, %110, %.thread5, %321
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %323 = add nuw nsw i32 %j.113, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %99
  br i1 %exitcond, label %._crit_edge, label %110

._crit_edge:                                      ; preds = %.critedge1, %.preheader
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %lftr.wideiv27 = trunc i64 %indvars.iv.next26 to i32
  %exitcond28 = icmp eq i32 %lftr.wideiv27, %97
  br i1 %exitcond28, label %._crit_edge17, label %.preheader

._crit_edge17:                                    ; preds = %._crit_edge, %.preheader11
  ret i32 undef
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @corner_draw(i8* nocapture %in, %struct.anon* nocapture readonly %corner_list, i32 %x_size, i32 %drawing_mode) #6 {
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 0, i32 2
  %2 = load i32, i32* %1, align 4, !tbaa !14
  %3 = icmp eq i32 %2, 7
  br i1 %3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %4 = icmp eq i32 %drawing_mode, 0
  %5 = add nsw i32 %x_size, -2
  %6 = sext i32 %5 to i64
  br i1 %4, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %7 = phi %struct.anon* [ %27, %.lr.ph.split.us ], [ %corner_list, %.lr.ph ]
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv, i32 1
  %9 = load i32, i32* %8, align 4, !tbaa !16
  %10 = add nsw i32 %9, -1
  %11 = mul nsw i32 %10, %x_size
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %in, i64 %12
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %7, i64 0, i32 0
  %15 = load i32, i32* %14, align 4, !tbaa !17
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 -1, i8* %18, align 1, !tbaa !13
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 -1, i8* %19, align 1, !tbaa !13
  store i8 -1, i8* %20, align 1, !tbaa !13
  %21 = getelementptr inbounds i8, i8* %20, i64 %6
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 -1, i8* %21, align 1, !tbaa !13
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 0, i8* %22, align 1, !tbaa !13
  store i8 -1, i8* %23, align 1, !tbaa !13
  %24 = getelementptr inbounds i8, i8* %23, i64 %6
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 -1, i8* %24, align 1, !tbaa !13
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 -1, i8* %25, align 1, !tbaa !13
  store i8 -1, i8* %26, align 1, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv.next
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv.next, i32 2
  %29 = load i32, i32* %28, align 4, !tbaa !14
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %.lr.ph.split ], [ 0, %.lr.ph ]
  %31 = phi %struct.anon* [ %41, %.lr.ph.split ], [ %corner_list, %.lr.ph ]
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv3, i32 1
  %33 = load i32, i32* %32, align 4, !tbaa !16
  %34 = mul nsw i32 %33, %x_size
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %in, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %31, i64 0, i32 0
  %38 = load i32, i32* %37, align 4, !tbaa !17
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 0, i8* %40, align 1, !tbaa !13
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv.next4
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %indvars.iv.next4, i32 2
  %43 = load i32, i32* %42, align 4, !tbaa !14
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %0
  ret i32 undef
}

; Function Attrs: nounwind ssp uwtable
define i32 @susan_corners(i8* nocapture readonly %in, i32* %r, i8* readonly %bp, i32 %max_no, %struct.anon* nocapture %corner_list, i32 %x_size, i32 %y_size) #3 {
  %1 = bitcast i32* %r to i8*
  %2 = mul nsw i32 %y_size, %x_size
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %6 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 %4, i64 %5) #11
  %7 = tail call i8* @malloc(i64 %4)
  %8 = bitcast i8* %7 to i32*
  %9 = tail call i8* @malloc(i64 %4)
  %10 = bitcast i8* %9 to i32*
  %11 = add i32 %y_size, -5
  %12 = icmp sgt i32 %11, 5
  br i1 %12, label %.preheader49.lr.ph, label %._crit_edge57

.preheader49.lr.ph:                               ; preds = %0
  %13 = add i32 %x_size, -5
  %14 = icmp sgt i32 %13, 5
  %15 = add nsw i32 %x_size, -3
  %16 = sext i32 %15 to i64
  %17 = sext i32 %13 to i64
  %18 = add nsw i32 %x_size, -6
  %19 = sext i32 %18 to i64
  %20 = sext i32 %x_size to i64
  br label %.preheader49

.preheader49:                                     ; preds = %._crit_edge61, %.preheader49.lr.ph
  %indvars.iv79 = phi i64 [ 5, %.preheader49.lr.ph ], [ %indvars.iv.next80, %._crit_edge61 ]
  br i1 %14, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader49
  %21 = add nsw i64 %indvars.iv79, -3
  %22 = mul nsw i64 %21, %20
  %23 = getelementptr inbounds i8, i8* %in, i64 %22
  %24 = mul nsw i64 %indvars.iv79, %20
  %25 = trunc i64 %24 to i32
  %26 = trunc i64 %indvars.iv79 to i32
  %27 = trunc i64 %indvars.iv79 to i32
  br label %33

.preheader48:                                     ; preds = %._crit_edge61
  br i1 %12, label %.preheader.lr.ph, label %._crit_edge57

.preheader.lr.ph:                                 ; preds = %.preheader48
  %28 = add nsw i32 %x_size, -5
  %29 = icmp sgt i32 %28, 5
  %30 = sext i32 %28 to i64
  %31 = sext i32 %x_size to i64
  %32 = sext i32 %11 to i64
  br label %.preheader

; <label>:33                                      ; preds = %547, %.lr.ph60
  %indvars.iv77 = phi i64 [ 5, %.lr.ph60 ], [ %indvars.iv.next78, %547 ]
  %j.059 = phi i32 [ 5, %.lr.ph60 ], [ %548, %547 ]
  %34 = getelementptr inbounds i8, i8* %23, i64 %indvars.iv77
  %35 = getelementptr inbounds i8, i8* %34, i64 -1
  %36 = add nsw i32 %j.059, %25
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %in, i64 %37
  %39 = load i8, i8* %38, align 1, !tbaa !13
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, i8* %bp, i64 %40
  %42 = getelementptr inbounds i8, i8* %35, i64 1
  %43 = load i8, i8* %35, align 1, !tbaa !13
  %44 = zext i8 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8, i8* %46, align 1, !tbaa !13
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %48, 100
  %50 = getelementptr inbounds i8, i8* %42, i64 1
  %51 = load i8, i8* %42, align 1, !tbaa !13
  %52 = zext i8 %51 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i8, i8* %41, i64 %53
  %55 = load i8, i8* %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %49, %56
  %58 = load i8, i8* %50, align 1, !tbaa !13
  %59 = zext i8 %58 to i64
  %60 = sub nsw i64 0, %59
  %61 = getelementptr inbounds i8, i8* %41, i64 %60
  %62 = load i8, i8* %61, align 1, !tbaa !13
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %57, %63
  %65 = getelementptr inbounds i8, i8* %50, i64 %16
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %65, align 1, !tbaa !13
  %68 = zext i8 %67 to i64
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, i8* %41, i64 %69
  %71 = load i8, i8* %70, align 1, !tbaa !13
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %64, %72
  %74 = getelementptr inbounds i8, i8* %66, i64 1
  %75 = load i8, i8* %66, align 1, !tbaa !13
  %76 = zext i8 %75 to i64
  %77 = sub nsw i64 0, %76
  %78 = getelementptr inbounds i8, i8* %41, i64 %77
  %79 = load i8, i8* %78, align 1, !tbaa !13
  %80 = zext i8 %79 to i32
  %81 = add nuw nsw i32 %73, %80
  %82 = getelementptr inbounds i8, i8* %74, i64 1
  %83 = load i8, i8* %74, align 1, !tbaa !13
  %84 = zext i8 %83 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, i8* %41, i64 %85
  %87 = load i8, i8* %86, align 1, !tbaa !13
  %88 = zext i8 %87 to i32
  %89 = add nuw nsw i32 %81, %88
  %90 = getelementptr inbounds i8, i8* %82, i64 1
  %91 = load i8, i8* %82, align 1, !tbaa !13
  %92 = zext i8 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, i8* %41, i64 %93
  %95 = load i8, i8* %94, align 1, !tbaa !13
  %96 = zext i8 %95 to i32
  %97 = add nsw i32 %89, %96
  %98 = load i8, i8* %90, align 1, !tbaa !13
  %99 = zext i8 %98 to i64
  %100 = sub nsw i64 0, %99
  %101 = getelementptr inbounds i8, i8* %41, i64 %100
  %102 = load i8, i8* %101, align 1, !tbaa !13
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %97, %103
  %105 = getelementptr inbounds i8, i8* %90, i64 %17
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %105, align 1, !tbaa !13
  %108 = zext i8 %107 to i64
  %109 = sub nsw i64 0, %108
  %110 = getelementptr inbounds i8, i8* %41, i64 %109
  %111 = load i8, i8* %110, align 1, !tbaa !13
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %104, %112
  %114 = getelementptr inbounds i8, i8* %106, i64 1
  %115 = load i8, i8* %106, align 1, !tbaa !13
  %116 = zext i8 %115 to i64
  %117 = sub nsw i64 0, %116
  %118 = getelementptr inbounds i8, i8* %41, i64 %117
  %119 = load i8, i8* %118, align 1, !tbaa !13
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %113, %120
  %122 = getelementptr inbounds i8, i8* %114, i64 1
  %123 = load i8, i8* %114, align 1, !tbaa !13
  %124 = zext i8 %123 to i64
  %125 = sub nsw i64 0, %124
  %126 = getelementptr inbounds i8, i8* %41, i64 %125
  %127 = load i8, i8* %126, align 1, !tbaa !13
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %121, %128
  %130 = getelementptr inbounds i8, i8* %122, i64 1
  %131 = load i8, i8* %122, align 1, !tbaa !13
  %132 = zext i8 %131 to i64
  %133 = sub nsw i64 0, %132
  %134 = getelementptr inbounds i8, i8* %41, i64 %133
  %135 = load i8, i8* %134, align 1, !tbaa !13
  %136 = zext i8 %135 to i32
  %137 = add nsw i32 %129, %136
  %138 = getelementptr inbounds i8, i8* %130, i64 1
  %139 = load i8, i8* %130, align 1, !tbaa !13
  %140 = zext i8 %139 to i64
  %141 = sub nsw i64 0, %140
  %142 = getelementptr inbounds i8, i8* %41, i64 %141
  %143 = load i8, i8* %142, align 1, !tbaa !13
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 %137, %144
  %146 = getelementptr inbounds i8, i8* %138, i64 1
  %147 = load i8, i8* %138, align 1, !tbaa !13
  %148 = zext i8 %147 to i64
  %149 = sub nsw i64 0, %148
  %150 = getelementptr inbounds i8, i8* %41, i64 %149
  %151 = load i8, i8* %150, align 1, !tbaa !13
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %145, %152
  %154 = load i8, i8* %146, align 1, !tbaa !13
  %155 = zext i8 %154 to i64
  %156 = sub nsw i64 0, %155
  %157 = getelementptr inbounds i8, i8* %41, i64 %156
  %158 = load i8, i8* %157, align 1, !tbaa !13
  %159 = zext i8 %158 to i32
  %160 = add nsw i32 %153, %159
  %161 = getelementptr inbounds i8, i8* %146, i64 %19
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %161, align 1, !tbaa !13
  %164 = zext i8 %163 to i64
  %165 = sub nsw i64 0, %164
  %166 = getelementptr inbounds i8, i8* %41, i64 %165
  %167 = load i8, i8* %166, align 1, !tbaa !13
  %168 = zext i8 %167 to i32
  %169 = add nsw i32 %160, %168
  %170 = getelementptr inbounds i8, i8* %162, i64 1
  %171 = load i8, i8* %162, align 1, !tbaa !13
  %172 = zext i8 %171 to i64
  %173 = sub nsw i64 0, %172
  %174 = getelementptr inbounds i8, i8* %41, i64 %173
  %175 = load i8, i8* %174, align 1, !tbaa !13
  %176 = zext i8 %175 to i32
  %177 = add nsw i32 %169, %176
  %178 = load i8, i8* %170, align 1, !tbaa !13
  %179 = zext i8 %178 to i64
  %180 = sub nsw i64 0, %179
  %181 = getelementptr inbounds i8, i8* %41, i64 %180
  %182 = load i8, i8* %181, align 1, !tbaa !13
  %183 = zext i8 %182 to i32
  %184 = add nsw i32 %177, %183
  %185 = icmp slt i32 %184, %max_no
  br i1 %185, label %186, label %547

; <label>:186                                     ; preds = %33
  %187 = getelementptr inbounds i8, i8* %170, i64 2
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %187, align 1, !tbaa !13
  %190 = zext i8 %189 to i64
  %191 = sub nsw i64 0, %190
  %192 = getelementptr inbounds i8, i8* %41, i64 %191
  %193 = load i8, i8* %192, align 1, !tbaa !13
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 %194, %184
  %196 = icmp slt i32 %195, %max_no
  br i1 %196, label %197, label %547

; <label>:197                                     ; preds = %186
  %198 = getelementptr inbounds i8, i8* %188, i64 1
  %199 = load i8, i8* %188, align 1, !tbaa !13
  %200 = zext i8 %199 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds i8, i8* %41, i64 %201
  %203 = load i8, i8* %202, align 1, !tbaa !13
  %204 = zext i8 %203 to i32
  %205 = add nsw i32 %204, %195
  %206 = icmp slt i32 %205, %max_no
  br i1 %206, label %207, label %547

; <label>:207                                     ; preds = %197
  %208 = load i8, i8* %198, align 1, !tbaa !13
  %209 = zext i8 %208 to i64
  %210 = sub nsw i64 0, %209
  %211 = getelementptr inbounds i8, i8* %41, i64 %210
  %212 = load i8, i8* %211, align 1, !tbaa !13
  %213 = zext i8 %212 to i32
  %214 = add nsw i32 %213, %205
  %215 = icmp slt i32 %214, %max_no
  br i1 %215, label %216, label %547

; <label>:216                                     ; preds = %207
  %217 = getelementptr inbounds i8, i8* %198, i64 %19
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i8, i8* %217, align 1, !tbaa !13
  %220 = zext i8 %219 to i64
  %221 = sub nsw i64 0, %220
  %222 = getelementptr inbounds i8, i8* %41, i64 %221
  %223 = load i8, i8* %222, align 1, !tbaa !13
  %224 = zext i8 %223 to i32
  %225 = add nsw i32 %224, %214
  %226 = icmp slt i32 %225, %max_no
  br i1 %226, label %227, label %547

; <label>:227                                     ; preds = %216
  %228 = getelementptr inbounds i8, i8* %218, i64 1
  %229 = load i8, i8* %218, align 1, !tbaa !13
  %230 = zext i8 %229 to i64
  %231 = sub nsw i64 0, %230
  %232 = getelementptr inbounds i8, i8* %41, i64 %231
  %233 = load i8, i8* %232, align 1, !tbaa !13
  %234 = zext i8 %233 to i32
  %235 = add nsw i32 %234, %225
  %236 = icmp slt i32 %235, %max_no
  br i1 %236, label %237, label %547

; <label>:237                                     ; preds = %227
  %238 = getelementptr inbounds i8, i8* %228, i64 1
  %239 = load i8, i8* %228, align 1, !tbaa !13
  %240 = zext i8 %239 to i64
  %241 = sub nsw i64 0, %240
  %242 = getelementptr inbounds i8, i8* %41, i64 %241
  %243 = load i8, i8* %242, align 1, !tbaa !13
  %244 = zext i8 %243 to i32
  %245 = add nsw i32 %244, %235
  %246 = icmp slt i32 %245, %max_no
  br i1 %246, label %247, label %547

; <label>:247                                     ; preds = %237
  %248 = getelementptr inbounds i8, i8* %238, i64 1
  %249 = load i8, i8* %238, align 1, !tbaa !13
  %250 = zext i8 %249 to i64
  %251 = sub nsw i64 0, %250
  %252 = getelementptr inbounds i8, i8* %41, i64 %251
  %253 = load i8, i8* %252, align 1, !tbaa !13
  %254 = zext i8 %253 to i32
  %255 = add nsw i32 %254, %245
  %256 = icmp slt i32 %255, %max_no
  br i1 %256, label %257, label %547

; <label>:257                                     ; preds = %247
  %258 = getelementptr inbounds i8, i8* %248, i64 1
  %259 = load i8, i8* %248, align 1, !tbaa !13
  %260 = zext i8 %259 to i64
  %261 = sub nsw i64 0, %260
  %262 = getelementptr inbounds i8, i8* %41, i64 %261
  %263 = load i8, i8* %262, align 1, !tbaa !13
  %264 = zext i8 %263 to i32
  %265 = add nsw i32 %264, %255
  %266 = icmp slt i32 %265, %max_no
  br i1 %266, label %267, label %547

; <label>:267                                     ; preds = %257
  %268 = getelementptr inbounds i8, i8* %258, i64 1
  %269 = load i8, i8* %258, align 1, !tbaa !13
  %270 = zext i8 %269 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, i8* %41, i64 %271
  %273 = load i8, i8* %272, align 1, !tbaa !13
  %274 = zext i8 %273 to i32
  %275 = add nsw i32 %274, %265
  %276 = icmp slt i32 %275, %max_no
  br i1 %276, label %277, label %547

; <label>:277                                     ; preds = %267
  %278 = load i8, i8* %268, align 1, !tbaa !13
  %279 = zext i8 %278 to i64
  %280 = sub nsw i64 0, %279
  %281 = getelementptr inbounds i8, i8* %41, i64 %280
  %282 = load i8, i8* %281, align 1, !tbaa !13
  %283 = zext i8 %282 to i32
  %284 = add nsw i32 %283, %275
  %285 = icmp slt i32 %284, %max_no
  br i1 %285, label %286, label %547

; <label>:286                                     ; preds = %277
  %287 = getelementptr inbounds i8, i8* %268, i64 %17
  %288 = getelementptr inbounds i8, i8* %287, i64 1
  %289 = load i8, i8* %287, align 1, !tbaa !13
  %290 = zext i8 %289 to i64
  %291 = sub nsw i64 0, %290
  %292 = getelementptr inbounds i8, i8* %41, i64 %291
  %293 = load i8, i8* %292, align 1, !tbaa !13
  %294 = zext i8 %293 to i32
  %295 = add nsw i32 %294, %284
  %296 = icmp slt i32 %295, %max_no
  br i1 %296, label %297, label %547

; <label>:297                                     ; preds = %286
  %298 = getelementptr inbounds i8, i8* %288, i64 1
  %299 = load i8, i8* %288, align 1, !tbaa !13
  %300 = zext i8 %299 to i64
  %301 = sub nsw i64 0, %300
  %302 = getelementptr inbounds i8, i8* %41, i64 %301
  %303 = load i8, i8* %302, align 1, !tbaa !13
  %304 = zext i8 %303 to i32
  %305 = add nsw i32 %304, %295
  %306 = icmp slt i32 %305, %max_no
  br i1 %306, label %307, label %547

; <label>:307                                     ; preds = %297
  %308 = getelementptr inbounds i8, i8* %298, i64 1
  %309 = load i8, i8* %298, align 1, !tbaa !13
  %310 = zext i8 %309 to i64
  %311 = sub nsw i64 0, %310
  %312 = getelementptr inbounds i8, i8* %41, i64 %311
  %313 = load i8, i8* %312, align 1, !tbaa !13
  %314 = zext i8 %313 to i32
  %315 = add nsw i32 %314, %305
  %316 = icmp slt i32 %315, %max_no
  br i1 %316, label %317, label %547

; <label>:317                                     ; preds = %307
  %318 = getelementptr inbounds i8, i8* %308, i64 1
  %319 = load i8, i8* %308, align 1, !tbaa !13
  %320 = zext i8 %319 to i64
  %321 = sub nsw i64 0, %320
  %322 = getelementptr inbounds i8, i8* %41, i64 %321
  %323 = load i8, i8* %322, align 1, !tbaa !13
  %324 = zext i8 %323 to i32
  %325 = add nsw i32 %324, %315
  %326 = icmp slt i32 %325, %max_no
  br i1 %326, label %327, label %547

; <label>:327                                     ; preds = %317
  %328 = load i8, i8* %318, align 1, !tbaa !13
  %329 = zext i8 %328 to i64
  %330 = sub nsw i64 0, %329
  %331 = getelementptr inbounds i8, i8* %41, i64 %330
  %332 = load i8, i8* %331, align 1, !tbaa !13
  %333 = zext i8 %332 to i32
  %334 = add nsw i32 %333, %325
  %335 = icmp slt i32 %334, %max_no
  br i1 %335, label %336, label %547

; <label>:336                                     ; preds = %327
  %337 = getelementptr inbounds i8, i8* %318, i64 %16
  %338 = getelementptr inbounds i8, i8* %337, i64 1
  %339 = load i8, i8* %337, align 1, !tbaa !13
  %340 = zext i8 %339 to i64
  %341 = sub nsw i64 0, %340
  %342 = getelementptr inbounds i8, i8* %41, i64 %341
  %343 = load i8, i8* %342, align 1, !tbaa !13
  %344 = zext i8 %343 to i32
  %345 = add nsw i32 %344, %334
  %346 = icmp slt i32 %345, %max_no
  br i1 %346, label %347, label %547

; <label>:347                                     ; preds = %336
  %348 = load i8, i8* %338, align 1, !tbaa !13
  %349 = zext i8 %348 to i64
  %350 = sub nsw i64 0, %349
  %351 = getelementptr inbounds i8, i8* %41, i64 %350
  %352 = load i8, i8* %351, align 1, !tbaa !13
  %353 = zext i8 %352 to i32
  %354 = add nsw i32 %353, %345
  %355 = icmp slt i32 %354, %max_no
  br i1 %355, label %356, label %547

; <label>:356                                     ; preds = %347
  %357 = getelementptr inbounds i8, i8* %338, i64 1
  %358 = load i8, i8* %357, align 1, !tbaa !13
  %359 = zext i8 %358 to i64
  %360 = sub nsw i64 0, %359
  %361 = getelementptr inbounds i8, i8* %41, i64 %360
  %362 = load i8, i8* %361, align 1, !tbaa !13
  %363 = zext i8 %362 to i32
  %364 = add nsw i32 %363, %354
  %365 = icmp slt i32 %364, %max_no
  br i1 %365, label %366, label %547

; <label>:366                                     ; preds = %356
  %367 = add nuw nsw i32 %56, %48
  %368 = add nuw nsw i32 %367, %63
  %369 = shl nuw nsw i32 %72, 1
  %370 = shl nuw nsw i32 %80, 1
  %371 = shl nuw nsw i32 %88, 1
  %372 = shl nuw nsw i32 %96, 1
  %373 = shl nuw nsw i32 %103, 1
  %374 = shl nuw nsw i32 %120, 1
  %375 = shl nuw nsw i32 %176, 1
  %376 = shl nuw nsw i32 %234, 1
  %377 = shl nuw nsw i32 %294, 1
  %378 = shl nuw nsw i32 %333, 1
  %tmp = sub nsw i32 %159, %112
  %tmp32 = sub nsw i32 %tmp, %168
  %tmp33 = add nsw i32 %tmp32, %213
  %tmp34 = sub nsw i32 %tmp33, %224
  %tmp35 = add nsw i32 %tmp34, %283
  %tmp36 = mul nsw i32 %tmp35, 3
  %tmp37 = add nuw nsw i32 %204, %152
  %tmp38 = add nuw nsw i32 %tmp37, %274
  %tmp39 = shl nuw nsw i32 %tmp38, 1
  %379 = sub nsw i32 %63, %48
  %380 = sub nsw i32 %379, %369
  %381 = sub nsw i32 %380, %80
  %382 = add nsw i32 %381, %96
  %383 = add nsw i32 %382, %373
  %384 = sub nsw i32 %383, %374
  %385 = sub i32 %384, %128
  %386 = add i32 %385, %144
  %387 = sub i32 %386, %375
  %388 = sub i32 %387, %183
  %389 = add i32 %388, %194
  %390 = sub i32 %389, %376
  %391 = sub i32 %390, %244
  %392 = add i32 %391, %264
  %393 = add i32 %392, %tmp39
  %394 = add i32 %393, %tmp36
  %395 = sub i32 %394, %377
  %396 = sub i32 %395, %304
  %397 = add i32 %396, %324
  %398 = add i32 %397, %378
  %399 = sub i32 %398, %344
  %400 = add i32 %399, %363
  %tmp41 = sub nsw i32 %344, %368
  %tmp42 = add nsw i32 %tmp41, %353
  %tmp43 = add nsw i32 %tmp42, %363
  %tmp44 = mul nsw i32 %tmp43, 3
  %tmp45 = add nuw nsw i32 %314, %304
  %tmp46 = add nuw nsw i32 %tmp45, %324
  %tmp47 = shl nuw nsw i32 %tmp46, 1
  %sum = add nuw nsw i32 %370, %369
  %sum65 = add nuw nsw i32 %sum, %371
  %sum66 = add nuw nsw i32 %sum65, %372
  %sum67 = add nuw nsw i32 %sum66, %373
  %sum68 = add nuw nsw i32 %sum67, %112
  %sum69 = add i32 %sum68, %120
  %sum70 = add i32 %sum69, %128
  %sum71 = add i32 %sum70, %136
  %sum72 = add i32 %sum71, %144
  %sum73 = add i32 %sum72, %152
  %sum74 = add i32 %sum73, %159
  %401 = sub i32 %224, %sum74
  %402 = add i32 %401, %234
  %403 = add i32 %402, %244
  %404 = add i32 %403, %254
  %405 = add i32 %404, %264
  %406 = add i32 %405, %274
  %407 = add i32 %406, %283
  %408 = add i32 %407, %377
  %409 = add i32 %408, %tmp47
  %410 = add i32 %409, %378
  %411 = add i32 %410, %tmp44
  %412 = mul nsw i32 %400, %400
  %413 = mul nsw i32 %411, %411
  %414 = add nuw nsw i32 %413, %412
  %415 = mul nsw i32 %364, %364
  %416 = lshr i32 %415, 1
  %417 = icmp ugt i32 %414, %416
  br i1 %417, label %418, label %547

; <label>:418                                     ; preds = %366
  %419 = icmp ult i32 %413, %412
  br i1 %419, label %420, label %478

; <label>:420                                     ; preds = %418
  %421 = sitofp i32 %411 to float
  %ispos6 = icmp sgt i32 %400, -1
  %neg7 = sub i32 0, %400
  %422 = select i1 %ispos6, i32 %400, i32 %neg7
  %423 = sitofp i32 %422 to float
  %424 = fdiv float %421, %423
  %425 = sdiv i32 %422, %400
  %426 = fcmp olt float %424, 0.000000e+00
  %427 = fpext float %424 to double
  %.sink.v = select i1 %426, double -5.000000e-01, double 5.000000e-01
  %.sink = fadd double %427, %.sink.v
  %428 = fptosi double %.sink to i32
  %429 = add nsw i32 %428, %26
  %430 = mul nsw i32 %429, %x_size
  %431 = trunc i64 %indvars.iv77 to i32
  %432 = add nsw i32 %430, %431
  %433 = add nsw i32 %432, %425
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, i8* %in, i64 %434
  %436 = load i8, i8* %435, align 1, !tbaa !13
  %437 = zext i8 %436 to i64
  %438 = sub nsw i64 0, %437
  %439 = getelementptr inbounds i8, i8* %41, i64 %438
  %440 = load i8, i8* %439, align 1, !tbaa !13
  %441 = zext i8 %440 to i32
  %442 = fmul float %424, 2.000000e+00
  %443 = fcmp olt float %442, 0.000000e+00
  %444 = fpext float %442 to double
  %.sink1.v = select i1 %443, double -5.000000e-01, double 5.000000e-01
  %.sink1 = fadd double %444, %.sink1.v
  %445 = fptosi double %.sink1 to i32
  %446 = add nsw i32 %445, %26
  %447 = mul nsw i32 %446, %x_size
  %448 = add nsw i32 %447, %431
  %449 = shl i32 %425, 1
  %450 = add nsw i32 %448, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %in, i64 %451
  %453 = load i8, i8* %452, align 1, !tbaa !13
  %454 = zext i8 %453 to i64
  %455 = sub nsw i64 0, %454
  %456 = getelementptr inbounds i8, i8* %41, i64 %455
  %457 = load i8, i8* %456, align 1, !tbaa !13
  %458 = zext i8 %457 to i32
  %459 = add nuw nsw i32 %458, %441
  %460 = fmul float %424, 3.000000e+00
  %461 = fcmp olt float %460, 0.000000e+00
  %462 = fpext float %460 to double
  %.sink2.v = select i1 %461, double -5.000000e-01, double 5.000000e-01
  %.sink2 = fadd double %462, %.sink2.v
  %463 = fptosi double %.sink2 to i32
  %464 = add nsw i32 %463, %26
  %465 = mul nsw i32 %464, %x_size
  %466 = add nsw i32 %465, %431
  %467 = mul nsw i32 %425, 3
  %468 = add nsw i32 %466, %467
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8, i8* %in, i64 %469
  %471 = load i8, i8* %470, align 1, !tbaa !13
  %472 = zext i8 %471 to i64
  %473 = sub nsw i64 0, %472
  %474 = getelementptr inbounds i8, i8* %41, i64 %473
  %475 = load i8, i8* %474, align 1, !tbaa !13
  %476 = zext i8 %475 to i32
  %477 = add nuw nsw i32 %459, %476
  br label %536

; <label>:478                                     ; preds = %418
  %479 = sitofp i32 %400 to float
  %ispos = icmp sgt i32 %411, -1
  %neg = sub i32 0, %411
  %480 = select i1 %ispos, i32 %411, i32 %neg
  %481 = sitofp i32 %480 to float
  %482 = fdiv float %479, %481
  %483 = sdiv i32 %480, %411
  %484 = add nsw i32 %483, %27
  %485 = mul nsw i32 %484, %x_size
  %486 = fcmp olt float %482, 0.000000e+00
  %487 = fpext float %482 to double
  %.sink3.v = select i1 %486, double -5.000000e-01, double 5.000000e-01
  %.sink3 = fadd double %487, %.sink3.v
  %488 = fptosi double %.sink3 to i32
  %489 = trunc i64 %indvars.iv77 to i32
  %490 = add i32 %488, %489
  %491 = add i32 %490, %485
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i8, i8* %in, i64 %492
  %494 = load i8, i8* %493, align 1, !tbaa !13
  %495 = zext i8 %494 to i64
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, i8* %41, i64 %496
  %498 = load i8, i8* %497, align 1, !tbaa !13
  %499 = zext i8 %498 to i32
  %500 = shl i32 %483, 1
  %501 = add nsw i32 %500, %27
  %502 = mul nsw i32 %501, %x_size
  %503 = fmul float %482, 2.000000e+00
  %504 = fcmp olt float %503, 0.000000e+00
  %505 = fpext float %503 to double
  %.sink4.v = select i1 %504, double -5.000000e-01, double 5.000000e-01
  %.sink4 = fadd double %505, %.sink4.v
  %506 = fptosi double %.sink4 to i32
  %507 = add i32 %506, %489
  %508 = add i32 %507, %502
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, i8* %in, i64 %509
  %511 = load i8, i8* %510, align 1, !tbaa !13
  %512 = zext i8 %511 to i64
  %513 = sub nsw i64 0, %512
  %514 = getelementptr inbounds i8, i8* %41, i64 %513
  %515 = load i8, i8* %514, align 1, !tbaa !13
  %516 = zext i8 %515 to i32
  %517 = add nuw nsw i32 %516, %499
  %518 = mul nsw i32 %483, 3
  %519 = add nsw i32 %518, %27
  %520 = mul nsw i32 %519, %x_size
  %521 = fmul float %482, 3.000000e+00
  %522 = fcmp olt float %521, 0.000000e+00
  %523 = fpext float %521 to double
  %.sink5.v = select i1 %522, double -5.000000e-01, double 5.000000e-01
  %.sink5 = fadd double %523, %.sink5.v
  %524 = fptosi double %.sink5 to i32
  %525 = add i32 %524, %489
  %526 = add i32 %525, %520
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds i8, i8* %in, i64 %527
  %529 = load i8, i8* %528, align 1, !tbaa !13
  %530 = zext i8 %529 to i64
  %531 = sub nsw i64 0, %530
  %532 = getelementptr inbounds i8, i8* %41, i64 %531
  %533 = load i8, i8* %532, align 1, !tbaa !13
  %534 = zext i8 %533 to i32
  %535 = add nuw nsw i32 %517, %534
  br label %536

; <label>:536                                     ; preds = %478, %420
  %sq.0 = phi i32 [ %477, %420 ], [ %535, %478 ]
  %537 = icmp sgt i32 %sq.0, 290
  br i1 %537, label %538, label %547

; <label>:538                                     ; preds = %536
  %539 = sub nsw i32 %max_no, %364
  %540 = getelementptr inbounds i32, i32* %r, i64 %37
  store i32 %539, i32* %540, align 4, !tbaa !6
  %541 = mul nsw i32 %400, 51
  %542 = sdiv i32 %541, %364
  %543 = getelementptr inbounds i32, i32* %8, i64 %37
  store i32 %542, i32* %543, align 4, !tbaa !6
  %544 = mul nsw i32 %411, 51
  %545 = sdiv i32 %544, %364
  %546 = getelementptr inbounds i32, i32* %10, i64 %37
  store i32 %545, i32* %546, align 4, !tbaa !6
  br label %547

; <label>:547                                     ; preds = %33, %197, %216, %237, %257, %277, %297, %317, %336, %356, %536, %538, %366, %347, %327, %307, %286, %267, %247, %227, %207, %186
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %548 = add nuw nsw i32 %j.059, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next78 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %13
  br i1 %exitcond, label %._crit_edge61, label %33

._crit_edge61:                                    ; preds = %547, %.preheader49
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %lftr.wideiv81 = trunc i64 %indvars.iv.next80 to i32
  %exitcond82 = icmp eq i32 %lftr.wideiv81, %11
  br i1 %exitcond82, label %.preheader48, label %.preheader49

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv75 = phi i64 [ 5, %.preheader.lr.ph ], [ %indvars.iv.next76.pre-phi, %._crit_edge ]
  %n.056 = phi i32 [ 0, %.preheader.lr.ph ], [ %n.1.lcssa, %._crit_edge ]
  br i1 %29, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = add nuw nsw i64 %indvars.iv75, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %549 = mul nsw i64 %indvars.iv75, %31
  %550 = add nsw i64 %indvars.iv75, -3
  %551 = mul nsw i64 %550, %31
  %552 = add nsw i64 %indvars.iv75, -2
  %553 = mul nsw i64 %552, %31
  %554 = add nsw i64 %indvars.iv75, -1
  %555 = mul nsw i64 %554, %31
  %556 = add nuw nsw i64 %indvars.iv75, 1
  %557 = mul nsw i64 %556, %31
  %558 = add nuw nsw i64 %indvars.iv75, 2
  %559 = mul nsw i64 %558, %31
  %560 = add nuw nsw i64 %indvars.iv75, 3
  %561 = mul nsw i64 %560, %31
  %562 = trunc i64 %549 to i32
  %563 = trunc i64 %indvars.iv75 to i32
  br label %564

; <label>:564                                     ; preds = %.lr.ph, %837
  %indvars.iv = phi i64 [ 5, %.lr.ph ], [ %indvars.iv.next, %837 ]
  %n.153 = phi i32 [ %n.056, %.lr.ph ], [ %n.2, %837 ]
  %j.152 = phi i32 [ 5, %.lr.ph ], [ %838, %837 ]
  %565 = add nsw i32 %j.152, %562
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32, i32* %r, i64 %566
  %568 = load i32, i32* %567, align 4, !tbaa !6
  %569 = icmp sgt i32 %568, 0
  br i1 %569, label %570, label %837

; <label>:570                                     ; preds = %564
  %571 = add nsw i64 %indvars.iv, %551
  %572 = add nsw i64 %571, -3
  %573 = getelementptr inbounds i32, i32* %r, i64 %572
  %574 = load i32, i32* %573, align 4, !tbaa !6
  %575 = icmp sgt i32 %568, %574
  br i1 %575, label %576, label %837

; <label>:576                                     ; preds = %570
  %577 = add nsw i64 %571, -2
  %578 = getelementptr inbounds i32, i32* %r, i64 %577
  %579 = load i32, i32* %578, align 4, !tbaa !6
  %580 = icmp sgt i32 %568, %579
  br i1 %580, label %581, label %837

; <label>:581                                     ; preds = %576
  %582 = add nsw i64 %571, -1
  %583 = getelementptr inbounds i32, i32* %r, i64 %582
  %584 = load i32, i32* %583, align 4, !tbaa !6
  %585 = icmp sgt i32 %568, %584
  br i1 %585, label %586, label %837

; <label>:586                                     ; preds = %581
  %587 = getelementptr inbounds i32, i32* %r, i64 %571
  %588 = load i32, i32* %587, align 4, !tbaa !6
  %589 = icmp sgt i32 %568, %588
  br i1 %589, label %590, label %837

; <label>:590                                     ; preds = %586
  %591 = add nsw i64 %571, 1
  %592 = getelementptr inbounds i32, i32* %r, i64 %591
  %593 = load i32, i32* %592, align 4, !tbaa !6
  %594 = icmp sgt i32 %568, %593
  br i1 %594, label %595, label %837

; <label>:595                                     ; preds = %590
  %596 = add nsw i64 %571, 2
  %597 = getelementptr inbounds i32, i32* %r, i64 %596
  %598 = load i32, i32* %597, align 4, !tbaa !6
  %599 = icmp sgt i32 %568, %598
  br i1 %599, label %600, label %837

; <label>:600                                     ; preds = %595
  %601 = add nsw i64 %571, 3
  %602 = getelementptr inbounds i32, i32* %r, i64 %601
  %603 = load i32, i32* %602, align 4, !tbaa !6
  %604 = icmp sgt i32 %568, %603
  br i1 %604, label %605, label %837

; <label>:605                                     ; preds = %600
  %606 = add nsw i64 %indvars.iv, %553
  %607 = add nsw i64 %606, -3
  %608 = getelementptr inbounds i32, i32* %r, i64 %607
  %609 = load i32, i32* %608, align 4, !tbaa !6
  %610 = icmp sgt i32 %568, %609
  br i1 %610, label %611, label %837

; <label>:611                                     ; preds = %605
  %612 = add nsw i64 %606, -2
  %613 = getelementptr inbounds i32, i32* %r, i64 %612
  %614 = load i32, i32* %613, align 4, !tbaa !6
  %615 = icmp sgt i32 %568, %614
  br i1 %615, label %616, label %837

; <label>:616                                     ; preds = %611
  %617 = add nsw i64 %606, -1
  %618 = getelementptr inbounds i32, i32* %r, i64 %617
  %619 = load i32, i32* %618, align 4, !tbaa !6
  %620 = icmp sgt i32 %568, %619
  br i1 %620, label %621, label %837

; <label>:621                                     ; preds = %616
  %622 = getelementptr inbounds i32, i32* %r, i64 %606
  %623 = load i32, i32* %622, align 4, !tbaa !6
  %624 = icmp sgt i32 %568, %623
  br i1 %624, label %625, label %837

; <label>:625                                     ; preds = %621
  %626 = add nsw i64 %606, 1
  %627 = getelementptr inbounds i32, i32* %r, i64 %626
  %628 = load i32, i32* %627, align 4, !tbaa !6
  %629 = icmp sgt i32 %568, %628
  br i1 %629, label %630, label %837

; <label>:630                                     ; preds = %625
  %631 = add nsw i64 %606, 2
  %632 = getelementptr inbounds i32, i32* %r, i64 %631
  %633 = load i32, i32* %632, align 4, !tbaa !6
  %634 = icmp sgt i32 %568, %633
  br i1 %634, label %635, label %837

; <label>:635                                     ; preds = %630
  %636 = add nsw i64 %606, 3
  %637 = getelementptr inbounds i32, i32* %r, i64 %636
  %638 = load i32, i32* %637, align 4, !tbaa !6
  %639 = icmp sgt i32 %568, %638
  br i1 %639, label %640, label %837

; <label>:640                                     ; preds = %635
  %641 = add nsw i64 %indvars.iv, %555
  %642 = add nsw i64 %641, -3
  %643 = getelementptr inbounds i32, i32* %r, i64 %642
  %644 = load i32, i32* %643, align 4, !tbaa !6
  %645 = icmp sgt i32 %568, %644
  br i1 %645, label %646, label %837

; <label>:646                                     ; preds = %640
  %647 = add nsw i64 %641, -2
  %648 = getelementptr inbounds i32, i32* %r, i64 %647
  %649 = load i32, i32* %648, align 4, !tbaa !6
  %650 = icmp sgt i32 %568, %649
  br i1 %650, label %651, label %837

; <label>:651                                     ; preds = %646
  %652 = add nsw i64 %641, -1
  %653 = getelementptr inbounds i32, i32* %r, i64 %652
  %654 = load i32, i32* %653, align 4, !tbaa !6
  %655 = icmp sgt i32 %568, %654
  br i1 %655, label %656, label %837

; <label>:656                                     ; preds = %651
  %657 = getelementptr inbounds i32, i32* %r, i64 %641
  %658 = load i32, i32* %657, align 4, !tbaa !6
  %659 = icmp sgt i32 %568, %658
  br i1 %659, label %660, label %837

; <label>:660                                     ; preds = %656
  %661 = add nsw i64 %641, 1
  %662 = getelementptr inbounds i32, i32* %r, i64 %661
  %663 = load i32, i32* %662, align 4, !tbaa !6
  %664 = icmp sgt i32 %568, %663
  br i1 %664, label %665, label %837

; <label>:665                                     ; preds = %660
  %666 = add nsw i64 %641, 2
  %667 = getelementptr inbounds i32, i32* %r, i64 %666
  %668 = load i32, i32* %667, align 4, !tbaa !6
  %669 = icmp sgt i32 %568, %668
  br i1 %669, label %670, label %837

; <label>:670                                     ; preds = %665
  %671 = add nsw i64 %641, 3
  %672 = getelementptr inbounds i32, i32* %r, i64 %671
  %673 = load i32, i32* %672, align 4, !tbaa !6
  %674 = icmp sgt i32 %568, %673
  br i1 %674, label %675, label %837

; <label>:675                                     ; preds = %670
  %676 = add nsw i32 %565, -3
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds i32, i32* %r, i64 %677
  %679 = load i32, i32* %678, align 4, !tbaa !6
  %680 = icmp sgt i32 %568, %679
  br i1 %680, label %681, label %837

; <label>:681                                     ; preds = %675
  %682 = add nsw i32 %565, -2
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %r, i64 %683
  %685 = load i32, i32* %684, align 4, !tbaa !6
  %686 = icmp sgt i32 %568, %685
  br i1 %686, label %687, label %837

; <label>:687                                     ; preds = %681
  %688 = add nsw i32 %565, -1
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i32, i32* %r, i64 %689
  %691 = load i32, i32* %690, align 4, !tbaa !6
  %692 = icmp sgt i32 %568, %691
  br i1 %692, label %693, label %837

; <label>:693                                     ; preds = %687
  %694 = add nsw i32 %565, 1
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %r, i64 %695
  %697 = load i32, i32* %696, align 4, !tbaa !6
  %698 = icmp slt i32 %568, %697
  br i1 %698, label %837, label %699

; <label>:699                                     ; preds = %693
  %700 = add nsw i32 %565, 2
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i32, i32* %r, i64 %701
  %703 = load i32, i32* %702, align 4, !tbaa !6
  %704 = icmp slt i32 %568, %703
  br i1 %704, label %837, label %705

; <label>:705                                     ; preds = %699
  %706 = add nsw i32 %565, 3
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i32, i32* %r, i64 %707
  %709 = load i32, i32* %708, align 4, !tbaa !6
  %710 = icmp slt i32 %568, %709
  br i1 %710, label %837, label %711

; <label>:711                                     ; preds = %705
  %712 = add nsw i64 %indvars.iv, %557
  %713 = add nsw i64 %712, -3
  %714 = getelementptr inbounds i32, i32* %r, i64 %713
  %715 = load i32, i32* %714, align 4, !tbaa !6
  %716 = icmp slt i32 %568, %715
  br i1 %716, label %837, label %717

; <label>:717                                     ; preds = %711
  %718 = add nsw i64 %712, -2
  %719 = getelementptr inbounds i32, i32* %r, i64 %718
  %720 = load i32, i32* %719, align 4, !tbaa !6
  %721 = icmp slt i32 %568, %720
  br i1 %721, label %837, label %722

; <label>:722                                     ; preds = %717
  %723 = add nsw i64 %712, -1
  %724 = getelementptr inbounds i32, i32* %r, i64 %723
  %725 = load i32, i32* %724, align 4, !tbaa !6
  %726 = icmp slt i32 %568, %725
  br i1 %726, label %837, label %727

; <label>:727                                     ; preds = %722
  %728 = getelementptr inbounds i32, i32* %r, i64 %712
  %729 = load i32, i32* %728, align 4, !tbaa !6
  %730 = icmp slt i32 %568, %729
  br i1 %730, label %837, label %731

; <label>:731                                     ; preds = %727
  %732 = add nsw i64 %712, 1
  %733 = getelementptr inbounds i32, i32* %r, i64 %732
  %734 = load i32, i32* %733, align 4, !tbaa !6
  %735 = icmp slt i32 %568, %734
  br i1 %735, label %837, label %736

; <label>:736                                     ; preds = %731
  %737 = add nsw i64 %712, 2
  %738 = getelementptr inbounds i32, i32* %r, i64 %737
  %739 = load i32, i32* %738, align 4, !tbaa !6
  %740 = icmp slt i32 %568, %739
  br i1 %740, label %837, label %741

; <label>:741                                     ; preds = %736
  %742 = add nsw i64 %712, 3
  %743 = getelementptr inbounds i32, i32* %r, i64 %742
  %744 = load i32, i32* %743, align 4, !tbaa !6
  %745 = icmp slt i32 %568, %744
  br i1 %745, label %837, label %746

; <label>:746                                     ; preds = %741
  %747 = add nsw i64 %indvars.iv, %559
  %748 = add nsw i64 %747, -3
  %749 = getelementptr inbounds i32, i32* %r, i64 %748
  %750 = load i32, i32* %749, align 4, !tbaa !6
  %751 = icmp slt i32 %568, %750
  br i1 %751, label %837, label %752

; <label>:752                                     ; preds = %746
  %753 = add nsw i64 %747, -2
  %754 = getelementptr inbounds i32, i32* %r, i64 %753
  %755 = load i32, i32* %754, align 4, !tbaa !6
  %756 = icmp slt i32 %568, %755
  br i1 %756, label %837, label %757

; <label>:757                                     ; preds = %752
  %758 = add nsw i64 %747, -1
  %759 = getelementptr inbounds i32, i32* %r, i64 %758
  %760 = load i32, i32* %759, align 4, !tbaa !6
  %761 = icmp slt i32 %568, %760
  br i1 %761, label %837, label %762

; <label>:762                                     ; preds = %757
  %763 = getelementptr inbounds i32, i32* %r, i64 %747
  %764 = load i32, i32* %763, align 4, !tbaa !6
  %765 = icmp slt i32 %568, %764
  br i1 %765, label %837, label %766

; <label>:766                                     ; preds = %762
  %767 = add nsw i64 %747, 1
  %768 = getelementptr inbounds i32, i32* %r, i64 %767
  %769 = load i32, i32* %768, align 4, !tbaa !6
  %770 = icmp slt i32 %568, %769
  br i1 %770, label %837, label %771

; <label>:771                                     ; preds = %766
  %772 = add nsw i64 %747, 2
  %773 = getelementptr inbounds i32, i32* %r, i64 %772
  %774 = load i32, i32* %773, align 4, !tbaa !6
  %775 = icmp slt i32 %568, %774
  br i1 %775, label %837, label %776

; <label>:776                                     ; preds = %771
  %777 = add nsw i64 %747, 3
  %778 = getelementptr inbounds i32, i32* %r, i64 %777
  %779 = load i32, i32* %778, align 4, !tbaa !6
  %780 = icmp slt i32 %568, %779
  br i1 %780, label %837, label %781

; <label>:781                                     ; preds = %776
  %782 = add nsw i64 %indvars.iv, %561
  %783 = add nsw i64 %782, -3
  %784 = getelementptr inbounds i32, i32* %r, i64 %783
  %785 = load i32, i32* %784, align 4, !tbaa !6
  %786 = icmp slt i32 %568, %785
  br i1 %786, label %837, label %787

; <label>:787                                     ; preds = %781
  %788 = add nsw i64 %782, -2
  %789 = getelementptr inbounds i32, i32* %r, i64 %788
  %790 = load i32, i32* %789, align 4, !tbaa !6
  %791 = icmp slt i32 %568, %790
  br i1 %791, label %837, label %792

; <label>:792                                     ; preds = %787
  %793 = add nsw i64 %782, -1
  %794 = getelementptr inbounds i32, i32* %r, i64 %793
  %795 = load i32, i32* %794, align 4, !tbaa !6
  %796 = icmp slt i32 %568, %795
  br i1 %796, label %837, label %797

; <label>:797                                     ; preds = %792
  %798 = getelementptr inbounds i32, i32* %r, i64 %782
  %799 = load i32, i32* %798, align 4, !tbaa !6
  %800 = icmp slt i32 %568, %799
  br i1 %800, label %837, label %801

; <label>:801                                     ; preds = %797
  %802 = add nsw i64 %782, 1
  %803 = getelementptr inbounds i32, i32* %r, i64 %802
  %804 = load i32, i32* %803, align 4, !tbaa !6
  %805 = icmp slt i32 %568, %804
  br i1 %805, label %837, label %806

; <label>:806                                     ; preds = %801
  %807 = add nsw i64 %782, 2
  %808 = getelementptr inbounds i32, i32* %r, i64 %807
  %809 = load i32, i32* %808, align 4, !tbaa !6
  %810 = icmp slt i32 %568, %809
  br i1 %810, label %837, label %811

; <label>:811                                     ; preds = %806
  %812 = add nsw i64 %782, 3
  %813 = getelementptr inbounds i32, i32* %r, i64 %812
  %814 = load i32, i32* %813, align 4, !tbaa !6
  %815 = icmp slt i32 %568, %814
  br i1 %815, label %837, label %816

; <label>:816                                     ; preds = %811
  %817 = sext i32 %n.153 to i64
  %818 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %817, i32 2
  store i32 0, i32* %818, align 4, !tbaa !14
  %819 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %817, i32 0
  %820 = trunc i64 %indvars.iv to i32
  store i32 %820, i32* %819, align 4, !tbaa !17
  %821 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %817, i32 1
  store i32 %563, i32* %821, align 4, !tbaa !16
  %822 = getelementptr inbounds i32, i32* %8, i64 %566
  %823 = load i32, i32* %822, align 4, !tbaa !6
  %824 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %817, i32 3
  store i32 %823, i32* %824, align 4, !tbaa !18
  %825 = getelementptr inbounds i32, i32* %10, i64 %566
  %826 = load i32, i32* %825, align 4, !tbaa !6
  %827 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %817, i32 4
  store i32 %826, i32* %827, align 4, !tbaa !19
  %828 = getelementptr inbounds i8, i8* %in, i64 %566
  %829 = load i8, i8* %828, align 1, !tbaa !13
  %830 = zext i8 %829 to i32
  %831 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %817, i32 5
  store i32 %830, i32* %831, align 4, !tbaa !20
  %832 = add nsw i32 %n.153, 1
  %833 = icmp eq i32 %832, 15000
  br i1 %833, label %834, label %837

; <label>:834                                     ; preds = %816
  %835 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %836 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %835)
  tail call void @exit(i32 1) #12
  unreachable

; <label>:837                                     ; preds = %811, %806, %801, %797, %792, %787, %781, %776, %771, %766, %762, %757, %752, %746, %741, %736, %731, %727, %722, %717, %711, %705, %699, %693, %564, %816, %687, %681, %675, %670, %665, %660, %656, %651, %646, %640, %635, %630, %625, %621, %616, %611, %605, %600, %595, %590, %586, %581, %576, %570
  %n.2 = phi i32 [ %832, %816 ], [ %n.153, %811 ], [ %n.153, %806 ], [ %n.153, %801 ], [ %n.153, %797 ], [ %n.153, %792 ], [ %n.153, %787 ], [ %n.153, %781 ], [ %n.153, %776 ], [ %n.153, %771 ], [ %n.153, %766 ], [ %n.153, %762 ], [ %n.153, %757 ], [ %n.153, %752 ], [ %n.153, %746 ], [ %n.153, %741 ], [ %n.153, %736 ], [ %n.153, %731 ], [ %n.153, %727 ], [ %n.153, %722 ], [ %n.153, %717 ], [ %n.153, %711 ], [ %n.153, %705 ], [ %n.153, %699 ], [ %n.153, %693 ], [ %n.153, %687 ], [ %n.153, %681 ], [ %n.153, %675 ], [ %n.153, %670 ], [ %n.153, %665 ], [ %n.153, %660 ], [ %n.153, %656 ], [ %n.153, %651 ], [ %n.153, %646 ], [ %n.153, %640 ], [ %n.153, %635 ], [ %n.153, %630 ], [ %n.153, %625 ], [ %n.153, %621 ], [ %n.153, %616 ], [ %n.153, %611 ], [ %n.153, %605 ], [ %n.153, %600 ], [ %n.153, %595 ], [ %n.153, %590 ], [ %n.153, %586 ], [ %n.153, %581 ], [ %n.153, %576 ], [ %n.153, %570 ], [ %n.153, %564 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %838 = add nuw nsw i32 %j.152, 1
  %839 = icmp slt i64 %indvars.iv.next, %30
  br i1 %839, label %564, label %._crit_edge

._crit_edge:                                      ; preds = %837, %.preheader.._crit_edge_crit_edge
  %indvars.iv.next76.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %556, %837 ]
  %n.1.lcssa = phi i32 [ %n.056, %.preheader.._crit_edge_crit_edge ], [ %n.2, %837 ]
  %840 = icmp slt i64 %indvars.iv.next76.pre-phi, %32
  br i1 %840, label %.preheader, label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge, %0, %.preheader48
  %n.0.lcssa = phi i32 [ 0, %.preheader48 ], [ 0, %0 ], [ %n.1.lcssa, %._crit_edge ]
  %841 = sext i32 %n.0.lcssa to i64
  %842 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %841, i32 2
  store i32 7, i32* %842, align 4, !tbaa !14
  tail call void @free(i8* %7)
  tail call void @free(i8* %9)
  ret i32 undef
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @susan_corners_quick(i8* readonly %in, i32* %r, i8* readonly %bp, i32 %max_no, %struct.anon* nocapture %corner_list, i32 %x_size, i32 %y_size) #3 {
  %1 = bitcast i32* %r to i8*
  %2 = mul nsw i32 %y_size, %x_size
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %1, i1 false)
  %6 = tail call i8* @__memset_chk(i8* %1, i32 0, i64 %4, i64 %5) #11
  %7 = add i32 %y_size, -7
  %8 = icmp sgt i32 %7, 7
  br i1 %8, label %.preheader34.lr.ph, label %._crit_edge42

.preheader34.lr.ph:                               ; preds = %0
  %9 = add i32 %x_size, -7
  %10 = icmp sgt i32 %9, 7
  %11 = add nsw i32 %x_size, -3
  %12 = sext i32 %11 to i64
  %13 = add nsw i32 %x_size, -5
  %14 = sext i32 %13 to i64
  %15 = add nsw i32 %x_size, -6
  %16 = sext i32 %15 to i64
  %17 = sext i32 %x_size to i64
  br label %.preheader34

.preheader34:                                     ; preds = %._crit_edge46, %.preheader34.lr.ph
  %indvars.iv54 = phi i64 [ 7, %.preheader34.lr.ph ], [ %indvars.iv.next55, %._crit_edge46 ]
  br i1 %10, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %.preheader34
  %18 = add nsw i64 %indvars.iv54, -3
  %19 = mul nsw i64 %18, %17
  %20 = getelementptr inbounds i8, i8* %in, i64 %19
  %21 = mul nsw i64 %indvars.iv54, %17
  %22 = trunc i64 %21 to i32
  br label %28

.preheader33:                                     ; preds = %._crit_edge46
  br i1 %8, label %.preheader.lr.ph, label %._crit_edge42

.preheader.lr.ph:                                 ; preds = %.preheader33
  %23 = add nsw i32 %x_size, -7
  %24 = icmp sgt i32 %23, 7
  %25 = sext i32 %23 to i64
  %26 = sext i32 %x_size to i64
  %27 = sext i32 %7 to i64
  br label %.preheader

; <label>:28                                      ; preds = %364, %.lr.ph45
  %indvars.iv52 = phi i64 [ 7, %.lr.ph45 ], [ %indvars.iv.next53, %364 ]
  %j.044 = phi i32 [ 7, %.lr.ph45 ], [ %365, %364 ]
  %29 = getelementptr inbounds i8, i8* %20, i64 %indvars.iv52
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  %31 = add nsw i32 %j.044, %22
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %in, i64 %32
  %34 = load i8, i8* %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i8, i8* %bp, i64 %35
  %37 = getelementptr inbounds i8, i8* %30, i64 1
  %38 = load i8, i8* %30, align 1, !tbaa !13
  %39 = zext i8 %38 to i64
  %40 = sub nsw i64 0, %39
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load i8, i8* %41, align 1, !tbaa !13
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %43, 100
  %45 = getelementptr inbounds i8, i8* %37, i64 1
  %46 = load i8, i8* %37, align 1, !tbaa !13
  %47 = zext i8 %46 to i64
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds i8, i8* %36, i64 %48
  %50 = load i8, i8* %49, align 1, !tbaa !13
  %51 = zext i8 %50 to i32
  %52 = add nuw nsw i32 %44, %51
  %53 = load i8, i8* %45, align 1, !tbaa !13
  %54 = zext i8 %53 to i64
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds i8, i8* %36, i64 %55
  %57 = load i8, i8* %56, align 1, !tbaa !13
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %52, %58
  %60 = getelementptr inbounds i8, i8* %45, i64 %12
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %60, align 1, !tbaa !13
  %63 = zext i8 %62 to i64
  %64 = sub nsw i64 0, %63
  %65 = getelementptr inbounds i8, i8* %36, i64 %64
  %66 = load i8, i8* %65, align 1, !tbaa !13
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %59, %67
  %69 = getelementptr inbounds i8, i8* %61, i64 1
  %70 = load i8, i8* %61, align 1, !tbaa !13
  %71 = zext i8 %70 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, i8* %36, i64 %72
  %74 = load i8, i8* %73, align 1, !tbaa !13
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %68, %75
  %77 = getelementptr inbounds i8, i8* %69, i64 1
  %78 = load i8, i8* %69, align 1, !tbaa !13
  %79 = zext i8 %78 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, i8* %36, i64 %80
  %82 = load i8, i8* %81, align 1, !tbaa !13
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %76, %83
  %85 = getelementptr inbounds i8, i8* %77, i64 1
  %86 = load i8, i8* %77, align 1, !tbaa !13
  %87 = zext i8 %86 to i64
  %88 = sub nsw i64 0, %87
  %89 = getelementptr inbounds i8, i8* %36, i64 %88
  %90 = load i8, i8* %89, align 1, !tbaa !13
  %91 = zext i8 %90 to i32
  %92 = add nsw i32 %84, %91
  %93 = load i8, i8* %85, align 1, !tbaa !13
  %94 = zext i8 %93 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, i8* %36, i64 %95
  %97 = load i8, i8* %96, align 1, !tbaa !13
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %92, %98
  %100 = getelementptr inbounds i8, i8* %85, i64 %14
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %100, align 1, !tbaa !13
  %103 = zext i8 %102 to i64
  %104 = sub nsw i64 0, %103
  %105 = getelementptr inbounds i8, i8* %36, i64 %104
  %106 = load i8, i8* %105, align 1, !tbaa !13
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %99, %107
  %109 = getelementptr inbounds i8, i8* %101, i64 1
  %110 = load i8, i8* %101, align 1, !tbaa !13
  %111 = zext i8 %110 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, i8* %36, i64 %112
  %114 = load i8, i8* %113, align 1, !tbaa !13
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %108, %115
  %117 = getelementptr inbounds i8, i8* %109, i64 1
  %118 = load i8, i8* %109, align 1, !tbaa !13
  %119 = zext i8 %118 to i64
  %120 = sub nsw i64 0, %119
  %121 = getelementptr inbounds i8, i8* %36, i64 %120
  %122 = load i8, i8* %121, align 1, !tbaa !13
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %116, %123
  %125 = getelementptr inbounds i8, i8* %117, i64 1
  %126 = load i8, i8* %117, align 1, !tbaa !13
  %127 = zext i8 %126 to i64
  %128 = sub nsw i64 0, %127
  %129 = getelementptr inbounds i8, i8* %36, i64 %128
  %130 = load i8, i8* %129, align 1, !tbaa !13
  %131 = zext i8 %130 to i32
  %132 = add nsw i32 %124, %131
  %133 = getelementptr inbounds i8, i8* %125, i64 1
  %134 = load i8, i8* %125, align 1, !tbaa !13
  %135 = zext i8 %134 to i64
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds i8, i8* %36, i64 %136
  %138 = load i8, i8* %137, align 1, !tbaa !13
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 %132, %139
  %141 = getelementptr inbounds i8, i8* %133, i64 1
  %142 = load i8, i8* %133, align 1, !tbaa !13
  %143 = zext i8 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, i8* %36, i64 %144
  %146 = load i8, i8* %145, align 1, !tbaa !13
  %147 = zext i8 %146 to i32
  %148 = add nsw i32 %140, %147
  %149 = load i8, i8* %141, align 1, !tbaa !13
  %150 = zext i8 %149 to i64
  %151 = sub nsw i64 0, %150
  %152 = getelementptr inbounds i8, i8* %36, i64 %151
  %153 = load i8, i8* %152, align 1, !tbaa !13
  %154 = zext i8 %153 to i32
  %155 = add nsw i32 %148, %154
  %156 = getelementptr inbounds i8, i8* %141, i64 %16
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %156, align 1, !tbaa !13
  %159 = zext i8 %158 to i64
  %160 = sub nsw i64 0, %159
  %161 = getelementptr inbounds i8, i8* %36, i64 %160
  %162 = load i8, i8* %161, align 1, !tbaa !13
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %155, %163
  %165 = getelementptr inbounds i8, i8* %157, i64 1
  %166 = load i8, i8* %157, align 1, !tbaa !13
  %167 = zext i8 %166 to i64
  %168 = sub nsw i64 0, %167
  %169 = getelementptr inbounds i8, i8* %36, i64 %168
  %170 = load i8, i8* %169, align 1, !tbaa !13
  %171 = zext i8 %170 to i32
  %172 = add nsw i32 %164, %171
  %173 = load i8, i8* %165, align 1, !tbaa !13
  %174 = zext i8 %173 to i64
  %175 = sub nsw i64 0, %174
  %176 = getelementptr inbounds i8, i8* %36, i64 %175
  %177 = load i8, i8* %176, align 1, !tbaa !13
  %178 = zext i8 %177 to i32
  %179 = add nsw i32 %172, %178
  %180 = icmp slt i32 %179, %max_no
  br i1 %180, label %181, label %364

; <label>:181                                     ; preds = %28
  %182 = getelementptr inbounds i8, i8* %165, i64 2
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %182, align 1, !tbaa !13
  %185 = zext i8 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, i8* %36, i64 %186
  %188 = load i8, i8* %187, align 1, !tbaa !13
  %189 = zext i8 %188 to i32
  %190 = add nsw i32 %189, %179
  %191 = icmp slt i32 %190, %max_no
  br i1 %191, label %192, label %364

; <label>:192                                     ; preds = %181
  %193 = getelementptr inbounds i8, i8* %183, i64 1
  %194 = load i8, i8* %183, align 1, !tbaa !13
  %195 = zext i8 %194 to i64
  %196 = sub nsw i64 0, %195
  %197 = getelementptr inbounds i8, i8* %36, i64 %196
  %198 = load i8, i8* %197, align 1, !tbaa !13
  %199 = zext i8 %198 to i32
  %200 = add nsw i32 %199, %190
  %201 = icmp slt i32 %200, %max_no
  br i1 %201, label %202, label %364

; <label>:202                                     ; preds = %192
  %203 = load i8, i8* %193, align 1, !tbaa !13
  %204 = zext i8 %203 to i64
  %205 = sub nsw i64 0, %204
  %206 = getelementptr inbounds i8, i8* %36, i64 %205
  %207 = load i8, i8* %206, align 1, !tbaa !13
  %208 = zext i8 %207 to i32
  %209 = add nsw i32 %208, %200
  %210 = icmp slt i32 %209, %max_no
  br i1 %210, label %211, label %364

; <label>:211                                     ; preds = %202
  %212 = getelementptr inbounds i8, i8* %193, i64 %16
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %212, align 1, !tbaa !13
  %215 = zext i8 %214 to i64
  %216 = sub nsw i64 0, %215
  %217 = getelementptr inbounds i8, i8* %36, i64 %216
  %218 = load i8, i8* %217, align 1, !tbaa !13
  %219 = zext i8 %218 to i32
  %220 = add nsw i32 %219, %209
  %221 = icmp slt i32 %220, %max_no
  br i1 %221, label %222, label %364

; <label>:222                                     ; preds = %211
  %223 = getelementptr inbounds i8, i8* %213, i64 1
  %224 = load i8, i8* %213, align 1, !tbaa !13
  %225 = zext i8 %224 to i64
  %226 = sub nsw i64 0, %225
  %227 = getelementptr inbounds i8, i8* %36, i64 %226
  %228 = load i8, i8* %227, align 1, !tbaa !13
  %229 = zext i8 %228 to i32
  %230 = add nsw i32 %229, %220
  %231 = icmp slt i32 %230, %max_no
  br i1 %231, label %232, label %364

; <label>:232                                     ; preds = %222
  %233 = getelementptr inbounds i8, i8* %223, i64 1
  %234 = load i8, i8* %223, align 1, !tbaa !13
  %235 = zext i8 %234 to i64
  %236 = sub nsw i64 0, %235
  %237 = getelementptr inbounds i8, i8* %36, i64 %236
  %238 = load i8, i8* %237, align 1, !tbaa !13
  %239 = zext i8 %238 to i32
  %240 = add nsw i32 %239, %230
  %241 = icmp slt i32 %240, %max_no
  br i1 %241, label %242, label %364

; <label>:242                                     ; preds = %232
  %243 = getelementptr inbounds i8, i8* %233, i64 1
  %244 = load i8, i8* %233, align 1, !tbaa !13
  %245 = zext i8 %244 to i64
  %246 = sub nsw i64 0, %245
  %247 = getelementptr inbounds i8, i8* %36, i64 %246
  %248 = load i8, i8* %247, align 1, !tbaa !13
  %249 = zext i8 %248 to i32
  %250 = add nsw i32 %249, %240
  %251 = icmp slt i32 %250, %max_no
  br i1 %251, label %252, label %364

; <label>:252                                     ; preds = %242
  %253 = getelementptr inbounds i8, i8* %243, i64 1
  %254 = load i8, i8* %243, align 1, !tbaa !13
  %255 = zext i8 %254 to i64
  %256 = sub nsw i64 0, %255
  %257 = getelementptr inbounds i8, i8* %36, i64 %256
  %258 = load i8, i8* %257, align 1, !tbaa !13
  %259 = zext i8 %258 to i32
  %260 = add nsw i32 %259, %250
  %261 = icmp slt i32 %260, %max_no
  br i1 %261, label %262, label %364

; <label>:262                                     ; preds = %252
  %263 = getelementptr inbounds i8, i8* %253, i64 1
  %264 = load i8, i8* %253, align 1, !tbaa !13
  %265 = zext i8 %264 to i64
  %266 = sub nsw i64 0, %265
  %267 = getelementptr inbounds i8, i8* %36, i64 %266
  %268 = load i8, i8* %267, align 1, !tbaa !13
  %269 = zext i8 %268 to i32
  %270 = add nsw i32 %269, %260
  %271 = icmp slt i32 %270, %max_no
  br i1 %271, label %272, label %364

; <label>:272                                     ; preds = %262
  %273 = load i8, i8* %263, align 1, !tbaa !13
  %274 = zext i8 %273 to i64
  %275 = sub nsw i64 0, %274
  %276 = getelementptr inbounds i8, i8* %36, i64 %275
  %277 = load i8, i8* %276, align 1, !tbaa !13
  %278 = zext i8 %277 to i32
  %279 = add nsw i32 %278, %270
  %280 = icmp slt i32 %279, %max_no
  br i1 %280, label %281, label %364

; <label>:281                                     ; preds = %272
  %282 = getelementptr inbounds i8, i8* %263, i64 %14
  %283 = getelementptr inbounds i8, i8* %282, i64 1
  %284 = load i8, i8* %282, align 1, !tbaa !13
  %285 = zext i8 %284 to i64
  %286 = sub nsw i64 0, %285
  %287 = getelementptr inbounds i8, i8* %36, i64 %286
  %288 = load i8, i8* %287, align 1, !tbaa !13
  %289 = zext i8 %288 to i32
  %290 = add nsw i32 %289, %279
  %291 = icmp slt i32 %290, %max_no
  br i1 %291, label %292, label %364

; <label>:292                                     ; preds = %281
  %293 = getelementptr inbounds i8, i8* %283, i64 1
  %294 = load i8, i8* %283, align 1, !tbaa !13
  %295 = zext i8 %294 to i64
  %296 = sub nsw i64 0, %295
  %297 = getelementptr inbounds i8, i8* %36, i64 %296
  %298 = load i8, i8* %297, align 1, !tbaa !13
  %299 = zext i8 %298 to i32
  %300 = add nsw i32 %299, %290
  %301 = icmp slt i32 %300, %max_no
  br i1 %301, label %302, label %364

; <label>:302                                     ; preds = %292
  %303 = getelementptr inbounds i8, i8* %293, i64 1
  %304 = load i8, i8* %293, align 1, !tbaa !13
  %305 = zext i8 %304 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i8, i8* %36, i64 %306
  %308 = load i8, i8* %307, align 1, !tbaa !13
  %309 = zext i8 %308 to i32
  %310 = add nsw i32 %309, %300
  %311 = icmp slt i32 %310, %max_no
  br i1 %311, label %312, label %364

; <label>:312                                     ; preds = %302
  %313 = getelementptr inbounds i8, i8* %303, i64 1
  %314 = load i8, i8* %303, align 1, !tbaa !13
  %315 = zext i8 %314 to i64
  %316 = sub nsw i64 0, %315
  %317 = getelementptr inbounds i8, i8* %36, i64 %316
  %318 = load i8, i8* %317, align 1, !tbaa !13
  %319 = zext i8 %318 to i32
  %320 = add nsw i32 %319, %310
  %321 = icmp slt i32 %320, %max_no
  br i1 %321, label %322, label %364

; <label>:322                                     ; preds = %312
  %323 = load i8, i8* %313, align 1, !tbaa !13
  %324 = zext i8 %323 to i64
  %325 = sub nsw i64 0, %324
  %326 = getelementptr inbounds i8, i8* %36, i64 %325
  %327 = load i8, i8* %326, align 1, !tbaa !13
  %328 = zext i8 %327 to i32
  %329 = add nsw i32 %328, %320
  %330 = icmp slt i32 %329, %max_no
  br i1 %330, label %331, label %364

; <label>:331                                     ; preds = %322
  %332 = getelementptr inbounds i8, i8* %313, i64 %12
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  %334 = load i8, i8* %332, align 1, !tbaa !13
  %335 = zext i8 %334 to i64
  %336 = sub nsw i64 0, %335
  %337 = getelementptr inbounds i8, i8* %36, i64 %336
  %338 = load i8, i8* %337, align 1, !tbaa !13
  %339 = zext i8 %338 to i32
  %340 = add nsw i32 %339, %329
  %341 = icmp slt i32 %340, %max_no
  br i1 %341, label %342, label %364

; <label>:342                                     ; preds = %331
  %343 = load i8, i8* %333, align 1, !tbaa !13
  %344 = zext i8 %343 to i64
  %345 = sub nsw i64 0, %344
  %346 = getelementptr inbounds i8, i8* %36, i64 %345
  %347 = load i8, i8* %346, align 1, !tbaa !13
  %348 = zext i8 %347 to i32
  %349 = add nsw i32 %348, %340
  %350 = icmp slt i32 %349, %max_no
  br i1 %350, label %351, label %364

; <label>:351                                     ; preds = %342
  %352 = getelementptr inbounds i8, i8* %333, i64 1
  %353 = load i8, i8* %352, align 1, !tbaa !13
  %354 = zext i8 %353 to i64
  %355 = sub nsw i64 0, %354
  %356 = getelementptr inbounds i8, i8* %36, i64 %355
  %357 = load i8, i8* %356, align 1, !tbaa !13
  %358 = zext i8 %357 to i32
  %359 = add nsw i32 %358, %349
  %360 = icmp slt i32 %359, %max_no
  br i1 %360, label %361, label %364

; <label>:361                                     ; preds = %351
  %362 = sub nsw i32 %max_no, %359
  %363 = getelementptr inbounds i32, i32* %r, i64 %32
  store i32 %362, i32* %363, align 4, !tbaa !6
  br label %364

; <label>:364                                     ; preds = %28, %192, %211, %232, %252, %272, %292, %312, %331, %351, %361, %342, %322, %302, %281, %262, %242, %222, %202, %181
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %365 = add nuw nsw i32 %j.044, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next53 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %._crit_edge46, label %28

._crit_edge46:                                    ; preds = %364, %.preheader34
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv.next55 to i32
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %7
  br i1 %exitcond57, label %.preheader33, label %.preheader34

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv50 = phi i64 [ 7, %.preheader.lr.ph ], [ %indvars.iv.next51.pre-phi, %._crit_edge ]
  %n.041 = phi i32 [ 0, %.preheader.lr.ph ], [ %n.1.lcssa, %._crit_edge ]
  br i1 %24, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = add nuw nsw i64 %indvars.iv50, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %366 = mul nsw i64 %indvars.iv50, %26
  %367 = add nsw i64 %indvars.iv50, -3
  %368 = mul nsw i64 %367, %26
  %369 = add nsw i64 %indvars.iv50, -2
  %370 = mul nsw i64 %369, %26
  %371 = add nsw i64 %indvars.iv50, -1
  %372 = mul nsw i64 %371, %26
  %373 = add nuw nsw i64 %indvars.iv50, 1
  %374 = mul nsw i64 %373, %26
  %375 = add nuw nsw i64 %indvars.iv50, 2
  %376 = mul nsw i64 %375, %26
  %377 = add nuw nsw i64 %indvars.iv50, 3
  %378 = mul nsw i64 %377, %26
  %379 = trunc i64 %366 to i32
  %380 = trunc i64 %indvars.iv50 to i32
  br label %381

; <label>:381                                     ; preds = %.lr.ph, %821
  %indvars.iv = phi i64 [ 7, %.lr.ph ], [ %indvars.iv.next, %821 ]
  %n.138 = phi i32 [ %n.041, %.lr.ph ], [ %n.2, %821 ]
  %j.137 = phi i32 [ 7, %.lr.ph ], [ %822, %821 ]
  %382 = add nsw i32 %j.137, %379
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %r, i64 %383
  %385 = load i32, i32* %384, align 4, !tbaa !6
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %821

; <label>:387                                     ; preds = %381
  %388 = add nsw i64 %indvars.iv, %368
  %389 = add nsw i64 %388, -3
  %390 = getelementptr inbounds i32, i32* %r, i64 %389
  %391 = load i32, i32* %390, align 4, !tbaa !6
  %392 = icmp sgt i32 %385, %391
  br i1 %392, label %393, label %821

; <label>:393                                     ; preds = %387
  %394 = add nsw i64 %388, -2
  %395 = getelementptr inbounds i32, i32* %r, i64 %394
  %396 = load i32, i32* %395, align 4, !tbaa !6
  %397 = icmp sgt i32 %385, %396
  br i1 %397, label %398, label %821

; <label>:398                                     ; preds = %393
  %399 = add nsw i64 %388, -1
  %400 = getelementptr inbounds i32, i32* %r, i64 %399
  %401 = load i32, i32* %400, align 4, !tbaa !6
  %402 = icmp sgt i32 %385, %401
  br i1 %402, label %403, label %821

; <label>:403                                     ; preds = %398
  %404 = getelementptr inbounds i32, i32* %r, i64 %388
  %405 = load i32, i32* %404, align 4, !tbaa !6
  %406 = icmp sgt i32 %385, %405
  br i1 %406, label %407, label %821

; <label>:407                                     ; preds = %403
  %408 = add nsw i64 %388, 1
  %409 = getelementptr inbounds i32, i32* %r, i64 %408
  %410 = load i32, i32* %409, align 4, !tbaa !6
  %411 = icmp sgt i32 %385, %410
  br i1 %411, label %412, label %821

; <label>:412                                     ; preds = %407
  %413 = add nsw i64 %388, 2
  %414 = getelementptr inbounds i32, i32* %r, i64 %413
  %415 = load i32, i32* %414, align 4, !tbaa !6
  %416 = icmp sgt i32 %385, %415
  br i1 %416, label %417, label %821

; <label>:417                                     ; preds = %412
  %418 = add nsw i64 %388, 3
  %419 = getelementptr inbounds i32, i32* %r, i64 %418
  %420 = load i32, i32* %419, align 4, !tbaa !6
  %421 = icmp sgt i32 %385, %420
  br i1 %421, label %422, label %821

; <label>:422                                     ; preds = %417
  %423 = add nsw i64 %indvars.iv, %370
  %424 = add nsw i64 %423, -3
  %425 = getelementptr inbounds i32, i32* %r, i64 %424
  %426 = load i32, i32* %425, align 4, !tbaa !6
  %427 = icmp sgt i32 %385, %426
  br i1 %427, label %428, label %821

; <label>:428                                     ; preds = %422
  %429 = add nsw i64 %423, -2
  %430 = getelementptr inbounds i32, i32* %r, i64 %429
  %431 = load i32, i32* %430, align 4, !tbaa !6
  %432 = icmp sgt i32 %385, %431
  br i1 %432, label %433, label %821

; <label>:433                                     ; preds = %428
  %434 = add nsw i64 %423, -1
  %435 = getelementptr inbounds i32, i32* %r, i64 %434
  %436 = load i32, i32* %435, align 4, !tbaa !6
  %437 = icmp sgt i32 %385, %436
  br i1 %437, label %438, label %821

; <label>:438                                     ; preds = %433
  %439 = getelementptr inbounds i32, i32* %r, i64 %423
  %440 = load i32, i32* %439, align 4, !tbaa !6
  %441 = icmp sgt i32 %385, %440
  br i1 %441, label %442, label %821

; <label>:442                                     ; preds = %438
  %443 = add nsw i64 %423, 1
  %444 = getelementptr inbounds i32, i32* %r, i64 %443
  %445 = load i32, i32* %444, align 4, !tbaa !6
  %446 = icmp sgt i32 %385, %445
  br i1 %446, label %447, label %821

; <label>:447                                     ; preds = %442
  %448 = add nsw i64 %423, 2
  %449 = getelementptr inbounds i32, i32* %r, i64 %448
  %450 = load i32, i32* %449, align 4, !tbaa !6
  %451 = icmp sgt i32 %385, %450
  br i1 %451, label %452, label %821

; <label>:452                                     ; preds = %447
  %453 = add nsw i64 %423, 3
  %454 = getelementptr inbounds i32, i32* %r, i64 %453
  %455 = load i32, i32* %454, align 4, !tbaa !6
  %456 = icmp sgt i32 %385, %455
  br i1 %456, label %457, label %821

; <label>:457                                     ; preds = %452
  %458 = add nsw i64 %indvars.iv, %372
  %459 = add nsw i64 %458, -3
  %460 = getelementptr inbounds i32, i32* %r, i64 %459
  %461 = load i32, i32* %460, align 4, !tbaa !6
  %462 = icmp sgt i32 %385, %461
  br i1 %462, label %463, label %821

; <label>:463                                     ; preds = %457
  %464 = add nsw i64 %458, -2
  %465 = getelementptr inbounds i32, i32* %r, i64 %464
  %466 = load i32, i32* %465, align 4, !tbaa !6
  %467 = icmp sgt i32 %385, %466
  br i1 %467, label %468, label %821

; <label>:468                                     ; preds = %463
  %469 = add nsw i64 %458, -1
  %470 = getelementptr inbounds i32, i32* %r, i64 %469
  %471 = load i32, i32* %470, align 4, !tbaa !6
  %472 = icmp sgt i32 %385, %471
  br i1 %472, label %473, label %821

; <label>:473                                     ; preds = %468
  %474 = getelementptr inbounds i32, i32* %r, i64 %458
  %475 = load i32, i32* %474, align 4, !tbaa !6
  %476 = icmp sgt i32 %385, %475
  br i1 %476, label %477, label %821

; <label>:477                                     ; preds = %473
  %478 = add nsw i64 %458, 1
  %479 = getelementptr inbounds i32, i32* %r, i64 %478
  %480 = load i32, i32* %479, align 4, !tbaa !6
  %481 = icmp sgt i32 %385, %480
  br i1 %481, label %482, label %821

; <label>:482                                     ; preds = %477
  %483 = add nsw i64 %458, 2
  %484 = getelementptr inbounds i32, i32* %r, i64 %483
  %485 = load i32, i32* %484, align 4, !tbaa !6
  %486 = icmp sgt i32 %385, %485
  br i1 %486, label %487, label %821

; <label>:487                                     ; preds = %482
  %488 = add nsw i64 %458, 3
  %489 = getelementptr inbounds i32, i32* %r, i64 %488
  %490 = load i32, i32* %489, align 4, !tbaa !6
  %491 = icmp sgt i32 %385, %490
  br i1 %491, label %492, label %821

; <label>:492                                     ; preds = %487
  %493 = add nsw i32 %382, -3
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %r, i64 %494
  %496 = load i32, i32* %495, align 4, !tbaa !6
  %497 = icmp sgt i32 %385, %496
  br i1 %497, label %498, label %821

; <label>:498                                     ; preds = %492
  %499 = add nsw i32 %382, -2
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %r, i64 %500
  %502 = load i32, i32* %501, align 4, !tbaa !6
  %503 = icmp sgt i32 %385, %502
  br i1 %503, label %504, label %821

; <label>:504                                     ; preds = %498
  %505 = add nsw i32 %382, -1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %r, i64 %506
  %508 = load i32, i32* %507, align 4, !tbaa !6
  %509 = icmp sgt i32 %385, %508
  br i1 %509, label %510, label %821

; <label>:510                                     ; preds = %504
  %511 = add nsw i32 %382, 1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %r, i64 %512
  %514 = load i32, i32* %513, align 4, !tbaa !6
  %515 = icmp slt i32 %385, %514
  br i1 %515, label %821, label %516

; <label>:516                                     ; preds = %510
  %517 = add nsw i32 %382, 2
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %r, i64 %518
  %520 = load i32, i32* %519, align 4, !tbaa !6
  %521 = icmp slt i32 %385, %520
  br i1 %521, label %821, label %522

; <label>:522                                     ; preds = %516
  %523 = add nsw i32 %382, 3
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %r, i64 %524
  %526 = load i32, i32* %525, align 4, !tbaa !6
  %527 = icmp slt i32 %385, %526
  br i1 %527, label %821, label %528

; <label>:528                                     ; preds = %522
  %529 = add nsw i64 %indvars.iv, %374
  %530 = add nsw i64 %529, -3
  %531 = getelementptr inbounds i32, i32* %r, i64 %530
  %532 = load i32, i32* %531, align 4, !tbaa !6
  %533 = icmp slt i32 %385, %532
  br i1 %533, label %821, label %534

; <label>:534                                     ; preds = %528
  %535 = add nsw i64 %529, -2
  %536 = getelementptr inbounds i32, i32* %r, i64 %535
  %537 = load i32, i32* %536, align 4, !tbaa !6
  %538 = icmp slt i32 %385, %537
  br i1 %538, label %821, label %539

; <label>:539                                     ; preds = %534
  %540 = add nsw i64 %529, -1
  %541 = getelementptr inbounds i32, i32* %r, i64 %540
  %542 = load i32, i32* %541, align 4, !tbaa !6
  %543 = icmp slt i32 %385, %542
  br i1 %543, label %821, label %544

; <label>:544                                     ; preds = %539
  %545 = getelementptr inbounds i32, i32* %r, i64 %529
  %546 = load i32, i32* %545, align 4, !tbaa !6
  %547 = icmp slt i32 %385, %546
  br i1 %547, label %821, label %548

; <label>:548                                     ; preds = %544
  %549 = add nsw i64 %529, 1
  %550 = getelementptr inbounds i32, i32* %r, i64 %549
  %551 = load i32, i32* %550, align 4, !tbaa !6
  %552 = icmp slt i32 %385, %551
  br i1 %552, label %821, label %553

; <label>:553                                     ; preds = %548
  %554 = add nsw i64 %529, 2
  %555 = getelementptr inbounds i32, i32* %r, i64 %554
  %556 = load i32, i32* %555, align 4, !tbaa !6
  %557 = icmp slt i32 %385, %556
  br i1 %557, label %821, label %558

; <label>:558                                     ; preds = %553
  %559 = add nsw i64 %529, 3
  %560 = getelementptr inbounds i32, i32* %r, i64 %559
  %561 = load i32, i32* %560, align 4, !tbaa !6
  %562 = icmp slt i32 %385, %561
  br i1 %562, label %821, label %563

; <label>:563                                     ; preds = %558
  %564 = add nsw i64 %indvars.iv, %376
  %565 = add nsw i64 %564, -3
  %566 = getelementptr inbounds i32, i32* %r, i64 %565
  %567 = load i32, i32* %566, align 4, !tbaa !6
  %568 = icmp slt i32 %385, %567
  br i1 %568, label %821, label %569

; <label>:569                                     ; preds = %563
  %570 = add nsw i64 %564, -2
  %571 = getelementptr inbounds i32, i32* %r, i64 %570
  %572 = load i32, i32* %571, align 4, !tbaa !6
  %573 = icmp slt i32 %385, %572
  br i1 %573, label %821, label %574

; <label>:574                                     ; preds = %569
  %575 = add nsw i64 %564, -1
  %576 = getelementptr inbounds i32, i32* %r, i64 %575
  %577 = load i32, i32* %576, align 4, !tbaa !6
  %578 = icmp slt i32 %385, %577
  br i1 %578, label %821, label %579

; <label>:579                                     ; preds = %574
  %580 = getelementptr inbounds i32, i32* %r, i64 %564
  %581 = load i32, i32* %580, align 4, !tbaa !6
  %582 = icmp slt i32 %385, %581
  br i1 %582, label %821, label %583

; <label>:583                                     ; preds = %579
  %584 = add nsw i64 %564, 1
  %585 = getelementptr inbounds i32, i32* %r, i64 %584
  %586 = load i32, i32* %585, align 4, !tbaa !6
  %587 = icmp slt i32 %385, %586
  br i1 %587, label %821, label %588

; <label>:588                                     ; preds = %583
  %589 = add nsw i64 %564, 2
  %590 = getelementptr inbounds i32, i32* %r, i64 %589
  %591 = load i32, i32* %590, align 4, !tbaa !6
  %592 = icmp slt i32 %385, %591
  br i1 %592, label %821, label %593

; <label>:593                                     ; preds = %588
  %594 = add nsw i64 %564, 3
  %595 = getelementptr inbounds i32, i32* %r, i64 %594
  %596 = load i32, i32* %595, align 4, !tbaa !6
  %597 = icmp slt i32 %385, %596
  br i1 %597, label %821, label %598

; <label>:598                                     ; preds = %593
  %599 = add nsw i64 %indvars.iv, %378
  %600 = add nsw i64 %599, -3
  %601 = getelementptr inbounds i32, i32* %r, i64 %600
  %602 = load i32, i32* %601, align 4, !tbaa !6
  %603 = icmp slt i32 %385, %602
  br i1 %603, label %821, label %604

; <label>:604                                     ; preds = %598
  %605 = add nsw i64 %599, -2
  %606 = getelementptr inbounds i32, i32* %r, i64 %605
  %607 = load i32, i32* %606, align 4, !tbaa !6
  %608 = icmp slt i32 %385, %607
  br i1 %608, label %821, label %609

; <label>:609                                     ; preds = %604
  %610 = add nsw i64 %599, -1
  %611 = getelementptr inbounds i32, i32* %r, i64 %610
  %612 = load i32, i32* %611, align 4, !tbaa !6
  %613 = icmp slt i32 %385, %612
  br i1 %613, label %821, label %614

; <label>:614                                     ; preds = %609
  %615 = getelementptr inbounds i32, i32* %r, i64 %599
  %616 = load i32, i32* %615, align 4, !tbaa !6
  %617 = icmp slt i32 %385, %616
  br i1 %617, label %821, label %618

; <label>:618                                     ; preds = %614
  %619 = add nsw i64 %599, 1
  %620 = getelementptr inbounds i32, i32* %r, i64 %619
  %621 = load i32, i32* %620, align 4, !tbaa !6
  %622 = icmp slt i32 %385, %621
  br i1 %622, label %821, label %623

; <label>:623                                     ; preds = %618
  %624 = add nsw i64 %599, 2
  %625 = getelementptr inbounds i32, i32* %r, i64 %624
  %626 = load i32, i32* %625, align 4, !tbaa !6
  %627 = icmp slt i32 %385, %626
  br i1 %627, label %821, label %628

; <label>:628                                     ; preds = %623
  %629 = add nsw i64 %599, 3
  %630 = getelementptr inbounds i32, i32* %r, i64 %629
  %631 = load i32, i32* %630, align 4, !tbaa !6
  %632 = icmp slt i32 %385, %631
  br i1 %632, label %821, label %633

; <label>:633                                     ; preds = %628
  %634 = sext i32 %n.138 to i64
  %635 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %634, i32 2
  store i32 0, i32* %635, align 4, !tbaa !14
  %636 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %634, i32 0
  %637 = trunc i64 %indvars.iv to i32
  store i32 %637, i32* %636, align 4, !tbaa !17
  %638 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %634, i32 1
  store i32 %380, i32* %638, align 4, !tbaa !16
  %639 = getelementptr inbounds i8, i8* %in, i64 %429
  %640 = load i8, i8* %639, align 1, !tbaa !13
  %641 = zext i8 %640 to i32
  %642 = getelementptr inbounds i8, i8* %in, i64 %434
  %643 = load i8, i8* %642, align 1, !tbaa !13
  %644 = zext i8 %643 to i32
  %645 = add nuw nsw i32 %644, %641
  %646 = getelementptr inbounds i8, i8* %in, i64 %423
  %647 = load i8, i8* %646, align 1, !tbaa !13
  %648 = zext i8 %647 to i32
  %649 = add nuw nsw i32 %645, %648
  %650 = getelementptr inbounds i8, i8* %in, i64 %443
  %651 = load i8, i8* %650, align 1, !tbaa !13
  %652 = zext i8 %651 to i32
  %653 = add nuw nsw i32 %649, %652
  %654 = getelementptr inbounds i8, i8* %in, i64 %448
  %655 = load i8, i8* %654, align 1, !tbaa !13
  %656 = zext i8 %655 to i32
  %657 = add nuw nsw i32 %653, %656
  %658 = getelementptr inbounds i8, i8* %in, i64 %464
  %659 = load i8, i8* %658, align 1, !tbaa !13
  %660 = zext i8 %659 to i32
  %661 = add nuw nsw i32 %657, %660
  %662 = getelementptr inbounds i8, i8* %in, i64 %469
  %663 = load i8, i8* %662, align 1, !tbaa !13
  %664 = zext i8 %663 to i32
  %665 = add nuw nsw i32 %661, %664
  %666 = getelementptr inbounds i8, i8* %in, i64 %458
  %667 = load i8, i8* %666, align 1, !tbaa !13
  %668 = zext i8 %667 to i32
  %669 = add nsw i32 %665, %668
  %670 = getelementptr inbounds i8, i8* %in, i64 %478
  %671 = load i8, i8* %670, align 1, !tbaa !13
  %672 = zext i8 %671 to i32
  %673 = add nsw i32 %669, %672
  %674 = getelementptr inbounds i8, i8* %in, i64 %483
  %675 = load i8, i8* %674, align 1, !tbaa !13
  %676 = zext i8 %675 to i32
  %677 = add nsw i32 %673, %676
  %678 = getelementptr inbounds i8, i8* %in, i64 %500
  %679 = load i8, i8* %678, align 1, !tbaa !13
  %680 = zext i8 %679 to i32
  %681 = add nsw i32 %677, %680
  %682 = getelementptr inbounds i8, i8* %in, i64 %506
  %683 = load i8, i8* %682, align 1, !tbaa !13
  %684 = zext i8 %683 to i32
  %685 = add nsw i32 %681, %684
  %686 = getelementptr inbounds i8, i8* %in, i64 %383
  %687 = load i8, i8* %686, align 1, !tbaa !13
  %688 = zext i8 %687 to i32
  %689 = add nsw i32 %685, %688
  %690 = getelementptr inbounds i8, i8* %in, i64 %512
  %691 = load i8, i8* %690, align 1, !tbaa !13
  %692 = zext i8 %691 to i32
  %693 = add nsw i32 %689, %692
  %694 = getelementptr inbounds i8, i8* %in, i64 %518
  %695 = load i8, i8* %694, align 1, !tbaa !13
  %696 = zext i8 %695 to i32
  %697 = add nsw i32 %693, %696
  %698 = getelementptr inbounds i8, i8* %in, i64 %535
  %699 = load i8, i8* %698, align 1, !tbaa !13
  %700 = zext i8 %699 to i32
  %701 = add nsw i32 %697, %700
  %702 = getelementptr inbounds i8, i8* %in, i64 %540
  %703 = load i8, i8* %702, align 1, !tbaa !13
  %704 = zext i8 %703 to i32
  %705 = add nsw i32 %701, %704
  %706 = getelementptr inbounds i8, i8* %in, i64 %529
  %707 = load i8, i8* %706, align 1, !tbaa !13
  %708 = zext i8 %707 to i32
  %709 = add nsw i32 %705, %708
  %710 = getelementptr inbounds i8, i8* %in, i64 %549
  %711 = load i8, i8* %710, align 1, !tbaa !13
  %712 = zext i8 %711 to i32
  %713 = add nsw i32 %709, %712
  %714 = getelementptr inbounds i8, i8* %in, i64 %554
  %715 = load i8, i8* %714, align 1, !tbaa !13
  %716 = zext i8 %715 to i32
  %717 = add nsw i32 %713, %716
  %718 = getelementptr inbounds i8, i8* %in, i64 %570
  %719 = load i8, i8* %718, align 1, !tbaa !13
  %720 = zext i8 %719 to i32
  %721 = add nsw i32 %717, %720
  %722 = getelementptr inbounds i8, i8* %in, i64 %575
  %723 = load i8, i8* %722, align 1, !tbaa !13
  %724 = zext i8 %723 to i32
  %725 = add nsw i32 %721, %724
  %726 = getelementptr inbounds i8, i8* %in, i64 %564
  %727 = load i8, i8* %726, align 1, !tbaa !13
  %728 = zext i8 %727 to i32
  %729 = add nsw i32 %725, %728
  %730 = getelementptr inbounds i8, i8* %in, i64 %584
  %731 = load i8, i8* %730, align 1, !tbaa !13
  %732 = zext i8 %731 to i32
  %733 = add nsw i32 %729, %732
  %734 = getelementptr inbounds i8, i8* %in, i64 %589
  %735 = load i8, i8* %734, align 1, !tbaa !13
  %736 = zext i8 %735 to i32
  %737 = add nsw i32 %733, %736
  %738 = sdiv i32 %737, 25
  %739 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %634, i32 5
  store i32 %738, i32* %739, align 4, !tbaa !20
  %740 = load i8, i8* %654, align 1, !tbaa !13
  %741 = zext i8 %740 to i32
  %742 = load i8, i8* %674, align 1, !tbaa !13
  %743 = zext i8 %742 to i32
  %744 = load i8, i8* %694, align 1, !tbaa !13
  %745 = zext i8 %744 to i32
  %746 = load i8, i8* %714, align 1, !tbaa !13
  %747 = zext i8 %746 to i32
  %748 = load i8, i8* %734, align 1, !tbaa !13
  %749 = zext i8 %748 to i32
  %750 = load i8, i8* %639, align 1, !tbaa !13
  %751 = zext i8 %750 to i32
  %752 = load i8, i8* %658, align 1, !tbaa !13
  %753 = zext i8 %752 to i32
  %754 = load i8, i8* %678, align 1, !tbaa !13
  %755 = zext i8 %754 to i32
  %756 = load i8, i8* %698, align 1, !tbaa !13
  %757 = zext i8 %756 to i32
  %758 = load i8, i8* %718, align 1, !tbaa !13
  %759 = zext i8 %758 to i32
  %.neg2 = add nuw nsw i32 %743, %741
  %.neg4 = add nuw nsw i32 %.neg2, %745
  %.neg6 = add nuw nsw i32 %.neg4, %747
  %.neg8 = add nuw nsw i32 %.neg6, %749
  %760 = sub nsw i32 %.neg8, %751
  %761 = sub nsw i32 %760, %753
  %762 = sub i32 %761, %755
  %763 = sub i32 %762, %757
  %764 = sub i32 %763, %759
  %765 = load i8, i8* %650, align 1, !tbaa !13
  %766 = zext i8 %765 to i32
  %767 = load i8, i8* %670, align 1, !tbaa !13
  %768 = zext i8 %767 to i32
  %769 = load i8, i8* %690, align 1, !tbaa !13
  %770 = zext i8 %769 to i32
  %771 = load i8, i8* %710, align 1, !tbaa !13
  %772 = zext i8 %771 to i32
  %773 = load i8, i8* %730, align 1, !tbaa !13
  %774 = zext i8 %773 to i32
  %775 = load i8, i8* %642, align 1, !tbaa !13
  %776 = zext i8 %775 to i32
  %777 = load i8, i8* %662, align 1, !tbaa !13
  %778 = zext i8 %777 to i32
  %779 = load i8, i8* %682, align 1, !tbaa !13
  %780 = zext i8 %779 to i32
  %781 = load i8, i8* %702, align 1, !tbaa !13
  %782 = zext i8 %781 to i32
  %783 = load i8, i8* %722, align 1, !tbaa !13
  %784 = zext i8 %783 to i32
  %factor = shl i32 %764, 1
  %.neg13 = add nuw nsw i32 %768, %766
  %.neg15 = add i32 %.neg13, %factor
  %.neg17 = add i32 %.neg15, %770
  %785 = add i32 %.neg17, %772
  %786 = add i32 %785, %774
  %787 = sub i32 %786, %776
  %788 = sub i32 %787, %778
  %789 = sub i32 %788, %780
  %790 = sub i32 %789, %782
  %791 = sub i32 %790, %784
  %792 = load i8, i8* %726, align 1, !tbaa !13
  %793 = zext i8 %792 to i32
  %794 = load i8, i8* %646, align 1, !tbaa !13
  %795 = zext i8 %794 to i32
  %.neg20 = sub nsw i32 %749, %741
  %.neg22 = sub nsw i32 %.neg20, %751
  %.neg23 = add nsw i32 %.neg22, %759
  %.neg24 = sub nsw i32 %.neg23, %766
  %796 = add nsw i32 %.neg24, %774
  %797 = sub nsw i32 %796, %776
  %798 = add i32 %797, %784
  %799 = add i32 %798, %793
  %800 = sub i32 %799, %795
  %801 = load i8, i8* %706, align 1, !tbaa !13
  %802 = zext i8 %801 to i32
  %803 = load i8, i8* %666, align 1, !tbaa !13
  %804 = zext i8 %803 to i32
  %factor32 = shl i32 %800, 1
  %.neg29 = sub nsw i32 %747, %743
  %.neg30 = sub nsw i32 %.neg29, %753
  %.neg31 = add nsw i32 %.neg30, %757
  %805 = sub nsw i32 %.neg31, %768
  %806 = add nsw i32 %805, %772
  %807 = sub nsw i32 %806, %778
  %808 = add i32 %807, %782
  %809 = add i32 %808, %802
  %810 = sub i32 %809, %804
  %811 = add i32 %810, %factor32
  %812 = sdiv i32 %791, 15
  %813 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %634, i32 3
  store i32 %812, i32* %813, align 4, !tbaa !18
  %814 = sdiv i32 %811, 15
  %815 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %634, i32 4
  store i32 %814, i32* %815, align 4, !tbaa !19
  %816 = add nsw i32 %n.138, 1
  %817 = icmp eq i32 %816, 15000
  br i1 %817, label %818, label %821

; <label>:818                                     ; preds = %633
  %819 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %820 = tail call i64 @fwrite(i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i64 18, i64 1, %struct.__sFILE* %819)
  tail call void @exit(i32 1) #12
  unreachable

; <label>:821                                     ; preds = %628, %623, %618, %614, %609, %604, %598, %593, %588, %583, %579, %574, %569, %563, %558, %553, %548, %544, %539, %534, %528, %522, %516, %510, %381, %633, %504, %498, %492, %487, %482, %477, %473, %468, %463, %457, %452, %447, %442, %438, %433, %428, %422, %417, %412, %407, %403, %398, %393, %387
  %n.2 = phi i32 [ %816, %633 ], [ %n.138, %628 ], [ %n.138, %623 ], [ %n.138, %618 ], [ %n.138, %614 ], [ %n.138, %609 ], [ %n.138, %604 ], [ %n.138, %598 ], [ %n.138, %593 ], [ %n.138, %588 ], [ %n.138, %583 ], [ %n.138, %579 ], [ %n.138, %574 ], [ %n.138, %569 ], [ %n.138, %563 ], [ %n.138, %558 ], [ %n.138, %553 ], [ %n.138, %548 ], [ %n.138, %544 ], [ %n.138, %539 ], [ %n.138, %534 ], [ %n.138, %528 ], [ %n.138, %522 ], [ %n.138, %516 ], [ %n.138, %510 ], [ %n.138, %504 ], [ %n.138, %498 ], [ %n.138, %492 ], [ %n.138, %487 ], [ %n.138, %482 ], [ %n.138, %477 ], [ %n.138, %473 ], [ %n.138, %468 ], [ %n.138, %463 ], [ %n.138, %457 ], [ %n.138, %452 ], [ %n.138, %447 ], [ %n.138, %442 ], [ %n.138, %438 ], [ %n.138, %433 ], [ %n.138, %428 ], [ %n.138, %422 ], [ %n.138, %417 ], [ %n.138, %412 ], [ %n.138, %407 ], [ %n.138, %403 ], [ %n.138, %398 ], [ %n.138, %393 ], [ %n.138, %387 ], [ %n.138, %381 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %822 = add nuw nsw i32 %j.137, 1
  %823 = icmp slt i64 %indvars.iv.next, %25
  br i1 %823, label %381, label %._crit_edge

._crit_edge:                                      ; preds = %821, %.preheader.._crit_edge_crit_edge
  %indvars.iv.next51.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %373, %821 ]
  %n.1.lcssa = phi i32 [ %n.041, %.preheader.._crit_edge_crit_edge ], [ %n.2, %821 ]
  %824 = icmp slt i64 %indvars.iv.next51.pre-phi, %27
  br i1 %824, label %.preheader, label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge, %0, %.preheader33
  %n.0.lcssa = phi i32 [ 0, %.preheader33 ], [ 0, %0 ], [ %n.1.lcssa, %._crit_edge ]
  %825 = sext i32 %n.0.lcssa to i64
  %826 = getelementptr inbounds %struct.anon, %struct.anon* %corner_list, i64 %825, i32 2
  store i32 7, i32* %826, align 4, !tbaa !14
  ret i32 undef
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #3 {
  %in = alloca i8*, align 8
  %x_size = alloca i32, align 4
  %y_size = alloca i32, align 4
  %corner_list = alloca [15000 x %struct.anon], align 16
  %1 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #11
  %2 = bitcast i32* %x_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #11
  %3 = bitcast i32* %y_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #11
  %4 = bitcast [15000 x %struct.anon]* %corner_list to i8*
  call void @llvm.lifetime.start(i64 360000, i8* %4) #11
  %5 = icmp slt i32 %argc, 3
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %0
  %7 = tail call i32 @usage()
  unreachable

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds i8*, i8** %argv, i64 1
  %10 = load i8*, i8** %9, align 8, !tbaa !2
  call void @get_image(i8* %10, i8** nonnull %in, i32* nonnull %x_size, i32* nonnull %y_size)
  %11 = icmp sgt i32 %argc, 3
  br i1 %11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %8, %52
  %mode.096 = phi i32 [ %mode.1, %52 ], [ 0, %8 ]
  %dt.095 = phi float [ %dt.1, %52 ], [ 4.000000e+00, %8 ]
  %susan_quick.094 = phi i32 [ %susan_quick.1, %52 ], [ 0, %8 ]
  %drawing_mode.093 = phi i32 [ %drawing_mode.1, %52 ], [ 0, %8 ]
  %three_by_three.092 = phi i32 [ %three_by_three.1, %52 ], [ 0, %8 ]
  %thin_post_proc.091 = phi i32 [ %thin_post_proc.1, %52 ], [ 1, %8 ]
  %principle.090 = phi i32 [ %principle.1, %52 ], [ 0, %8 ]
  %bt.089 = phi i32 [ %bt.1, %52 ], [ 20, %8 ]
  %argindex.088 = phi i32 [ %53, %52 ], [ 3, %8 ]
  %12 = sext i32 %argindex.088 to i64
  %13 = getelementptr inbounds i8*, i8** %argv, i64 %12
  %14 = load i8*, i8** %13, align 8, !tbaa !2
  %15 = load i8, i8* %14, align 1, !tbaa !13
  %16 = icmp eq i8 %15, 45
  br i1 %16, label %17, label %50

; <label>:17                                      ; preds = %.lr.ph
  %18 = getelementptr inbounds i8, i8* %14, i64 1
  %19 = load i8, i8* %18, align 1, !tbaa !13
  %20 = sext i8 %19 to i32
  switch i32 %20, label %52 [
    i32 115, label %21
    i32 101, label %22
    i32 99, label %23
    i32 112, label %24
    i32 110, label %25
    i32 98, label %26
    i32 51, label %27
    i32 113, label %28
    i32 100, label %29
    i32 116, label %41
  ]

; <label>:21                                      ; preds = %17
  br label %52

; <label>:22                                      ; preds = %17
  br label %52

; <label>:23                                      ; preds = %17
  br label %52

; <label>:24                                      ; preds = %17
  br label %52

; <label>:25                                      ; preds = %17
  br label %52

; <label>:26                                      ; preds = %17
  br label %52

; <label>:27                                      ; preds = %17
  br label %52

; <label>:28                                      ; preds = %17
  br label %52

; <label>:29                                      ; preds = %17
  %30 = add nsw i32 %argindex.088, 1
  %31 = icmp slt i32 %30, %argc
  br i1 %31, label %33, label %32

; <label>:32                                      ; preds = %29
  %puts2 = tail call i32 @puts(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @str.47, i64 0, i64 0))
  tail call void @exit(i32 0) #12
  unreachable

; <label>:33                                      ; preds = %29
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds i8*, i8** %argv, i64 %34
  %36 = load i8*, i8** %35, align 8, !tbaa !2
  %37 = tail call double @atof(i8* %36)
  %38 = fptrunc double %37 to float
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %40, label %52

; <label>:40                                      ; preds = %33
  br label %52

; <label>:41                                      ; preds = %17
  %42 = add nsw i32 %argindex.088, 1
  %43 = icmp slt i32 %42, %argc
  br i1 %43, label %45, label %44

; <label>:44                                      ; preds = %41
  %puts = tail call i32 @puts(i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @str.46, i64 0, i64 0))
  tail call void @exit(i32 0) #12
  unreachable

; <label>:45                                      ; preds = %41
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds i8*, i8** %argv, i64 %46
  %48 = load i8*, i8** %47, align 8, !tbaa !2
  %49 = tail call i32 @atoi(i8* %48)
  br label %52

; <label>:50                                      ; preds = %.lr.ph
  %51 = tail call i32 @usage()
  unreachable

; <label>:52                                      ; preds = %21, %22, %23, %24, %25, %26, %27, %28, %45, %17, %40, %33
  %argindex.1 = phi i32 [ %argindex.088, %17 ], [ %42, %45 ], [ %30, %40 ], [ %30, %33 ], [ %argindex.088, %28 ], [ %argindex.088, %27 ], [ %argindex.088, %26 ], [ %argindex.088, %25 ], [ %argindex.088, %24 ], [ %argindex.088, %23 ], [ %argindex.088, %22 ], [ %argindex.088, %21 ]
  %bt.1 = phi i32 [ %bt.089, %17 ], [ %49, %45 ], [ %bt.089, %40 ], [ %bt.089, %33 ], [ %bt.089, %28 ], [ %bt.089, %27 ], [ %bt.089, %26 ], [ %bt.089, %25 ], [ %bt.089, %24 ], [ %bt.089, %23 ], [ %bt.089, %22 ], [ %bt.089, %21 ]
  %principle.1 = phi i32 [ %principle.090, %17 ], [ %principle.090, %45 ], [ %principle.090, %40 ], [ %principle.090, %33 ], [ %principle.090, %28 ], [ %principle.090, %27 ], [ %principle.090, %26 ], [ %principle.090, %25 ], [ 1, %24 ], [ %principle.090, %23 ], [ %principle.090, %22 ], [ %principle.090, %21 ]
  %thin_post_proc.1 = phi i32 [ %thin_post_proc.091, %17 ], [ %thin_post_proc.091, %45 ], [ %thin_post_proc.091, %40 ], [ %thin_post_proc.091, %33 ], [ %thin_post_proc.091, %28 ], [ %thin_post_proc.091, %27 ], [ %thin_post_proc.091, %26 ], [ 0, %25 ], [ %thin_post_proc.091, %24 ], [ %thin_post_proc.091, %23 ], [ %thin_post_proc.091, %22 ], [ %thin_post_proc.091, %21 ]
  %three_by_three.1 = phi i32 [ %three_by_three.092, %17 ], [ %three_by_three.092, %45 ], [ 1, %40 ], [ %three_by_three.092, %33 ], [ %three_by_three.092, %28 ], [ 1, %27 ], [ %three_by_three.092, %26 ], [ %three_by_three.092, %25 ], [ %three_by_three.092, %24 ], [ %three_by_three.092, %23 ], [ %three_by_three.092, %22 ], [ %three_by_three.092, %21 ]
  %drawing_mode.1 = phi i32 [ %drawing_mode.093, %17 ], [ %drawing_mode.093, %45 ], [ %drawing_mode.093, %40 ], [ %drawing_mode.093, %33 ], [ %drawing_mode.093, %28 ], [ %drawing_mode.093, %27 ], [ 1, %26 ], [ %drawing_mode.093, %25 ], [ %drawing_mode.093, %24 ], [ %drawing_mode.093, %23 ], [ %drawing_mode.093, %22 ], [ %drawing_mode.093, %21 ]
  %susan_quick.1 = phi i32 [ %susan_quick.094, %17 ], [ %susan_quick.094, %45 ], [ %susan_quick.094, %40 ], [ %susan_quick.094, %33 ], [ 1, %28 ], [ %susan_quick.094, %27 ], [ %susan_quick.094, %26 ], [ %susan_quick.094, %25 ], [ %susan_quick.094, %24 ], [ %susan_quick.094, %23 ], [ %susan_quick.094, %22 ], [ %susan_quick.094, %21 ]
  %dt.1 = phi float [ %dt.095, %17 ], [ %dt.095, %45 ], [ %38, %40 ], [ %38, %33 ], [ %dt.095, %28 ], [ %dt.095, %27 ], [ %dt.095, %26 ], [ %dt.095, %25 ], [ %dt.095, %24 ], [ %dt.095, %23 ], [ %dt.095, %22 ], [ %dt.095, %21 ]
  %mode.1 = phi i32 [ %mode.096, %17 ], [ %mode.096, %45 ], [ %mode.096, %40 ], [ %mode.096, %33 ], [ %mode.096, %28 ], [ %mode.096, %27 ], [ %mode.096, %26 ], [ %mode.096, %25 ], [ %mode.096, %24 ], [ 2, %23 ], [ 1, %22 ], [ 0, %21 ]
  %53 = add nsw i32 %argindex.1, 1
  %54 = icmp slt i32 %53, %argc
  br i1 %54, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %52, %8
  %mode.0.lcssa = phi i32 [ 0, %8 ], [ %mode.1, %52 ]
  %dt.0.lcssa = phi float [ 4.000000e+00, %8 ], [ %dt.1, %52 ]
  %susan_quick.0.lcssa = phi i32 [ 0, %8 ], [ %susan_quick.1, %52 ]
  %drawing_mode.0.lcssa = phi i32 [ 0, %8 ], [ %drawing_mode.1, %52 ]
  %three_by_three.0.lcssa = phi i32 [ 0, %8 ], [ %three_by_three.1, %52 ]
  %thin_post_proc.0.lcssa = phi i32 [ 1, %8 ], [ %thin_post_proc.1, %52 ]
  %principle.0.lcssa = phi i32 [ 0, %8 ], [ %principle.1, %52 ]
  %bt.0.lcssa = phi i32 [ 20, %8 ], [ %bt.1, %52 ]
  %55 = icmp eq i32 %principle.0.lcssa, 1
  %56 = icmp eq i32 %mode.0.lcssa, 0
  %or.cond = and i1 %55, %56
  %.mode.0 = select i1 %or.cond, i32 1, i32 %mode.0.lcssa
  switch i32 %.mode.0, label %._crit_edge.int_to_uchar.exit_crit_edge [
    i32 0, label %min.iters.checked218
    i32 1, label %min.iters.checked162
    i32 2, label %min.iters.checked
  ]

._crit_edge.int_to_uchar.exit_crit_edge:          ; preds = %._crit_edge
  %.pre = load i8*, i8** %in, align 8, !tbaa !2
  %.pre119 = load i32, i32* %x_size, align 4, !tbaa !6
  %.pre120 = load i32, i32* %y_size, align 4, !tbaa !6
  br label %int_to_uchar.exit

min.iters.checked218:                             ; preds = %._crit_edge
  %57 = tail call i8* @malloc(i64 516) #11
  %58 = getelementptr inbounds i8, i8* %57, i64 258
  %59 = sitofp i32 %bt.0.lcssa to float
  %broadcast.splatinsert228 = insertelement <16 x float> undef, float %59, i32 0
  %broadcast.splat229 = shufflevector <16 x float> %broadcast.splatinsert228, <16 x float> undef, <16 x i32> zeroinitializer
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %min.iters.checked218
  %index220 = phi i64 [ 0, %min.iters.checked218 ], [ %index.next221, %vector.body215 ]
  %offset.idx224 = add i64 %index220, -256
  %broadcast.splatinsert225 = insertelement <16 x i64> undef, i64 %offset.idx224, i32 0
  %broadcast.splat226 = shufflevector <16 x i64> %broadcast.splatinsert225, <16 x i64> undef, <16 x i32> zeroinitializer
  %induction227 = add <16 x i64> %broadcast.splat226, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %60 = trunc <16 x i64> %induction227 to <16 x i32>
  %61 = sitofp <16 x i32> %60 to <16 x float>
  %62 = fdiv <16 x float> %61, %broadcast.splat229
  %63 = fmul <16 x float> %62, %62
  %64 = fsub <16 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %63
  %65 = fpext <16 x float> %64 to <16 x double>
  %66 = call <16 x double> @llvm.exp.v16f64(<16 x double> %65)
  %67 = fmul <16 x double> %66, <double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02>
  %68 = fptrunc <16 x double> %67 to <16 x float>
  %69 = fptoui <16 x float> %68 to <16 x i8>
  %70 = getelementptr inbounds i8, i8* %58, i64 %offset.idx224
  %71 = bitcast i8* %70 to <16 x i8>*
  store <16 x i8> %69, <16 x i8>* %71, align 1, !tbaa !13
  %index.next221 = add i64 %index220, 16
  %72 = icmp eq i64 %index.next221, 512
  br i1 %72, label %.split.i, label %vector.body215, !llvm.loop !21

.split.i:                                         ; preds = %vector.body215, %.split.i
  %indvars.iv3.i = phi i64 [ %indvars.iv.next4.i, %.split.i ], [ 256, %vector.body215 ]
  %73 = trunc i64 %indvars.iv3.i to i32
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %74, %59
  %76 = fmul float %75, %75
  %77 = fsub float -0.000000e+00, %76
  %78 = fpext float %77 to double
  %79 = tail call double @exp(double %78) #8
  %80 = fmul double %79, 1.000000e+02
  %81 = fptrunc double %80 to float
  %82 = fptoui float %81 to i8
  %83 = getelementptr inbounds i8, i8* %58, i64 %indvars.iv3.i
  store i8 %82, i8* %83, align 1, !tbaa !13
  %indvars.iv.next4.i = add nsw i64 %indvars.iv3.i, 1
  %exitcond5.i = icmp eq i64 %indvars.iv.next4.i, 257
  br i1 %exitcond5.i, label %setup_brightness_lut.exit, label %.split.i, !llvm.loop !22

setup_brightness_lut.exit:                        ; preds = %.split.i
  %84 = load i8*, i8** %in, align 8, !tbaa !2
  %85 = fpext float %dt.0.lcssa to double
  %86 = load i32, i32* %x_size, align 4, !tbaa !6
  %87 = load i32, i32* %y_size, align 4, !tbaa !6
  tail call void @susan_smoothing(i32 %three_by_three.0.lcssa, i8* %84, double %85, i32 %86, i32 %87, i8* nonnull %58)
  br label %int_to_uchar.exit

min.iters.checked162:                             ; preds = %._crit_edge
  %88 = load i32, i32* %x_size, align 4, !tbaa !6
  %89 = load i32, i32* %y_size, align 4, !tbaa !6
  %90 = mul i32 %89, %88
  %91 = sext i32 %90 to i64
  %92 = shl nsw i64 %91, 2
  %93 = tail call i8* @malloc(i64 %92)
  %94 = tail call i8* @malloc(i64 516) #11
  %95 = getelementptr inbounds i8, i8* %94, i64 258
  %96 = sitofp i32 %bt.0.lcssa to float
  %broadcast.splatinsert172 = insertelement <16 x float> undef, float %96, i32 0
  %broadcast.splat173 = shufflevector <16 x float> %broadcast.splatinsert172, <16 x float> undef, <16 x i32> zeroinitializer
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %min.iters.checked162
  %index164 = phi i64 [ 0, %min.iters.checked162 ], [ %index.next165, %vector.body159 ]
  %offset.idx168 = add i64 %index164, -256
  %broadcast.splatinsert169 = insertelement <16 x i64> undef, i64 %offset.idx168, i32 0
  %broadcast.splat170 = shufflevector <16 x i64> %broadcast.splatinsert169, <16 x i64> undef, <16 x i32> zeroinitializer
  %induction171 = add <16 x i64> %broadcast.splat170, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %97 = trunc <16 x i64> %induction171 to <16 x i32>
  %98 = sitofp <16 x i32> %97 to <16 x float>
  %99 = fdiv <16 x float> %98, %broadcast.splat173
  %100 = fmul <16 x float> %99, %99
  %101 = fmul <16 x float> %100, %100
  %102 = fmul <16 x float> %100, %101
  %103 = fsub <16 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %102
  %104 = fpext <16 x float> %103 to <16 x double>
  %105 = call <16 x double> @llvm.exp.v16f64(<16 x double> %104)
  %106 = fmul <16 x double> %105, <double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02>
  %107 = fptrunc <16 x double> %106 to <16 x float>
  %108 = fptoui <16 x float> %107 to <16 x i8>
  %109 = getelementptr inbounds i8, i8* %95, i64 %offset.idx168
  %110 = bitcast i8* %109 to <16 x i8>*
  store <16 x i8> %108, <16 x i8>* %110, align 1, !tbaa !13
  %index.next165 = add i64 %index164, 16
  %111 = icmp eq i64 %index.next165, 512
  br i1 %111, label %.split.us.i, label %vector.body159, !llvm.loop !23

.split.us.i:                                      ; preds = %vector.body159, %.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.us.i ], [ 256, %vector.body159 ]
  %112 = trunc i64 %indvars.iv.i to i32
  %113 = sitofp i32 %112 to float
  %114 = fdiv float %113, %96
  %115 = fmul float %114, %114
  %116 = fmul float %115, %115
  %117 = fmul float %115, %116
  %118 = fsub float -0.000000e+00, %117
  %119 = fpext float %118 to double
  %120 = tail call double @exp(double %119) #8
  %121 = fmul double %120, 1.000000e+02
  %122 = fptrunc double %121 to float
  %123 = fptoui float %122 to i8
  %124 = getelementptr inbounds i8, i8* %95, i64 %indvars.iv.i
  store i8 %123, i8* %124, align 1, !tbaa !13
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 257
  br i1 %exitcond.i, label %setup_brightness_lut.exit3, label %.split.us.i, !llvm.loop !24

setup_brightness_lut.exit3:                       ; preds = %.split.us.i
  %125 = bitcast i8* %93 to i32*
  %126 = icmp eq i32 %principle.0.lcssa, 0
  br i1 %126, label %162, label %127

; <label>:127                                     ; preds = %setup_brightness_lut.exit3
  %128 = icmp eq i32 %three_by_three.0.lcssa, 0
  %129 = load i8*, i8** %in, align 8, !tbaa !2
  br i1 %128, label %132, label %130

; <label>:130                                     ; preds = %127
  %131 = tail call i32 @susan_principle_small(i8* %129, i32* %125, i8* nonnull %95, i32 undef, i32 %88, i32 %89)
  br label %134

; <label>:132                                     ; preds = %127
  %133 = tail call i32 @susan_principle(i8* %129, i32* %125, i8* nonnull %95, i32 2650, i32 %88, i32 %89)
  br label %134

; <label>:134                                     ; preds = %132, %130
  %135 = load i32, i32* %125, align 4, !tbaa !6
  %136 = icmp sgt i32 %90, 0
  br i1 %136, label %.lr.ph6.i.preheader, label %int_to_uchar.exit

.lr.ph6.i.preheader:                              ; preds = %134
  %exitcond12.i75 = icmp eq i32 %90, 1
  br i1 %exitcond12.i75, label %int_to_uchar.exit, label %.lr.ph6..lr.ph6_crit_edge.i.preheader

.lr.ph6..lr.ph6_crit_edge.i.preheader:            ; preds = %.lr.ph6.i.preheader
  %137 = mul i32 %89, %88
  %138 = add i32 %137, -2
  %139 = zext i32 %138 to i64
  %140 = add nuw nsw i64 %139, 1
  %min.iters.check177 = icmp ult i64 %140, 4
  br i1 %min.iters.check177, label %.lr.ph6..lr.ph6_crit_edge.i, label %min.iters.checked178

min.iters.checked178:                             ; preds = %.lr.ph6..lr.ph6_crit_edge.i.preheader
  %n.vec180 = and i64 %140, 8589934588
  %cmp.zero181 = icmp eq i64 %n.vec180, 0
  %ind.end186 = or i64 %n.vec180, 1
  br i1 %cmp.zero181, label %.lr.ph6..lr.ph6_crit_edge.i, label %vector.ph182

vector.ph182:                                     ; preds = %min.iters.checked178
  %minmax.ident.splatinsert206 = insertelement <4 x i32> undef, i32 %135, i32 0
  %minmax.ident.splat207 = shufflevector <4 x i32> %minmax.ident.splatinsert206, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert197 = insertelement <4 x i32> undef, i32 %135, i32 0
  %minmax.ident.splat198 = shufflevector <4 x i32> %minmax.ident.splatinsert197, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph182
  %index183 = phi i64 [ 0, %vector.ph182 ], [ %index.next184, %vector.body174 ]
  %vec.phi192 = phi <4 x i32> [ %minmax.ident.splat198, %vector.ph182 ], [ %146, %vector.body174 ]
  %vec.phi193 = phi <4 x i32> [ %minmax.ident.splat207, %vector.ph182 ], [ %144, %vector.body174 ]
  %offset.idx188 = or i64 %index183, 1
  %141 = getelementptr inbounds i32, i32* %125, i64 %offset.idx188
  %142 = bitcast i32* %141 to <4 x i32>*
  %wide.load194 = load <4 x i32>, <4 x i32>* %142, align 4, !tbaa !6
  %143 = icmp sgt <4 x i32> %wide.load194, %vec.phi193
  %144 = select <4 x i1> %143, <4 x i32> %wide.load194, <4 x i32> %vec.phi193
  %145 = icmp slt <4 x i32> %wide.load194, %vec.phi192
  %146 = select <4 x i1> %145, <4 x i32> %wide.load194, <4 x i32> %vec.phi192
  %index.next184 = add i64 %index183, 4
  %147 = icmp eq i64 %index.next184, %n.vec180
  br i1 %147, label %middle.block175, label %vector.body174, !llvm.loop !25

middle.block175:                                  ; preds = %vector.body174
  %rdx.shuf208 = shufflevector <4 x i32> %144, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp209 = icmp sgt <4 x i32> %144, %rdx.shuf208
  %rdx.minmax.select210 = select <4 x i1> %rdx.minmax.cmp209, <4 x i32> %144, <4 x i32> %rdx.shuf208
  %rdx.shuf211 = shufflevector <4 x i32> %rdx.minmax.select210, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp212 = icmp sgt <4 x i32> %rdx.minmax.select210, %rdx.shuf211
  %rdx.minmax.cmp212.elt = extractelement <4 x i1> %rdx.minmax.cmp212, i32 0
  %rdx.minmax.select210.elt = extractelement <4 x i32> %rdx.minmax.select210, i32 0
  %rdx.shuf211.elt = extractelement <4 x i32> %rdx.minmax.select210, i32 1
  %148 = select i1 %rdx.minmax.cmp212.elt, i32 %rdx.minmax.select210.elt, i32 %rdx.shuf211.elt
  %rdx.shuf199 = shufflevector <4 x i32> %146, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp200 = icmp slt <4 x i32> %146, %rdx.shuf199
  %rdx.minmax.select201 = select <4 x i1> %rdx.minmax.cmp200, <4 x i32> %146, <4 x i32> %rdx.shuf199
  %rdx.shuf202 = shufflevector <4 x i32> %rdx.minmax.select201, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp203 = icmp slt <4 x i32> %rdx.minmax.select201, %rdx.shuf202
  %rdx.minmax.cmp203.elt = extractelement <4 x i1> %rdx.minmax.cmp203, i32 0
  %rdx.minmax.select201.elt = extractelement <4 x i32> %rdx.minmax.select201, i32 0
  %rdx.shuf202.elt = extractelement <4 x i32> %rdx.minmax.select201, i32 1
  %149 = select i1 %rdx.minmax.cmp203.elt, i32 %rdx.minmax.select201.elt, i32 %rdx.shuf202.elt
  %cmp.n187 = icmp eq i64 %140, %n.vec180
  br i1 %cmp.n187, label %.lr.ph.i.preheader, label %.lr.ph6..lr.ph6_crit_edge.i

.lr.ph6..lr.ph6_crit_edge.i:                      ; preds = %.lr.ph6..lr.ph6_crit_edge.i.preheader, %min.iters.checked178, %middle.block175, %.lr.ph6..lr.ph6_crit_edge.i
  %indvars.iv.next10.i78 = phi i64 [ %indvars.iv.next10.i, %.lr.ph6..lr.ph6_crit_edge.i ], [ %ind.end186, %middle.block175 ], [ 1, %.lr.ph6..lr.ph6_crit_edge.i.preheader ], [ 1, %min.iters.checked178 ]
  %min_r.1.i77 = phi i32 [ %min_r.1.i, %.lr.ph6..lr.ph6_crit_edge.i ], [ %149, %middle.block175 ], [ %135, %.lr.ph6..lr.ph6_crit_edge.i.preheader ], [ %135, %min.iters.checked178 ]
  %.max_r.0.i76 = phi i32 [ %.max_r.0.i, %.lr.ph6..lr.ph6_crit_edge.i ], [ %148, %middle.block175 ], [ %135, %.lr.ph6..lr.ph6_crit_edge.i.preheader ], [ %135, %min.iters.checked178 ]
  %.phi.trans.insert.i = getelementptr inbounds i32, i32* %125, i64 %indvars.iv.next10.i78
  %.pre.i4 = load i32, i32* %.phi.trans.insert.i, align 4, !tbaa !6
  %150 = icmp sgt i32 %.pre.i4, %.max_r.0.i76
  %.max_r.0.i = select i1 %150, i32 %.pre.i4, i32 %.max_r.0.i76
  %151 = icmp slt i32 %.pre.i4, %min_r.1.i77
  %min_r.1.i = select i1 %151, i32 %.pre.i4, i32 %min_r.1.i77
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv.next10.i78, 1
  %lftr.wideiv113 = trunc i64 %indvars.iv.next10.i to i32
  %exitcond114 = icmp eq i32 %lftr.wideiv113, %90
  br i1 %exitcond114, label %.lr.ph.i.preheader, label %.lr.ph6..lr.ph6_crit_edge.i, !llvm.loop !26

.lr.ph.i.preheader:                               ; preds = %middle.block175, %.lr.ph6..lr.ph6_crit_edge.i
  %min_r.1.i.lcssa = phi i32 [ %min_r.1.i, %.lr.ph6..lr.ph6_crit_edge.i ], [ %149, %middle.block175 ]
  %.max_r.0.i.lcssa = phi i32 [ %.max_r.0.i, %.lr.ph6..lr.ph6_crit_edge.i ], [ %148, %middle.block175 ]
  %152 = sub nsw i32 %.max_r.0.i.lcssa, %min_r.1.i.lcssa
  %153 = sub nsw i32 %135, %min_r.1.i.lcssa
  %154 = mul nsw i32 %153, 255
  %155 = sdiv i32 %154, %152
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %129, align 1, !tbaa !13
  br i1 %exitcond12.i75, label %int_to_uchar.exit, label %.lr.ph..lr.ph_crit_edge.i

.lr.ph..lr.ph_crit_edge.i:                        ; preds = %.lr.ph.i.preheader, %.lr.ph..lr.ph_crit_edge.i
  %indvars.iv.next.i674 = phi i64 [ %indvars.iv.next.i6, %.lr.ph..lr.ph_crit_edge.i ], [ 1, %.lr.ph.i.preheader ]
  %.phi.trans.insert13.i = getelementptr inbounds i32, i32* %125, i64 %indvars.iv.next.i674
  %.pre14.i = load i32, i32* %.phi.trans.insert13.i, align 4, !tbaa !6
  %157 = sub nsw i32 %.pre14.i, %min_r.1.i.lcssa
  %158 = mul nsw i32 %157, 255
  %159 = sdiv i32 %158, %152
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds i8, i8* %129, i64 %indvars.iv.next.i674
  store i8 %160, i8* %161, align 1, !tbaa !13
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.next.i674, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i6 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %90
  br i1 %exitcond, label %int_to_uchar.exit, label %.lr.ph..lr.ph_crit_edge.i

; <label>:162                                     ; preds = %setup_brightness_lut.exit3
  %163 = tail call i8* @malloc(i64 %91)
  %164 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %163, i1 false)
  %165 = tail call i8* @__memset_chk(i8* %163, i32 100, i64 %91, i64 %164) #11
  %166 = icmp eq i32 %three_by_three.0.lcssa, 0
  %167 = load i8*, i8** %in, align 8, !tbaa !2
  br i1 %166, label %170, label %168

; <label>:168                                     ; preds = %162
  %169 = tail call i32 @susan_edges_small(i8* %167, i32* %125, i8* %163, i8* nonnull %95, i32 undef, i32 %88, i32 %89)
  br label %172

; <label>:170                                     ; preds = %162
  %171 = tail call i32 @susan_edges(i8* %167, i32* %125, i8* %163, i8* nonnull %95, i32 2650, i32 %88, i32 %89)
  br label %172

; <label>:172                                     ; preds = %170, %168
  %173 = icmp eq i32 %thin_post_proc.0.lcssa, 0
  br i1 %173, label %176, label %174

; <label>:174                                     ; preds = %172
  %175 = tail call i32 @susan_thin(i32* %125, i8* %163, i32 %88, i32 %89)
  br label %176

; <label>:176                                     ; preds = %172, %174
  %177 = icmp eq i32 %drawing_mode.0.lcssa, 0
  br i1 %177, label %.preheader1.i, label %.preheader.i

.preheader1.i:                                    ; preds = %176
  %178 = icmp sgt i32 %90, 0
  br i1 %178, label %.lr.ph6.i8, label %int_to_uchar.exit

.lr.ph6.i8:                                       ; preds = %.preheader1.i
  %179 = ptrtoint i8* %163 to i64
  %180 = sext i32 %88 to i64
  %181 = sub nsw i64 0, %180
  %182 = add nsw i32 %88, -2
  %183 = sext i32 %182 to i64
  br label %186

.preheader.i:                                     ; preds = %203, %176
  %184 = icmp sgt i32 %90, 0
  br i1 %184, label %.lr.ph.i9, label %int_to_uchar.exit

.lr.ph.i9:                                        ; preds = %.preheader.i
  %185 = ptrtoint i8* %163 to i64
  br label %206

; <label>:186                                     ; preds = %203, %.lr.ph6.i8
  %midp.05.i = phi i8* [ %163, %.lr.ph6.i8 ], [ %204, %203 ]
  %i.04.i = phi i32 [ 0, %.lr.ph6.i8 ], [ %205, %203 ]
  %187 = load i8, i8* %midp.05.i, align 1, !tbaa !13
  %188 = icmp ult i8 %187, 8
  br i1 %188, label %189, label %203

; <label>:189                                     ; preds = %186
  %190 = ptrtoint i8* %midp.05.i to i64
  %191 = sub i64 %190, %179
  %192 = getelementptr inbounds i8, i8* %167, i64 %191
  %193 = getelementptr inbounds i8, i8* %192, i64 %181
  %194 = getelementptr inbounds i8, i8* %193, i64 -1
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  store i8 -1, i8* %194, align 1, !tbaa !13
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  store i8 -1, i8* %195, align 1, !tbaa !13
  store i8 -1, i8* %196, align 1, !tbaa !13
  %197 = getelementptr inbounds i8, i8* %196, i64 %183
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  store i8 -1, i8* %197, align 1, !tbaa !13
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  store i8 -1, i8* %199, align 1, !tbaa !13
  %200 = getelementptr inbounds i8, i8* %199, i64 %183
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  store i8 -1, i8* %200, align 1, !tbaa !13
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  store i8 -1, i8* %201, align 1, !tbaa !13
  store i8 -1, i8* %202, align 1, !tbaa !13
  br label %203

; <label>:203                                     ; preds = %189, %186
  %204 = getelementptr inbounds i8, i8* %midp.05.i, i64 1
  %205 = add nuw nsw i32 %i.04.i, 1
  %exitcond7.i = icmp eq i32 %205, %90
  br i1 %exitcond7.i, label %.preheader.i, label %186

; <label>:206                                     ; preds = %213, %.lr.ph.i9
  %midp.13.i = phi i8* [ %163, %.lr.ph.i9 ], [ %214, %213 ]
  %i.12.i = phi i32 [ 0, %.lr.ph.i9 ], [ %215, %213 ]
  %207 = load i8, i8* %midp.13.i, align 1, !tbaa !13
  %208 = icmp ult i8 %207, 8
  br i1 %208, label %209, label %213

; <label>:209                                     ; preds = %206
  %210 = ptrtoint i8* %midp.13.i to i64
  %211 = sub i64 %210, %185
  %212 = getelementptr inbounds i8, i8* %167, i64 %211
  store i8 0, i8* %212, align 1, !tbaa !13
  br label %213

; <label>:213                                     ; preds = %209, %206
  %214 = getelementptr inbounds i8, i8* %midp.13.i, i64 1
  %215 = add nuw nsw i32 %i.12.i, 1
  %exitcond.i10 = icmp eq i32 %215, %90
  br i1 %exitcond.i10, label %int_to_uchar.exit, label %206

min.iters.checked:                                ; preds = %._crit_edge
  %216 = load i32, i32* %x_size, align 4, !tbaa !6
  %217 = load i32, i32* %y_size, align 4, !tbaa !6
  %218 = mul i32 %217, %216
  %219 = sext i32 %218 to i64
  %220 = shl nsw i64 %219, 2
  %221 = tail call i8* @malloc(i64 %220)
  %222 = tail call i8* @malloc(i64 516) #11
  %223 = getelementptr inbounds i8, i8* %222, i64 258
  %224 = sitofp i32 %bt.0.lcssa to float
  %broadcast.splatinsert129 = insertelement <16 x float> undef, float %224, i32 0
  %broadcast.splat130 = shufflevector <16 x float> %broadcast.splatinsert129, <16 x float> undef, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %min.iters.checked
  %index = phi i64 [ 0, %min.iters.checked ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, -256
  %broadcast.splatinsert = insertelement <16 x i64> undef, i64 %offset.idx, i32 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> undef, <16 x i32> zeroinitializer
  %induction = add <16 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %225 = trunc <16 x i64> %induction to <16 x i32>
  %226 = sitofp <16 x i32> %225 to <16 x float>
  %227 = fdiv <16 x float> %226, %broadcast.splat130
  %228 = fmul <16 x float> %227, %227
  %229 = fmul <16 x float> %228, %228
  %230 = fmul <16 x float> %228, %229
  %231 = fsub <16 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %230
  %232 = fpext <16 x float> %231 to <16 x double>
  %233 = call <16 x double> @llvm.exp.v16f64(<16 x double> %232)
  %234 = fmul <16 x double> %233, <double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 1.000000e+02>
  %235 = fptrunc <16 x double> %234 to <16 x float>
  %236 = fptoui <16 x float> %235 to <16 x i8>
  %237 = getelementptr inbounds i8, i8* %223, i64 %offset.idx
  %238 = bitcast i8* %237 to <16 x i8>*
  store <16 x i8> %236, <16 x i8>* %238, align 1, !tbaa !13
  %index.next = add i64 %index, 16
  %239 = icmp eq i64 %index.next, 512
  br i1 %239, label %.split.us.i14, label %vector.body, !llvm.loop !27

.split.us.i14:                                    ; preds = %vector.body, %.split.us.i14
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12, %.split.us.i14 ], [ 256, %vector.body ]
  %240 = trunc i64 %indvars.iv.i11 to i32
  %241 = sitofp i32 %240 to float
  %242 = fdiv float %241, %224
  %243 = fmul float %242, %242
  %244 = fmul float %243, %243
  %245 = fmul float %243, %244
  %246 = fsub float -0.000000e+00, %245
  %247 = fpext float %246 to double
  %248 = tail call double @exp(double %247) #8
  %249 = fmul double %248, 1.000000e+02
  %250 = fptrunc double %249 to float
  %251 = fptoui float %250 to i8
  %252 = getelementptr inbounds i8, i8* %223, i64 %indvars.iv.i11
  store i8 %251, i8* %252, align 1, !tbaa !13
  %indvars.iv.next.i12 = add nsw i64 %indvars.iv.i11, 1
  %exitcond.i13 = icmp eq i64 %indvars.iv.next.i12, 257
  br i1 %exitcond.i13, label %setup_brightness_lut.exit17, label %.split.us.i14, !llvm.loop !28

setup_brightness_lut.exit17:                      ; preds = %.split.us.i14
  %253 = bitcast i8* %221 to i32*
  %254 = icmp eq i32 %principle.0.lcssa, 0
  br i1 %254, label %285, label %255

; <label>:255                                     ; preds = %setup_brightness_lut.exit17
  %256 = load i8*, i8** %in, align 8, !tbaa !2
  %257 = tail call i32 @susan_principle(i8* %256, i32* %253, i8* nonnull %223, i32 1850, i32 %216, i32 %217)
  %258 = load i32, i32* %253, align 4, !tbaa !6
  %259 = icmp sgt i32 %218, 0
  br i1 %259, label %.lr.ph6.i26.preheader, label %int_to_uchar.exit

.lr.ph6.i26.preheader:                            ; preds = %255
  %exitcond12.i2582 = icmp eq i32 %218, 1
  br i1 %exitcond12.i2582, label %int_to_uchar.exit, label %.lr.ph6..lr.ph6_crit_edge.i29.preheader

.lr.ph6..lr.ph6_crit_edge.i29.preheader:          ; preds = %.lr.ph6.i26.preheader
  %260 = mul i32 %217, %216
  %261 = add i32 %260, -2
  %262 = zext i32 %261 to i64
  %263 = add nuw nsw i64 %262, 1
  %min.iters.check = icmp ult i64 %263, 4
  br i1 %min.iters.check, label %.lr.ph6..lr.ph6_crit_edge.i29, label %min.iters.checked134

min.iters.checked134:                             ; preds = %.lr.ph6..lr.ph6_crit_edge.i29.preheader
  %n.vec = and i64 %263, 8589934588
  %cmp.zero = icmp eq i64 %n.vec, 0
  %ind.end = or i64 %n.vec, 1
  br i1 %cmp.zero, label %.lr.ph6..lr.ph6_crit_edge.i29, label %vector.ph135

vector.ph135:                                     ; preds = %min.iters.checked134
  %minmax.ident.splatinsert150 = insertelement <4 x i32> undef, i32 %258, i32 0
  %minmax.ident.splat151 = shufflevector <4 x i32> %minmax.ident.splatinsert150, <4 x i32> undef, <4 x i32> zeroinitializer
  %minmax.ident.splatinsert = insertelement <4 x i32> undef, i32 %258, i32 0
  %minmax.ident.splat = shufflevector <4 x i32> %minmax.ident.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph135
  %index136 = phi i64 [ 0, %vector.ph135 ], [ %index.next137, %vector.body131 ]
  %vec.phi = phi <4 x i32> [ %minmax.ident.splat, %vector.ph135 ], [ %269, %vector.body131 ]
  %vec.phi144 = phi <4 x i32> [ %minmax.ident.splat151, %vector.ph135 ], [ %267, %vector.body131 ]
  %offset.idx140 = or i64 %index136, 1
  %264 = getelementptr inbounds i32, i32* %253, i64 %offset.idx140
  %265 = bitcast i32* %264 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %265, align 4, !tbaa !6
  %266 = icmp sgt <4 x i32> %wide.load, %vec.phi144
  %267 = select <4 x i1> %266, <4 x i32> %wide.load, <4 x i32> %vec.phi144
  %268 = icmp slt <4 x i32> %wide.load, %vec.phi
  %269 = select <4 x i1> %268, <4 x i32> %wide.load, <4 x i32> %vec.phi
  %index.next137 = add i64 %index136, 4
  %270 = icmp eq i64 %index.next137, %n.vec
  br i1 %270, label %middle.block132, label %vector.body131, !llvm.loop !29

middle.block132:                                  ; preds = %vector.body131
  %rdx.shuf152 = shufflevector <4 x i32> %267, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp153 = icmp sgt <4 x i32> %267, %rdx.shuf152
  %rdx.minmax.select154 = select <4 x i1> %rdx.minmax.cmp153, <4 x i32> %267, <4 x i32> %rdx.shuf152
  %rdx.shuf155 = shufflevector <4 x i32> %rdx.minmax.select154, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp156 = icmp sgt <4 x i32> %rdx.minmax.select154, %rdx.shuf155
  %rdx.minmax.cmp156.elt = extractelement <4 x i1> %rdx.minmax.cmp156, i32 0
  %rdx.minmax.select154.elt = extractelement <4 x i32> %rdx.minmax.select154, i32 0
  %rdx.shuf155.elt = extractelement <4 x i32> %rdx.minmax.select154, i32 1
  %271 = select i1 %rdx.minmax.cmp156.elt, i32 %rdx.minmax.select154.elt, i32 %rdx.shuf155.elt
  %rdx.shuf = shufflevector <4 x i32> %269, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %rdx.minmax.cmp = icmp slt <4 x i32> %269, %rdx.shuf
  %rdx.minmax.select = select <4 x i1> %rdx.minmax.cmp, <4 x i32> %269, <4 x i32> %rdx.shuf
  %rdx.shuf147 = shufflevector <4 x i32> %rdx.minmax.select, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %rdx.minmax.cmp148 = icmp slt <4 x i32> %rdx.minmax.select, %rdx.shuf147
  %rdx.minmax.cmp148.elt = extractelement <4 x i1> %rdx.minmax.cmp148, i32 0
  %rdx.minmax.select.elt = extractelement <4 x i32> %rdx.minmax.select, i32 0
  %rdx.shuf147.elt = extractelement <4 x i32> %rdx.minmax.select, i32 1
  %272 = select i1 %rdx.minmax.cmp148.elt, i32 %rdx.minmax.select.elt, i32 %rdx.shuf147.elt
  %cmp.n139 = icmp eq i64 %263, %n.vec
  br i1 %cmp.n139, label %.lr.ph.i35.preheader, label %.lr.ph6..lr.ph6_crit_edge.i29

.lr.ph6..lr.ph6_crit_edge.i29:                    ; preds = %.lr.ph6..lr.ph6_crit_edge.i29.preheader, %min.iters.checked134, %middle.block132, %.lr.ph6..lr.ph6_crit_edge.i29
  %indvars.iv.next10.i2385 = phi i64 [ %indvars.iv.next10.i23, %.lr.ph6..lr.ph6_crit_edge.i29 ], [ %ind.end, %middle.block132 ], [ 1, %.lr.ph6..lr.ph6_crit_edge.i29.preheader ], [ 1, %min.iters.checked134 ]
  %min_r.1.i2284 = phi i32 [ %min_r.1.i22, %.lr.ph6..lr.ph6_crit_edge.i29 ], [ %272, %middle.block132 ], [ %258, %.lr.ph6..lr.ph6_crit_edge.i29.preheader ], [ %258, %min.iters.checked134 ]
  %.max_r.0.i2183 = phi i32 [ %.max_r.0.i21, %.lr.ph6..lr.ph6_crit_edge.i29 ], [ %271, %middle.block132 ], [ %258, %.lr.ph6..lr.ph6_crit_edge.i29.preheader ], [ %258, %min.iters.checked134 ]
  %.phi.trans.insert.i27 = getelementptr inbounds i32, i32* %253, i64 %indvars.iv.next10.i2385
  %.pre.i28 = load i32, i32* %.phi.trans.insert.i27, align 4, !tbaa !6
  %273 = icmp sgt i32 %.pre.i28, %.max_r.0.i2183
  %.max_r.0.i21 = select i1 %273, i32 %.pre.i28, i32 %.max_r.0.i2183
  %274 = icmp slt i32 %.pre.i28, %min_r.1.i2284
  %min_r.1.i22 = select i1 %274, i32 %.pre.i28, i32 %min_r.1.i2284
  %indvars.iv.next10.i23 = add nuw nsw i64 %indvars.iv.next10.i2385, 1
  %lftr.wideiv117 = trunc i64 %indvars.iv.next10.i23 to i32
  %exitcond118 = icmp eq i32 %lftr.wideiv117, %218
  br i1 %exitcond118, label %.lr.ph.i35.preheader, label %.lr.ph6..lr.ph6_crit_edge.i29, !llvm.loop !30

.lr.ph.i35.preheader:                             ; preds = %middle.block132, %.lr.ph6..lr.ph6_crit_edge.i29
  %min_r.1.i22.lcssa = phi i32 [ %min_r.1.i22, %.lr.ph6..lr.ph6_crit_edge.i29 ], [ %272, %middle.block132 ]
  %.max_r.0.i21.lcssa = phi i32 [ %.max_r.0.i21, %.lr.ph6..lr.ph6_crit_edge.i29 ], [ %271, %middle.block132 ]
  %275 = sub nsw i32 %.max_r.0.i21.lcssa, %min_r.1.i22.lcssa
  %276 = sub nsw i32 %258, %min_r.1.i22.lcssa
  %277 = mul nsw i32 %276, 255
  %278 = sdiv i32 %277, %275
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %256, align 1, !tbaa !13
  br i1 %exitcond12.i2582, label %int_to_uchar.exit, label %.lr.ph..lr.ph_crit_edge.i38

.lr.ph..lr.ph_crit_edge.i38:                      ; preds = %.lr.ph.i35.preheader, %.lr.ph..lr.ph_crit_edge.i38
  %indvars.iv.next.i3281 = phi i64 [ %indvars.iv.next.i32, %.lr.ph..lr.ph_crit_edge.i38 ], [ 1, %.lr.ph.i35.preheader ]
  %.phi.trans.insert13.i36 = getelementptr inbounds i32, i32* %253, i64 %indvars.iv.next.i3281
  %.pre14.i37 = load i32, i32* %.phi.trans.insert13.i36, align 4, !tbaa !6
  %280 = sub nsw i32 %.pre14.i37, %min_r.1.i22.lcssa
  %281 = mul nsw i32 %280, 255
  %282 = sdiv i32 %281, %275
  %283 = trunc i32 %282 to i8
  %284 = getelementptr inbounds i8, i8* %256, i64 %indvars.iv.next.i3281
  store i8 %283, i8* %284, align 1, !tbaa !13
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.next.i3281, 1
  %lftr.wideiv115 = trunc i64 %indvars.iv.next.i32 to i32
  %exitcond116 = icmp eq i32 %lftr.wideiv115, %218
  br i1 %exitcond116, label %int_to_uchar.exit, label %.lr.ph..lr.ph_crit_edge.i38

; <label>:285                                     ; preds = %setup_brightness_lut.exit17
  %286 = icmp eq i32 %susan_quick.0.lcssa, 0
  %287 = load i8*, i8** %in, align 8, !tbaa !2
  %288 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 0
  br i1 %286, label %291, label %289

; <label>:289                                     ; preds = %285
  %290 = call i32 @susan_corners_quick(i8* %287, i32* %253, i8* nonnull %223, i32 1850, %struct.anon* %288, i32 %216, i32 %217)
  br label %293

; <label>:291                                     ; preds = %285
  %292 = call i32 @susan_corners(i8* %287, i32* %253, i8* nonnull %223, i32 1850, %struct.anon* %288, i32 %216, i32 %217)
  br label %293

; <label>:293                                     ; preds = %291, %289
  %294 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 0, i32 2
  %295 = load i32, i32* %294, align 8, !tbaa !14
  %296 = icmp eq i32 %295, 7
  br i1 %296, label %int_to_uchar.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %293
  %297 = icmp eq i32 %drawing_mode.0.lcssa, 0
  %298 = add nsw i32 %216, -2
  %299 = sext i32 %298 to i64
  br i1 %297, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i40, %.lr.ph.split.us.i
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i42, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i40 ]
  %300 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv.i41, i32 1
  %301 = load i32, i32* %300, align 4, !tbaa !16
  %302 = add nsw i32 %301, -1
  %303 = mul nsw i32 %302, %216
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %287, i64 %304
  %306 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv.i41, i32 0
  %307 = load i32, i32* %306, align 8, !tbaa !17
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %305, i64 %308
  %310 = getelementptr inbounds i8, i8* %309, i64 -1
  %311 = getelementptr inbounds i8, i8* %310, i64 1
  store i8 -1, i8* %310, align 1, !tbaa !13
  %312 = getelementptr inbounds i8, i8* %311, i64 1
  store i8 -1, i8* %311, align 1, !tbaa !13
  store i8 -1, i8* %312, align 1, !tbaa !13
  %313 = getelementptr inbounds i8, i8* %312, i64 %299
  %314 = getelementptr inbounds i8, i8* %313, i64 1
  store i8 -1, i8* %313, align 1, !tbaa !13
  %315 = getelementptr inbounds i8, i8* %314, i64 1
  store i8 0, i8* %314, align 1, !tbaa !13
  store i8 -1, i8* %315, align 1, !tbaa !13
  %316 = getelementptr inbounds i8, i8* %315, i64 %299
  %317 = getelementptr inbounds i8, i8* %316, i64 1
  store i8 -1, i8* %316, align 1, !tbaa !13
  %318 = getelementptr inbounds i8, i8* %317, i64 1
  store i8 -1, i8* %317, align 1, !tbaa !13
  store i8 -1, i8* %318, align 1, !tbaa !13
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i41, 1
  %319 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv.next.i42, i32 2
  %320 = load i32, i32* %319, align 8, !tbaa !14
  %321 = icmp eq i32 %320, 7
  br i1 %321, label %int_to_uchar.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i40, %.lr.ph.split.i
  %indvars.iv3.i43 = phi i64 [ %indvars.iv.next4.i44, %.lr.ph.split.i ], [ 0, %.lr.ph.i40 ]
  %322 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv3.i43, i32 1
  %323 = load i32, i32* %322, align 4, !tbaa !16
  %324 = mul nsw i32 %323, %216
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %287, i64 %325
  %327 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv3.i43, i32 0
  %328 = load i32, i32* %327, align 8, !tbaa !17
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %326, i64 %329
  store i8 0, i8* %330, align 1, !tbaa !13
  %indvars.iv.next4.i44 = add nuw nsw i64 %indvars.iv3.i43, 1
  %331 = getelementptr inbounds [15000 x %struct.anon], [15000 x %struct.anon]* %corner_list, i64 0, i64 %indvars.iv.next4.i44, i32 2
  %332 = load i32, i32* %331, align 8, !tbaa !14
  %333 = icmp eq i32 %332, 7
  br i1 %333, label %int_to_uchar.exit, label %.lr.ph.split.i

int_to_uchar.exit:                                ; preds = %.lr.ph..lr.ph_crit_edge.i38, %.lr.ph.split.i, %.lr.ph.split.us.i, %.lr.ph..lr.ph_crit_edge.i, %213, %.lr.ph6.i26.preheader, %.lr.ph6.i.preheader, %._crit_edge.int_to_uchar.exit_crit_edge, %.lr.ph.i35.preheader, %.lr.ph.i.preheader, %293, %255, %.preheader.i, %.preheader1.i, %134, %setup_brightness_lut.exit
  %334 = phi i32 [ %.pre120, %._crit_edge.int_to_uchar.exit_crit_edge ], [ %217, %.lr.ph.i35.preheader ], [ %89, %.lr.ph.i.preheader ], [ %217, %293 ], [ %217, %255 ], [ %89, %.preheader.i ], [ %89, %.preheader1.i ], [ %89, %134 ], [ %87, %setup_brightness_lut.exit ], [ %89, %.lr.ph6.i.preheader ], [ %217, %.lr.ph6.i26.preheader ], [ %89, %213 ], [ %89, %.lr.ph..lr.ph_crit_edge.i ], [ %217, %.lr.ph.split.us.i ], [ %217, %.lr.ph.split.i ], [ %217, %.lr.ph..lr.ph_crit_edge.i38 ]
  %335 = phi i32 [ %.pre119, %._crit_edge.int_to_uchar.exit_crit_edge ], [ %216, %.lr.ph.i35.preheader ], [ %88, %.lr.ph.i.preheader ], [ %216, %293 ], [ %216, %255 ], [ %88, %.preheader.i ], [ %88, %.preheader1.i ], [ %88, %134 ], [ %86, %setup_brightness_lut.exit ], [ %88, %.lr.ph6.i.preheader ], [ %216, %.lr.ph6.i26.preheader ], [ %88, %213 ], [ %88, %.lr.ph..lr.ph_crit_edge.i ], [ %216, %.lr.ph.split.us.i ], [ %216, %.lr.ph.split.i ], [ %216, %.lr.ph..lr.ph_crit_edge.i38 ]
  %336 = phi i8* [ %.pre, %._crit_edge.int_to_uchar.exit_crit_edge ], [ %256, %.lr.ph.i35.preheader ], [ %129, %.lr.ph.i.preheader ], [ %287, %293 ], [ %256, %255 ], [ %167, %.preheader.i ], [ %167, %.preheader1.i ], [ %129, %134 ], [ %84, %setup_brightness_lut.exit ], [ %129, %.lr.ph6.i.preheader ], [ %256, %.lr.ph6.i26.preheader ], [ %167, %213 ], [ %129, %.lr.ph..lr.ph_crit_edge.i ], [ %287, %.lr.ph.split.us.i ], [ %287, %.lr.ph.split.i ], [ %256, %.lr.ph..lr.ph_crit_edge.i38 ]
  %337 = getelementptr inbounds i8*, i8** %argv, i64 2
  %338 = load i8*, i8** %337, align 8, !tbaa !2
  %339 = tail call i32 @put_image(i8* %338, i8* %336, i32 %335, i32 %334)
  call void @llvm.lifetime.end(i64 360000, i8* %4) #11
  call void @llvm.lifetime.end(i64 4, i8* %3) #11
  call void @llvm.lifetime.end(i64 4, i8* %2) #11
  call void @llvm.lifetime.end(i64 8, i8* %1) #11
  ret i32 0
}

; Function Attrs: nounwind readonly
declare double @atof(i8* nocapture) #10

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #10

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #11

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #11

declare float @sqrtf(float)

; Function Attrs: nounwind readnone
declare <16 x double> @llvm.exp.v16f64(<16 x double>) #8

attributes #0 = { noreturn nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone }
attributes #9 = { norecurse nounwind readonly ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.vectorize.width", i32 1}
!10 = !{!"llvm.loop.interleave.count", i32 1}
!11 = distinct !{!11, !12, !9, !10}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!4, !4, i64 0}
!14 = !{!15, !7, i64 8}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!16 = !{!15, !7, i64 4}
!17 = !{!15, !7, i64 0}
!18 = !{!15, !7, i64 12}
!19 = !{!15, !7, i64 16}
!20 = !{!15, !7, i64 20}
!21 = distinct !{!21, !9, !10}
!22 = distinct !{!22, !12, !9, !10}
!23 = distinct !{!23, !9, !10}
!24 = distinct !{!24, !12, !9, !10}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !12, !9, !10}
!27 = distinct !{!27, !9, !10}
!28 = distinct !{!28, !12, !9, !10}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !12, !9, !10}
