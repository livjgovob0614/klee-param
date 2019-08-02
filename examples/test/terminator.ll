; ModuleID = 'terminator.c'
source_filename = "terminator.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @func(i32) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %3, metadata !13, metadata !DIExpression()), !dbg !14
  %5 = load i32, i32* %2, align 4, !dbg !15
  %6 = icmp eq i32 %5, 3, !dbg !17
  br i1 %6, label %7, label %9, !dbg !18

; <label>:7:                                      ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !19, metadata !DIExpression()), !dbg !21
  store i32 3, i32* %4, align 4, !dbg !21
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !22
  br label %21, !dbg !23

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %2, align 4, !dbg !24
  %11 = icmp eq i32 %10, 2, !dbg !26
  br i1 %11, label %12, label %14, !dbg !27

; <label>:12:                                     ; preds = %9
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !28
  br label %20, !dbg !30

; <label>:14:                                     ; preds = %9
  %15 = load i32, i32* %2, align 4, !dbg !31
  %16 = icmp sgt i32 %15, 1, !dbg !34
  br i1 %16, label %17, label %18, !dbg !35

; <label>:17:                                     ; preds = %14
  store i32 3, i32* %3, align 4, !dbg !36
  br label %19, !dbg !37

; <label>:18:                                     ; preds = %14
  store i32 5, i32* %3, align 4, !dbg !38
  br label %19

; <label>:19:                                     ; preds = %18, %17
  br label %20

; <label>:20:                                     ; preds = %19, %12
  br label %21

; <label>:21:                                     ; preds = %20, %7
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8* %2, metadata !44, metadata !DIExpression()), !dbg !46
  call void @klee_make_symbolic(i8* %2, i64 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !47
  %3 = load i8, i8* %2, align 1, !dbg !48
  %4 = sext i8 %3 to i32, !dbg !48
  call void @func(i32 %4), !dbg !49
  ret i32 0, !dbg !50
}

declare void @klee_make_symbolic(i8*, i64, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "terminator.c", directory: "/home/jg/klee/examples/test")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!7 = distinct !DISubprogram(name: "func", scope: !1, file: !1, line: 4, type: !8, isLocal: false, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!12 = !DILocation(line: 4, column: 15, scope: !7)
!13 = !DILocalVariable(name: "z", scope: !7, file: !1, line: 5, type: !10)
!14 = !DILocation(line: 5, column: 7, scope: !7)
!15 = !DILocation(line: 6, column: 7, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 7)
!17 = !DILocation(line: 6, column: 9, scope: !16)
!18 = !DILocation(line: 6, column: 7, scope: !7)
!19 = !DILocalVariable(name: "c", scope: !20, file: !1, line: 7, type: !10)
!20 = distinct !DILexicalBlock(scope: !16, file: !1, line: 6, column: 15)
!21 = !DILocation(line: 7, column: 9, scope: !20)
!22 = !DILocation(line: 8, column: 5, scope: !20)
!23 = !DILocation(line: 9, column: 3, scope: !20)
!24 = !DILocation(line: 10, column: 12, scope: !25)
!25 = distinct !DILexicalBlock(scope: !16, file: !1, line: 10, column: 12)
!26 = !DILocation(line: 10, column: 14, scope: !25)
!27 = !DILocation(line: 10, column: 12, scope: !16)
!28 = !DILocation(line: 11, column: 2, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 20)
!30 = !DILocation(line: 12, column: 3, scope: !29)
!31 = !DILocation(line: 14, column: 6, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 6)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 13, column: 8)
!34 = !DILocation(line: 14, column: 8, scope: !32)
!35 = !DILocation(line: 14, column: 6, scope: !33)
!36 = !DILocation(line: 14, column: 15, scope: !32)
!37 = !DILocation(line: 14, column: 13, scope: !32)
!38 = !DILocation(line: 15, column: 9, scope: !32)
!39 = !DILocation(line: 18, column: 3, scope: !7)
!40 = !DILocation(line: 19, column: 1, scope: !7)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !42, isLocal: false, isDefinition: true, scopeLine: 20, isOptimized: false, unit: !0, variables: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{!10}
!44 = !DILocalVariable(name: "a", scope: !41, file: !1, line: 21, type: !45)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DILocation(line: 21, column: 8, scope: !41)
!47 = !DILocation(line: 22, column: 3, scope: !41)
!48 = !DILocation(line: 24, column: 8, scope: !41)
!49 = !DILocation(line: 24, column: 3, scope: !41)
!50 = !DILocation(line: 25, column: 3, scope: !41)
