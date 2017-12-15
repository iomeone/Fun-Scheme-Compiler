; ModuleID = 'header.cpp'
source_filename = "header.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

@.str = private unnamed_addr constant [25 x i8] c"library run-time error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Expected value: null (in expect_args0). Prim cannot take arguments.\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"Expected cons value (in expect_args1). Prim applied on an empty argument list.\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"Expected null value (in expect_args1). Prim can only take 1 argument.\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Expected a cons value. (expect_cons)\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Expected a vector or special value. (expect_other)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"#<procedure>\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"(print.. v); unrecognized value %llu\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"(print v); unrecognized value %llu\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"first argument to make-vector must be an integer\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"prim applied on more than 2 arguments.\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"second argument to vector-ref must be an integer\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"first argument to vector-ref must be a vector\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"vector-ref not given a properly formed vector\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"first argument to vector-ref must be an integer\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

; Function Attrs: ssp uwtable
define i64* @alloc(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i8* @malloc(i64 %3)
  %5 = bitcast i8* %4 to i64*
  ret i64* %5
}

declare i8* @malloc(i64) #1

; Function Attrs: ssp uwtable
define void @fatal_err(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

; Function Attrs: ssp uwtable
define void @print_u64(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i64 %3)
  ret void
}

; Function Attrs: ssp uwtable
define i64 @expect_args0(i64) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %5, %1
  ret i64 0
}

; Function Attrs: ssp uwtable
define i64 @expect_args1(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %1
  %9 = load i64, i64* %2, align 8
  %10 = and i64 %9, -8
  %11 = inttoptr i64 %10 to i64*
  store i64* %11, i64** %3, align 8
  %12 = load i64*, i64** %3, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %16, %8
  %18 = load i64*, i64** %3, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_cons(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 1
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: ssp uwtable
define i64 @expect_other(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 6
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %3, align 8
  %12 = and i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_int(i64) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = trunc i64 %3 to i32
  %5 = zext i32 %4 to i64
  %6 = shl i64 %5, 32
  %7 = or i64 %6, 2
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_null() #3 {
  ret i64 0
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_true() #3 {
  ret i64 31
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_false() #3 {
  ret i64 15
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_string(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 3
  ret i64 %5
}

; Function Attrs: nounwind ssp uwtable
define i64 @const_init_symbol(i8*) #3 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = ptrtoint i8* %3 to i64
  %5 = or i64 %4, 4
  ret i64 %5
}

; Function Attrs: ssp uwtable
define i64 @prim_print_aux(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0))
  br label %113

; <label>:11                                      ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %112

; <label>:17                                      ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %111

; <label>:36                                      ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %43)
  br label %110

; <label>:45                                      ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %52)
  br label %109

; <label>:54                                      ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %61)
  br label %108

; <label>:63                                      ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67                                      ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75                                      ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print_aux(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88                                      ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92                                      ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print_aux(i64 %97)
  br label %99

; <label>:99                                      ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102                                     ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %107

; <label>:104                                     ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i64 %105)
  br label %107

; <label>:107                                     ; preds = %104, %102
  br label %108

; <label>:108                                     ; preds = %107, %58
  br label %109

; <label>:109                                     ; preds = %108, %49
  br label %110

; <label>:110                                     ; preds = %109, %40
  br label %111

; <label>:111                                     ; preds = %110, %21
  br label %112

; <label>:112                                     ; preds = %111, %15
  br label %113

; <label>:113                                     ; preds = %112, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @prim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

; <label>:9                                       ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %113

; <label>:11                                      ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, 7
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0))
  br label %112

; <label>:17                                      ; preds = %11
  %18 = load i64, i64* %2, align 8
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 1
  br i1 %20, label %21, label %36

; <label>:21                                      ; preds = %17
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %3, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %31 = load i64*, i64** %3, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @prim_print_aux(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %111

; <label>:36                                      ; preds = %17
  %37 = load i64, i64* %2, align 8
  %38 = and i64 %37, 7
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %45

; <label>:40                                      ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %43)
  br label %110

; <label>:45                                      ; preds = %36
  %46 = load i64, i64* %2, align 8
  %47 = and i64 %46, 7
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %49, label %54

; <label>:49                                      ; preds = %45
  %50 = load i64, i64* %2, align 8
  %51 = and i64 %50, -8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* %52)
  br label %109

; <label>:54                                      ; preds = %45
  %55 = load i64, i64* %2, align 8
  %56 = and i64 %55, 7
  %57 = icmp eq i64 %56, 4
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %54
  %59 = load i64, i64* %2, align 8
  %60 = and i64 %59, -8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %61)
  br label %108

; <label>:63                                      ; preds = %54
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %64, 7
  %66 = icmp eq i64 %65, 6
  br i1 %66, label %67, label %104

; <label>:67                                      ; preds = %63
  %68 = load i64, i64* %2, align 8
  %69 = and i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = and i64 %72, 7
  %74 = icmp eq i64 1, %73
  br i1 %74, label %75, label %104

; <label>:75                                      ; preds = %67
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0))
  %77 = load i64, i64* %2, align 8
  %78 = and i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %4, align 8
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  %83 = lshr i64 %82, 3
  store i64 %83, i64* %5, align 8
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @prim_print(i64 %86)
  store i64 2, i64* %6, align 8
  br label %88

; <label>:88                                      ; preds = %99, %75
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp ule i64 %89, %90
  br i1 %91, label %92, label %102

; <label>:92                                      ; preds = %88
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  %94 = load i64, i64* %6, align 8
  %95 = load i64*, i64** %4, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 %94
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @prim_print(i64 %97)
  br label %99

; <label>:99                                      ; preds = %92
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %88

; <label>:102                                     ; preds = %88
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %107

; <label>:104                                     ; preds = %67, %63
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i32 0, i32 0), i64 %105)
  br label %107

; <label>:107                                     ; preds = %104, %102
  br label %108

; <label>:108                                     ; preds = %107, %58
  br label %109

; <label>:109                                     ; preds = %108, %49
  br label %110

; <label>:110                                     ; preds = %109, %40
  br label %111

; <label>:111                                     ; preds = %110, %21
  br label %112

; <label>:112                                     ; preds = %111, %15
  br label %113

; <label>:113                                     ; preds = %112, %9
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_print(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_print(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_halt(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @prim_print(i64 %4)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #5
  unreachable
                                                  ; No predecessors!
  %8 = load i64, i64* %2, align 8
  ret i64 %8
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = call i8* @malloc(i64 4096)
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

; <label>:9                                       ; preds = %18, %1
  %10 = load i64, i64* %2, align 8
  %11 = and i64 %10, 7
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %14, 512
  br label %16

; <label>:16                                      ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %16
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @expect_cons(i64 %19, i64* %2)
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64*, i64** %3, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 %21
  store i64 %20, i64* %24, align 8
  br label %9

; <label>:25                                      ; preds = %16
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  %28 = mul i64 %27, 8
  %29 = call i64* @alloc(i64 %28)
  store i64* %29, i64** %5, align 8
  %30 = load i64, i64* %4, align 8
  %31 = shl i64 %30, 3
  %32 = or i64 %31, 1
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  store i64 %32, i64* %34, align 8
  store i64 0, i64* %6, align 8
  br label %35

; <label>:35                                      ; preds = %48, %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %51

; <label>:39                                      ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 1
  %46 = load i64*, i64** %5, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 %45
  store i64 %43, i64* %47, align 8
  br label %48

; <label>:48                                      ; preds = %39
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %35

; <label>:51                                      ; preds = %35
  %52 = load i64*, i64** %3, align 8
  %53 = icmp eq i64* %52, null
  br i1 %53, label %56, label %54

; <label>:54                                      ; preds = %51
  %55 = bitcast i64* %52 to i8*
  call void @_ZdaPv(i8* %55) #6
  br label %56

; <label>:56                                      ; preds = %54, %51
  %57 = load i64*, i64** %5, align 8
  %58 = ptrtoint i64* %57 to i64
  %59 = or i64 %58, 6
  ret i64 %59
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #4

; Function Attrs: ssp uwtable
define i64 @prim_make_45vector(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.23, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %2
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  %20 = mul i64 %19, 8
  %21 = call i64* @alloc(i64 %20)
  store i64* %21, i64** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = shl i64 %22, 3
  %24 = or i64 %23, 1
  %25 = load i64*, i64** %6, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  store i64 1, i64* %7, align 8
  br label %27

; <label>:27                                      ; preds = %36, %12
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 %32, i64* %35, align 8
  br label %36

; <label>:36                                      ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %27

; <label>:39                                      ; preds = %27
  %40 = load i64*, i64** %6, align 8
  %41 = ptrtoint i64* %40 to i64
  %42 = or i64 %41, 6
  ret i64 %42
}

; Function Attrs: ssp uwtable
define i64 @applyprim_make_45vector(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_make_45vector(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45ref(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %3, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 6
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = inttoptr i64 %16 to i64*
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 1
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %14
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %22, %14
  %24 = load i64, i64* %4, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %3, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 %29
  %34 = load i64, i64* %33, align 8
  ret i64 %34
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45ref(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_vector_45ref(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_vector_45set_33(i64, i64, i64) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 2
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %3
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.25, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %3
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 7
  %14 = icmp ne i64 %13, 6
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %11
  call void @fatal_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %15, %11
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %21, 7
  %23 = icmp ne i64 %22, 1
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %16
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0))
  br label %25

; <label>:25                                      ; preds = %24, %16
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = and i64 %27, -8
  %29 = lshr i64 %28, 32
  %30 = trunc i64 %29 to i32
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  %36 = getelementptr inbounds i64, i64* %35, i64 %32
  store i64 %26, i64* %36, align 8
  ret i64 39
}

; Function Attrs: ssp uwtable
define i64 @applyprim_vector_45set_33(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @expect_cons(i64 %7, i64* %3)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @expect_cons(i64 %9, i64* %3)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @expect_cons(i64 %11, i64* %3)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

; <label>:15                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %15, %1
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @prim_vector_45set_33(i64 %17, i64 %18, i64 %19)
  ret i64 %20
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eq_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10                                      ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eq_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eq_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_eqv_63(i64, i64) #3 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  store i64 31, i64* %3, align 8
  br label %11

; <label>:10                                      ; preds = %2
  store i64 15, i64* %3, align 8
  br label %11

; <label>:11                                      ; preds = %10, %9
  %12 = load i64, i64* %3, align 8
  ret i64 %12
}

; Function Attrs: ssp uwtable
define i64 @applyprim_eqv_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_eqv_63(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_number_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_number_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_number_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_integer_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_integer_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_integer_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_void_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 39
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_void_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_void_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_procedure_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_procedure_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_procedure_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_null_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_null_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_null_63(i64 %6)
  ret i64 %7
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_cons_63(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = and i64 %4, 7
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %9

; <label>:8                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %2, align 8
  ret i64 %10
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons_63(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cons_63(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cons(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i64* @alloc(i64 16)
  store i64* %6, i64** %5, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  store i64 %10, i64* %12, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = ptrtoint i64* %13 to i64
  %15 = or i64 %14, 1
  ret i64 %15
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cons(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @expect_cons(i64 %8, i64* %3)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %1
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @prim_cons(i64 %14, i64 %15)
  ret i64 %16
}

; Function Attrs: ssp uwtable
define i64 @prim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_car(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_car(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @expect_cons(i64 %5, i64* %3)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @applyprim_cdr(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_cdr(i64 %6)
  ret i64 %7
}

; Function Attrs: ssp uwtable
define i64 @prim__43(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = add nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__43(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 2, i64* %2, align 8
  br label %34

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__43(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = add nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34                                      ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__45(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = sub nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__45(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 2, i64* %2, align 8
  br label %50

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

; <label>:21                                      ; preds = %13
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = sub nsw i32 0, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %2, align 8
  br label %50

; <label>:32                                      ; preds = %13
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %35, -8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @applyprim__43(i64 %41)
  %43 = and i64 %42, -8
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %38, %45
  %47 = zext i32 %46 to i64
  %48 = shl i64 %47, 32
  %49 = or i64 %48, 2
  store i64 %49, i64* %2, align 8
  br label %50

; <label>:50                                      ; preds = %32, %21, %7
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

; Function Attrs: ssp uwtable
define i64 @prim__42(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = mul nsw i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @applyprim__42(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %1
  store i64 4294967298, i64* %2, align 8
  br label %34

; <label>:8                                       ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 1
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.31, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %4, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @applyprim__42(i64 %25)
  %27 = and i64 %26, -8
  %28 = lshr i64 %27, 32
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %31, 32
  %33 = or i64 %32, 2
  store i64 %33, i64* %2, align 8
  br label %34

; <label>:34                                      ; preds = %13, %7
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

; Function Attrs: ssp uwtable
define i64 @prim__47(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, 7
  %7 = icmp ne i64 %6, 2
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.35, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %2
  %10 = load i64, i64* %4, align 8
  %11 = and i64 %10, 7
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %9
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %13, %9
  %15 = load i64, i64* %3, align 8
  %16 = and i64 %15, -8
  %17 = lshr i64 %16, 32
  %18 = trunc i64 %17 to i32
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, -8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = sdiv i32 %18, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %24, 32
  %26 = or i64 %25, 2
  ret i64 %26
}

; Function Attrs: ssp uwtable
define i64 @prim__61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: ssp uwtable
define i64 @prim__60_61(i64, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, 7
  %8 = icmp ne i64 %7, 2
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %4, align 8
  %17 = and i64 %16, -8
  %18 = lshr i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %5, align 8
  %21 = and i64 %20, -8
  %22 = lshr i64 %21, 32
  %23 = trunc i64 %22 to i32
  %24 = icmp sle i32 %19, %23
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %15
  store i64 31, i64* %3, align 8
  br label %27

; <label>:26                                      ; preds = %15
  store i64 15, i64* %3, align 8
  br label %27

; <label>:27                                      ; preds = %26, %25
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

; Function Attrs: nounwind ssp uwtable
define i64 @prim_not(i64) #3 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 15
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %1
  store i64 31, i64* %2, align 8
  br label %8

; <label>:7                                       ; preds = %1
  store i64 15, i64* %2, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %2, align 8
  ret i64 %9
}

; Function Attrs: ssp uwtable
define i64 @applyprim_not(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @expect_args1(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @prim_not(i64 %6)
  ret i64 %7
}

attributes #0 = { ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 8.0.0 (clang-800.0.42.1)"}


;;;;;;

define void @proc_main() {
  %cloptr86821 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86822 = getelementptr inbounds i64, i64* %cloptr86821, i64 0                  ; &cloptr86821[0]
  %f86823 = ptrtoint void(i64,i64)* @lam86819 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86823, i64* %eptr86822                                                 ; store fptr
  %arg83670 = ptrtoint i64* %cloptr86821 to i64                                      ; closure cast; i64* -> i64
  %cloptr86824 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86825 = getelementptr inbounds i64, i64* %cloptr86824, i64 0                  ; &cloptr86824[0]
  %f86826 = ptrtoint void(i64,i64)* @lam86816 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86826, i64* %eptr86825                                                 ; store fptr
  %arg83669 = ptrtoint i64* %cloptr86824 to i64                                      ; closure cast; i64* -> i64
  %cloptr86827 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86828 = getelementptr inbounds i64, i64* %cloptr86827, i64 0                  ; &cloptr86827[0]
  %f86829 = ptrtoint void(i64,i64)* @lam86054 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86829, i64* %eptr86828                                                 ; store fptr
  %arg83668 = ptrtoint i64* %cloptr86827 to i64                                      ; closure cast; i64* -> i64
  %rva86039 = add i64 0, 0                                                           ; quoted ()
  %rva86038 = call i64 @prim_cons(i64 %arg83668, i64 %rva86039)                      ; call prim_cons
  %rva86037 = call i64 @prim_cons(i64 %arg83669, i64 %rva86038)                      ; call prim_cons
  %cloptr86830 = inttoptr i64 %arg83670 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr86831 = getelementptr inbounds i64, i64* %cloptr86830, i64 0                 ; &cloptr86830[0]
  %f86833 = load i64, i64* %i0ptr86831, align 8                                      ; load; *i0ptr86831
  %fptr86832 = inttoptr i64 %f86833 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86832(i64 %arg83670, i64 %rva86037)                 ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam86819(i64 %env86820, i64 %rvp84749) {
  %cont83660 = call i64 @prim_car(i64 %rvp84749)                                     ; call prim_car
  %rvp84748 = call i64 @prim_cdr(i64 %rvp84749)                                      ; call prim_cdr
  %BSP$yu = call i64 @prim_car(i64 %rvp84748)                                        ; call prim_car
  %na84744 = call i64 @prim_cdr(i64 %rvp84748)                                       ; call prim_cdr
  %rva84747 = add i64 0, 0                                                           ; quoted ()
  %rva84746 = call i64 @prim_cons(i64 %BSP$yu, i64 %rva84747)                        ; call prim_cons
  %rva84745 = call i64 @prim_cons(i64 %cont83660, i64 %rva84746)                     ; call prim_cons
  %cloptr86834 = inttoptr i64 %BSP$yu to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr86835 = getelementptr inbounds i64, i64* %cloptr86834, i64 0                 ; &cloptr86834[0]
  %f86837 = load i64, i64* %i0ptr86835, align 8                                      ; load; *i0ptr86835
  %fptr86836 = inttoptr i64 %f86837 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86836(i64 %BSP$yu, i64 %rva84745)                   ; tail call
  ret void
}


define void @lam86816(i64 %env86817, i64 %rvp86008) {
  %_9583434 = call i64 @prim_car(i64 %rvp86008)                                      ; call prim_car
  %rvp86007 = call i64 @prim_cdr(i64 %rvp86008)                                      ; call prim_cdr
  %O3b$Ycmb = call i64 @prim_car(i64 %rvp86007)                                      ; call prim_car
  %na84751 = call i64 @prim_cdr(i64 %rvp86007)                                       ; call prim_cdr
  %cloptr86838 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr86840 = getelementptr inbounds i64, i64* %cloptr86838, i64 1                  ; &eptr86840[1]
  store i64 %O3b$Ycmb, i64* %eptr86840                                               ; *eptr86840 = %O3b$Ycmb
  %eptr86839 = getelementptr inbounds i64, i64* %cloptr86838, i64 0                  ; &cloptr86838[0]
  %f86841 = ptrtoint void(i64,i64)* @lam86814 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86841, i64* %eptr86839                                                 ; store fptr
  %arg83675 = ptrtoint i64* %cloptr86838 to i64                                      ; closure cast; i64* -> i64
  %cloptr86842 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86843 = getelementptr inbounds i64, i64* %cloptr86842, i64 0                  ; &cloptr86842[0]
  %f86844 = ptrtoint void(i64,i64)* @lam86067 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86844, i64* %eptr86843                                                 ; store fptr
  %arg83674 = ptrtoint i64* %cloptr86842 to i64                                      ; closure cast; i64* -> i64
  %rva86006 = add i64 0, 0                                                           ; quoted ()
  %rva86005 = call i64 @prim_cons(i64 %arg83674, i64 %rva86006)                      ; call prim_cons
  %rva86004 = call i64 @prim_cons(i64 %arg83675, i64 %rva86005)                      ; call prim_cons
  %cloptr86845 = inttoptr i64 %O3b$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr86846 = getelementptr inbounds i64, i64* %cloptr86845, i64 0                 ; &cloptr86845[0]
  %f86848 = load i64, i64* %i0ptr86846, align 8                                      ; load; *i0ptr86846
  %fptr86847 = inttoptr i64 %f86848 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86847(i64 %O3b$Ycmb, i64 %rva86004)                 ; tail call
  ret void
}


define void @lam86814(i64 %env86815, i64 %rvp85974) {
  %envptr86849 = inttoptr i64 %env86815 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86850 = getelementptr inbounds i64, i64* %envptr86849, i64 1                ; &envptr86849[1]
  %O3b$Ycmb = load i64, i64* %envptr86850, align 8                                   ; load; *envptr86850
  %_9583435 = call i64 @prim_car(i64 %rvp85974)                                      ; call prim_car
  %rvp85973 = call i64 @prim_cdr(i64 %rvp85974)                                      ; call prim_cdr
  %WRN$_37foldr1 = call i64 @prim_car(i64 %rvp85973)                                 ; call prim_car
  %na84753 = call i64 @prim_cdr(i64 %rvp85973)                                       ; call prim_cdr
  %cloptr86851 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr86853 = getelementptr inbounds i64, i64* %cloptr86851, i64 1                  ; &eptr86853[1]
  %eptr86854 = getelementptr inbounds i64, i64* %cloptr86851, i64 2                  ; &eptr86854[2]
  store i64 %O3b$Ycmb, i64* %eptr86853                                               ; *eptr86853 = %O3b$Ycmb
  store i64 %WRN$_37foldr1, i64* %eptr86854                                          ; *eptr86854 = %WRN$_37foldr1
  %eptr86852 = getelementptr inbounds i64, i64* %cloptr86851, i64 0                  ; &cloptr86851[0]
  %f86855 = ptrtoint void(i64,i64)* @lam86812 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86855, i64* %eptr86852                                                 ; store fptr
  %arg83678 = ptrtoint i64* %cloptr86851 to i64                                      ; closure cast; i64* -> i64
  %cloptr86856 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86857 = getelementptr inbounds i64, i64* %cloptr86856, i64 0                  ; &cloptr86856[0]
  %f86858 = ptrtoint void(i64,i64)* @lam86085 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86858, i64* %eptr86857                                                 ; store fptr
  %arg83677 = ptrtoint i64* %cloptr86856 to i64                                      ; closure cast; i64* -> i64
  %rva85972 = add i64 0, 0                                                           ; quoted ()
  %rva85971 = call i64 @prim_cons(i64 %arg83677, i64 %rva85972)                      ; call prim_cons
  %rva85970 = call i64 @prim_cons(i64 %arg83678, i64 %rva85971)                      ; call prim_cons
  %cloptr86859 = inttoptr i64 %O3b$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr86860 = getelementptr inbounds i64, i64* %cloptr86859, i64 0                 ; &cloptr86859[0]
  %f86862 = load i64, i64* %i0ptr86860, align 8                                      ; load; *i0ptr86860
  %fptr86861 = inttoptr i64 %f86862 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86861(i64 %O3b$Ycmb, i64 %rva85970)                 ; tail call
  ret void
}


define void @lam86812(i64 %env86813, i64 %rvp85936) {
  %envptr86863 = inttoptr i64 %env86813 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86864 = getelementptr inbounds i64, i64* %envptr86863, i64 2                ; &envptr86863[2]
  %WRN$_37foldr1 = load i64, i64* %envptr86864, align 8                              ; load; *envptr86864
  %envptr86865 = inttoptr i64 %env86813 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86866 = getelementptr inbounds i64, i64* %envptr86865, i64 1                ; &envptr86865[1]
  %O3b$Ycmb = load i64, i64* %envptr86866, align 8                                   ; load; *envptr86866
  %_9583436 = call i64 @prim_car(i64 %rvp85936)                                      ; call prim_car
  %rvp85935 = call i64 @prim_cdr(i64 %rvp85936)                                      ; call prim_cdr
  %PPb$_37map1 = call i64 @prim_car(i64 %rvp85935)                                   ; call prim_car
  %na84755 = call i64 @prim_cdr(i64 %rvp85935)                                       ; call prim_cdr
  %cloptr86867 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr86869 = getelementptr inbounds i64, i64* %cloptr86867, i64 1                  ; &eptr86869[1]
  %eptr86870 = getelementptr inbounds i64, i64* %cloptr86867, i64 2                  ; &eptr86870[2]
  %eptr86871 = getelementptr inbounds i64, i64* %cloptr86867, i64 3                  ; &eptr86871[3]
  store i64 %PPb$_37map1, i64* %eptr86869                                            ; *eptr86869 = %PPb$_37map1
  store i64 %O3b$Ycmb, i64* %eptr86870                                               ; *eptr86870 = %O3b$Ycmb
  store i64 %WRN$_37foldr1, i64* %eptr86871                                          ; *eptr86871 = %WRN$_37foldr1
  %eptr86868 = getelementptr inbounds i64, i64* %cloptr86867, i64 0                  ; &cloptr86867[0]
  %f86872 = ptrtoint void(i64,i64)* @lam86810 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86872, i64* %eptr86868                                                 ; store fptr
  %arg83681 = ptrtoint i64* %cloptr86867 to i64                                      ; closure cast; i64* -> i64
  %cloptr86873 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86874 = getelementptr inbounds i64, i64* %cloptr86873, i64 0                  ; &cloptr86873[0]
  %f86875 = ptrtoint void(i64,i64)* @lam86105 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86875, i64* %eptr86874                                                 ; store fptr
  %arg83680 = ptrtoint i64* %cloptr86873 to i64                                      ; closure cast; i64* -> i64
  %rva85934 = add i64 0, 0                                                           ; quoted ()
  %rva85933 = call i64 @prim_cons(i64 %arg83680, i64 %rva85934)                      ; call prim_cons
  %rva85932 = call i64 @prim_cons(i64 %arg83681, i64 %rva85933)                      ; call prim_cons
  %cloptr86876 = inttoptr i64 %O3b$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr86877 = getelementptr inbounds i64, i64* %cloptr86876, i64 0                 ; &cloptr86876[0]
  %f86879 = load i64, i64* %i0ptr86877, align 8                                      ; load; *i0ptr86877
  %fptr86878 = inttoptr i64 %f86879 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86878(i64 %O3b$Ycmb, i64 %rva85932)                 ; tail call
  ret void
}


define void @lam86810(i64 %env86811, i64 %rvp85902) {
  %envptr86880 = inttoptr i64 %env86811 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86881 = getelementptr inbounds i64, i64* %envptr86880, i64 3                ; &envptr86880[3]
  %WRN$_37foldr1 = load i64, i64* %envptr86881, align 8                              ; load; *envptr86881
  %envptr86882 = inttoptr i64 %env86811 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86883 = getelementptr inbounds i64, i64* %envptr86882, i64 2                ; &envptr86882[2]
  %O3b$Ycmb = load i64, i64* %envptr86883, align 8                                   ; load; *envptr86883
  %envptr86884 = inttoptr i64 %env86811 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86885 = getelementptr inbounds i64, i64* %envptr86884, i64 1                ; &envptr86884[1]
  %PPb$_37map1 = load i64, i64* %envptr86885, align 8                                ; load; *envptr86885
  %_9583437 = call i64 @prim_car(i64 %rvp85902)                                      ; call prim_car
  %rvp85901 = call i64 @prim_cdr(i64 %rvp85902)                                      ; call prim_cdr
  %CMG$_37take = call i64 @prim_car(i64 %rvp85901)                                   ; call prim_car
  %na84757 = call i64 @prim_cdr(i64 %rvp85901)                                       ; call prim_cdr
  %cloptr86886 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr86888 = getelementptr inbounds i64, i64* %cloptr86886, i64 1                  ; &eptr86888[1]
  %eptr86889 = getelementptr inbounds i64, i64* %cloptr86886, i64 2                  ; &eptr86889[2]
  %eptr86890 = getelementptr inbounds i64, i64* %cloptr86886, i64 3                  ; &eptr86890[3]
  %eptr86891 = getelementptr inbounds i64, i64* %cloptr86886, i64 4                  ; &eptr86891[4]
  store i64 %PPb$_37map1, i64* %eptr86888                                            ; *eptr86888 = %PPb$_37map1
  store i64 %O3b$Ycmb, i64* %eptr86889                                               ; *eptr86889 = %O3b$Ycmb
  store i64 %WRN$_37foldr1, i64* %eptr86890                                          ; *eptr86890 = %WRN$_37foldr1
  store i64 %CMG$_37take, i64* %eptr86891                                            ; *eptr86891 = %CMG$_37take
  %eptr86887 = getelementptr inbounds i64, i64* %cloptr86886, i64 0                  ; &cloptr86886[0]
  %f86892 = ptrtoint void(i64,i64)* @lam86808 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86892, i64* %eptr86887                                                 ; store fptr
  %arg83684 = ptrtoint i64* %cloptr86886 to i64                                      ; closure cast; i64* -> i64
  %cloptr86893 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86894 = getelementptr inbounds i64, i64* %cloptr86893, i64 0                  ; &cloptr86893[0]
  %f86895 = ptrtoint void(i64,i64)* @lam86121 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86895, i64* %eptr86894                                                 ; store fptr
  %arg83683 = ptrtoint i64* %cloptr86893 to i64                                      ; closure cast; i64* -> i64
  %rva85900 = add i64 0, 0                                                           ; quoted ()
  %rva85899 = call i64 @prim_cons(i64 %arg83683, i64 %rva85900)                      ; call prim_cons
  %rva85898 = call i64 @prim_cons(i64 %arg83684, i64 %rva85899)                      ; call prim_cons
  %cloptr86896 = inttoptr i64 %O3b$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr86897 = getelementptr inbounds i64, i64* %cloptr86896, i64 0                 ; &cloptr86896[0]
  %f86899 = load i64, i64* %i0ptr86897, align 8                                      ; load; *i0ptr86897
  %fptr86898 = inttoptr i64 %f86899 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86898(i64 %O3b$Ycmb, i64 %rva85898)                 ; tail call
  ret void
}


define void @lam86808(i64 %env86809, i64 %rvp85873) {
  %envptr86900 = inttoptr i64 %env86809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86901 = getelementptr inbounds i64, i64* %envptr86900, i64 4                ; &envptr86900[4]
  %CMG$_37take = load i64, i64* %envptr86901, align 8                                ; load; *envptr86901
  %envptr86902 = inttoptr i64 %env86809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86903 = getelementptr inbounds i64, i64* %envptr86902, i64 3                ; &envptr86902[3]
  %WRN$_37foldr1 = load i64, i64* %envptr86903, align 8                              ; load; *envptr86903
  %envptr86904 = inttoptr i64 %env86809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86905 = getelementptr inbounds i64, i64* %envptr86904, i64 2                ; &envptr86904[2]
  %O3b$Ycmb = load i64, i64* %envptr86905, align 8                                   ; load; *envptr86905
  %envptr86906 = inttoptr i64 %env86809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86907 = getelementptr inbounds i64, i64* %envptr86906, i64 1                ; &envptr86906[1]
  %PPb$_37map1 = load i64, i64* %envptr86907, align 8                                ; load; *envptr86907
  %_9583438 = call i64 @prim_car(i64 %rvp85873)                                      ; call prim_car
  %rvp85872 = call i64 @prim_cdr(i64 %rvp85873)                                      ; call prim_cdr
  %Pql$_37length = call i64 @prim_car(i64 %rvp85872)                                 ; call prim_car
  %na84759 = call i64 @prim_cdr(i64 %rvp85872)                                       ; call prim_cdr
  %cloptr86908 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr86910 = getelementptr inbounds i64, i64* %cloptr86908, i64 1                  ; &eptr86910[1]
  %eptr86911 = getelementptr inbounds i64, i64* %cloptr86908, i64 2                  ; &eptr86911[2]
  %eptr86912 = getelementptr inbounds i64, i64* %cloptr86908, i64 3                  ; &eptr86912[3]
  %eptr86913 = getelementptr inbounds i64, i64* %cloptr86908, i64 4                  ; &eptr86913[4]
  %eptr86914 = getelementptr inbounds i64, i64* %cloptr86908, i64 5                  ; &eptr86914[5]
  store i64 %PPb$_37map1, i64* %eptr86910                                            ; *eptr86910 = %PPb$_37map1
  store i64 %O3b$Ycmb, i64* %eptr86911                                               ; *eptr86911 = %O3b$Ycmb
  store i64 %WRN$_37foldr1, i64* %eptr86912                                          ; *eptr86912 = %WRN$_37foldr1
  store i64 %CMG$_37take, i64* %eptr86913                                            ; *eptr86913 = %CMG$_37take
  store i64 %Pql$_37length, i64* %eptr86914                                          ; *eptr86914 = %Pql$_37length
  %eptr86909 = getelementptr inbounds i64, i64* %cloptr86908, i64 0                  ; &cloptr86908[0]
  %f86915 = ptrtoint void(i64,i64)* @lam86806 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86915, i64* %eptr86909                                                 ; store fptr
  %arg83687 = ptrtoint i64* %cloptr86908 to i64                                      ; closure cast; i64* -> i64
  %cloptr86916 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86917 = getelementptr inbounds i64, i64* %cloptr86916, i64 0                  ; &cloptr86916[0]
  %f86918 = ptrtoint void(i64,i64)* @lam86134 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86918, i64* %eptr86917                                                 ; store fptr
  %arg83686 = ptrtoint i64* %cloptr86916 to i64                                      ; closure cast; i64* -> i64
  %rva85871 = add i64 0, 0                                                           ; quoted ()
  %rva85870 = call i64 @prim_cons(i64 %arg83686, i64 %rva85871)                      ; call prim_cons
  %rva85869 = call i64 @prim_cons(i64 %arg83687, i64 %rva85870)                      ; call prim_cons
  %cloptr86919 = inttoptr i64 %O3b$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr86920 = getelementptr inbounds i64, i64* %cloptr86919, i64 0                 ; &cloptr86919[0]
  %f86922 = load i64, i64* %i0ptr86920, align 8                                      ; load; *i0ptr86920
  %fptr86921 = inttoptr i64 %f86922 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86921(i64 %O3b$Ycmb, i64 %rva85869)                 ; tail call
  ret void
}


define void @lam86806(i64 %env86807, i64 %rvp85839) {
  %envptr86923 = inttoptr i64 %env86807 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86924 = getelementptr inbounds i64, i64* %envptr86923, i64 5                ; &envptr86923[5]
  %Pql$_37length = load i64, i64* %envptr86924, align 8                              ; load; *envptr86924
  %envptr86925 = inttoptr i64 %env86807 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86926 = getelementptr inbounds i64, i64* %envptr86925, i64 4                ; &envptr86925[4]
  %CMG$_37take = load i64, i64* %envptr86926, align 8                                ; load; *envptr86926
  %envptr86927 = inttoptr i64 %env86807 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86928 = getelementptr inbounds i64, i64* %envptr86927, i64 3                ; &envptr86927[3]
  %WRN$_37foldr1 = load i64, i64* %envptr86928, align 8                              ; load; *envptr86928
  %envptr86929 = inttoptr i64 %env86807 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86930 = getelementptr inbounds i64, i64* %envptr86929, i64 2                ; &envptr86929[2]
  %O3b$Ycmb = load i64, i64* %envptr86930, align 8                                   ; load; *envptr86930
  %envptr86931 = inttoptr i64 %env86807 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86932 = getelementptr inbounds i64, i64* %envptr86931, i64 1                ; &envptr86931[1]
  %PPb$_37map1 = load i64, i64* %envptr86932, align 8                                ; load; *envptr86932
  %_9583439 = call i64 @prim_car(i64 %rvp85839)                                      ; call prim_car
  %rvp85838 = call i64 @prim_cdr(i64 %rvp85839)                                      ; call prim_cdr
  %yuv$_37foldl1 = call i64 @prim_car(i64 %rvp85838)                                 ; call prim_car
  %na84761 = call i64 @prim_cdr(i64 %rvp85838)                                       ; call prim_cdr
  %cloptr86933 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr86935 = getelementptr inbounds i64, i64* %cloptr86933, i64 1                  ; &eptr86935[1]
  store i64 %yuv$_37foldl1, i64* %eptr86935                                          ; *eptr86935 = %yuv$_37foldl1
  %eptr86934 = getelementptr inbounds i64, i64* %cloptr86933, i64 0                  ; &cloptr86933[0]
  %f86936 = ptrtoint void(i64,i64)* @lam86804 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86936, i64* %eptr86934                                                 ; store fptr
  %I24$_37last = ptrtoint i64* %cloptr86933 to i64                                   ; closure cast; i64* -> i64
  %cloptr86937 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr86939 = getelementptr inbounds i64, i64* %cloptr86937, i64 1                  ; &eptr86939[1]
  %eptr86940 = getelementptr inbounds i64, i64* %cloptr86937, i64 2                  ; &eptr86940[2]
  store i64 %CMG$_37take, i64* %eptr86939                                            ; *eptr86939 = %CMG$_37take
  store i64 %Pql$_37length, i64* %eptr86940                                          ; *eptr86940 = %Pql$_37length
  %eptr86938 = getelementptr inbounds i64, i64* %cloptr86937, i64 0                  ; &cloptr86937[0]
  %f86941 = ptrtoint void(i64,i64)* @lam86796 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86941, i64* %eptr86938                                                 ; store fptr
  %wg8$_37drop_45right = ptrtoint i64* %cloptr86937 to i64                           ; closure cast; i64* -> i64
  %cloptr86942 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr86944 = getelementptr inbounds i64, i64* %cloptr86942, i64 1                  ; &eptr86944[1]
  %eptr86945 = getelementptr inbounds i64, i64* %cloptr86942, i64 2                  ; &eptr86945[2]
  %eptr86946 = getelementptr inbounds i64, i64* %cloptr86942, i64 3                  ; &eptr86946[3]
  %eptr86947 = getelementptr inbounds i64, i64* %cloptr86942, i64 4                  ; &eptr86947[4]
  %eptr86948 = getelementptr inbounds i64, i64* %cloptr86942, i64 5                  ; &eptr86948[5]
  %eptr86949 = getelementptr inbounds i64, i64* %cloptr86942, i64 6                  ; &eptr86949[6]
  store i64 %O3b$Ycmb, i64* %eptr86944                                               ; *eptr86944 = %O3b$Ycmb
  store i64 %WRN$_37foldr1, i64* %eptr86945                                          ; *eptr86945 = %WRN$_37foldr1
  store i64 %I24$_37last, i64* %eptr86946                                            ; *eptr86946 = %I24$_37last
  store i64 %yuv$_37foldl1, i64* %eptr86947                                          ; *eptr86947 = %yuv$_37foldl1
  store i64 %Pql$_37length, i64* %eptr86948                                          ; *eptr86948 = %Pql$_37length
  store i64 %wg8$_37drop_45right, i64* %eptr86949                                    ; *eptr86949 = %wg8$_37drop_45right
  %eptr86943 = getelementptr inbounds i64, i64* %cloptr86942, i64 0                  ; &cloptr86942[0]
  %f86950 = ptrtoint void(i64,i64)* @lam86790 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86950, i64* %eptr86943                                                 ; store fptr
  %arg83707 = ptrtoint i64* %cloptr86942 to i64                                      ; closure cast; i64* -> i64
  %cloptr86951 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr86953 = getelementptr inbounds i64, i64* %cloptr86951, i64 1                  ; &eptr86953[1]
  %eptr86954 = getelementptr inbounds i64, i64* %cloptr86951, i64 2                  ; &eptr86954[2]
  store i64 %PPb$_37map1, i64* %eptr86953                                            ; *eptr86953 = %PPb$_37map1
  store i64 %WRN$_37foldr1, i64* %eptr86954                                          ; *eptr86954 = %WRN$_37foldr1
  %eptr86952 = getelementptr inbounds i64, i64* %cloptr86951, i64 0                  ; &cloptr86951[0]
  %f86955 = ptrtoint void(i64,i64)* @lam86185 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86955, i64* %eptr86952                                                 ; store fptr
  %arg83706 = ptrtoint i64* %cloptr86951 to i64                                      ; closure cast; i64* -> i64
  %rva85837 = add i64 0, 0                                                           ; quoted ()
  %rva85836 = call i64 @prim_cons(i64 %arg83706, i64 %rva85837)                      ; call prim_cons
  %rva85835 = call i64 @prim_cons(i64 %arg83707, i64 %rva85836)                      ; call prim_cons
  %cloptr86956 = inttoptr i64 %O3b$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr86957 = getelementptr inbounds i64, i64* %cloptr86956, i64 0                 ; &cloptr86956[0]
  %f86959 = load i64, i64* %i0ptr86957, align 8                                      ; load; *i0ptr86957
  %fptr86958 = inttoptr i64 %f86959 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86958(i64 %O3b$Ycmb, i64 %rva85835)                 ; tail call
  ret void
}


define void @lam86804(i64 %env86805, i64 %rvp84778) {
  %envptr86960 = inttoptr i64 %env86805 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86961 = getelementptr inbounds i64, i64* %envptr86960, i64 1                ; &envptr86960[1]
  %yuv$_37foldl1 = load i64, i64* %envptr86961, align 8                              ; load; *envptr86961
  %cont83440 = call i64 @prim_car(i64 %rvp84778)                                     ; call prim_car
  %rvp84777 = call i64 @prim_cdr(i64 %rvp84778)                                      ; call prim_cdr
  %e6V$lst = call i64 @prim_car(i64 %rvp84777)                                       ; call prim_car
  %na84763 = call i64 @prim_cdr(i64 %rvp84777)                                       ; call prim_cdr
  %cloptr86962 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr86963 = getelementptr inbounds i64, i64* %cloptr86962, i64 0                  ; &cloptr86962[0]
  %f86964 = ptrtoint void(i64,i64)* @lam86802 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86964, i64* %eptr86963                                                 ; store fptr
  %arg83691 = ptrtoint i64* %cloptr86962 to i64                                      ; closure cast; i64* -> i64
  %arg83690 = add i64 0, 0                                                           ; quoted ()
  %rva84776 = add i64 0, 0                                                           ; quoted ()
  %rva84775 = call i64 @prim_cons(i64 %e6V$lst, i64 %rva84776)                       ; call prim_cons
  %rva84774 = call i64 @prim_cons(i64 %arg83690, i64 %rva84775)                      ; call prim_cons
  %rva84773 = call i64 @prim_cons(i64 %arg83691, i64 %rva84774)                      ; call prim_cons
  %rva84772 = call i64 @prim_cons(i64 %cont83440, i64 %rva84773)                     ; call prim_cons
  %cloptr86965 = inttoptr i64 %yuv$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr86966 = getelementptr inbounds i64, i64* %cloptr86965, i64 0                 ; &cloptr86965[0]
  %f86968 = load i64, i64* %i0ptr86966, align 8                                      ; load; *i0ptr86966
  %fptr86967 = inttoptr i64 %f86968 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86967(i64 %yuv$_37foldl1, i64 %rva84772)            ; tail call
  ret void
}


define void @lam86802(i64 %env86803, i64 %rvp84771) {
  %cont83441 = call i64 @prim_car(i64 %rvp84771)                                     ; call prim_car
  %rvp84770 = call i64 @prim_cdr(i64 %rvp84771)                                      ; call prim_cdr
  %E7b$x = call i64 @prim_car(i64 %rvp84770)                                         ; call prim_car
  %rvp84769 = call i64 @prim_cdr(i64 %rvp84770)                                      ; call prim_cdr
  %iW1$y = call i64 @prim_car(i64 %rvp84769)                                         ; call prim_car
  %na84765 = call i64 @prim_cdr(i64 %rvp84769)                                       ; call prim_cdr
  %arg83695 = add i64 0, 0                                                           ; quoted ()
  %rva84768 = add i64 0, 0                                                           ; quoted ()
  %rva84767 = call i64 @prim_cons(i64 %E7b$x, i64 %rva84768)                         ; call prim_cons
  %rva84766 = call i64 @prim_cons(i64 %arg83695, i64 %rva84767)                      ; call prim_cons
  %cloptr86969 = inttoptr i64 %cont83441 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr86970 = getelementptr inbounds i64, i64* %cloptr86969, i64 0                 ; &cloptr86969[0]
  %f86972 = load i64, i64* %i0ptr86970, align 8                                      ; load; *i0ptr86970
  %fptr86971 = inttoptr i64 %f86972 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86971(i64 %cont83441, i64 %rva84766)                ; tail call
  ret void
}


define void @lam86796(i64 %env86797, i64 %rvp84794) {
  %envptr86973 = inttoptr i64 %env86797 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86974 = getelementptr inbounds i64, i64* %envptr86973, i64 2                ; &envptr86973[2]
  %Pql$_37length = load i64, i64* %envptr86974, align 8                              ; load; *envptr86974
  %envptr86975 = inttoptr i64 %env86797 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86976 = getelementptr inbounds i64, i64* %envptr86975, i64 1                ; &envptr86975[1]
  %CMG$_37take = load i64, i64* %envptr86976, align 8                                ; load; *envptr86976
  %cont83442 = call i64 @prim_car(i64 %rvp84794)                                     ; call prim_car
  %rvp84793 = call i64 @prim_cdr(i64 %rvp84794)                                      ; call prim_cdr
  %HCt$lst = call i64 @prim_car(i64 %rvp84793)                                       ; call prim_car
  %rvp84792 = call i64 @prim_cdr(i64 %rvp84793)                                      ; call prim_cdr
  %cxb$n = call i64 @prim_car(i64 %rvp84792)                                         ; call prim_car
  %na84780 = call i64 @prim_cdr(i64 %rvp84792)                                       ; call prim_cdr
  %cloptr86977 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr86979 = getelementptr inbounds i64, i64* %cloptr86977, i64 1                  ; &eptr86979[1]
  %eptr86980 = getelementptr inbounds i64, i64* %cloptr86977, i64 2                  ; &eptr86980[2]
  %eptr86981 = getelementptr inbounds i64, i64* %cloptr86977, i64 3                  ; &eptr86981[3]
  %eptr86982 = getelementptr inbounds i64, i64* %cloptr86977, i64 4                  ; &eptr86982[4]
  store i64 %HCt$lst, i64* %eptr86979                                                ; *eptr86979 = %HCt$lst
  store i64 %cxb$n, i64* %eptr86980                                                  ; *eptr86980 = %cxb$n
  store i64 %cont83442, i64* %eptr86981                                              ; *eptr86981 = %cont83442
  store i64 %CMG$_37take, i64* %eptr86982                                            ; *eptr86982 = %CMG$_37take
  %eptr86978 = getelementptr inbounds i64, i64* %cloptr86977, i64 0                  ; &cloptr86977[0]
  %f86983 = ptrtoint void(i64,i64)* @lam86794 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f86983, i64* %eptr86978                                                 ; store fptr
  %arg83698 = ptrtoint i64* %cloptr86977 to i64                                      ; closure cast; i64* -> i64
  %rva84791 = add i64 0, 0                                                           ; quoted ()
  %rva84790 = call i64 @prim_cons(i64 %HCt$lst, i64 %rva84791)                       ; call prim_cons
  %rva84789 = call i64 @prim_cons(i64 %arg83698, i64 %rva84790)                      ; call prim_cons
  %cloptr86984 = inttoptr i64 %Pql$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr86985 = getelementptr inbounds i64, i64* %cloptr86984, i64 0                 ; &cloptr86984[0]
  %f86987 = load i64, i64* %i0ptr86985, align 8                                      ; load; *i0ptr86985
  %fptr86986 = inttoptr i64 %f86987 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86986(i64 %Pql$_37length, i64 %rva84789)            ; tail call
  ret void
}


define void @lam86794(i64 %env86795, i64 %rvp84788) {
  %envptr86988 = inttoptr i64 %env86795 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86989 = getelementptr inbounds i64, i64* %envptr86988, i64 4                ; &envptr86988[4]
  %CMG$_37take = load i64, i64* %envptr86989, align 8                                ; load; *envptr86989
  %envptr86990 = inttoptr i64 %env86795 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86991 = getelementptr inbounds i64, i64* %envptr86990, i64 3                ; &envptr86990[3]
  %cont83442 = load i64, i64* %envptr86991, align 8                                  ; load; *envptr86991
  %envptr86992 = inttoptr i64 %env86795 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86993 = getelementptr inbounds i64, i64* %envptr86992, i64 2                ; &envptr86992[2]
  %cxb$n = load i64, i64* %envptr86993, align 8                                      ; load; *envptr86993
  %envptr86994 = inttoptr i64 %env86795 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr86995 = getelementptr inbounds i64, i64* %envptr86994, i64 1                ; &envptr86994[1]
  %HCt$lst = load i64, i64* %envptr86995, align 8                                    ; load; *envptr86995
  %_9583443 = call i64 @prim_car(i64 %rvp84788)                                      ; call prim_car
  %rvp84787 = call i64 @prim_cdr(i64 %rvp84788)                                      ; call prim_cdr
  %a83293 = call i64 @prim_car(i64 %rvp84787)                                        ; call prim_car
  %na84782 = call i64 @prim_cdr(i64 %rvp84787)                                       ; call prim_cdr
  %a83294 = call i64 @prim__45(i64 %a83293, i64 %cxb$n)                              ; call prim__45
  %rva84786 = add i64 0, 0                                                           ; quoted ()
  %rva84785 = call i64 @prim_cons(i64 %a83294, i64 %rva84786)                        ; call prim_cons
  %rva84784 = call i64 @prim_cons(i64 %HCt$lst, i64 %rva84785)                       ; call prim_cons
  %rva84783 = call i64 @prim_cons(i64 %cont83442, i64 %rva84784)                     ; call prim_cons
  %cloptr86996 = inttoptr i64 %CMG$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr86997 = getelementptr inbounds i64, i64* %cloptr86996, i64 0                 ; &cloptr86996[0]
  %f86999 = load i64, i64* %i0ptr86997, align 8                                      ; load; *i0ptr86997
  %fptr86998 = inttoptr i64 %f86999 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr86998(i64 %CMG$_37take, i64 %rva84783)              ; tail call
  ret void
}


define void @lam86790(i64 %env86791, i64 %rvp85739) {
  %envptr87000 = inttoptr i64 %env86791 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87001 = getelementptr inbounds i64, i64* %envptr87000, i64 6                ; &envptr87000[6]
  %wg8$_37drop_45right = load i64, i64* %envptr87001, align 8                        ; load; *envptr87001
  %envptr87002 = inttoptr i64 %env86791 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87003 = getelementptr inbounds i64, i64* %envptr87002, i64 5                ; &envptr87002[5]
  %Pql$_37length = load i64, i64* %envptr87003, align 8                              ; load; *envptr87003
  %envptr87004 = inttoptr i64 %env86791 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87005 = getelementptr inbounds i64, i64* %envptr87004, i64 4                ; &envptr87004[4]
  %yuv$_37foldl1 = load i64, i64* %envptr87005, align 8                              ; load; *envptr87005
  %envptr87006 = inttoptr i64 %env86791 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87007 = getelementptr inbounds i64, i64* %envptr87006, i64 3                ; &envptr87006[3]
  %I24$_37last = load i64, i64* %envptr87007, align 8                                ; load; *envptr87007
  %envptr87008 = inttoptr i64 %env86791 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87009 = getelementptr inbounds i64, i64* %envptr87008, i64 2                ; &envptr87008[2]
  %WRN$_37foldr1 = load i64, i64* %envptr87009, align 8                              ; load; *envptr87009
  %envptr87010 = inttoptr i64 %env86791 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87011 = getelementptr inbounds i64, i64* %envptr87010, i64 1                ; &envptr87010[1]
  %O3b$Ycmb = load i64, i64* %envptr87011, align 8                                   ; load; *envptr87011
  %_9583444 = call i64 @prim_car(i64 %rvp85739)                                      ; call prim_car
  %rvp85738 = call i64 @prim_cdr(i64 %rvp85739)                                      ; call prim_cdr
  %p8Z$_37foldr = call i64 @prim_car(i64 %rvp85738)                                  ; call prim_car
  %na84796 = call i64 @prim_cdr(i64 %rvp85738)                                       ; call prim_cdr
  %cloptr87012 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87014 = getelementptr inbounds i64, i64* %cloptr87012, i64 1                  ; &eptr87014[1]
  store i64 %WRN$_37foldr1, i64* %eptr87014                                          ; *eptr87014 = %WRN$_37foldr1
  %eptr87013 = getelementptr inbounds i64, i64* %cloptr87012, i64 0                  ; &cloptr87012[0]
  %f87015 = ptrtoint void(i64,i64)* @lam86788 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87015, i64* %eptr87013                                                 ; store fptr
  %XLr$_37map1 = ptrtoint i64* %cloptr87012 to i64                                   ; closure cast; i64* -> i64
  %cloptr87016 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87018 = getelementptr inbounds i64, i64* %cloptr87016, i64 1                  ; &eptr87018[1]
  %eptr87019 = getelementptr inbounds i64, i64* %cloptr87016, i64 2                  ; &eptr87019[2]
  %eptr87020 = getelementptr inbounds i64, i64* %cloptr87016, i64 3                  ; &eptr87020[3]
  store i64 %I24$_37last, i64* %eptr87018                                            ; *eptr87018 = %I24$_37last
  store i64 %p8Z$_37foldr, i64* %eptr87019                                           ; *eptr87019 = %p8Z$_37foldr
  store i64 %wg8$_37drop_45right, i64* %eptr87020                                    ; *eptr87020 = %wg8$_37drop_45right
  %eptr87017 = getelementptr inbounds i64, i64* %cloptr87016, i64 0                  ; &cloptr87016[0]
  %f87021 = ptrtoint void(i64,i64)* @lam86777 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87021, i64* %eptr87017                                                 ; store fptr
  %bVd$_37map = ptrtoint i64* %cloptr87016 to i64                                    ; closure cast; i64* -> i64
  %cloptr87022 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87024 = getelementptr inbounds i64, i64* %cloptr87022, i64 1                  ; &eptr87024[1]
  %eptr87025 = getelementptr inbounds i64, i64* %cloptr87022, i64 2                  ; &eptr87025[2]
  store i64 %yuv$_37foldl1, i64* %eptr87024                                          ; *eptr87024 = %yuv$_37foldl1
  store i64 %Pql$_37length, i64* %eptr87025                                          ; *eptr87025 = %Pql$_37length
  %eptr87023 = getelementptr inbounds i64, i64* %cloptr87022, i64 0                  ; &cloptr87022[0]
  %f87026 = ptrtoint void(i64,i64)* @lam86761 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87026, i64* %eptr87023                                                 ; store fptr
  %arg83749 = ptrtoint i64* %cloptr87022 to i64                                      ; closure cast; i64* -> i64
  %cloptr87027 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87029 = getelementptr inbounds i64, i64* %cloptr87027, i64 1                  ; &eptr87029[1]
  %eptr87030 = getelementptr inbounds i64, i64* %cloptr87027, i64 2                  ; &eptr87030[2]
  %eptr87031 = getelementptr inbounds i64, i64* %cloptr87027, i64 3                  ; &eptr87031[3]
  store i64 %WRN$_37foldr1, i64* %eptr87029                                          ; *eptr87029 = %WRN$_37foldr1
  store i64 %XLr$_37map1, i64* %eptr87030                                            ; *eptr87030 = %XLr$_37map1
  store i64 %p8Z$_37foldr, i64* %eptr87031                                           ; *eptr87031 = %p8Z$_37foldr
  %eptr87028 = getelementptr inbounds i64, i64* %cloptr87027, i64 0                  ; &cloptr87027[0]
  %f87032 = ptrtoint void(i64,i64)* @lam86236 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87032, i64* %eptr87028                                                 ; store fptr
  %arg83748 = ptrtoint i64* %cloptr87027 to i64                                      ; closure cast; i64* -> i64
  %rva85737 = add i64 0, 0                                                           ; quoted ()
  %rva85736 = call i64 @prim_cons(i64 %arg83748, i64 %rva85737)                      ; call prim_cons
  %rva85735 = call i64 @prim_cons(i64 %arg83749, i64 %rva85736)                      ; call prim_cons
  %cloptr87033 = inttoptr i64 %O3b$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87034 = getelementptr inbounds i64, i64* %cloptr87033, i64 0                 ; &cloptr87033[0]
  %f87036 = load i64, i64* %i0ptr87034, align 8                                      ; load; *i0ptr87034
  %fptr87035 = inttoptr i64 %f87036 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87035(i64 %O3b$Ycmb, i64 %rva85735)                 ; tail call
  ret void
}


define void @lam86788(i64 %env86789, i64 %rvp84821) {
  %envptr87037 = inttoptr i64 %env86789 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87038 = getelementptr inbounds i64, i64* %envptr87037, i64 1                ; &envptr87037[1]
  %WRN$_37foldr1 = load i64, i64* %envptr87038, align 8                              ; load; *envptr87038
  %cont83445 = call i64 @prim_car(i64 %rvp84821)                                     ; call prim_car
  %rvp84820 = call i64 @prim_cdr(i64 %rvp84821)                                      ; call prim_cdr
  %OfD$f = call i64 @prim_car(i64 %rvp84820)                                         ; call prim_car
  %rvp84819 = call i64 @prim_cdr(i64 %rvp84820)                                      ; call prim_cdr
  %LeI$lst = call i64 @prim_car(i64 %rvp84819)                                       ; call prim_car
  %na84798 = call i64 @prim_cdr(i64 %rvp84819)                                       ; call prim_cdr
  %cloptr87039 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87041 = getelementptr inbounds i64, i64* %cloptr87039, i64 1                  ; &eptr87041[1]
  store i64 %OfD$f, i64* %eptr87041                                                  ; *eptr87041 = %OfD$f
  %eptr87040 = getelementptr inbounds i64, i64* %cloptr87039, i64 0                  ; &cloptr87039[0]
  %f87042 = ptrtoint void(i64,i64)* @lam86786 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87042, i64* %eptr87040                                                 ; store fptr
  %arg83711 = ptrtoint i64* %cloptr87039 to i64                                      ; closure cast; i64* -> i64
  %arg83710 = add i64 0, 0                                                           ; quoted ()
  %rva84818 = add i64 0, 0                                                           ; quoted ()
  %rva84817 = call i64 @prim_cons(i64 %LeI$lst, i64 %rva84818)                       ; call prim_cons
  %rva84816 = call i64 @prim_cons(i64 %arg83710, i64 %rva84817)                      ; call prim_cons
  %rva84815 = call i64 @prim_cons(i64 %arg83711, i64 %rva84816)                      ; call prim_cons
  %rva84814 = call i64 @prim_cons(i64 %cont83445, i64 %rva84815)                     ; call prim_cons
  %cloptr87043 = inttoptr i64 %WRN$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr87044 = getelementptr inbounds i64, i64* %cloptr87043, i64 0                 ; &cloptr87043[0]
  %f87046 = load i64, i64* %i0ptr87044, align 8                                      ; load; *i0ptr87044
  %fptr87045 = inttoptr i64 %f87046 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87045(i64 %WRN$_37foldr1, i64 %rva84814)            ; tail call
  ret void
}


define void @lam86786(i64 %env86787, i64 %rvp84813) {
  %envptr87047 = inttoptr i64 %env86787 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87048 = getelementptr inbounds i64, i64* %envptr87047, i64 1                ; &envptr87047[1]
  %OfD$f = load i64, i64* %envptr87048, align 8                                      ; load; *envptr87048
  %cont83446 = call i64 @prim_car(i64 %rvp84813)                                     ; call prim_car
  %rvp84812 = call i64 @prim_cdr(i64 %rvp84813)                                      ; call prim_cdr
  %zKA$v = call i64 @prim_car(i64 %rvp84812)                                         ; call prim_car
  %rvp84811 = call i64 @prim_cdr(i64 %rvp84812)                                      ; call prim_cdr
  %iVC$r = call i64 @prim_car(i64 %rvp84811)                                         ; call prim_car
  %na84800 = call i64 @prim_cdr(i64 %rvp84811)                                       ; call prim_cdr
  %cloptr87049 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87051 = getelementptr inbounds i64, i64* %cloptr87049, i64 1                  ; &eptr87051[1]
  %eptr87052 = getelementptr inbounds i64, i64* %cloptr87049, i64 2                  ; &eptr87052[2]
  store i64 %iVC$r, i64* %eptr87051                                                  ; *eptr87051 = %iVC$r
  store i64 %cont83446, i64* %eptr87052                                              ; *eptr87052 = %cont83446
  %eptr87050 = getelementptr inbounds i64, i64* %cloptr87049, i64 0                  ; &cloptr87049[0]
  %f87053 = ptrtoint void(i64,i64)* @lam86784 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87053, i64* %eptr87050                                                 ; store fptr
  %arg83715 = ptrtoint i64* %cloptr87049 to i64                                      ; closure cast; i64* -> i64
  %rva84810 = add i64 0, 0                                                           ; quoted ()
  %rva84809 = call i64 @prim_cons(i64 %zKA$v, i64 %rva84810)                         ; call prim_cons
  %rva84808 = call i64 @prim_cons(i64 %arg83715, i64 %rva84809)                      ; call prim_cons
  %cloptr87054 = inttoptr i64 %OfD$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87055 = getelementptr inbounds i64, i64* %cloptr87054, i64 0                 ; &cloptr87054[0]
  %f87057 = load i64, i64* %i0ptr87055, align 8                                      ; load; *i0ptr87055
  %fptr87056 = inttoptr i64 %f87057 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87056(i64 %OfD$f, i64 %rva84808)                    ; tail call
  ret void
}


define void @lam86784(i64 %env86785, i64 %rvp84807) {
  %envptr87058 = inttoptr i64 %env86785 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87059 = getelementptr inbounds i64, i64* %envptr87058, i64 2                ; &envptr87058[2]
  %cont83446 = load i64, i64* %envptr87059, align 8                                  ; load; *envptr87059
  %envptr87060 = inttoptr i64 %env86785 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87061 = getelementptr inbounds i64, i64* %envptr87060, i64 1                ; &envptr87060[1]
  %iVC$r = load i64, i64* %envptr87061, align 8                                      ; load; *envptr87061
  %_9583447 = call i64 @prim_car(i64 %rvp84807)                                      ; call prim_car
  %rvp84806 = call i64 @prim_cdr(i64 %rvp84807)                                      ; call prim_cdr
  %a83303 = call i64 @prim_car(i64 %rvp84806)                                        ; call prim_car
  %na84802 = call i64 @prim_cdr(i64 %rvp84806)                                       ; call prim_cdr
  %retprim83448 = call i64 @prim_cons(i64 %a83303, i64 %iVC$r)                       ; call prim_cons
  %arg83720 = add i64 0, 0                                                           ; quoted ()
  %rva84805 = add i64 0, 0                                                           ; quoted ()
  %rva84804 = call i64 @prim_cons(i64 %retprim83448, i64 %rva84805)                  ; call prim_cons
  %rva84803 = call i64 @prim_cons(i64 %arg83720, i64 %rva84804)                      ; call prim_cons
  %cloptr87062 = inttoptr i64 %cont83446 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87063 = getelementptr inbounds i64, i64* %cloptr87062, i64 0                 ; &cloptr87062[0]
  %f87065 = load i64, i64* %i0ptr87063, align 8                                      ; load; *i0ptr87063
  %fptr87064 = inttoptr i64 %f87065 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87064(i64 %cont83446, i64 %rva84803)                ; tail call
  ret void
}


define void @lam86777(i64 %env86778, i64 %NwR$args83450) {
  %envptr87066 = inttoptr i64 %env86778 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87067 = getelementptr inbounds i64, i64* %envptr87066, i64 3                ; &envptr87066[3]
  %wg8$_37drop_45right = load i64, i64* %envptr87067, align 8                        ; load; *envptr87067
  %envptr87068 = inttoptr i64 %env86778 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87069 = getelementptr inbounds i64, i64* %envptr87068, i64 2                ; &envptr87068[2]
  %p8Z$_37foldr = load i64, i64* %envptr87069, align 8                               ; load; *envptr87069
  %envptr87070 = inttoptr i64 %env86778 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87071 = getelementptr inbounds i64, i64* %envptr87070, i64 1                ; &envptr87070[1]
  %I24$_37last = load i64, i64* %envptr87071, align 8                                ; load; *envptr87071
  %cont83449 = call i64 @prim_car(i64 %NwR$args83450)                                ; call prim_car
  %NwR$args = call i64 @prim_cdr(i64 %NwR$args83450)                                 ; call prim_cdr
  %yKU$f = call i64 @prim_car(i64 %NwR$args)                                         ; call prim_car
  %cB6$lsts = call i64 @prim_cdr(i64 %NwR$args)                                      ; call prim_cdr
  %arg83727 = add i64 0, 0                                                           ; quoted ()
  %a83307 = call i64 @prim_cons(i64 %arg83727, i64 %cB6$lsts)                        ; call prim_cons
  %cloptr87072 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87074 = getelementptr inbounds i64, i64* %cloptr87072, i64 1                  ; &eptr87074[1]
  %eptr87075 = getelementptr inbounds i64, i64* %cloptr87072, i64 2                  ; &eptr87075[2]
  %eptr87076 = getelementptr inbounds i64, i64* %cloptr87072, i64 3                  ; &eptr87076[3]
  store i64 %I24$_37last, i64* %eptr87074                                            ; *eptr87074 = %I24$_37last
  store i64 %yKU$f, i64* %eptr87075                                                  ; *eptr87075 = %yKU$f
  store i64 %wg8$_37drop_45right, i64* %eptr87076                                    ; *eptr87076 = %wg8$_37drop_45right
  %eptr87073 = getelementptr inbounds i64, i64* %cloptr87072, i64 0                  ; &cloptr87072[0]
  %f87077 = ptrtoint void(i64,i64)* @lam86774 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87077, i64* %eptr87073                                                 ; store fptr
  %arg83729 = ptrtoint i64* %cloptr87072 to i64                                      ; closure cast; i64* -> i64
  %a83308 = call i64 @prim_cons(i64 %arg83729, i64 %a83307)                          ; call prim_cons
  %cps_45lst83458 = call i64 @prim_cons(i64 %cont83449, i64 %a83308)                 ; call prim_cons
  %cloptr87078 = inttoptr i64 %p8Z$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr87079 = getelementptr inbounds i64, i64* %cloptr87078, i64 0                 ; &cloptr87078[0]
  %f87081 = load i64, i64* %i0ptr87079, align 8                                      ; load; *i0ptr87079
  %fptr87080 = inttoptr i64 %f87081 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87080(i64 %p8Z$_37foldr, i64 %cps_45lst83458)       ; tail call
  ret void
}


define void @lam86774(i64 %env86775, i64 %mzl$fargs83452) {
  %envptr87082 = inttoptr i64 %env86775 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87083 = getelementptr inbounds i64, i64* %envptr87082, i64 3                ; &envptr87082[3]
  %wg8$_37drop_45right = load i64, i64* %envptr87083, align 8                        ; load; *envptr87083
  %envptr87084 = inttoptr i64 %env86775 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87085 = getelementptr inbounds i64, i64* %envptr87084, i64 2                ; &envptr87084[2]
  %yKU$f = load i64, i64* %envptr87085, align 8                                      ; load; *envptr87085
  %envptr87086 = inttoptr i64 %env86775 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87087 = getelementptr inbounds i64, i64* %envptr87086, i64 1                ; &envptr87086[1]
  %I24$_37last = load i64, i64* %envptr87087, align 8                                ; load; *envptr87087
  %cont83451 = call i64 @prim_car(i64 %mzl$fargs83452)                               ; call prim_car
  %mzl$fargs = call i64 @prim_cdr(i64 %mzl$fargs83452)                               ; call prim_cdr
  %cloptr87088 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87090 = getelementptr inbounds i64, i64* %cloptr87088, i64 1                  ; &eptr87090[1]
  %eptr87091 = getelementptr inbounds i64, i64* %cloptr87088, i64 2                  ; &eptr87091[2]
  %eptr87092 = getelementptr inbounds i64, i64* %cloptr87088, i64 3                  ; &eptr87092[3]
  %eptr87093 = getelementptr inbounds i64, i64* %cloptr87088, i64 4                  ; &eptr87093[4]
  store i64 %I24$_37last, i64* %eptr87090                                            ; *eptr87090 = %I24$_37last
  store i64 %cont83451, i64* %eptr87091                                              ; *eptr87091 = %cont83451
  store i64 %yKU$f, i64* %eptr87092                                                  ; *eptr87092 = %yKU$f
  store i64 %mzl$fargs, i64* %eptr87093                                              ; *eptr87093 = %mzl$fargs
  %eptr87089 = getelementptr inbounds i64, i64* %cloptr87088, i64 0                  ; &cloptr87088[0]
  %f87094 = ptrtoint void(i64,i64)* @lam86772 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87094, i64* %eptr87089                                                 ; store fptr
  %arg83734 = ptrtoint i64* %cloptr87088 to i64                                      ; closure cast; i64* -> i64
  %arg83732 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva84843 = add i64 0, 0                                                           ; quoted ()
  %rva84842 = call i64 @prim_cons(i64 %arg83732, i64 %rva84843)                      ; call prim_cons
  %rva84841 = call i64 @prim_cons(i64 %mzl$fargs, i64 %rva84842)                     ; call prim_cons
  %rva84840 = call i64 @prim_cons(i64 %arg83734, i64 %rva84841)                      ; call prim_cons
  %cloptr87095 = inttoptr i64 %wg8$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  %i0ptr87096 = getelementptr inbounds i64, i64* %cloptr87095, i64 0                 ; &cloptr87095[0]
  %f87098 = load i64, i64* %i0ptr87096, align 8                                      ; load; *i0ptr87096
  %fptr87097 = inttoptr i64 %f87098 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87097(i64 %wg8$_37drop_45right, i64 %rva84840)      ; tail call
  ret void
}


define void @lam86772(i64 %env86773, i64 %rvp84839) {
  %envptr87099 = inttoptr i64 %env86773 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87100 = getelementptr inbounds i64, i64* %envptr87099, i64 4                ; &envptr87099[4]
  %mzl$fargs = load i64, i64* %envptr87100, align 8                                  ; load; *envptr87100
  %envptr87101 = inttoptr i64 %env86773 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87102 = getelementptr inbounds i64, i64* %envptr87101, i64 3                ; &envptr87101[3]
  %yKU$f = load i64, i64* %envptr87102, align 8                                      ; load; *envptr87102
  %envptr87103 = inttoptr i64 %env86773 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87104 = getelementptr inbounds i64, i64* %envptr87103, i64 2                ; &envptr87103[2]
  %cont83451 = load i64, i64* %envptr87104, align 8                                  ; load; *envptr87104
  %envptr87105 = inttoptr i64 %env86773 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87106 = getelementptr inbounds i64, i64* %envptr87105, i64 1                ; &envptr87105[1]
  %I24$_37last = load i64, i64* %envptr87106, align 8                                ; load; *envptr87106
  %_9583453 = call i64 @prim_car(i64 %rvp84839)                                      ; call prim_car
  %rvp84838 = call i64 @prim_cdr(i64 %rvp84839)                                      ; call prim_cdr
  %a83304 = call i64 @prim_car(i64 %rvp84838)                                        ; call prim_car
  %na84823 = call i64 @prim_cdr(i64 %rvp84838)                                       ; call prim_cdr
  %cloptr87107 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87109 = getelementptr inbounds i64, i64* %cloptr87107, i64 1                  ; &eptr87109[1]
  %eptr87110 = getelementptr inbounds i64, i64* %cloptr87107, i64 2                  ; &eptr87110[2]
  %eptr87111 = getelementptr inbounds i64, i64* %cloptr87107, i64 3                  ; &eptr87111[3]
  store i64 %I24$_37last, i64* %eptr87109                                            ; *eptr87109 = %I24$_37last
  store i64 %cont83451, i64* %eptr87110                                              ; *eptr87110 = %cont83451
  store i64 %mzl$fargs, i64* %eptr87111                                              ; *eptr87111 = %mzl$fargs
  %eptr87108 = getelementptr inbounds i64, i64* %cloptr87107, i64 0                  ; &cloptr87107[0]
  %f87112 = ptrtoint void(i64,i64)* @lam86770 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87112, i64* %eptr87108                                                 ; store fptr
  %arg83737 = ptrtoint i64* %cloptr87107 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst83457 = call i64 @prim_cons(i64 %arg83737, i64 %a83304)                  ; call prim_cons
  %cloptr87113 = inttoptr i64 %yKU$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87114 = getelementptr inbounds i64, i64* %cloptr87113, i64 0                 ; &cloptr87113[0]
  %f87116 = load i64, i64* %i0ptr87114, align 8                                      ; load; *i0ptr87114
  %fptr87115 = inttoptr i64 %f87116 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87115(i64 %yKU$f, i64 %cps_45lst83457)              ; tail call
  ret void
}


define void @lam86770(i64 %env86771, i64 %rvp84837) {
  %envptr87117 = inttoptr i64 %env86771 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87118 = getelementptr inbounds i64, i64* %envptr87117, i64 3                ; &envptr87117[3]
  %mzl$fargs = load i64, i64* %envptr87118, align 8                                  ; load; *envptr87118
  %envptr87119 = inttoptr i64 %env86771 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87120 = getelementptr inbounds i64, i64* %envptr87119, i64 2                ; &envptr87119[2]
  %cont83451 = load i64, i64* %envptr87120, align 8                                  ; load; *envptr87120
  %envptr87121 = inttoptr i64 %env86771 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87122 = getelementptr inbounds i64, i64* %envptr87121, i64 1                ; &envptr87121[1]
  %I24$_37last = load i64, i64* %envptr87122, align 8                                ; load; *envptr87122
  %_9583454 = call i64 @prim_car(i64 %rvp84837)                                      ; call prim_car
  %rvp84836 = call i64 @prim_cdr(i64 %rvp84837)                                      ; call prim_cdr
  %a83305 = call i64 @prim_car(i64 %rvp84836)                                        ; call prim_car
  %na84825 = call i64 @prim_cdr(i64 %rvp84836)                                       ; call prim_cdr
  %cloptr87123 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87125 = getelementptr inbounds i64, i64* %cloptr87123, i64 1                  ; &eptr87125[1]
  %eptr87126 = getelementptr inbounds i64, i64* %cloptr87123, i64 2                  ; &eptr87126[2]
  store i64 %a83305, i64* %eptr87125                                                 ; *eptr87125 = %a83305
  store i64 %cont83451, i64* %eptr87126                                              ; *eptr87126 = %cont83451
  %eptr87124 = getelementptr inbounds i64, i64* %cloptr87123, i64 0                  ; &cloptr87123[0]
  %f87127 = ptrtoint void(i64,i64)* @lam86768 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87127, i64* %eptr87124                                                 ; store fptr
  %arg83739 = ptrtoint i64* %cloptr87123 to i64                                      ; closure cast; i64* -> i64
  %rva84835 = add i64 0, 0                                                           ; quoted ()
  %rva84834 = call i64 @prim_cons(i64 %mzl$fargs, i64 %rva84835)                     ; call prim_cons
  %rva84833 = call i64 @prim_cons(i64 %arg83739, i64 %rva84834)                      ; call prim_cons
  %cloptr87128 = inttoptr i64 %I24$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr87129 = getelementptr inbounds i64, i64* %cloptr87128, i64 0                 ; &cloptr87128[0]
  %f87131 = load i64, i64* %i0ptr87129, align 8                                      ; load; *i0ptr87129
  %fptr87130 = inttoptr i64 %f87131 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87130(i64 %I24$_37last, i64 %rva84833)              ; tail call
  ret void
}


define void @lam86768(i64 %env86769, i64 %rvp84832) {
  %envptr87132 = inttoptr i64 %env86769 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87133 = getelementptr inbounds i64, i64* %envptr87132, i64 2                ; &envptr87132[2]
  %cont83451 = load i64, i64* %envptr87133, align 8                                  ; load; *envptr87133
  %envptr87134 = inttoptr i64 %env86769 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87135 = getelementptr inbounds i64, i64* %envptr87134, i64 1                ; &envptr87134[1]
  %a83305 = load i64, i64* %envptr87135, align 8                                     ; load; *envptr87135
  %_9583455 = call i64 @prim_car(i64 %rvp84832)                                      ; call prim_car
  %rvp84831 = call i64 @prim_cdr(i64 %rvp84832)                                      ; call prim_cdr
  %a83306 = call i64 @prim_car(i64 %rvp84831)                                        ; call prim_car
  %na84827 = call i64 @prim_cdr(i64 %rvp84831)                                       ; call prim_cdr
  %retprim83456 = call i64 @prim_cons(i64 %a83305, i64 %a83306)                      ; call prim_cons
  %arg83744 = add i64 0, 0                                                           ; quoted ()
  %rva84830 = add i64 0, 0                                                           ; quoted ()
  %rva84829 = call i64 @prim_cons(i64 %retprim83456, i64 %rva84830)                  ; call prim_cons
  %rva84828 = call i64 @prim_cons(i64 %arg83744, i64 %rva84829)                      ; call prim_cons
  %cloptr87136 = inttoptr i64 %cont83451 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87137 = getelementptr inbounds i64, i64* %cloptr87136, i64 0                 ; &cloptr87136[0]
  %f87139 = load i64, i64* %i0ptr87137, align 8                                      ; load; *i0ptr87137
  %fptr87138 = inttoptr i64 %f87139 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87138(i64 %cont83451, i64 %rva84828)                ; tail call
  ret void
}


define void @lam86761(i64 %env86762, i64 %rvp85639) {
  %envptr87140 = inttoptr i64 %env86762 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87141 = getelementptr inbounds i64, i64* %envptr87140, i64 2                ; &envptr87140[2]
  %Pql$_37length = load i64, i64* %envptr87141, align 8                              ; load; *envptr87141
  %envptr87142 = inttoptr i64 %env86762 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87143 = getelementptr inbounds i64, i64* %envptr87142, i64 1                ; &envptr87142[1]
  %yuv$_37foldl1 = load i64, i64* %envptr87143, align 8                              ; load; *envptr87143
  %_9583459 = call i64 @prim_car(i64 %rvp85639)                                      ; call prim_car
  %rvp85638 = call i64 @prim_cdr(i64 %rvp85639)                                      ; call prim_cdr
  %ScM$_37foldl = call i64 @prim_car(i64 %rvp85638)                                  ; call prim_car
  %na84845 = call i64 @prim_cdr(i64 %rvp85638)                                       ; call prim_cdr
  %cloptr87144 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87145 = getelementptr inbounds i64, i64* %cloptr87144, i64 0                  ; &cloptr87144[0]
  %f87146 = ptrtoint void(i64,i64)* @lam86759 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87146, i64* %eptr87145                                                 ; store fptr
  %Eic$_37_62 = ptrtoint i64* %cloptr87144 to i64                                    ; closure cast; i64* -> i64
  %cloptr87147 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87148 = getelementptr inbounds i64, i64* %cloptr87147, i64 0                  ; &cloptr87147[0]
  %f87149 = ptrtoint void(i64,i64)* @lam86755 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87149, i64* %eptr87148                                                 ; store fptr
  %t7V$_37_62_61 = ptrtoint i64* %cloptr87147 to i64                                 ; closure cast; i64* -> i64
  %arg83764 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %arg83763 = add i64 0, 0                                                           ; quoted ()
  %TUe$_37append = call i64 @prim_make_45vector(i64 %arg83764, i64 %arg83763)        ; call prim_make_45vector
  %arg83766 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr87150 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87152 = getelementptr inbounds i64, i64* %cloptr87150, i64 1                  ; &eptr87152[1]
  store i64 %TUe$_37append, i64* %eptr87152                                          ; *eptr87152 = %TUe$_37append
  %eptr87151 = getelementptr inbounds i64, i64* %cloptr87150, i64 0                  ; &cloptr87150[0]
  %f87153 = ptrtoint void(i64,i64)* @lam86748 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87153, i64* %eptr87151                                                 ; store fptr
  %arg83765 = ptrtoint i64* %cloptr87150 to i64                                      ; closure cast; i64* -> i64
  %Qp5$_950 = call i64 @prim_vector_45set_33(i64 %TUe$_37append, i64 %arg83766, i64 %arg83765); call prim_vector_45set_33
  %arg83785 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83596 = call i64 @prim_vector_45ref(i64 %TUe$_37append, i64 %arg83785)     ; call prim_vector_45ref
  %cloptr87154 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87156 = getelementptr inbounds i64, i64* %cloptr87154, i64 1                  ; &eptr87156[1]
  %eptr87157 = getelementptr inbounds i64, i64* %cloptr87154, i64 2                  ; &eptr87157[2]
  %eptr87158 = getelementptr inbounds i64, i64* %cloptr87154, i64 3                  ; &eptr87158[3]
  store i64 %yuv$_37foldl1, i64* %eptr87156                                          ; *eptr87156 = %yuv$_37foldl1
  store i64 %Pql$_37length, i64* %eptr87157                                          ; *eptr87157 = %Pql$_37length
  store i64 %Eic$_37_62, i64* %eptr87158                                             ; *eptr87158 = %Eic$_37_62
  %eptr87155 = getelementptr inbounds i64, i64* %cloptr87154, i64 0                  ; &cloptr87154[0]
  %f87159 = ptrtoint void(i64,i64)* @lam86737 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87159, i64* %eptr87155                                                 ; store fptr
  %arg83789 = ptrtoint i64* %cloptr87154 to i64                                      ; closure cast; i64* -> i64
  %arg83788 = add i64 0, 0                                                           ; quoted ()
  %rva85637 = add i64 0, 0                                                           ; quoted ()
  %rva85636 = call i64 @prim_cons(i64 %retprim83596, i64 %rva85637)                  ; call prim_cons
  %rva85635 = call i64 @prim_cons(i64 %arg83788, i64 %rva85636)                      ; call prim_cons
  %cloptr87160 = inttoptr i64 %arg83789 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87161 = getelementptr inbounds i64, i64* %cloptr87160, i64 0                 ; &cloptr87160[0]
  %f87163 = load i64, i64* %i0ptr87161, align 8                                      ; load; *i0ptr87161
  %fptr87162 = inttoptr i64 %f87163 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87162(i64 %arg83789, i64 %rva85635)                 ; tail call
  ret void
}


define void @lam86759(i64 %env86760, i64 %rvp84853) {
  %cont83460 = call i64 @prim_car(i64 %rvp84853)                                     ; call prim_car
  %rvp84852 = call i64 @prim_cdr(i64 %rvp84853)                                      ; call prim_cdr
  %unk$a = call i64 @prim_car(i64 %rvp84852)                                         ; call prim_car
  %rvp84851 = call i64 @prim_cdr(i64 %rvp84852)                                      ; call prim_cdr
  %RoD$b = call i64 @prim_car(i64 %rvp84851)                                         ; call prim_car
  %na84847 = call i64 @prim_cdr(i64 %rvp84851)                                       ; call prim_cdr
  %a83316 = call i64 @prim__60_61(i64 %unk$a, i64 %RoD$b)                            ; call prim__60_61
  %retprim83461 = call i64 @prim_not(i64 %a83316)                                    ; call prim_not
  %arg83755 = add i64 0, 0                                                           ; quoted ()
  %rva84850 = add i64 0, 0                                                           ; quoted ()
  %rva84849 = call i64 @prim_cons(i64 %retprim83461, i64 %rva84850)                  ; call prim_cons
  %rva84848 = call i64 @prim_cons(i64 %arg83755, i64 %rva84849)                      ; call prim_cons
  %cloptr87164 = inttoptr i64 %cont83460 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87165 = getelementptr inbounds i64, i64* %cloptr87164, i64 0                 ; &cloptr87164[0]
  %f87167 = load i64, i64* %i0ptr87165, align 8                                      ; load; *i0ptr87165
  %fptr87166 = inttoptr i64 %f87167 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87166(i64 %cont83460, i64 %rva84848)                ; tail call
  ret void
}


define void @lam86755(i64 %env86756, i64 %rvp84861) {
  %cont83462 = call i64 @prim_car(i64 %rvp84861)                                     ; call prim_car
  %rvp84860 = call i64 @prim_cdr(i64 %rvp84861)                                      ; call prim_cdr
  %Xyl$a = call i64 @prim_car(i64 %rvp84860)                                         ; call prim_car
  %rvp84859 = call i64 @prim_cdr(i64 %rvp84860)                                      ; call prim_cdr
  %kGr$b = call i64 @prim_car(i64 %rvp84859)                                         ; call prim_car
  %na84855 = call i64 @prim_cdr(i64 %rvp84859)                                       ; call prim_cdr
  %a83317 = call i64 @prim__60(i64 %Xyl$a, i64 %kGr$b)                               ; call prim__60
  %retprim83463 = call i64 @prim_not(i64 %a83317)                                    ; call prim_not
  %arg83761 = add i64 0, 0                                                           ; quoted ()
  %rva84858 = add i64 0, 0                                                           ; quoted ()
  %rva84857 = call i64 @prim_cons(i64 %retprim83463, i64 %rva84858)                  ; call prim_cons
  %rva84856 = call i64 @prim_cons(i64 %arg83761, i64 %rva84857)                      ; call prim_cons
  %cloptr87168 = inttoptr i64 %cont83462 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87169 = getelementptr inbounds i64, i64* %cloptr87168, i64 0                 ; &cloptr87168[0]
  %f87171 = load i64, i64* %i0ptr87169, align 8                                      ; load; *i0ptr87169
  %fptr87170 = inttoptr i64 %f87171 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87170(i64 %cont83462, i64 %rva84856)                ; tail call
  ret void
}


define void @lam86748(i64 %env86749, i64 %rvp84880) {
  %envptr87172 = inttoptr i64 %env86749 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87173 = getelementptr inbounds i64, i64* %envptr87172, i64 1                ; &envptr87172[1]
  %TUe$_37append = load i64, i64* %envptr87173, align 8                              ; load; *envptr87173
  %cont83593 = call i64 @prim_car(i64 %rvp84880)                                     ; call prim_car
  %rvp84879 = call i64 @prim_cdr(i64 %rvp84880)                                      ; call prim_cdr
  %Yka$ls0 = call i64 @prim_car(i64 %rvp84879)                                       ; call prim_car
  %rvp84878 = call i64 @prim_cdr(i64 %rvp84879)                                      ; call prim_cdr
  %EKz$ls1 = call i64 @prim_car(i64 %rvp84878)                                       ; call prim_car
  %na84863 = call i64 @prim_cdr(i64 %rvp84878)                                       ; call prim_cdr
  %a83318 = call i64 @prim_null_63(i64 %Yka$ls0)                                     ; call prim_null_63
  %cmp87174 = icmp eq i64 %a83318, 15                                                ; false?
  br i1 %cmp87174, label %else87176, label %then87175                                ; if

then87175:
  %arg83770 = add i64 0, 0                                                           ; quoted ()
  %rva84866 = add i64 0, 0                                                           ; quoted ()
  %rva84865 = call i64 @prim_cons(i64 %EKz$ls1, i64 %rva84866)                       ; call prim_cons
  %rva84864 = call i64 @prim_cons(i64 %arg83770, i64 %rva84865)                      ; call prim_cons
  %cloptr87177 = inttoptr i64 %cont83593 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87178 = getelementptr inbounds i64, i64* %cloptr87177, i64 0                 ; &cloptr87177[0]
  %f87180 = load i64, i64* %i0ptr87178, align 8                                      ; load; *i0ptr87178
  %fptr87179 = inttoptr i64 %f87180 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87179(i64 %cont83593, i64 %rva84864)                ; tail call
  ret void

else87176:
  %a83319 = call i64 @prim_car(i64 %Yka$ls0)                                         ; call prim_car
  %arg83773 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83320 = call i64 @prim_vector_45ref(i64 %TUe$_37append, i64 %arg83773)           ; call prim_vector_45ref
  %a83321 = call i64 @prim_cdr(i64 %Yka$ls0)                                         ; call prim_cdr
  %cloptr87181 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87183 = getelementptr inbounds i64, i64* %cloptr87181, i64 1                  ; &eptr87183[1]
  %eptr87184 = getelementptr inbounds i64, i64* %cloptr87181, i64 2                  ; &eptr87184[2]
  store i64 %cont83593, i64* %eptr87183                                              ; *eptr87183 = %cont83593
  store i64 %a83319, i64* %eptr87184                                                 ; *eptr87184 = %a83319
  %eptr87182 = getelementptr inbounds i64, i64* %cloptr87181, i64 0                  ; &cloptr87181[0]
  %f87185 = ptrtoint void(i64,i64)* @lam86745 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87185, i64* %eptr87182                                                 ; store fptr
  %arg83778 = ptrtoint i64* %cloptr87181 to i64                                      ; closure cast; i64* -> i64
  %rva84877 = add i64 0, 0                                                           ; quoted ()
  %rva84876 = call i64 @prim_cons(i64 %EKz$ls1, i64 %rva84877)                       ; call prim_cons
  %rva84875 = call i64 @prim_cons(i64 %a83321, i64 %rva84876)                        ; call prim_cons
  %rva84874 = call i64 @prim_cons(i64 %arg83778, i64 %rva84875)                      ; call prim_cons
  %cloptr87186 = inttoptr i64 %a83320 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87187 = getelementptr inbounds i64, i64* %cloptr87186, i64 0                 ; &cloptr87186[0]
  %f87189 = load i64, i64* %i0ptr87187, align 8                                      ; load; *i0ptr87187
  %fptr87188 = inttoptr i64 %f87189 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87188(i64 %a83320, i64 %rva84874)                   ; tail call
  ret void
}


define void @lam86745(i64 %env86746, i64 %rvp84873) {
  %envptr87190 = inttoptr i64 %env86746 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87191 = getelementptr inbounds i64, i64* %envptr87190, i64 2                ; &envptr87190[2]
  %a83319 = load i64, i64* %envptr87191, align 8                                     ; load; *envptr87191
  %envptr87192 = inttoptr i64 %env86746 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87193 = getelementptr inbounds i64, i64* %envptr87192, i64 1                ; &envptr87192[1]
  %cont83593 = load i64, i64* %envptr87193, align 8                                  ; load; *envptr87193
  %_9583594 = call i64 @prim_car(i64 %rvp84873)                                      ; call prim_car
  %rvp84872 = call i64 @prim_cdr(i64 %rvp84873)                                      ; call prim_cdr
  %a83322 = call i64 @prim_car(i64 %rvp84872)                                        ; call prim_car
  %na84868 = call i64 @prim_cdr(i64 %rvp84872)                                       ; call prim_cdr
  %retprim83595 = call i64 @prim_cons(i64 %a83319, i64 %a83322)                      ; call prim_cons
  %arg83783 = add i64 0, 0                                                           ; quoted ()
  %rva84871 = add i64 0, 0                                                           ; quoted ()
  %rva84870 = call i64 @prim_cons(i64 %retprim83595, i64 %rva84871)                  ; call prim_cons
  %rva84869 = call i64 @prim_cons(i64 %arg83783, i64 %rva84870)                      ; call prim_cons
  %cloptr87194 = inttoptr i64 %cont83593 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87195 = getelementptr inbounds i64, i64* %cloptr87194, i64 0                 ; &cloptr87194[0]
  %f87197 = load i64, i64* %i0ptr87195, align 8                                      ; load; *i0ptr87195
  %fptr87196 = inttoptr i64 %f87197 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87196(i64 %cont83593, i64 %rva84869)                ; tail call
  ret void
}


define void @lam86737(i64 %env86738, i64 %rvp85634) {
  %envptr87198 = inttoptr i64 %env86738 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87199 = getelementptr inbounds i64, i64* %envptr87198, i64 3                ; &envptr87198[3]
  %Eic$_37_62 = load i64, i64* %envptr87199, align 8                                 ; load; *envptr87199
  %envptr87200 = inttoptr i64 %env86738 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87201 = getelementptr inbounds i64, i64* %envptr87200, i64 2                ; &envptr87200[2]
  %Pql$_37length = load i64, i64* %envptr87201, align 8                              ; load; *envptr87201
  %envptr87202 = inttoptr i64 %env86738 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87203 = getelementptr inbounds i64, i64* %envptr87202, i64 1                ; &envptr87202[1]
  %yuv$_37foldl1 = load i64, i64* %envptr87203, align 8                              ; load; *envptr87203
  %_9583464 = call i64 @prim_car(i64 %rvp85634)                                      ; call prim_car
  %rvp85633 = call i64 @prim_cdr(i64 %rvp85634)                                      ; call prim_cdr
  %hEZ$_37append = call i64 @prim_car(i64 %rvp85633)                                 ; call prim_car
  %na84882 = call i64 @prim_cdr(i64 %rvp85633)                                       ; call prim_cdr
  %cloptr87204 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87205 = getelementptr inbounds i64, i64* %cloptr87204, i64 0                  ; &cloptr87204[0]
  %f87206 = ptrtoint void(i64,i64)* @lam86735 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87206, i64* %eptr87205                                                 ; store fptr
  %Rn3$_37list_63 = ptrtoint i64* %cloptr87204 to i64                                ; closure cast; i64* -> i64
  %cloptr87207 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87208 = getelementptr inbounds i64, i64* %cloptr87207, i64 0                  ; &cloptr87207[0]
  %f87209 = ptrtoint void(i64,i64)* @lam86683 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87209, i64* %eptr87208                                                 ; store fptr
  %Iic$_37drop = ptrtoint i64* %cloptr87207 to i64                                   ; closure cast; i64* -> i64
  %cloptr87210 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87211 = getelementptr inbounds i64, i64* %cloptr87210, i64 0                  ; &cloptr87210[0]
  %f87212 = ptrtoint void(i64,i64)* @lam86633 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87212, i64* %eptr87211                                                 ; store fptr
  %h5a$_37memv = ptrtoint i64* %cloptr87210 to i64                                   ; closure cast; i64* -> i64
  %cloptr87213 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87215 = getelementptr inbounds i64, i64* %cloptr87213, i64 1                  ; &eptr87215[1]
  store i64 %yuv$_37foldl1, i64* %eptr87215                                          ; *eptr87215 = %yuv$_37foldl1
  %eptr87214 = getelementptr inbounds i64, i64* %cloptr87213, i64 0                  ; &cloptr87213[0]
  %f87216 = ptrtoint void(i64,i64)* @lam86592 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87216, i64* %eptr87214                                                 ; store fptr
  %jC3$_37_47 = ptrtoint i64* %cloptr87213 to i64                                    ; closure cast; i64* -> i64
  %cloptr87217 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87218 = getelementptr inbounds i64, i64* %cloptr87217, i64 0                  ; &cloptr87217[0]
  %f87219 = ptrtoint void(i64,i64)* @lam86580 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87219, i64* %eptr87218                                                 ; store fptr
  %DSA$_37first = ptrtoint i64* %cloptr87217 to i64                                  ; closure cast; i64* -> i64
  %cloptr87220 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87221 = getelementptr inbounds i64, i64* %cloptr87220, i64 0                  ; &cloptr87220[0]
  %f87222 = ptrtoint void(i64,i64)* @lam86576 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87222, i64* %eptr87221                                                 ; store fptr
  %SXd$_37second = ptrtoint i64* %cloptr87220 to i64                                 ; closure cast; i64* -> i64
  %cloptr87223 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87224 = getelementptr inbounds i64, i64* %cloptr87223, i64 0                  ; &cloptr87223[0]
  %f87225 = ptrtoint void(i64,i64)* @lam86572 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87225, i64* %eptr87224                                                 ; store fptr
  %bof$_37third = ptrtoint i64* %cloptr87223 to i64                                  ; closure cast; i64* -> i64
  %cloptr87226 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87227 = getelementptr inbounds i64, i64* %cloptr87226, i64 0                  ; &cloptr87226[0]
  %f87228 = ptrtoint void(i64,i64)* @lam86568 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87228, i64* %eptr87227                                                 ; store fptr
  %Sh7$_37fourth = ptrtoint i64* %cloptr87226 to i64                                 ; closure cast; i64* -> i64
  %cloptr87229 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87230 = getelementptr inbounds i64, i64* %cloptr87229, i64 0                  ; &cloptr87229[0]
  %f87231 = ptrtoint void(i64,i64)* @lam86564 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87231, i64* %eptr87230                                                 ; store fptr
  %pw3$promise_63 = ptrtoint i64* %cloptr87229 to i64                                ; closure cast; i64* -> i64
  %cloptr87232 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87233 = getelementptr inbounds i64, i64* %cloptr87232, i64 0                  ; &cloptr87232[0]
  %f87234 = ptrtoint void(i64,i64)* @lam86556 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87234, i64* %eptr87233                                                 ; store fptr
  %arg84051 = ptrtoint i64* %cloptr87232 to i64                                      ; closure cast; i64* -> i64
  %cloptr87235 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87237 = getelementptr inbounds i64, i64* %cloptr87235, i64 1                  ; &eptr87237[1]
  %eptr87238 = getelementptr inbounds i64, i64* %cloptr87235, i64 2                  ; &eptr87238[2]
  %eptr87239 = getelementptr inbounds i64, i64* %cloptr87235, i64 3                  ; &eptr87239[3]
  %eptr87240 = getelementptr inbounds i64, i64* %cloptr87235, i64 4                  ; &eptr87240[4]
  store i64 %hEZ$_37append, i64* %eptr87237                                          ; *eptr87237 = %hEZ$_37append
  store i64 %Pql$_37length, i64* %eptr87238                                          ; *eptr87238 = %Pql$_37length
  store i64 %Eic$_37_62, i64* %eptr87239                                             ; *eptr87239 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87240                                            ; *eptr87240 = %Iic$_37drop
  %eptr87236 = getelementptr inbounds i64, i64* %cloptr87235, i64 0                  ; &cloptr87235[0]
  %f87241 = ptrtoint void(i64,i64)* @lam86552 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87241, i64* %eptr87236                                                 ; store fptr
  %arg84050 = ptrtoint i64* %cloptr87235 to i64                                      ; closure cast; i64* -> i64
  %rva85632 = add i64 0, 0                                                           ; quoted ()
  %rva85631 = call i64 @prim_cons(i64 %arg84050, i64 %rva85632)                      ; call prim_cons
  %cloptr87242 = inttoptr i64 %arg84051 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87243 = getelementptr inbounds i64, i64* %cloptr87242, i64 0                 ; &cloptr87242[0]
  %f87245 = load i64, i64* %i0ptr87243, align 8                                      ; load; *i0ptr87243
  %fptr87244 = inttoptr i64 %f87245 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87244(i64 %arg84051, i64 %rva85631)                 ; tail call
  ret void
}


define void @lam86735(i64 %env86736, i64 %rvp84950) {
  %cont83465 = call i64 @prim_car(i64 %rvp84950)                                     ; call prim_car
  %rvp84949 = call i64 @prim_cdr(i64 %rvp84950)                                      ; call prim_cdr
  %nrL$a = call i64 @prim_car(i64 %rvp84949)                                         ; call prim_car
  %na84884 = call i64 @prim_cdr(i64 %rvp84949)                                       ; call prim_cdr
  %arg83791 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %Glm$a = call i64 @prim_make_45vector(i64 %arg83791, i64 %nrL$a)                   ; call prim_make_45vector
  %cloptr87246 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87247 = getelementptr inbounds i64, i64* %cloptr87246, i64 0                  ; &cloptr87246[0]
  %f87248 = ptrtoint void(i64,i64)* @lam86732 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87248, i64* %eptr87247                                                 ; store fptr
  %arg83794 = ptrtoint i64* %cloptr87246 to i64                                      ; closure cast; i64* -> i64
  %cloptr87249 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87251 = getelementptr inbounds i64, i64* %cloptr87249, i64 1                  ; &eptr87251[1]
  %eptr87252 = getelementptr inbounds i64, i64* %cloptr87249, i64 2                  ; &eptr87252[2]
  store i64 %Glm$a, i64* %eptr87251                                                  ; *eptr87251 = %Glm$a
  store i64 %cont83465, i64* %eptr87252                                              ; *eptr87252 = %cont83465
  %eptr87250 = getelementptr inbounds i64, i64* %cloptr87249, i64 0                  ; &cloptr87249[0]
  %f87253 = ptrtoint void(i64,i64)* @lam86728 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87253, i64* %eptr87250                                                 ; store fptr
  %arg83793 = ptrtoint i64* %cloptr87249 to i64                                      ; closure cast; i64* -> i64
  %cloptr87254 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87256 = getelementptr inbounds i64, i64* %cloptr87254, i64 1                  ; &eptr87256[1]
  %eptr87257 = getelementptr inbounds i64, i64* %cloptr87254, i64 2                  ; &eptr87257[2]
  store i64 %Glm$a, i64* %eptr87256                                                  ; *eptr87256 = %Glm$a
  store i64 %cont83465, i64* %eptr87257                                              ; *eptr87257 = %cont83465
  %eptr87255 = getelementptr inbounds i64, i64* %cloptr87254, i64 0                  ; &cloptr87254[0]
  %f87258 = ptrtoint void(i64,i64)* @lam86706 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87258, i64* %eptr87255                                                 ; store fptr
  %arg83792 = ptrtoint i64* %cloptr87254 to i64                                      ; closure cast; i64* -> i64
  %rva84948 = add i64 0, 0                                                           ; quoted ()
  %rva84947 = call i64 @prim_cons(i64 %arg83792, i64 %rva84948)                      ; call prim_cons
  %rva84946 = call i64 @prim_cons(i64 %arg83793, i64 %rva84947)                      ; call prim_cons
  %cloptr87259 = inttoptr i64 %arg83794 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87260 = getelementptr inbounds i64, i64* %cloptr87259, i64 0                 ; &cloptr87259[0]
  %f87262 = load i64, i64* %i0ptr87260, align 8                                      ; load; *i0ptr87260
  %fptr87261 = inttoptr i64 %f87262 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87261(i64 %arg83794, i64 %rva84946)                 ; tail call
  ret void
}


define void @lam86732(i64 %env86733, i64 %rvp84891) {
  %cont83471 = call i64 @prim_car(i64 %rvp84891)                                     ; call prim_car
  %rvp84890 = call i64 @prim_cdr(i64 %rvp84891)                                      ; call prim_cdr
  %jzm$k = call i64 @prim_car(i64 %rvp84890)                                         ; call prim_car
  %na84886 = call i64 @prim_cdr(i64 %rvp84890)                                       ; call prim_cdr
  %arg83796 = add i64 0, 0                                                           ; quoted ()
  %rva84889 = add i64 0, 0                                                           ; quoted ()
  %rva84888 = call i64 @prim_cons(i64 %jzm$k, i64 %rva84889)                         ; call prim_cons
  %rva84887 = call i64 @prim_cons(i64 %arg83796, i64 %rva84888)                      ; call prim_cons
  %cloptr87263 = inttoptr i64 %cont83471 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87264 = getelementptr inbounds i64, i64* %cloptr87263, i64 0                 ; &cloptr87263[0]
  %f87266 = load i64, i64* %i0ptr87264, align 8                                      ; load; *i0ptr87264
  %fptr87265 = inttoptr i64 %f87266 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87265(i64 %cont83471, i64 %rva84887)                ; tail call
  ret void
}


define void @lam86728(i64 %env86729, i64 %rvp84918) {
  %envptr87267 = inttoptr i64 %env86729 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87268 = getelementptr inbounds i64, i64* %envptr87267, i64 2                ; &envptr87267[2]
  %cont83465 = load i64, i64* %envptr87268, align 8                                  ; load; *envptr87268
  %envptr87269 = inttoptr i64 %env86729 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87270 = getelementptr inbounds i64, i64* %envptr87269, i64 1                ; &envptr87269[1]
  %Glm$a = load i64, i64* %envptr87270, align 8                                      ; load; *envptr87270
  %_9583466 = call i64 @prim_car(i64 %rvp84918)                                      ; call prim_car
  %rvp84917 = call i64 @prim_cdr(i64 %rvp84918)                                      ; call prim_cdr
  %dUU$cc = call i64 @prim_car(i64 %rvp84917)                                        ; call prim_car
  %na84893 = call i64 @prim_cdr(i64 %rvp84917)                                       ; call prim_cdr
  %arg83798 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83323 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83798)                   ; call prim_vector_45ref
  %a83324 = call i64 @prim_null_63(i64 %a83323)                                      ; call prim_null_63
  %cmp87271 = icmp eq i64 %a83324, 15                                                ; false?
  br i1 %cmp87271, label %else87273, label %then87272                                ; if

then87272:
  %arg83802 = add i64 0, 0                                                           ; quoted ()
  %arg83801 = call i64 @const_init_true()                                            ; quoted #t
  %rva84896 = add i64 0, 0                                                           ; quoted ()
  %rva84895 = call i64 @prim_cons(i64 %arg83801, i64 %rva84896)                      ; call prim_cons
  %rva84894 = call i64 @prim_cons(i64 %arg83802, i64 %rva84895)                      ; call prim_cons
  %cloptr87274 = inttoptr i64 %cont83465 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87275 = getelementptr inbounds i64, i64* %cloptr87274, i64 0                 ; &cloptr87274[0]
  %f87277 = load i64, i64* %i0ptr87275, align 8                                      ; load; *i0ptr87275
  %fptr87276 = inttoptr i64 %f87277 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87276(i64 %cont83465, i64 %rva84894)                ; tail call
  ret void

else87273:
  %arg83804 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83325 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83804)                   ; call prim_vector_45ref
  %a83326 = call i64 @prim_cons_63(i64 %a83325)                                      ; call prim_cons_63
  %cmp87278 = icmp eq i64 %a83326, 15                                                ; false?
  br i1 %cmp87278, label %else87280, label %then87279                                ; if

then87279:
  %arg83807 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83327 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83807)                   ; call prim_vector_45ref
  %retprim83470 = call i64 @prim_cdr(i64 %a83327)                                    ; call prim_cdr
  %cloptr87281 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87283 = getelementptr inbounds i64, i64* %cloptr87281, i64 1                  ; &eptr87283[1]
  %eptr87284 = getelementptr inbounds i64, i64* %cloptr87281, i64 2                  ; &eptr87284[2]
  %eptr87285 = getelementptr inbounds i64, i64* %cloptr87281, i64 3                  ; &eptr87285[3]
  store i64 %Glm$a, i64* %eptr87283                                                  ; *eptr87283 = %Glm$a
  store i64 %dUU$cc, i64* %eptr87284                                                 ; *eptr87284 = %dUU$cc
  store i64 %cont83465, i64* %eptr87285                                              ; *eptr87285 = %cont83465
  %eptr87282 = getelementptr inbounds i64, i64* %cloptr87281, i64 0                  ; &cloptr87281[0]
  %f87286 = ptrtoint void(i64,i64)* @lam86720 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87286, i64* %eptr87282                                                 ; store fptr
  %arg83812 = ptrtoint i64* %cloptr87281 to i64                                      ; closure cast; i64* -> i64
  %arg83811 = add i64 0, 0                                                           ; quoted ()
  %rva84913 = add i64 0, 0                                                           ; quoted ()
  %rva84912 = call i64 @prim_cons(i64 %retprim83470, i64 %rva84913)                  ; call prim_cons
  %rva84911 = call i64 @prim_cons(i64 %arg83811, i64 %rva84912)                      ; call prim_cons
  %cloptr87287 = inttoptr i64 %arg83812 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87288 = getelementptr inbounds i64, i64* %cloptr87287, i64 0                 ; &cloptr87287[0]
  %f87290 = load i64, i64* %i0ptr87288, align 8                                      ; load; *i0ptr87288
  %fptr87289 = inttoptr i64 %f87290 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87289(i64 %arg83812, i64 %rva84911)                 ; tail call
  ret void

else87280:
  %arg83826 = add i64 0, 0                                                           ; quoted ()
  %arg83825 = call i64 @const_init_false()                                           ; quoted #f
  %rva84916 = add i64 0, 0                                                           ; quoted ()
  %rva84915 = call i64 @prim_cons(i64 %arg83825, i64 %rva84916)                      ; call prim_cons
  %rva84914 = call i64 @prim_cons(i64 %arg83826, i64 %rva84915)                      ; call prim_cons
  %cloptr87291 = inttoptr i64 %cont83465 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87292 = getelementptr inbounds i64, i64* %cloptr87291, i64 0                 ; &cloptr87291[0]
  %f87294 = load i64, i64* %i0ptr87292, align 8                                      ; load; *i0ptr87292
  %fptr87293 = inttoptr i64 %f87294 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87293(i64 %cont83465, i64 %rva84914)                ; tail call
  ret void
}


define void @lam86720(i64 %env86721, i64 %rvp84910) {
  %envptr87295 = inttoptr i64 %env86721 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87296 = getelementptr inbounds i64, i64* %envptr87295, i64 3                ; &envptr87295[3]
  %cont83465 = load i64, i64* %envptr87296, align 8                                  ; load; *envptr87296
  %envptr87297 = inttoptr i64 %env86721 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87298 = getelementptr inbounds i64, i64* %envptr87297, i64 2                ; &envptr87297[2]
  %dUU$cc = load i64, i64* %envptr87298, align 8                                     ; load; *envptr87298
  %envptr87299 = inttoptr i64 %env86721 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87300 = getelementptr inbounds i64, i64* %envptr87299, i64 1                ; &envptr87299[1]
  %Glm$a = load i64, i64* %envptr87300, align 8                                      ; load; *envptr87300
  %_9583467 = call i64 @prim_car(i64 %rvp84910)                                      ; call prim_car
  %rvp84909 = call i64 @prim_cdr(i64 %rvp84910)                                      ; call prim_cdr
  %Yol$b = call i64 @prim_car(i64 %rvp84909)                                         ; call prim_car
  %na84898 = call i64 @prim_cdr(i64 %rvp84909)                                       ; call prim_cdr
  %arg83813 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83328 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83813)                   ; call prim_vector_45ref
  %a83329 = call i64 @prim_cdr(i64 %a83328)                                          ; call prim_cdr
  %arg83817 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83469 = call i64 @prim_vector_45set_33(i64 %Glm$a, i64 %arg83817, i64 %a83329); call prim_vector_45set_33
  %cloptr87301 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87303 = getelementptr inbounds i64, i64* %cloptr87301, i64 1                  ; &eptr87303[1]
  %eptr87304 = getelementptr inbounds i64, i64* %cloptr87301, i64 2                  ; &eptr87304[2]
  store i64 %dUU$cc, i64* %eptr87303                                                 ; *eptr87303 = %dUU$cc
  store i64 %cont83465, i64* %eptr87304                                              ; *eptr87304 = %cont83465
  %eptr87302 = getelementptr inbounds i64, i64* %cloptr87301, i64 0                  ; &cloptr87301[0]
  %f87305 = ptrtoint void(i64,i64)* @lam86716 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87305, i64* %eptr87302                                                 ; store fptr
  %arg83821 = ptrtoint i64* %cloptr87301 to i64                                      ; closure cast; i64* -> i64
  %arg83820 = add i64 0, 0                                                           ; quoted ()
  %rva84908 = add i64 0, 0                                                           ; quoted ()
  %rva84907 = call i64 @prim_cons(i64 %retprim83469, i64 %rva84908)                  ; call prim_cons
  %rva84906 = call i64 @prim_cons(i64 %arg83820, i64 %rva84907)                      ; call prim_cons
  %cloptr87306 = inttoptr i64 %arg83821 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87307 = getelementptr inbounds i64, i64* %cloptr87306, i64 0                 ; &cloptr87306[0]
  %f87309 = load i64, i64* %i0ptr87307, align 8                                      ; load; *i0ptr87307
  %fptr87308 = inttoptr i64 %f87309 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87308(i64 %arg83821, i64 %rva84906)                 ; tail call
  ret void
}


define void @lam86716(i64 %env86717, i64 %rvp84905) {
  %envptr87310 = inttoptr i64 %env86717 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87311 = getelementptr inbounds i64, i64* %envptr87310, i64 2                ; &envptr87310[2]
  %cont83465 = load i64, i64* %envptr87311, align 8                                  ; load; *envptr87311
  %envptr87312 = inttoptr i64 %env86717 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87313 = getelementptr inbounds i64, i64* %envptr87312, i64 1                ; &envptr87312[1]
  %dUU$cc = load i64, i64* %envptr87313, align 8                                     ; load; *envptr87313
  %_9583468 = call i64 @prim_car(i64 %rvp84905)                                      ; call prim_car
  %rvp84904 = call i64 @prim_cdr(i64 %rvp84905)                                      ; call prim_cdr
  %wr5$_950 = call i64 @prim_car(i64 %rvp84904)                                      ; call prim_car
  %na84900 = call i64 @prim_cdr(i64 %rvp84904)                                       ; call prim_cdr
  %rva84903 = add i64 0, 0                                                           ; quoted ()
  %rva84902 = call i64 @prim_cons(i64 %dUU$cc, i64 %rva84903)                        ; call prim_cons
  %rva84901 = call i64 @prim_cons(i64 %cont83465, i64 %rva84902)                     ; call prim_cons
  %cloptr87314 = inttoptr i64 %dUU$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87315 = getelementptr inbounds i64, i64* %cloptr87314, i64 0                 ; &cloptr87314[0]
  %f87317 = load i64, i64* %i0ptr87315, align 8                                      ; load; *i0ptr87315
  %fptr87316 = inttoptr i64 %f87317 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87316(i64 %dUU$cc, i64 %rva84901)                   ; tail call
  ret void
}


define void @lam86706(i64 %env86707, i64 %rvp84945) {
  %envptr87318 = inttoptr i64 %env86707 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87319 = getelementptr inbounds i64, i64* %envptr87318, i64 2                ; &envptr87318[2]
  %cont83465 = load i64, i64* %envptr87319, align 8                                  ; load; *envptr87319
  %envptr87320 = inttoptr i64 %env86707 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87321 = getelementptr inbounds i64, i64* %envptr87320, i64 1                ; &envptr87320[1]
  %Glm$a = load i64, i64* %envptr87321, align 8                                      ; load; *envptr87321
  %_9583466 = call i64 @prim_car(i64 %rvp84945)                                      ; call prim_car
  %rvp84944 = call i64 @prim_cdr(i64 %rvp84945)                                      ; call prim_cdr
  %dUU$cc = call i64 @prim_car(i64 %rvp84944)                                        ; call prim_car
  %na84920 = call i64 @prim_cdr(i64 %rvp84944)                                       ; call prim_cdr
  %arg83828 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83323 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83828)                   ; call prim_vector_45ref
  %a83324 = call i64 @prim_null_63(i64 %a83323)                                      ; call prim_null_63
  %cmp87322 = icmp eq i64 %a83324, 15                                                ; false?
  br i1 %cmp87322, label %else87324, label %then87323                                ; if

then87323:
  %arg83832 = add i64 0, 0                                                           ; quoted ()
  %arg83831 = call i64 @const_init_true()                                            ; quoted #t
  %rva84923 = add i64 0, 0                                                           ; quoted ()
  %rva84922 = call i64 @prim_cons(i64 %arg83831, i64 %rva84923)                      ; call prim_cons
  %rva84921 = call i64 @prim_cons(i64 %arg83832, i64 %rva84922)                      ; call prim_cons
  %cloptr87325 = inttoptr i64 %cont83465 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87326 = getelementptr inbounds i64, i64* %cloptr87325, i64 0                 ; &cloptr87325[0]
  %f87328 = load i64, i64* %i0ptr87326, align 8                                      ; load; *i0ptr87326
  %fptr87327 = inttoptr i64 %f87328 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87327(i64 %cont83465, i64 %rva84921)                ; tail call
  ret void

else87324:
  %arg83834 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83325 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83834)                   ; call prim_vector_45ref
  %a83326 = call i64 @prim_cons_63(i64 %a83325)                                      ; call prim_cons_63
  %cmp87329 = icmp eq i64 %a83326, 15                                                ; false?
  br i1 %cmp87329, label %else87331, label %then87330                                ; if

then87330:
  %arg83837 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83327 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83837)                   ; call prim_vector_45ref
  %retprim83470 = call i64 @prim_cdr(i64 %a83327)                                    ; call prim_cdr
  %cloptr87332 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87334 = getelementptr inbounds i64, i64* %cloptr87332, i64 1                  ; &eptr87334[1]
  %eptr87335 = getelementptr inbounds i64, i64* %cloptr87332, i64 2                  ; &eptr87335[2]
  %eptr87336 = getelementptr inbounds i64, i64* %cloptr87332, i64 3                  ; &eptr87336[3]
  store i64 %Glm$a, i64* %eptr87334                                                  ; *eptr87334 = %Glm$a
  store i64 %dUU$cc, i64* %eptr87335                                                 ; *eptr87335 = %dUU$cc
  store i64 %cont83465, i64* %eptr87336                                              ; *eptr87336 = %cont83465
  %eptr87333 = getelementptr inbounds i64, i64* %cloptr87332, i64 0                  ; &cloptr87332[0]
  %f87337 = ptrtoint void(i64,i64)* @lam86698 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87337, i64* %eptr87333                                                 ; store fptr
  %arg83842 = ptrtoint i64* %cloptr87332 to i64                                      ; closure cast; i64* -> i64
  %arg83841 = add i64 0, 0                                                           ; quoted ()
  %rva84940 = add i64 0, 0                                                           ; quoted ()
  %rva84939 = call i64 @prim_cons(i64 %retprim83470, i64 %rva84940)                  ; call prim_cons
  %rva84938 = call i64 @prim_cons(i64 %arg83841, i64 %rva84939)                      ; call prim_cons
  %cloptr87338 = inttoptr i64 %arg83842 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87339 = getelementptr inbounds i64, i64* %cloptr87338, i64 0                 ; &cloptr87338[0]
  %f87341 = load i64, i64* %i0ptr87339, align 8                                      ; load; *i0ptr87339
  %fptr87340 = inttoptr i64 %f87341 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87340(i64 %arg83842, i64 %rva84938)                 ; tail call
  ret void

else87331:
  %arg83856 = add i64 0, 0                                                           ; quoted ()
  %arg83855 = call i64 @const_init_false()                                           ; quoted #f
  %rva84943 = add i64 0, 0                                                           ; quoted ()
  %rva84942 = call i64 @prim_cons(i64 %arg83855, i64 %rva84943)                      ; call prim_cons
  %rva84941 = call i64 @prim_cons(i64 %arg83856, i64 %rva84942)                      ; call prim_cons
  %cloptr87342 = inttoptr i64 %cont83465 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87343 = getelementptr inbounds i64, i64* %cloptr87342, i64 0                 ; &cloptr87342[0]
  %f87345 = load i64, i64* %i0ptr87343, align 8                                      ; load; *i0ptr87343
  %fptr87344 = inttoptr i64 %f87345 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87344(i64 %cont83465, i64 %rva84941)                ; tail call
  ret void
}


define void @lam86698(i64 %env86699, i64 %rvp84937) {
  %envptr87346 = inttoptr i64 %env86699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87347 = getelementptr inbounds i64, i64* %envptr87346, i64 3                ; &envptr87346[3]
  %cont83465 = load i64, i64* %envptr87347, align 8                                  ; load; *envptr87347
  %envptr87348 = inttoptr i64 %env86699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87349 = getelementptr inbounds i64, i64* %envptr87348, i64 2                ; &envptr87348[2]
  %dUU$cc = load i64, i64* %envptr87349, align 8                                     ; load; *envptr87349
  %envptr87350 = inttoptr i64 %env86699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87351 = getelementptr inbounds i64, i64* %envptr87350, i64 1                ; &envptr87350[1]
  %Glm$a = load i64, i64* %envptr87351, align 8                                      ; load; *envptr87351
  %_9583467 = call i64 @prim_car(i64 %rvp84937)                                      ; call prim_car
  %rvp84936 = call i64 @prim_cdr(i64 %rvp84937)                                      ; call prim_cdr
  %Yol$b = call i64 @prim_car(i64 %rvp84936)                                         ; call prim_car
  %na84925 = call i64 @prim_cdr(i64 %rvp84936)                                       ; call prim_cdr
  %arg83843 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83328 = call i64 @prim_vector_45ref(i64 %Glm$a, i64 %arg83843)                   ; call prim_vector_45ref
  %a83329 = call i64 @prim_cdr(i64 %a83328)                                          ; call prim_cdr
  %arg83847 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83469 = call i64 @prim_vector_45set_33(i64 %Glm$a, i64 %arg83847, i64 %a83329); call prim_vector_45set_33
  %cloptr87352 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87354 = getelementptr inbounds i64, i64* %cloptr87352, i64 1                  ; &eptr87354[1]
  %eptr87355 = getelementptr inbounds i64, i64* %cloptr87352, i64 2                  ; &eptr87355[2]
  store i64 %dUU$cc, i64* %eptr87354                                                 ; *eptr87354 = %dUU$cc
  store i64 %cont83465, i64* %eptr87355                                              ; *eptr87355 = %cont83465
  %eptr87353 = getelementptr inbounds i64, i64* %cloptr87352, i64 0                  ; &cloptr87352[0]
  %f87356 = ptrtoint void(i64,i64)* @lam86694 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87356, i64* %eptr87353                                                 ; store fptr
  %arg83851 = ptrtoint i64* %cloptr87352 to i64                                      ; closure cast; i64* -> i64
  %arg83850 = add i64 0, 0                                                           ; quoted ()
  %rva84935 = add i64 0, 0                                                           ; quoted ()
  %rva84934 = call i64 @prim_cons(i64 %retprim83469, i64 %rva84935)                  ; call prim_cons
  %rva84933 = call i64 @prim_cons(i64 %arg83850, i64 %rva84934)                      ; call prim_cons
  %cloptr87357 = inttoptr i64 %arg83851 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87358 = getelementptr inbounds i64, i64* %cloptr87357, i64 0                 ; &cloptr87357[0]
  %f87360 = load i64, i64* %i0ptr87358, align 8                                      ; load; *i0ptr87358
  %fptr87359 = inttoptr i64 %f87360 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87359(i64 %arg83851, i64 %rva84933)                 ; tail call
  ret void
}


define void @lam86694(i64 %env86695, i64 %rvp84932) {
  %envptr87361 = inttoptr i64 %env86695 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87362 = getelementptr inbounds i64, i64* %envptr87361, i64 2                ; &envptr87361[2]
  %cont83465 = load i64, i64* %envptr87362, align 8                                  ; load; *envptr87362
  %envptr87363 = inttoptr i64 %env86695 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87364 = getelementptr inbounds i64, i64* %envptr87363, i64 1                ; &envptr87363[1]
  %dUU$cc = load i64, i64* %envptr87364, align 8                                     ; load; *envptr87364
  %_9583468 = call i64 @prim_car(i64 %rvp84932)                                      ; call prim_car
  %rvp84931 = call i64 @prim_cdr(i64 %rvp84932)                                      ; call prim_cdr
  %wr5$_950 = call i64 @prim_car(i64 %rvp84931)                                      ; call prim_car
  %na84927 = call i64 @prim_cdr(i64 %rvp84931)                                       ; call prim_cdr
  %rva84930 = add i64 0, 0                                                           ; quoted ()
  %rva84929 = call i64 @prim_cons(i64 %dUU$cc, i64 %rva84930)                        ; call prim_cons
  %rva84928 = call i64 @prim_cons(i64 %cont83465, i64 %rva84929)                     ; call prim_cons
  %cloptr87365 = inttoptr i64 %dUU$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87366 = getelementptr inbounds i64, i64* %cloptr87365, i64 0                 ; &cloptr87365[0]
  %f87368 = load i64, i64* %i0ptr87366, align 8                                      ; load; *i0ptr87366
  %fptr87367 = inttoptr i64 %f87368 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87367(i64 %dUU$cc, i64 %rva84928)                   ; tail call
  ret void
}


define void @lam86683(i64 %env86684, i64 %rvp85013) {
  %cont83472 = call i64 @prim_car(i64 %rvp85013)                                     ; call prim_car
  %rvp85012 = call i64 @prim_cdr(i64 %rvp85013)                                      ; call prim_cdr
  %jFD$lst = call i64 @prim_car(i64 %rvp85012)                                       ; call prim_car
  %rvp85011 = call i64 @prim_cdr(i64 %rvp85012)                                      ; call prim_cdr
  %ko7$n = call i64 @prim_car(i64 %rvp85011)                                         ; call prim_car
  %na84952 = call i64 @prim_cdr(i64 %rvp85011)                                       ; call prim_cdr
  %arg83859 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %xuQ$lst = call i64 @prim_make_45vector(i64 %arg83859, i64 %jFD$lst)               ; call prim_make_45vector
  %arg83861 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %QDX$n = call i64 @prim_make_45vector(i64 %arg83861, i64 %ko7$n)                   ; call prim_make_45vector
  %cloptr87369 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87370 = getelementptr inbounds i64, i64* %cloptr87369, i64 0                  ; &cloptr87369[0]
  %f87371 = ptrtoint void(i64,i64)* @lam86679 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87371, i64* %eptr87370                                                 ; store fptr
  %arg83864 = ptrtoint i64* %cloptr87369 to i64                                      ; closure cast; i64* -> i64
  %cloptr87372 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87374 = getelementptr inbounds i64, i64* %cloptr87372, i64 1                  ; &eptr87374[1]
  %eptr87375 = getelementptr inbounds i64, i64* %cloptr87372, i64 2                  ; &eptr87375[2]
  %eptr87376 = getelementptr inbounds i64, i64* %cloptr87372, i64 3                  ; &eptr87376[3]
  store i64 %QDX$n, i64* %eptr87374                                                  ; *eptr87374 = %QDX$n
  store i64 %cont83472, i64* %eptr87375                                              ; *eptr87375 = %cont83472
  store i64 %xuQ$lst, i64* %eptr87376                                                ; *eptr87376 = %xuQ$lst
  %eptr87373 = getelementptr inbounds i64, i64* %cloptr87372, i64 0                  ; &cloptr87372[0]
  %f87377 = ptrtoint void(i64,i64)* @lam86676 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87377, i64* %eptr87373                                                 ; store fptr
  %arg83863 = ptrtoint i64* %cloptr87372 to i64                                      ; closure cast; i64* -> i64
  %cloptr87378 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87380 = getelementptr inbounds i64, i64* %cloptr87378, i64 1                  ; &eptr87380[1]
  %eptr87381 = getelementptr inbounds i64, i64* %cloptr87378, i64 2                  ; &eptr87381[2]
  %eptr87382 = getelementptr inbounds i64, i64* %cloptr87378, i64 3                  ; &eptr87382[3]
  store i64 %QDX$n, i64* %eptr87380                                                  ; *eptr87380 = %QDX$n
  store i64 %cont83472, i64* %eptr87381                                              ; *eptr87381 = %cont83472
  store i64 %xuQ$lst, i64* %eptr87382                                                ; *eptr87382 = %xuQ$lst
  %eptr87379 = getelementptr inbounds i64, i64* %cloptr87378, i64 0                  ; &cloptr87378[0]
  %f87383 = ptrtoint void(i64,i64)* @lam86655 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87383, i64* %eptr87379                                                 ; store fptr
  %arg83862 = ptrtoint i64* %cloptr87378 to i64                                      ; closure cast; i64* -> i64
  %rva85010 = add i64 0, 0                                                           ; quoted ()
  %rva85009 = call i64 @prim_cons(i64 %arg83862, i64 %rva85010)                      ; call prim_cons
  %rva85008 = call i64 @prim_cons(i64 %arg83863, i64 %rva85009)                      ; call prim_cons
  %cloptr87384 = inttoptr i64 %arg83864 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87385 = getelementptr inbounds i64, i64* %cloptr87384, i64 0                 ; &cloptr87384[0]
  %f87387 = load i64, i64* %i0ptr87385, align 8                                      ; load; *i0ptr87385
  %fptr87386 = inttoptr i64 %f87387 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87386(i64 %arg83864, i64 %rva85008)                 ; tail call
  ret void
}


define void @lam86679(i64 %env86680, i64 %rvp84959) {
  %cont83479 = call i64 @prim_car(i64 %rvp84959)                                     ; call prim_car
  %rvp84958 = call i64 @prim_cdr(i64 %rvp84959)                                      ; call prim_cdr
  %g8n$u = call i64 @prim_car(i64 %rvp84958)                                         ; call prim_car
  %na84954 = call i64 @prim_cdr(i64 %rvp84958)                                       ; call prim_cdr
  %rva84957 = add i64 0, 0                                                           ; quoted ()
  %rva84956 = call i64 @prim_cons(i64 %g8n$u, i64 %rva84957)                         ; call prim_cons
  %rva84955 = call i64 @prim_cons(i64 %cont83479, i64 %rva84956)                     ; call prim_cons
  %cloptr87388 = inttoptr i64 %g8n$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87389 = getelementptr inbounds i64, i64* %cloptr87388, i64 0                 ; &cloptr87388[0]
  %f87391 = load i64, i64* %i0ptr87389, align 8                                      ; load; *i0ptr87389
  %fptr87390 = inttoptr i64 %f87391 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87390(i64 %g8n$u, i64 %rva84955)                    ; tail call
  ret void
}


define void @lam86676(i64 %env86677, i64 %rvp84983) {
  %envptr87392 = inttoptr i64 %env86677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87393 = getelementptr inbounds i64, i64* %envptr87392, i64 3                ; &envptr87392[3]
  %xuQ$lst = load i64, i64* %envptr87393, align 8                                    ; load; *envptr87393
  %envptr87394 = inttoptr i64 %env86677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87395 = getelementptr inbounds i64, i64* %envptr87394, i64 2                ; &envptr87394[2]
  %cont83472 = load i64, i64* %envptr87395, align 8                                  ; load; *envptr87395
  %envptr87396 = inttoptr i64 %env86677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87397 = getelementptr inbounds i64, i64* %envptr87396, i64 1                ; &envptr87396[1]
  %QDX$n = load i64, i64* %envptr87397, align 8                                      ; load; *envptr87397
  %_9583473 = call i64 @prim_car(i64 %rvp84983)                                      ; call prim_car
  %rvp84982 = call i64 @prim_cdr(i64 %rvp84983)                                      ; call prim_cdr
  %bAX$cc = call i64 @prim_car(i64 %rvp84982)                                        ; call prim_car
  %na84961 = call i64 @prim_cdr(i64 %rvp84982)                                       ; call prim_cdr
  %arg83868 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83330 = call i64 @prim_vector_45ref(i64 %QDX$n, i64 %arg83868)                   ; call prim_vector_45ref
  %arg83871 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83331 = call i64 @prim__61(i64 %arg83871, i64 %a83330)                           ; call prim__61
  %cmp87398 = icmp eq i64 %a83331, 15                                                ; false?
  br i1 %cmp87398, label %else87400, label %then87399                                ; if

then87399:
  %arg83872 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83474 = call i64 @prim_vector_45ref(i64 %xuQ$lst, i64 %arg83872)           ; call prim_vector_45ref
  %arg83875 = add i64 0, 0                                                           ; quoted ()
  %rva84964 = add i64 0, 0                                                           ; quoted ()
  %rva84963 = call i64 @prim_cons(i64 %retprim83474, i64 %rva84964)                  ; call prim_cons
  %rva84962 = call i64 @prim_cons(i64 %arg83875, i64 %rva84963)                      ; call prim_cons
  %cloptr87401 = inttoptr i64 %cont83472 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87402 = getelementptr inbounds i64, i64* %cloptr87401, i64 0                 ; &cloptr87401[0]
  %f87404 = load i64, i64* %i0ptr87402, align 8                                      ; load; *i0ptr87402
  %fptr87403 = inttoptr i64 %f87404 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87403(i64 %cont83472, i64 %rva84962)                ; tail call
  ret void

else87400:
  %arg83877 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83332 = call i64 @prim_vector_45ref(i64 %xuQ$lst, i64 %arg83877)                 ; call prim_vector_45ref
  %a83333 = call i64 @prim_cdr(i64 %a83332)                                          ; call prim_cdr
  %arg83881 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83478 = call i64 @prim_vector_45set_33(i64 %xuQ$lst, i64 %arg83881, i64 %a83333); call prim_vector_45set_33
  %cloptr87405 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87407 = getelementptr inbounds i64, i64* %cloptr87405, i64 1                  ; &eptr87407[1]
  %eptr87408 = getelementptr inbounds i64, i64* %cloptr87405, i64 2                  ; &eptr87408[2]
  %eptr87409 = getelementptr inbounds i64, i64* %cloptr87405, i64 3                  ; &eptr87409[3]
  store i64 %QDX$n, i64* %eptr87407                                                  ; *eptr87407 = %QDX$n
  store i64 %cont83472, i64* %eptr87408                                              ; *eptr87408 = %cont83472
  store i64 %bAX$cc, i64* %eptr87409                                                 ; *eptr87409 = %bAX$cc
  %eptr87406 = getelementptr inbounds i64, i64* %cloptr87405, i64 0                  ; &cloptr87405[0]
  %f87410 = ptrtoint void(i64,i64)* @lam86670 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87410, i64* %eptr87406                                                 ; store fptr
  %arg83885 = ptrtoint i64* %cloptr87405 to i64                                      ; closure cast; i64* -> i64
  %arg83884 = add i64 0, 0                                                           ; quoted ()
  %rva84981 = add i64 0, 0                                                           ; quoted ()
  %rva84980 = call i64 @prim_cons(i64 %retprim83478, i64 %rva84981)                  ; call prim_cons
  %rva84979 = call i64 @prim_cons(i64 %arg83884, i64 %rva84980)                      ; call prim_cons
  %cloptr87411 = inttoptr i64 %arg83885 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87412 = getelementptr inbounds i64, i64* %cloptr87411, i64 0                 ; &cloptr87411[0]
  %f87414 = load i64, i64* %i0ptr87412, align 8                                      ; load; *i0ptr87412
  %fptr87413 = inttoptr i64 %f87414 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87413(i64 %arg83885, i64 %rva84979)                 ; tail call
  ret void
}


define void @lam86670(i64 %env86671, i64 %rvp84978) {
  %envptr87415 = inttoptr i64 %env86671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87416 = getelementptr inbounds i64, i64* %envptr87415, i64 3                ; &envptr87415[3]
  %bAX$cc = load i64, i64* %envptr87416, align 8                                     ; load; *envptr87416
  %envptr87417 = inttoptr i64 %env86671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87418 = getelementptr inbounds i64, i64* %envptr87417, i64 2                ; &envptr87417[2]
  %cont83472 = load i64, i64* %envptr87418, align 8                                  ; load; *envptr87418
  %envptr87419 = inttoptr i64 %env86671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87420 = getelementptr inbounds i64, i64* %envptr87419, i64 1                ; &envptr87419[1]
  %QDX$n = load i64, i64* %envptr87420, align 8                                      ; load; *envptr87420
  %_9583475 = call i64 @prim_car(i64 %rvp84978)                                      ; call prim_car
  %rvp84977 = call i64 @prim_cdr(i64 %rvp84978)                                      ; call prim_cdr
  %HUS$_950 = call i64 @prim_car(i64 %rvp84977)                                      ; call prim_car
  %na84966 = call i64 @prim_cdr(i64 %rvp84977)                                       ; call prim_cdr
  %arg83886 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83334 = call i64 @prim_vector_45ref(i64 %QDX$n, i64 %arg83886)                   ; call prim_vector_45ref
  %arg83888 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83335 = call i64 @prim__45(i64 %a83334, i64 %arg83888)                           ; call prim__45
  %arg83891 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83477 = call i64 @prim_vector_45set_33(i64 %QDX$n, i64 %arg83891, i64 %a83335); call prim_vector_45set_33
  %cloptr87421 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87423 = getelementptr inbounds i64, i64* %cloptr87421, i64 1                  ; &eptr87423[1]
  %eptr87424 = getelementptr inbounds i64, i64* %cloptr87421, i64 2                  ; &eptr87424[2]
  store i64 %cont83472, i64* %eptr87423                                              ; *eptr87423 = %cont83472
  store i64 %bAX$cc, i64* %eptr87424                                                 ; *eptr87424 = %bAX$cc
  %eptr87422 = getelementptr inbounds i64, i64* %cloptr87421, i64 0                  ; &cloptr87421[0]
  %f87425 = ptrtoint void(i64,i64)* @lam86665 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87425, i64* %eptr87422                                                 ; store fptr
  %arg83895 = ptrtoint i64* %cloptr87421 to i64                                      ; closure cast; i64* -> i64
  %arg83894 = add i64 0, 0                                                           ; quoted ()
  %rva84976 = add i64 0, 0                                                           ; quoted ()
  %rva84975 = call i64 @prim_cons(i64 %retprim83477, i64 %rva84976)                  ; call prim_cons
  %rva84974 = call i64 @prim_cons(i64 %arg83894, i64 %rva84975)                      ; call prim_cons
  %cloptr87426 = inttoptr i64 %arg83895 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87427 = getelementptr inbounds i64, i64* %cloptr87426, i64 0                 ; &cloptr87426[0]
  %f87429 = load i64, i64* %i0ptr87427, align 8                                      ; load; *i0ptr87427
  %fptr87428 = inttoptr i64 %f87429 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87428(i64 %arg83895, i64 %rva84974)                 ; tail call
  ret void
}


define void @lam86665(i64 %env86666, i64 %rvp84973) {
  %envptr87430 = inttoptr i64 %env86666 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87431 = getelementptr inbounds i64, i64* %envptr87430, i64 2                ; &envptr87430[2]
  %bAX$cc = load i64, i64* %envptr87431, align 8                                     ; load; *envptr87431
  %envptr87432 = inttoptr i64 %env86666 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87433 = getelementptr inbounds i64, i64* %envptr87432, i64 1                ; &envptr87432[1]
  %cont83472 = load i64, i64* %envptr87433, align 8                                  ; load; *envptr87433
  %_9583476 = call i64 @prim_car(i64 %rvp84973)                                      ; call prim_car
  %rvp84972 = call i64 @prim_cdr(i64 %rvp84973)                                      ; call prim_cdr
  %SI9$_951 = call i64 @prim_car(i64 %rvp84972)                                      ; call prim_car
  %na84968 = call i64 @prim_cdr(i64 %rvp84972)                                       ; call prim_cdr
  %rva84971 = add i64 0, 0                                                           ; quoted ()
  %rva84970 = call i64 @prim_cons(i64 %bAX$cc, i64 %rva84971)                        ; call prim_cons
  %rva84969 = call i64 @prim_cons(i64 %cont83472, i64 %rva84970)                     ; call prim_cons
  %cloptr87434 = inttoptr i64 %bAX$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87435 = getelementptr inbounds i64, i64* %cloptr87434, i64 0                 ; &cloptr87434[0]
  %f87437 = load i64, i64* %i0ptr87435, align 8                                      ; load; *i0ptr87435
  %fptr87436 = inttoptr i64 %f87437 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87436(i64 %bAX$cc, i64 %rva84969)                   ; tail call
  ret void
}


define void @lam86655(i64 %env86656, i64 %rvp85007) {
  %envptr87438 = inttoptr i64 %env86656 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87439 = getelementptr inbounds i64, i64* %envptr87438, i64 3                ; &envptr87438[3]
  %xuQ$lst = load i64, i64* %envptr87439, align 8                                    ; load; *envptr87439
  %envptr87440 = inttoptr i64 %env86656 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87441 = getelementptr inbounds i64, i64* %envptr87440, i64 2                ; &envptr87440[2]
  %cont83472 = load i64, i64* %envptr87441, align 8                                  ; load; *envptr87441
  %envptr87442 = inttoptr i64 %env86656 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87443 = getelementptr inbounds i64, i64* %envptr87442, i64 1                ; &envptr87442[1]
  %QDX$n = load i64, i64* %envptr87443, align 8                                      ; load; *envptr87443
  %_9583473 = call i64 @prim_car(i64 %rvp85007)                                      ; call prim_car
  %rvp85006 = call i64 @prim_cdr(i64 %rvp85007)                                      ; call prim_cdr
  %bAX$cc = call i64 @prim_car(i64 %rvp85006)                                        ; call prim_car
  %na84985 = call i64 @prim_cdr(i64 %rvp85006)                                       ; call prim_cdr
  %arg83899 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83330 = call i64 @prim_vector_45ref(i64 %QDX$n, i64 %arg83899)                   ; call prim_vector_45ref
  %arg83902 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83331 = call i64 @prim__61(i64 %arg83902, i64 %a83330)                           ; call prim__61
  %cmp87444 = icmp eq i64 %a83331, 15                                                ; false?
  br i1 %cmp87444, label %else87446, label %then87445                                ; if

then87445:
  %arg83903 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83474 = call i64 @prim_vector_45ref(i64 %xuQ$lst, i64 %arg83903)           ; call prim_vector_45ref
  %arg83906 = add i64 0, 0                                                           ; quoted ()
  %rva84988 = add i64 0, 0                                                           ; quoted ()
  %rva84987 = call i64 @prim_cons(i64 %retprim83474, i64 %rva84988)                  ; call prim_cons
  %rva84986 = call i64 @prim_cons(i64 %arg83906, i64 %rva84987)                      ; call prim_cons
  %cloptr87447 = inttoptr i64 %cont83472 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87448 = getelementptr inbounds i64, i64* %cloptr87447, i64 0                 ; &cloptr87447[0]
  %f87450 = load i64, i64* %i0ptr87448, align 8                                      ; load; *i0ptr87448
  %fptr87449 = inttoptr i64 %f87450 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87449(i64 %cont83472, i64 %rva84986)                ; tail call
  ret void

else87446:
  %arg83908 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83332 = call i64 @prim_vector_45ref(i64 %xuQ$lst, i64 %arg83908)                 ; call prim_vector_45ref
  %a83333 = call i64 @prim_cdr(i64 %a83332)                                          ; call prim_cdr
  %arg83912 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83478 = call i64 @prim_vector_45set_33(i64 %xuQ$lst, i64 %arg83912, i64 %a83333); call prim_vector_45set_33
  %cloptr87451 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87453 = getelementptr inbounds i64, i64* %cloptr87451, i64 1                  ; &eptr87453[1]
  %eptr87454 = getelementptr inbounds i64, i64* %cloptr87451, i64 2                  ; &eptr87454[2]
  %eptr87455 = getelementptr inbounds i64, i64* %cloptr87451, i64 3                  ; &eptr87455[3]
  store i64 %QDX$n, i64* %eptr87453                                                  ; *eptr87453 = %QDX$n
  store i64 %cont83472, i64* %eptr87454                                              ; *eptr87454 = %cont83472
  store i64 %bAX$cc, i64* %eptr87455                                                 ; *eptr87455 = %bAX$cc
  %eptr87452 = getelementptr inbounds i64, i64* %cloptr87451, i64 0                  ; &cloptr87451[0]
  %f87456 = ptrtoint void(i64,i64)* @lam86649 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87456, i64* %eptr87452                                                 ; store fptr
  %arg83916 = ptrtoint i64* %cloptr87451 to i64                                      ; closure cast; i64* -> i64
  %arg83915 = add i64 0, 0                                                           ; quoted ()
  %rva85005 = add i64 0, 0                                                           ; quoted ()
  %rva85004 = call i64 @prim_cons(i64 %retprim83478, i64 %rva85005)                  ; call prim_cons
  %rva85003 = call i64 @prim_cons(i64 %arg83915, i64 %rva85004)                      ; call prim_cons
  %cloptr87457 = inttoptr i64 %arg83916 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87458 = getelementptr inbounds i64, i64* %cloptr87457, i64 0                 ; &cloptr87457[0]
  %f87460 = load i64, i64* %i0ptr87458, align 8                                      ; load; *i0ptr87458
  %fptr87459 = inttoptr i64 %f87460 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87459(i64 %arg83916, i64 %rva85003)                 ; tail call
  ret void
}


define void @lam86649(i64 %env86650, i64 %rvp85002) {
  %envptr87461 = inttoptr i64 %env86650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87462 = getelementptr inbounds i64, i64* %envptr87461, i64 3                ; &envptr87461[3]
  %bAX$cc = load i64, i64* %envptr87462, align 8                                     ; load; *envptr87462
  %envptr87463 = inttoptr i64 %env86650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87464 = getelementptr inbounds i64, i64* %envptr87463, i64 2                ; &envptr87463[2]
  %cont83472 = load i64, i64* %envptr87464, align 8                                  ; load; *envptr87464
  %envptr87465 = inttoptr i64 %env86650 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87466 = getelementptr inbounds i64, i64* %envptr87465, i64 1                ; &envptr87465[1]
  %QDX$n = load i64, i64* %envptr87466, align 8                                      ; load; *envptr87466
  %_9583475 = call i64 @prim_car(i64 %rvp85002)                                      ; call prim_car
  %rvp85001 = call i64 @prim_cdr(i64 %rvp85002)                                      ; call prim_cdr
  %HUS$_950 = call i64 @prim_car(i64 %rvp85001)                                      ; call prim_car
  %na84990 = call i64 @prim_cdr(i64 %rvp85001)                                       ; call prim_cdr
  %arg83917 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83334 = call i64 @prim_vector_45ref(i64 %QDX$n, i64 %arg83917)                   ; call prim_vector_45ref
  %arg83919 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83335 = call i64 @prim__45(i64 %a83334, i64 %arg83919)                           ; call prim__45
  %arg83922 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83477 = call i64 @prim_vector_45set_33(i64 %QDX$n, i64 %arg83922, i64 %a83335); call prim_vector_45set_33
  %cloptr87467 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87469 = getelementptr inbounds i64, i64* %cloptr87467, i64 1                  ; &eptr87469[1]
  %eptr87470 = getelementptr inbounds i64, i64* %cloptr87467, i64 2                  ; &eptr87470[2]
  store i64 %cont83472, i64* %eptr87469                                              ; *eptr87469 = %cont83472
  store i64 %bAX$cc, i64* %eptr87470                                                 ; *eptr87470 = %bAX$cc
  %eptr87468 = getelementptr inbounds i64, i64* %cloptr87467, i64 0                  ; &cloptr87467[0]
  %f87471 = ptrtoint void(i64,i64)* @lam86644 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87471, i64* %eptr87468                                                 ; store fptr
  %arg83926 = ptrtoint i64* %cloptr87467 to i64                                      ; closure cast; i64* -> i64
  %arg83925 = add i64 0, 0                                                           ; quoted ()
  %rva85000 = add i64 0, 0                                                           ; quoted ()
  %rva84999 = call i64 @prim_cons(i64 %retprim83477, i64 %rva85000)                  ; call prim_cons
  %rva84998 = call i64 @prim_cons(i64 %arg83925, i64 %rva84999)                      ; call prim_cons
  %cloptr87472 = inttoptr i64 %arg83926 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87473 = getelementptr inbounds i64, i64* %cloptr87472, i64 0                 ; &cloptr87472[0]
  %f87475 = load i64, i64* %i0ptr87473, align 8                                      ; load; *i0ptr87473
  %fptr87474 = inttoptr i64 %f87475 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87474(i64 %arg83926, i64 %rva84998)                 ; tail call
  ret void
}


define void @lam86644(i64 %env86645, i64 %rvp84997) {
  %envptr87476 = inttoptr i64 %env86645 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87477 = getelementptr inbounds i64, i64* %envptr87476, i64 2                ; &envptr87476[2]
  %bAX$cc = load i64, i64* %envptr87477, align 8                                     ; load; *envptr87477
  %envptr87478 = inttoptr i64 %env86645 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87479 = getelementptr inbounds i64, i64* %envptr87478, i64 1                ; &envptr87478[1]
  %cont83472 = load i64, i64* %envptr87479, align 8                                  ; load; *envptr87479
  %_9583476 = call i64 @prim_car(i64 %rvp84997)                                      ; call prim_car
  %rvp84996 = call i64 @prim_cdr(i64 %rvp84997)                                      ; call prim_cdr
  %SI9$_951 = call i64 @prim_car(i64 %rvp84996)                                      ; call prim_car
  %na84992 = call i64 @prim_cdr(i64 %rvp84996)                                       ; call prim_cdr
  %rva84995 = add i64 0, 0                                                           ; quoted ()
  %rva84994 = call i64 @prim_cons(i64 %bAX$cc, i64 %rva84995)                        ; call prim_cons
  %rva84993 = call i64 @prim_cons(i64 %cont83472, i64 %rva84994)                     ; call prim_cons
  %cloptr87480 = inttoptr i64 %bAX$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87481 = getelementptr inbounds i64, i64* %cloptr87480, i64 0                 ; &cloptr87480[0]
  %f87483 = load i64, i64* %i0ptr87481, align 8                                      ; load; *i0ptr87481
  %fptr87482 = inttoptr i64 %f87483 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87482(i64 %bAX$cc, i64 %rva84993)                   ; tail call
  ret void
}


define void @lam86633(i64 %env86634, i64 %rvp85068) {
  %cont83480 = call i64 @prim_car(i64 %rvp85068)                                     ; call prim_car
  %rvp85067 = call i64 @prim_cdr(i64 %rvp85068)                                      ; call prim_cdr
  %kjn$v = call i64 @prim_car(i64 %rvp85067)                                         ; call prim_car
  %rvp85066 = call i64 @prim_cdr(i64 %rvp85067)                                      ; call prim_cdr
  %fjY$lst = call i64 @prim_car(i64 %rvp85066)                                       ; call prim_car
  %na85015 = call i64 @prim_cdr(i64 %rvp85066)                                       ; call prim_cdr
  %arg83931 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %P5U$lst = call i64 @prim_make_45vector(i64 %arg83931, i64 %fjY$lst)               ; call prim_make_45vector
  %cloptr87484 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87485 = getelementptr inbounds i64, i64* %cloptr87484, i64 0                  ; &cloptr87484[0]
  %f87486 = ptrtoint void(i64,i64)* @lam86630 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87486, i64* %eptr87485                                                 ; store fptr
  %arg83934 = ptrtoint i64* %cloptr87484 to i64                                      ; closure cast; i64* -> i64
  %cloptr87487 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87489 = getelementptr inbounds i64, i64* %cloptr87487, i64 1                  ; &eptr87489[1]
  %eptr87490 = getelementptr inbounds i64, i64* %cloptr87487, i64 2                  ; &eptr87490[2]
  %eptr87491 = getelementptr inbounds i64, i64* %cloptr87487, i64 3                  ; &eptr87491[3]
  store i64 %P5U$lst, i64* %eptr87489                                                ; *eptr87489 = %P5U$lst
  store i64 %cont83480, i64* %eptr87490                                              ; *eptr87490 = %cont83480
  store i64 %kjn$v, i64* %eptr87491                                                  ; *eptr87491 = %kjn$v
  %eptr87488 = getelementptr inbounds i64, i64* %cloptr87487, i64 0                  ; &cloptr87487[0]
  %f87492 = ptrtoint void(i64,i64)* @lam86627 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87492, i64* %eptr87488                                                 ; store fptr
  %arg83933 = ptrtoint i64* %cloptr87487 to i64                                      ; closure cast; i64* -> i64
  %cloptr87493 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87495 = getelementptr inbounds i64, i64* %cloptr87493, i64 1                  ; &eptr87495[1]
  %eptr87496 = getelementptr inbounds i64, i64* %cloptr87493, i64 2                  ; &eptr87496[2]
  %eptr87497 = getelementptr inbounds i64, i64* %cloptr87493, i64 3                  ; &eptr87497[3]
  store i64 %P5U$lst, i64* %eptr87495                                                ; *eptr87495 = %P5U$lst
  store i64 %cont83480, i64* %eptr87496                                              ; *eptr87496 = %cont83480
  store i64 %kjn$v, i64* %eptr87497                                                  ; *eptr87497 = %kjn$v
  %eptr87494 = getelementptr inbounds i64, i64* %cloptr87493, i64 0                  ; &cloptr87493[0]
  %f87498 = ptrtoint void(i64,i64)* @lam86610 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87498, i64* %eptr87494                                                 ; store fptr
  %arg83932 = ptrtoint i64* %cloptr87493 to i64                                      ; closure cast; i64* -> i64
  %rva85065 = add i64 0, 0                                                           ; quoted ()
  %rva85064 = call i64 @prim_cons(i64 %arg83932, i64 %rva85065)                      ; call prim_cons
  %rva85063 = call i64 @prim_cons(i64 %arg83933, i64 %rva85064)                      ; call prim_cons
  %cloptr87499 = inttoptr i64 %arg83934 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87500 = getelementptr inbounds i64, i64* %cloptr87499, i64 0                 ; &cloptr87499[0]
  %f87502 = load i64, i64* %i0ptr87500, align 8                                      ; load; *i0ptr87500
  %fptr87501 = inttoptr i64 %f87502 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87501(i64 %arg83934, i64 %rva85063)                 ; tail call
  ret void
}


define void @lam86630(i64 %env86631, i64 %rvp85022) {
  %cont83485 = call i64 @prim_car(i64 %rvp85022)                                     ; call prim_car
  %rvp85021 = call i64 @prim_cdr(i64 %rvp85022)                                      ; call prim_cdr
  %ZUi$u = call i64 @prim_car(i64 %rvp85021)                                         ; call prim_car
  %na85017 = call i64 @prim_cdr(i64 %rvp85021)                                       ; call prim_cdr
  %rva85020 = add i64 0, 0                                                           ; quoted ()
  %rva85019 = call i64 @prim_cons(i64 %ZUi$u, i64 %rva85020)                         ; call prim_cons
  %rva85018 = call i64 @prim_cons(i64 %cont83485, i64 %rva85019)                     ; call prim_cons
  %cloptr87503 = inttoptr i64 %ZUi$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr87504 = getelementptr inbounds i64, i64* %cloptr87503, i64 0                 ; &cloptr87503[0]
  %f87506 = load i64, i64* %i0ptr87504, align 8                                      ; load; *i0ptr87504
  %fptr87505 = inttoptr i64 %f87506 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87505(i64 %ZUi$u, i64 %rva85018)                    ; tail call
  ret void
}


define void @lam86627(i64 %env86628, i64 %rvp85042) {
  %envptr87507 = inttoptr i64 %env86628 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87508 = getelementptr inbounds i64, i64* %envptr87507, i64 3                ; &envptr87507[3]
  %kjn$v = load i64, i64* %envptr87508, align 8                                      ; load; *envptr87508
  %envptr87509 = inttoptr i64 %env86628 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87510 = getelementptr inbounds i64, i64* %envptr87509, i64 2                ; &envptr87509[2]
  %cont83480 = load i64, i64* %envptr87510, align 8                                  ; load; *envptr87510
  %envptr87511 = inttoptr i64 %env86628 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87512 = getelementptr inbounds i64, i64* %envptr87511, i64 1                ; &envptr87511[1]
  %P5U$lst = load i64, i64* %envptr87512, align 8                                    ; load; *envptr87512
  %_9583481 = call i64 @prim_car(i64 %rvp85042)                                      ; call prim_car
  %rvp85041 = call i64 @prim_cdr(i64 %rvp85042)                                      ; call prim_cdr
  %PG0$cc = call i64 @prim_car(i64 %rvp85041)                                        ; call prim_car
  %na85024 = call i64 @prim_cdr(i64 %rvp85041)                                       ; call prim_cdr
  %arg83938 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83336 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83938)                 ; call prim_vector_45ref
  %a83337 = call i64 @prim_null_63(i64 %a83336)                                      ; call prim_null_63
  %cmp87513 = icmp eq i64 %a83337, 15                                                ; false?
  br i1 %cmp87513, label %else87515, label %then87514                                ; if

then87514:
  %arg83942 = add i64 0, 0                                                           ; quoted ()
  %arg83941 = call i64 @const_init_false()                                           ; quoted #f
  %rva85027 = add i64 0, 0                                                           ; quoted ()
  %rva85026 = call i64 @prim_cons(i64 %arg83941, i64 %rva85027)                      ; call prim_cons
  %rva85025 = call i64 @prim_cons(i64 %arg83942, i64 %rva85026)                      ; call prim_cons
  %cloptr87516 = inttoptr i64 %cont83480 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87517 = getelementptr inbounds i64, i64* %cloptr87516, i64 0                 ; &cloptr87516[0]
  %f87519 = load i64, i64* %i0ptr87517, align 8                                      ; load; *i0ptr87517
  %fptr87518 = inttoptr i64 %f87519 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87518(i64 %cont83480, i64 %rva85025)                ; tail call
  ret void

else87515:
  %arg83944 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83338 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83944)                 ; call prim_vector_45ref
  %a83339 = call i64 @prim_car(i64 %a83338)                                          ; call prim_car
  %a83340 = call i64 @prim_eqv_63(i64 %a83339, i64 %kjn$v)                           ; call prim_eqv_63
  %cmp87520 = icmp eq i64 %a83340, 15                                                ; false?
  br i1 %cmp87520, label %else87522, label %then87521                                ; if

then87521:
  %arg83949 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83482 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83949)           ; call prim_vector_45ref
  %arg83952 = add i64 0, 0                                                           ; quoted ()
  %rva85030 = add i64 0, 0                                                           ; quoted ()
  %rva85029 = call i64 @prim_cons(i64 %retprim83482, i64 %rva85030)                  ; call prim_cons
  %rva85028 = call i64 @prim_cons(i64 %arg83952, i64 %rva85029)                      ; call prim_cons
  %cloptr87523 = inttoptr i64 %cont83480 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87524 = getelementptr inbounds i64, i64* %cloptr87523, i64 0                 ; &cloptr87523[0]
  %f87526 = load i64, i64* %i0ptr87524, align 8                                      ; load; *i0ptr87524
  %fptr87525 = inttoptr i64 %f87526 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87525(i64 %cont83480, i64 %rva85028)                ; tail call
  ret void

else87522:
  %arg83954 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83341 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83954)                 ; call prim_vector_45ref
  %a83342 = call i64 @prim_cdr(i64 %a83341)                                          ; call prim_cdr
  %arg83958 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83484 = call i64 @prim_vector_45set_33(i64 %P5U$lst, i64 %arg83958, i64 %a83342); call prim_vector_45set_33
  %cloptr87527 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87529 = getelementptr inbounds i64, i64* %cloptr87527, i64 1                  ; &eptr87529[1]
  %eptr87530 = getelementptr inbounds i64, i64* %cloptr87527, i64 2                  ; &eptr87530[2]
  store i64 %PG0$cc, i64* %eptr87529                                                 ; *eptr87529 = %PG0$cc
  store i64 %cont83480, i64* %eptr87530                                              ; *eptr87530 = %cont83480
  %eptr87528 = getelementptr inbounds i64, i64* %cloptr87527, i64 0                  ; &cloptr87527[0]
  %f87531 = ptrtoint void(i64,i64)* @lam86621 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87531, i64* %eptr87528                                                 ; store fptr
  %arg83962 = ptrtoint i64* %cloptr87527 to i64                                      ; closure cast; i64* -> i64
  %arg83961 = add i64 0, 0                                                           ; quoted ()
  %rva85040 = add i64 0, 0                                                           ; quoted ()
  %rva85039 = call i64 @prim_cons(i64 %retprim83484, i64 %rva85040)                  ; call prim_cons
  %rva85038 = call i64 @prim_cons(i64 %arg83961, i64 %rva85039)                      ; call prim_cons
  %cloptr87532 = inttoptr i64 %arg83962 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87533 = getelementptr inbounds i64, i64* %cloptr87532, i64 0                 ; &cloptr87532[0]
  %f87535 = load i64, i64* %i0ptr87533, align 8                                      ; load; *i0ptr87533
  %fptr87534 = inttoptr i64 %f87535 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87534(i64 %arg83962, i64 %rva85038)                 ; tail call
  ret void
}


define void @lam86621(i64 %env86622, i64 %rvp85037) {
  %envptr87536 = inttoptr i64 %env86622 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87537 = getelementptr inbounds i64, i64* %envptr87536, i64 2                ; &envptr87536[2]
  %cont83480 = load i64, i64* %envptr87537, align 8                                  ; load; *envptr87537
  %envptr87538 = inttoptr i64 %env86622 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87539 = getelementptr inbounds i64, i64* %envptr87538, i64 1                ; &envptr87538[1]
  %PG0$cc = load i64, i64* %envptr87539, align 8                                     ; load; *envptr87539
  %_9583483 = call i64 @prim_car(i64 %rvp85037)                                      ; call prim_car
  %rvp85036 = call i64 @prim_cdr(i64 %rvp85037)                                      ; call prim_cdr
  %axr$_950 = call i64 @prim_car(i64 %rvp85036)                                      ; call prim_car
  %na85032 = call i64 @prim_cdr(i64 %rvp85036)                                       ; call prim_cdr
  %rva85035 = add i64 0, 0                                                           ; quoted ()
  %rva85034 = call i64 @prim_cons(i64 %PG0$cc, i64 %rva85035)                        ; call prim_cons
  %rva85033 = call i64 @prim_cons(i64 %cont83480, i64 %rva85034)                     ; call prim_cons
  %cloptr87540 = inttoptr i64 %PG0$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87541 = getelementptr inbounds i64, i64* %cloptr87540, i64 0                 ; &cloptr87540[0]
  %f87543 = load i64, i64* %i0ptr87541, align 8                                      ; load; *i0ptr87541
  %fptr87542 = inttoptr i64 %f87543 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87542(i64 %PG0$cc, i64 %rva85033)                   ; tail call
  ret void
}


define void @lam86610(i64 %env86611, i64 %rvp85062) {
  %envptr87544 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87545 = getelementptr inbounds i64, i64* %envptr87544, i64 3                ; &envptr87544[3]
  %kjn$v = load i64, i64* %envptr87545, align 8                                      ; load; *envptr87545
  %envptr87546 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87547 = getelementptr inbounds i64, i64* %envptr87546, i64 2                ; &envptr87546[2]
  %cont83480 = load i64, i64* %envptr87547, align 8                                  ; load; *envptr87547
  %envptr87548 = inttoptr i64 %env86611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87549 = getelementptr inbounds i64, i64* %envptr87548, i64 1                ; &envptr87548[1]
  %P5U$lst = load i64, i64* %envptr87549, align 8                                    ; load; *envptr87549
  %_9583481 = call i64 @prim_car(i64 %rvp85062)                                      ; call prim_car
  %rvp85061 = call i64 @prim_cdr(i64 %rvp85062)                                      ; call prim_cdr
  %PG0$cc = call i64 @prim_car(i64 %rvp85061)                                        ; call prim_car
  %na85044 = call i64 @prim_cdr(i64 %rvp85061)                                       ; call prim_cdr
  %arg83966 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83336 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83966)                 ; call prim_vector_45ref
  %a83337 = call i64 @prim_null_63(i64 %a83336)                                      ; call prim_null_63
  %cmp87550 = icmp eq i64 %a83337, 15                                                ; false?
  br i1 %cmp87550, label %else87552, label %then87551                                ; if

then87551:
  %arg83970 = add i64 0, 0                                                           ; quoted ()
  %arg83969 = call i64 @const_init_false()                                           ; quoted #f
  %rva85047 = add i64 0, 0                                                           ; quoted ()
  %rva85046 = call i64 @prim_cons(i64 %arg83969, i64 %rva85047)                      ; call prim_cons
  %rva85045 = call i64 @prim_cons(i64 %arg83970, i64 %rva85046)                      ; call prim_cons
  %cloptr87553 = inttoptr i64 %cont83480 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87554 = getelementptr inbounds i64, i64* %cloptr87553, i64 0                 ; &cloptr87553[0]
  %f87556 = load i64, i64* %i0ptr87554, align 8                                      ; load; *i0ptr87554
  %fptr87555 = inttoptr i64 %f87556 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87555(i64 %cont83480, i64 %rva85045)                ; tail call
  ret void

else87552:
  %arg83972 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83338 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83972)                 ; call prim_vector_45ref
  %a83339 = call i64 @prim_car(i64 %a83338)                                          ; call prim_car
  %a83340 = call i64 @prim_eqv_63(i64 %a83339, i64 %kjn$v)                           ; call prim_eqv_63
  %cmp87557 = icmp eq i64 %a83340, 15                                                ; false?
  br i1 %cmp87557, label %else87559, label %then87558                                ; if

then87558:
  %arg83977 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83482 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83977)           ; call prim_vector_45ref
  %arg83980 = add i64 0, 0                                                           ; quoted ()
  %rva85050 = add i64 0, 0                                                           ; quoted ()
  %rva85049 = call i64 @prim_cons(i64 %retprim83482, i64 %rva85050)                  ; call prim_cons
  %rva85048 = call i64 @prim_cons(i64 %arg83980, i64 %rva85049)                      ; call prim_cons
  %cloptr87560 = inttoptr i64 %cont83480 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87561 = getelementptr inbounds i64, i64* %cloptr87560, i64 0                 ; &cloptr87560[0]
  %f87563 = load i64, i64* %i0ptr87561, align 8                                      ; load; *i0ptr87561
  %fptr87562 = inttoptr i64 %f87563 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87562(i64 %cont83480, i64 %rva85048)                ; tail call
  ret void

else87559:
  %arg83982 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83341 = call i64 @prim_vector_45ref(i64 %P5U$lst, i64 %arg83982)                 ; call prim_vector_45ref
  %a83342 = call i64 @prim_cdr(i64 %a83341)                                          ; call prim_cdr
  %arg83986 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83484 = call i64 @prim_vector_45set_33(i64 %P5U$lst, i64 %arg83986, i64 %a83342); call prim_vector_45set_33
  %cloptr87564 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87566 = getelementptr inbounds i64, i64* %cloptr87564, i64 1                  ; &eptr87566[1]
  %eptr87567 = getelementptr inbounds i64, i64* %cloptr87564, i64 2                  ; &eptr87567[2]
  store i64 %PG0$cc, i64* %eptr87566                                                 ; *eptr87566 = %PG0$cc
  store i64 %cont83480, i64* %eptr87567                                              ; *eptr87567 = %cont83480
  %eptr87565 = getelementptr inbounds i64, i64* %cloptr87564, i64 0                  ; &cloptr87564[0]
  %f87568 = ptrtoint void(i64,i64)* @lam86604 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87568, i64* %eptr87565                                                 ; store fptr
  %arg83990 = ptrtoint i64* %cloptr87564 to i64                                      ; closure cast; i64* -> i64
  %arg83989 = add i64 0, 0                                                           ; quoted ()
  %rva85060 = add i64 0, 0                                                           ; quoted ()
  %rva85059 = call i64 @prim_cons(i64 %retprim83484, i64 %rva85060)                  ; call prim_cons
  %rva85058 = call i64 @prim_cons(i64 %arg83989, i64 %rva85059)                      ; call prim_cons
  %cloptr87569 = inttoptr i64 %arg83990 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87570 = getelementptr inbounds i64, i64* %cloptr87569, i64 0                 ; &cloptr87569[0]
  %f87572 = load i64, i64* %i0ptr87570, align 8                                      ; load; *i0ptr87570
  %fptr87571 = inttoptr i64 %f87572 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87571(i64 %arg83990, i64 %rva85058)                 ; tail call
  ret void
}


define void @lam86604(i64 %env86605, i64 %rvp85057) {
  %envptr87573 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87574 = getelementptr inbounds i64, i64* %envptr87573, i64 2                ; &envptr87573[2]
  %cont83480 = load i64, i64* %envptr87574, align 8                                  ; load; *envptr87574
  %envptr87575 = inttoptr i64 %env86605 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87576 = getelementptr inbounds i64, i64* %envptr87575, i64 1                ; &envptr87575[1]
  %PG0$cc = load i64, i64* %envptr87576, align 8                                     ; load; *envptr87576
  %_9583483 = call i64 @prim_car(i64 %rvp85057)                                      ; call prim_car
  %rvp85056 = call i64 @prim_cdr(i64 %rvp85057)                                      ; call prim_cdr
  %axr$_950 = call i64 @prim_car(i64 %rvp85056)                                      ; call prim_car
  %na85052 = call i64 @prim_cdr(i64 %rvp85056)                                       ; call prim_cdr
  %rva85055 = add i64 0, 0                                                           ; quoted ()
  %rva85054 = call i64 @prim_cons(i64 %PG0$cc, i64 %rva85055)                        ; call prim_cons
  %rva85053 = call i64 @prim_cons(i64 %cont83480, i64 %rva85054)                     ; call prim_cons
  %cloptr87577 = inttoptr i64 %PG0$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87578 = getelementptr inbounds i64, i64* %cloptr87577, i64 0                 ; &cloptr87577[0]
  %f87580 = load i64, i64* %i0ptr87578, align 8                                      ; load; *i0ptr87578
  %fptr87579 = inttoptr i64 %f87580 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87579(i64 %PG0$cc, i64 %rva85053)                   ; tail call
  ret void
}


define void @lam86592(i64 %env86593, i64 %qEa$args83487) {
  %envptr87581 = inttoptr i64 %env86593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87582 = getelementptr inbounds i64, i64* %envptr87581, i64 1                ; &envptr87581[1]
  %yuv$_37foldl1 = load i64, i64* %envptr87582, align 8                              ; load; *envptr87582
  %cont83486 = call i64 @prim_car(i64 %qEa$args83487)                                ; call prim_car
  %qEa$args = call i64 @prim_cdr(i64 %qEa$args83487)                                 ; call prim_cdr
  %a83343 = call i64 @prim_null_63(i64 %qEa$args)                                    ; call prim_null_63
  %cmp87583 = icmp eq i64 %a83343, 15                                                ; false?
  br i1 %cmp87583, label %else87585, label %then87584                                ; if

then87584:
  %arg83998 = add i64 0, 0                                                           ; quoted ()
  %arg83997 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva85071 = add i64 0, 0                                                           ; quoted ()
  %rva85070 = call i64 @prim_cons(i64 %arg83997, i64 %rva85071)                      ; call prim_cons
  %rva85069 = call i64 @prim_cons(i64 %arg83998, i64 %rva85070)                      ; call prim_cons
  %cloptr87586 = inttoptr i64 %cont83486 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87587 = getelementptr inbounds i64, i64* %cloptr87586, i64 0                 ; &cloptr87586[0]
  %f87589 = load i64, i64* %i0ptr87587, align 8                                      ; load; *i0ptr87587
  %fptr87588 = inttoptr i64 %f87589 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87588(i64 %cont83486, i64 %rva85069)                ; tail call
  ret void

else87585:
  %a83344 = call i64 @prim_cdr(i64 %qEa$args)                                        ; call prim_cdr
  %a83345 = call i64 @prim_null_63(i64 %a83344)                                      ; call prim_null_63
  %cmp87590 = icmp eq i64 %a83345, 15                                                ; false?
  br i1 %cmp87590, label %else87592, label %then87591                                ; if

then87591:
  %retprim83488 = call i64 @prim_car(i64 %qEa$args)                                  ; call prim_car
  %arg84004 = add i64 0, 0                                                           ; quoted ()
  %rva85074 = add i64 0, 0                                                           ; quoted ()
  %rva85073 = call i64 @prim_cons(i64 %retprim83488, i64 %rva85074)                  ; call prim_cons
  %rva85072 = call i64 @prim_cons(i64 %arg84004, i64 %rva85073)                      ; call prim_cons
  %cloptr87593 = inttoptr i64 %cont83486 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87594 = getelementptr inbounds i64, i64* %cloptr87593, i64 0                 ; &cloptr87593[0]
  %f87596 = load i64, i64* %i0ptr87594, align 8                                      ; load; *i0ptr87594
  %fptr87595 = inttoptr i64 %f87596 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87595(i64 %cont83486, i64 %rva85072)                ; tail call
  ret void

else87592:
  %a83346 = call i64 @prim_car(i64 %qEa$args)                                        ; call prim_car
  %a83347 = call i64 @prim_cdr(i64 %qEa$args)                                        ; call prim_cdr
  %cloptr87597 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87598 = getelementptr inbounds i64, i64* %cloptr87597, i64 0                  ; &cloptr87597[0]
  %f87599 = ptrtoint void(i64,i64)* @lam86590 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87599, i64* %eptr87598                                                 ; store fptr
  %arg84010 = ptrtoint i64* %cloptr87597 to i64                                      ; closure cast; i64* -> i64
  %rva85087 = add i64 0, 0                                                           ; quoted ()
  %rva85086 = call i64 @prim_cons(i64 %a83347, i64 %rva85087)                        ; call prim_cons
  %rva85085 = call i64 @prim_cons(i64 %a83346, i64 %rva85086)                        ; call prim_cons
  %rva85084 = call i64 @prim_cons(i64 %arg84010, i64 %rva85085)                      ; call prim_cons
  %rva85083 = call i64 @prim_cons(i64 %cont83486, i64 %rva85084)                     ; call prim_cons
  %cloptr87600 = inttoptr i64 %yuv$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr87601 = getelementptr inbounds i64, i64* %cloptr87600, i64 0                 ; &cloptr87600[0]
  %f87603 = load i64, i64* %i0ptr87601, align 8                                      ; load; *i0ptr87601
  %fptr87602 = inttoptr i64 %f87603 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87602(i64 %yuv$_37foldl1, i64 %rva85083)            ; tail call
  ret void
}


define void @lam86590(i64 %env86591, i64 %rvp85082) {
  %cont83489 = call i64 @prim_car(i64 %rvp85082)                                     ; call prim_car
  %rvp85081 = call i64 @prim_cdr(i64 %rvp85082)                                      ; call prim_cdr
  %M2e$n = call i64 @prim_car(i64 %rvp85081)                                         ; call prim_car
  %rvp85080 = call i64 @prim_cdr(i64 %rvp85081)                                      ; call prim_cdr
  %ZaG$v = call i64 @prim_car(i64 %rvp85080)                                         ; call prim_car
  %na85076 = call i64 @prim_cdr(i64 %rvp85080)                                       ; call prim_cdr
  %retprim83490 = call i64 @prim__47(i64 %ZaG$v, i64 %M2e$n)                         ; call prim__47
  %arg84016 = add i64 0, 0                                                           ; quoted ()
  %rva85079 = add i64 0, 0                                                           ; quoted ()
  %rva85078 = call i64 @prim_cons(i64 %retprim83490, i64 %rva85079)                  ; call prim_cons
  %rva85077 = call i64 @prim_cons(i64 %arg84016, i64 %rva85078)                      ; call prim_cons
  %cloptr87604 = inttoptr i64 %cont83489 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87605 = getelementptr inbounds i64, i64* %cloptr87604, i64 0                 ; &cloptr87604[0]
  %f87607 = load i64, i64* %i0ptr87605, align 8                                      ; load; *i0ptr87605
  %fptr87606 = inttoptr i64 %f87607 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87606(i64 %cont83489, i64 %rva85077)                ; tail call
  ret void
}


define void @lam86580(i64 %env86581, i64 %rvp85094) {
  %cont83491 = call i64 @prim_car(i64 %rvp85094)                                     ; call prim_car
  %rvp85093 = call i64 @prim_cdr(i64 %rvp85094)                                      ; call prim_cdr
  %wDf$x = call i64 @prim_car(i64 %rvp85093)                                         ; call prim_car
  %na85089 = call i64 @prim_cdr(i64 %rvp85093)                                       ; call prim_cdr
  %retprim83492 = call i64 @prim_car(i64 %wDf$x)                                     ; call prim_car
  %arg84020 = add i64 0, 0                                                           ; quoted ()
  %rva85092 = add i64 0, 0                                                           ; quoted ()
  %rva85091 = call i64 @prim_cons(i64 %retprim83492, i64 %rva85092)                  ; call prim_cons
  %rva85090 = call i64 @prim_cons(i64 %arg84020, i64 %rva85091)                      ; call prim_cons
  %cloptr87608 = inttoptr i64 %cont83491 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87609 = getelementptr inbounds i64, i64* %cloptr87608, i64 0                 ; &cloptr87608[0]
  %f87611 = load i64, i64* %i0ptr87609, align 8                                      ; load; *i0ptr87609
  %fptr87610 = inttoptr i64 %f87611 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87610(i64 %cont83491, i64 %rva85090)                ; tail call
  ret void
}


define void @lam86576(i64 %env86577, i64 %rvp85101) {
  %cont83493 = call i64 @prim_car(i64 %rvp85101)                                     ; call prim_car
  %rvp85100 = call i64 @prim_cdr(i64 %rvp85101)                                      ; call prim_cdr
  %Xr3$x = call i64 @prim_car(i64 %rvp85100)                                         ; call prim_car
  %na85096 = call i64 @prim_cdr(i64 %rvp85100)                                       ; call prim_cdr
  %a83348 = call i64 @prim_cdr(i64 %Xr3$x)                                           ; call prim_cdr
  %retprim83494 = call i64 @prim_car(i64 %a83348)                                    ; call prim_car
  %arg84025 = add i64 0, 0                                                           ; quoted ()
  %rva85099 = add i64 0, 0                                                           ; quoted ()
  %rva85098 = call i64 @prim_cons(i64 %retprim83494, i64 %rva85099)                  ; call prim_cons
  %rva85097 = call i64 @prim_cons(i64 %arg84025, i64 %rva85098)                      ; call prim_cons
  %cloptr87612 = inttoptr i64 %cont83493 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87613 = getelementptr inbounds i64, i64* %cloptr87612, i64 0                 ; &cloptr87612[0]
  %f87615 = load i64, i64* %i0ptr87613, align 8                                      ; load; *i0ptr87613
  %fptr87614 = inttoptr i64 %f87615 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87614(i64 %cont83493, i64 %rva85097)                ; tail call
  ret void
}


define void @lam86572(i64 %env86573, i64 %rvp85108) {
  %cont83495 = call i64 @prim_car(i64 %rvp85108)                                     ; call prim_car
  %rvp85107 = call i64 @prim_cdr(i64 %rvp85108)                                      ; call prim_cdr
  %iIm$x = call i64 @prim_car(i64 %rvp85107)                                         ; call prim_car
  %na85103 = call i64 @prim_cdr(i64 %rvp85107)                                       ; call prim_cdr
  %a83349 = call i64 @prim_cdr(i64 %iIm$x)                                           ; call prim_cdr
  %a83350 = call i64 @prim_cdr(i64 %a83349)                                          ; call prim_cdr
  %retprim83496 = call i64 @prim_car(i64 %a83350)                                    ; call prim_car
  %arg84031 = add i64 0, 0                                                           ; quoted ()
  %rva85106 = add i64 0, 0                                                           ; quoted ()
  %rva85105 = call i64 @prim_cons(i64 %retprim83496, i64 %rva85106)                  ; call prim_cons
  %rva85104 = call i64 @prim_cons(i64 %arg84031, i64 %rva85105)                      ; call prim_cons
  %cloptr87616 = inttoptr i64 %cont83495 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87617 = getelementptr inbounds i64, i64* %cloptr87616, i64 0                 ; &cloptr87616[0]
  %f87619 = load i64, i64* %i0ptr87617, align 8                                      ; load; *i0ptr87617
  %fptr87618 = inttoptr i64 %f87619 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87618(i64 %cont83495, i64 %rva85104)                ; tail call
  ret void
}


define void @lam86568(i64 %env86569, i64 %rvp85115) {
  %cont83497 = call i64 @prim_car(i64 %rvp85115)                                     ; call prim_car
  %rvp85114 = call i64 @prim_cdr(i64 %rvp85115)                                      ; call prim_cdr
  %y4i$x = call i64 @prim_car(i64 %rvp85114)                                         ; call prim_car
  %na85110 = call i64 @prim_cdr(i64 %rvp85114)                                       ; call prim_cdr
  %a83351 = call i64 @prim_cdr(i64 %y4i$x)                                           ; call prim_cdr
  %a83352 = call i64 @prim_cdr(i64 %a83351)                                          ; call prim_cdr
  %a83353 = call i64 @prim_cdr(i64 %a83352)                                          ; call prim_cdr
  %retprim83498 = call i64 @prim_car(i64 %a83353)                                    ; call prim_car
  %arg84038 = add i64 0, 0                                                           ; quoted ()
  %rva85113 = add i64 0, 0                                                           ; quoted ()
  %rva85112 = call i64 @prim_cons(i64 %retprim83498, i64 %rva85113)                  ; call prim_cons
  %rva85111 = call i64 @prim_cons(i64 %arg84038, i64 %rva85112)                      ; call prim_cons
  %cloptr87620 = inttoptr i64 %cont83497 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87621 = getelementptr inbounds i64, i64* %cloptr87620, i64 0                 ; &cloptr87620[0]
  %f87623 = load i64, i64* %i0ptr87621, align 8                                      ; load; *i0ptr87621
  %fptr87622 = inttoptr i64 %f87623 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87622(i64 %cont83497, i64 %rva85111)                ; tail call
  ret void
}


define void @lam86564(i64 %env86565, i64 %rvp85125) {
  %cont83499 = call i64 @prim_car(i64 %rvp85125)                                     ; call prim_car
  %rvp85124 = call i64 @prim_cdr(i64 %rvp85125)                                      ; call prim_cdr
  %gEo$p = call i64 @prim_car(i64 %rvp85124)                                         ; call prim_car
  %na85117 = call i64 @prim_cdr(i64 %rvp85124)                                       ; call prim_cdr
  %a83354 = call i64 @prim_cons_63(i64 %gEo$p)                                       ; call prim_cons_63
  %cmp87624 = icmp eq i64 %a83354, 15                                                ; false?
  br i1 %cmp87624, label %else87626, label %then87625                                ; if

then87625:
  %a83355 = call i64 @prim_car(i64 %gEo$p)                                           ; call prim_car
  %arg84042 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym87627, i32 0, i32 0)); quoted string
  %retprim83500 = call i64 @prim_eq_63(i64 %a83355, i64 %arg84042)                   ; call prim_eq_63
  %arg84045 = add i64 0, 0                                                           ; quoted ()
  %rva85120 = add i64 0, 0                                                           ; quoted ()
  %rva85119 = call i64 @prim_cons(i64 %retprim83500, i64 %rva85120)                  ; call prim_cons
  %rva85118 = call i64 @prim_cons(i64 %arg84045, i64 %rva85119)                      ; call prim_cons
  %cloptr87628 = inttoptr i64 %cont83499 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87629 = getelementptr inbounds i64, i64* %cloptr87628, i64 0                 ; &cloptr87628[0]
  %f87631 = load i64, i64* %i0ptr87629, align 8                                      ; load; *i0ptr87629
  %fptr87630 = inttoptr i64 %f87631 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87630(i64 %cont83499, i64 %rva85118)                ; tail call
  ret void

else87626:
  %arg84048 = add i64 0, 0                                                           ; quoted ()
  %arg84047 = call i64 @const_init_false()                                           ; quoted #f
  %rva85123 = add i64 0, 0                                                           ; quoted ()
  %rva85122 = call i64 @prim_cons(i64 %arg84047, i64 %rva85123)                      ; call prim_cons
  %rva85121 = call i64 @prim_cons(i64 %arg84048, i64 %rva85122)                      ; call prim_cons
  %cloptr87632 = inttoptr i64 %cont83499 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87633 = getelementptr inbounds i64, i64* %cloptr87632, i64 0                 ; &cloptr87632[0]
  %f87635 = load i64, i64* %i0ptr87633, align 8                                      ; load; *i0ptr87633
  %fptr87634 = inttoptr i64 %f87635 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87634(i64 %cont83499, i64 %rva85121)                ; tail call
  ret void
}


define void @lam86556(i64 %env86557, i64 %V3t$lst83592) {
  %cont83591 = call i64 @prim_car(i64 %V3t$lst83592)                                 ; call prim_car
  %V3t$lst = call i64 @prim_cdr(i64 %V3t$lst83592)                                   ; call prim_cdr
  %arg84055 = add i64 0, 0                                                           ; quoted ()
  %rva85128 = add i64 0, 0                                                           ; quoted ()
  %rva85127 = call i64 @prim_cons(i64 %V3t$lst, i64 %rva85128)                       ; call prim_cons
  %rva85126 = call i64 @prim_cons(i64 %arg84055, i64 %rva85127)                      ; call prim_cons
  %cloptr87636 = inttoptr i64 %cont83591 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87637 = getelementptr inbounds i64, i64* %cloptr87636, i64 0                 ; &cloptr87636[0]
  %f87639 = load i64, i64* %i0ptr87637, align 8                                      ; load; *i0ptr87637
  %fptr87638 = inttoptr i64 %f87639 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87638(i64 %cont83591, i64 %rva85126)                ; tail call
  ret void
}


define void @lam86552(i64 %env86553, i64 %rvp85630) {
  %envptr87640 = inttoptr i64 %env86553 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87641 = getelementptr inbounds i64, i64* %envptr87640, i64 4                ; &envptr87640[4]
  %Iic$_37drop = load i64, i64* %envptr87641, align 8                                ; load; *envptr87641
  %envptr87642 = inttoptr i64 %env86553 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87643 = getelementptr inbounds i64, i64* %envptr87642, i64 3                ; &envptr87642[3]
  %Eic$_37_62 = load i64, i64* %envptr87643, align 8                                 ; load; *envptr87643
  %envptr87644 = inttoptr i64 %env86553 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87645 = getelementptr inbounds i64, i64* %envptr87644, i64 2                ; &envptr87644[2]
  %Pql$_37length = load i64, i64* %envptr87645, align 8                              ; load; *envptr87645
  %envptr87646 = inttoptr i64 %env86553 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87647 = getelementptr inbounds i64, i64* %envptr87646, i64 1                ; &envptr87646[1]
  %hEZ$_37append = load i64, i64* %envptr87647, align 8                              ; load; *envptr87647
  %_9583501 = call i64 @prim_car(i64 %rvp85630)                                      ; call prim_car
  %rvp85629 = call i64 @prim_cdr(i64 %rvp85630)                                      ; call prim_cdr
  %suz$_37raise_45handler = call i64 @prim_car(i64 %rvp85629)                        ; call prim_car
  %na85130 = call i64 @prim_cdr(i64 %rvp85629)                                       ; call prim_cdr
  %cloptr87648 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87649 = getelementptr inbounds i64, i64* %cloptr87648, i64 0                  ; &cloptr87648[0]
  %f87650 = ptrtoint void(i64,i64)* @lam86550 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87650, i64* %eptr87649                                                 ; store fptr
  %arg84058 = ptrtoint i64* %cloptr87648 to i64                                      ; closure cast; i64* -> i64
  %cloptr87651 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87653 = getelementptr inbounds i64, i64* %cloptr87651, i64 1                  ; &eptr87653[1]
  %eptr87654 = getelementptr inbounds i64, i64* %cloptr87651, i64 2                  ; &eptr87654[2]
  %eptr87655 = getelementptr inbounds i64, i64* %cloptr87651, i64 3                  ; &eptr87655[3]
  %eptr87656 = getelementptr inbounds i64, i64* %cloptr87651, i64 4                  ; &eptr87656[4]
  store i64 %hEZ$_37append, i64* %eptr87653                                          ; *eptr87653 = %hEZ$_37append
  store i64 %Pql$_37length, i64* %eptr87654                                          ; *eptr87654 = %Pql$_37length
  store i64 %Eic$_37_62, i64* %eptr87655                                             ; *eptr87655 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87656                                            ; *eptr87656 = %Iic$_37drop
  %eptr87652 = getelementptr inbounds i64, i64* %cloptr87651, i64 0                  ; &cloptr87651[0]
  %f87657 = ptrtoint void(i64,i64)* @lam86546 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87657, i64* %eptr87652                                                 ; store fptr
  %arg84057 = ptrtoint i64* %cloptr87651 to i64                                      ; closure cast; i64* -> i64
  %rva85628 = add i64 0, 0                                                           ; quoted ()
  %rva85627 = call i64 @prim_cons(i64 %arg84057, i64 %rva85628)                      ; call prim_cons
  %cloptr87658 = inttoptr i64 %arg84058 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87659 = getelementptr inbounds i64, i64* %cloptr87658, i64 0                 ; &cloptr87658[0]
  %f87661 = load i64, i64* %i0ptr87659, align 8                                      ; load; *i0ptr87659
  %fptr87660 = inttoptr i64 %f87661 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87660(i64 %arg84058, i64 %rva85627)                 ; tail call
  ret void
}


define void @lam86550(i64 %env86551, i64 %T1F$lst83590) {
  %cont83589 = call i64 @prim_car(i64 %T1F$lst83590)                                 ; call prim_car
  %T1F$lst = call i64 @prim_cdr(i64 %T1F$lst83590)                                   ; call prim_cdr
  %arg84062 = add i64 0, 0                                                           ; quoted ()
  %rva85133 = add i64 0, 0                                                           ; quoted ()
  %rva85132 = call i64 @prim_cons(i64 %T1F$lst, i64 %rva85133)                       ; call prim_cons
  %rva85131 = call i64 @prim_cons(i64 %arg84062, i64 %rva85132)                      ; call prim_cons
  %cloptr87662 = inttoptr i64 %cont83589 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87663 = getelementptr inbounds i64, i64* %cloptr87662, i64 0                 ; &cloptr87662[0]
  %f87665 = load i64, i64* %i0ptr87663, align 8                                      ; load; *i0ptr87663
  %fptr87664 = inttoptr i64 %f87665 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87664(i64 %cont83589, i64 %rva85131)                ; tail call
  ret void
}


define void @lam86546(i64 %env86547, i64 %rvp85626) {
  %envptr87666 = inttoptr i64 %env86547 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87667 = getelementptr inbounds i64, i64* %envptr87666, i64 4                ; &envptr87666[4]
  %Iic$_37drop = load i64, i64* %envptr87667, align 8                                ; load; *envptr87667
  %envptr87668 = inttoptr i64 %env86547 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87669 = getelementptr inbounds i64, i64* %envptr87668, i64 3                ; &envptr87668[3]
  %Eic$_37_62 = load i64, i64* %envptr87669, align 8                                 ; load; *envptr87669
  %envptr87670 = inttoptr i64 %env86547 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87671 = getelementptr inbounds i64, i64* %envptr87670, i64 2                ; &envptr87670[2]
  %Pql$_37length = load i64, i64* %envptr87671, align 8                              ; load; *envptr87671
  %envptr87672 = inttoptr i64 %env86547 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87673 = getelementptr inbounds i64, i64* %envptr87672, i64 1                ; &envptr87672[1]
  %hEZ$_37append = load i64, i64* %envptr87673, align 8                              ; load; *envptr87673
  %_9583587 = call i64 @prim_car(i64 %rvp85626)                                      ; call prim_car
  %rvp85625 = call i64 @prim_cdr(i64 %rvp85626)                                      ; call prim_cdr
  %a83356 = call i64 @prim_car(i64 %rvp85625)                                        ; call prim_car
  %na85135 = call i64 @prim_cdr(i64 %rvp85625)                                       ; call prim_cdr
  %arg84065 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83588 = call i64 @prim_make_45vector(i64 %arg84065, i64 %a83356)           ; call prim_make_45vector
  %cloptr87674 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr87676 = getelementptr inbounds i64, i64* %cloptr87674, i64 1                  ; &eptr87676[1]
  %eptr87677 = getelementptr inbounds i64, i64* %cloptr87674, i64 2                  ; &eptr87677[2]
  %eptr87678 = getelementptr inbounds i64, i64* %cloptr87674, i64 3                  ; &eptr87678[3]
  %eptr87679 = getelementptr inbounds i64, i64* %cloptr87674, i64 4                  ; &eptr87679[4]
  store i64 %hEZ$_37append, i64* %eptr87676                                          ; *eptr87676 = %hEZ$_37append
  store i64 %Pql$_37length, i64* %eptr87677                                          ; *eptr87677 = %Pql$_37length
  store i64 %Eic$_37_62, i64* %eptr87678                                             ; *eptr87678 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87679                                            ; *eptr87679 = %Iic$_37drop
  %eptr87675 = getelementptr inbounds i64, i64* %cloptr87674, i64 0                  ; &cloptr87674[0]
  %f87680 = ptrtoint void(i64,i64)* @lam86543 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87680, i64* %eptr87675                                                 ; store fptr
  %arg84068 = ptrtoint i64* %cloptr87674 to i64                                      ; closure cast; i64* -> i64
  %arg84067 = add i64 0, 0                                                           ; quoted ()
  %rva85624 = add i64 0, 0                                                           ; quoted ()
  %rva85623 = call i64 @prim_cons(i64 %retprim83588, i64 %rva85624)                  ; call prim_cons
  %rva85622 = call i64 @prim_cons(i64 %arg84067, i64 %rva85623)                      ; call prim_cons
  %cloptr87681 = inttoptr i64 %arg84068 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87682 = getelementptr inbounds i64, i64* %cloptr87681, i64 0                 ; &cloptr87681[0]
  %f87684 = load i64, i64* %i0ptr87682, align 8                                      ; load; *i0ptr87682
  %fptr87683 = inttoptr i64 %f87684 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87683(i64 %arg84068, i64 %rva85622)                 ; tail call
  ret void
}


define void @lam86543(i64 %env86544, i64 %rvp85621) {
  %envptr87685 = inttoptr i64 %env86544 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87686 = getelementptr inbounds i64, i64* %envptr87685, i64 4                ; &envptr87685[4]
  %Iic$_37drop = load i64, i64* %envptr87686, align 8                                ; load; *envptr87686
  %envptr87687 = inttoptr i64 %env86544 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87688 = getelementptr inbounds i64, i64* %envptr87687, i64 3                ; &envptr87687[3]
  %Eic$_37_62 = load i64, i64* %envptr87688, align 8                                 ; load; *envptr87688
  %envptr87689 = inttoptr i64 %env86544 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87690 = getelementptr inbounds i64, i64* %envptr87689, i64 2                ; &envptr87689[2]
  %Pql$_37length = load i64, i64* %envptr87690, align 8                              ; load; *envptr87690
  %envptr87691 = inttoptr i64 %env86544 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87692 = getelementptr inbounds i64, i64* %envptr87691, i64 1                ; &envptr87691[1]
  %hEZ$_37append = load i64, i64* %envptr87692, align 8                              ; load; *envptr87692
  %_9583502 = call i64 @prim_car(i64 %rvp85621)                                      ; call prim_car
  %rvp85620 = call i64 @prim_cdr(i64 %rvp85621)                                      ; call prim_cdr
  %cmL$_37wind_45stack = call i64 @prim_car(i64 %rvp85620)                           ; call prim_car
  %na85137 = call i64 @prim_cdr(i64 %rvp85620)                                       ; call prim_cdr
  %cloptr87693 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87695 = getelementptr inbounds i64, i64* %cloptr87693, i64 1                  ; &eptr87695[1]
  %eptr87696 = getelementptr inbounds i64, i64* %cloptr87693, i64 2                  ; &eptr87696[2]
  %eptr87697 = getelementptr inbounds i64, i64* %cloptr87693, i64 3                  ; &eptr87697[3]
  store i64 %Pql$_37length, i64* %eptr87695                                          ; *eptr87695 = %Pql$_37length
  store i64 %Eic$_37_62, i64* %eptr87696                                             ; *eptr87696 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87697                                            ; *eptr87697 = %Iic$_37drop
  %eptr87694 = getelementptr inbounds i64, i64* %cloptr87693, i64 0                  ; &cloptr87693[0]
  %f87698 = ptrtoint void(i64,i64)* @lam86541 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87698, i64* %eptr87694                                                 ; store fptr
  %yol$_37common_45tail = ptrtoint i64* %cloptr87693 to i64                          ; closure cast; i64* -> i64
  %cloptr87699 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr87701 = getelementptr inbounds i64, i64* %cloptr87699, i64 1                  ; &eptr87701[1]
  %eptr87702 = getelementptr inbounds i64, i64* %cloptr87699, i64 2                  ; &eptr87702[2]
  store i64 %cmL$_37wind_45stack, i64* %eptr87701                                    ; *eptr87701 = %cmL$_37wind_45stack
  store i64 %yol$_37common_45tail, i64* %eptr87702                                   ; *eptr87702 = %yol$_37common_45tail
  %eptr87700 = getelementptr inbounds i64, i64* %cloptr87699, i64 0                  ; &cloptr87699[0]
  %f87703 = ptrtoint void(i64,i64)* @lam86479 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87703, i64* %eptr87700                                                 ; store fptr
  %kzP$_37do_45wind = ptrtoint i64* %cloptr87699 to i64                              ; closure cast; i64* -> i64
  %cloptr87704 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87705 = getelementptr inbounds i64, i64* %cloptr87704, i64 0                  ; &cloptr87704[0]
  %f87706 = ptrtoint void(i64,i64)* @lam86412 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87706, i64* %eptr87705                                                 ; store fptr
  %arg84254 = ptrtoint i64* %cloptr87704 to i64                                      ; closure cast; i64* -> i64
  %cloptr87707 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87709 = getelementptr inbounds i64, i64* %cloptr87707, i64 1                  ; &eptr87709[1]
  store i64 %hEZ$_37append, i64* %eptr87709                                          ; *eptr87709 = %hEZ$_37append
  %eptr87708 = getelementptr inbounds i64, i64* %cloptr87707, i64 0                  ; &cloptr87707[0]
  %f87710 = ptrtoint void(i64,i64)* @lam86408 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87710, i64* %eptr87708                                                 ; store fptr
  %arg84253 = ptrtoint i64* %cloptr87707 to i64                                      ; closure cast; i64* -> i64
  %rva85619 = add i64 0, 0                                                           ; quoted ()
  %rva85618 = call i64 @prim_cons(i64 %arg84253, i64 %rva85619)                      ; call prim_cons
  %cloptr87711 = inttoptr i64 %arg84254 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87712 = getelementptr inbounds i64, i64* %cloptr87711, i64 0                 ; &cloptr87711[0]
  %f87714 = load i64, i64* %i0ptr87712, align 8                                      ; load; *i0ptr87712
  %fptr87713 = inttoptr i64 %f87714 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87713(i64 %arg84254, i64 %rva85618)                 ; tail call
  ret void
}


define void @lam86541(i64 %env86542, i64 %rvp85269) {
  %envptr87715 = inttoptr i64 %env86542 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87716 = getelementptr inbounds i64, i64* %envptr87715, i64 3                ; &envptr87715[3]
  %Iic$_37drop = load i64, i64* %envptr87716, align 8                                ; load; *envptr87716
  %envptr87717 = inttoptr i64 %env86542 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87718 = getelementptr inbounds i64, i64* %envptr87717, i64 2                ; &envptr87717[2]
  %Eic$_37_62 = load i64, i64* %envptr87718, align 8                                 ; load; *envptr87718
  %envptr87719 = inttoptr i64 %env86542 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87720 = getelementptr inbounds i64, i64* %envptr87719, i64 1                ; &envptr87719[1]
  %Pql$_37length = load i64, i64* %envptr87720, align 8                              ; load; *envptr87720
  %cont83503 = call i64 @prim_car(i64 %rvp85269)                                     ; call prim_car
  %rvp85268 = call i64 @prim_cdr(i64 %rvp85269)                                      ; call prim_cdr
  %lIp$x = call i64 @prim_car(i64 %rvp85268)                                         ; call prim_car
  %rvp85267 = call i64 @prim_cdr(i64 %rvp85268)                                      ; call prim_cdr
  %qse$y = call i64 @prim_car(i64 %rvp85267)                                         ; call prim_car
  %na85139 = call i64 @prim_cdr(i64 %rvp85267)                                       ; call prim_cdr
  %cloptr87721 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr87723 = getelementptr inbounds i64, i64* %cloptr87721, i64 1                  ; &eptr87723[1]
  %eptr87724 = getelementptr inbounds i64, i64* %cloptr87721, i64 2                  ; &eptr87724[2]
  %eptr87725 = getelementptr inbounds i64, i64* %cloptr87721, i64 3                  ; &eptr87725[3]
  %eptr87726 = getelementptr inbounds i64, i64* %cloptr87721, i64 4                  ; &eptr87726[4]
  %eptr87727 = getelementptr inbounds i64, i64* %cloptr87721, i64 5                  ; &eptr87727[5]
  %eptr87728 = getelementptr inbounds i64, i64* %cloptr87721, i64 6                  ; &eptr87728[6]
  store i64 %cont83503, i64* %eptr87723                                              ; *eptr87723 = %cont83503
  store i64 %Pql$_37length, i64* %eptr87724                                          ; *eptr87724 = %Pql$_37length
  store i64 %Eic$_37_62, i64* %eptr87725                                             ; *eptr87725 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87726                                            ; *eptr87726 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87727                                                  ; *eptr87727 = %qse$y
  store i64 %lIp$x, i64* %eptr87728                                                  ; *eptr87728 = %lIp$x
  %eptr87722 = getelementptr inbounds i64, i64* %cloptr87721, i64 0                  ; &cloptr87721[0]
  %f87729 = ptrtoint void(i64,i64)* @lam86539 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87729, i64* %eptr87722                                                 ; store fptr
  %arg84070 = ptrtoint i64* %cloptr87721 to i64                                      ; closure cast; i64* -> i64
  %rva85266 = add i64 0, 0                                                           ; quoted ()
  %rva85265 = call i64 @prim_cons(i64 %lIp$x, i64 %rva85266)                         ; call prim_cons
  %rva85264 = call i64 @prim_cons(i64 %arg84070, i64 %rva85265)                      ; call prim_cons
  %cloptr87730 = inttoptr i64 %Pql$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr87731 = getelementptr inbounds i64, i64* %cloptr87730, i64 0                 ; &cloptr87730[0]
  %f87733 = load i64, i64* %i0ptr87731, align 8                                      ; load; *i0ptr87731
  %fptr87732 = inttoptr i64 %f87733 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87732(i64 %Pql$_37length, i64 %rva85264)            ; tail call
  ret void
}


define void @lam86539(i64 %env86540, i64 %rvp85263) {
  %envptr87734 = inttoptr i64 %env86540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87735 = getelementptr inbounds i64, i64* %envptr87734, i64 6                ; &envptr87734[6]
  %lIp$x = load i64, i64* %envptr87735, align 8                                      ; load; *envptr87735
  %envptr87736 = inttoptr i64 %env86540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87737 = getelementptr inbounds i64, i64* %envptr87736, i64 5                ; &envptr87736[5]
  %qse$y = load i64, i64* %envptr87737, align 8                                      ; load; *envptr87737
  %envptr87738 = inttoptr i64 %env86540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87739 = getelementptr inbounds i64, i64* %envptr87738, i64 4                ; &envptr87738[4]
  %Iic$_37drop = load i64, i64* %envptr87739, align 8                                ; load; *envptr87739
  %envptr87740 = inttoptr i64 %env86540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87741 = getelementptr inbounds i64, i64* %envptr87740, i64 3                ; &envptr87740[3]
  %Eic$_37_62 = load i64, i64* %envptr87741, align 8                                 ; load; *envptr87741
  %envptr87742 = inttoptr i64 %env86540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87743 = getelementptr inbounds i64, i64* %envptr87742, i64 2                ; &envptr87742[2]
  %Pql$_37length = load i64, i64* %envptr87743, align 8                              ; load; *envptr87743
  %envptr87744 = inttoptr i64 %env86540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87745 = getelementptr inbounds i64, i64* %envptr87744, i64 1                ; &envptr87744[1]
  %cont83503 = load i64, i64* %envptr87745, align 8                                  ; load; *envptr87745
  %_9583504 = call i64 @prim_car(i64 %rvp85263)                                      ; call prim_car
  %rvp85262 = call i64 @prim_cdr(i64 %rvp85263)                                      ; call prim_cdr
  %PVS$lx = call i64 @prim_car(i64 %rvp85262)                                        ; call prim_car
  %na85141 = call i64 @prim_cdr(i64 %rvp85262)                                       ; call prim_cdr
  %cloptr87746 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr87748 = getelementptr inbounds i64, i64* %cloptr87746, i64 1                  ; &eptr87748[1]
  %eptr87749 = getelementptr inbounds i64, i64* %cloptr87746, i64 2                  ; &eptr87749[2]
  %eptr87750 = getelementptr inbounds i64, i64* %cloptr87746, i64 3                  ; &eptr87750[3]
  %eptr87751 = getelementptr inbounds i64, i64* %cloptr87746, i64 4                  ; &eptr87751[4]
  %eptr87752 = getelementptr inbounds i64, i64* %cloptr87746, i64 5                  ; &eptr87752[5]
  %eptr87753 = getelementptr inbounds i64, i64* %cloptr87746, i64 6                  ; &eptr87753[6]
  store i64 %cont83503, i64* %eptr87748                                              ; *eptr87748 = %cont83503
  store i64 %PVS$lx, i64* %eptr87749                                                 ; *eptr87749 = %PVS$lx
  store i64 %Eic$_37_62, i64* %eptr87750                                             ; *eptr87750 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87751                                            ; *eptr87751 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87752                                                  ; *eptr87752 = %qse$y
  store i64 %lIp$x, i64* %eptr87753                                                  ; *eptr87753 = %lIp$x
  %eptr87747 = getelementptr inbounds i64, i64* %cloptr87746, i64 0                  ; &cloptr87746[0]
  %f87754 = ptrtoint void(i64,i64)* @lam86537 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87754, i64* %eptr87747                                                 ; store fptr
  %arg84073 = ptrtoint i64* %cloptr87746 to i64                                      ; closure cast; i64* -> i64
  %rva85261 = add i64 0, 0                                                           ; quoted ()
  %rva85260 = call i64 @prim_cons(i64 %qse$y, i64 %rva85261)                         ; call prim_cons
  %rva85259 = call i64 @prim_cons(i64 %arg84073, i64 %rva85260)                      ; call prim_cons
  %cloptr87755 = inttoptr i64 %Pql$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr87756 = getelementptr inbounds i64, i64* %cloptr87755, i64 0                 ; &cloptr87755[0]
  %f87758 = load i64, i64* %i0ptr87756, align 8                                      ; load; *i0ptr87756
  %fptr87757 = inttoptr i64 %f87758 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87757(i64 %Pql$_37length, i64 %rva85259)            ; tail call
  ret void
}


define void @lam86537(i64 %env86538, i64 %rvp85258) {
  %envptr87759 = inttoptr i64 %env86538 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87760 = getelementptr inbounds i64, i64* %envptr87759, i64 6                ; &envptr87759[6]
  %lIp$x = load i64, i64* %envptr87760, align 8                                      ; load; *envptr87760
  %envptr87761 = inttoptr i64 %env86538 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87762 = getelementptr inbounds i64, i64* %envptr87761, i64 5                ; &envptr87761[5]
  %qse$y = load i64, i64* %envptr87762, align 8                                      ; load; *envptr87762
  %envptr87763 = inttoptr i64 %env86538 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87764 = getelementptr inbounds i64, i64* %envptr87763, i64 4                ; &envptr87763[4]
  %Iic$_37drop = load i64, i64* %envptr87764, align 8                                ; load; *envptr87764
  %envptr87765 = inttoptr i64 %env86538 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87766 = getelementptr inbounds i64, i64* %envptr87765, i64 3                ; &envptr87765[3]
  %Eic$_37_62 = load i64, i64* %envptr87766, align 8                                 ; load; *envptr87766
  %envptr87767 = inttoptr i64 %env86538 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87768 = getelementptr inbounds i64, i64* %envptr87767, i64 2                ; &envptr87767[2]
  %PVS$lx = load i64, i64* %envptr87768, align 8                                     ; load; *envptr87768
  %envptr87769 = inttoptr i64 %env86538 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87770 = getelementptr inbounds i64, i64* %envptr87769, i64 1                ; &envptr87769[1]
  %cont83503 = load i64, i64* %envptr87770, align 8                                  ; load; *envptr87770
  %_9583505 = call i64 @prim_car(i64 %rvp85258)                                      ; call prim_car
  %rvp85257 = call i64 @prim_cdr(i64 %rvp85258)                                      ; call prim_cdr
  %kew$ly = call i64 @prim_car(i64 %rvp85257)                                        ; call prim_car
  %na85143 = call i64 @prim_cdr(i64 %rvp85257)                                       ; call prim_cdr
  %cloptr87771 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr87772 = getelementptr inbounds i64, i64* %cloptr87771, i64 0                  ; &cloptr87771[0]
  %f87773 = ptrtoint void(i64,i64)* @lam86535 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87773, i64* %eptr87772                                                 ; store fptr
  %arg84076 = ptrtoint i64* %cloptr87771 to i64                                      ; closure cast; i64* -> i64
  %cloptr87774 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr87776 = getelementptr inbounds i64, i64* %cloptr87774, i64 1                  ; &eptr87776[1]
  %eptr87777 = getelementptr inbounds i64, i64* %cloptr87774, i64 2                  ; &eptr87777[2]
  %eptr87778 = getelementptr inbounds i64, i64* %cloptr87774, i64 3                  ; &eptr87778[3]
  %eptr87779 = getelementptr inbounds i64, i64* %cloptr87774, i64 4                  ; &eptr87779[4]
  %eptr87780 = getelementptr inbounds i64, i64* %cloptr87774, i64 5                  ; &eptr87780[5]
  %eptr87781 = getelementptr inbounds i64, i64* %cloptr87774, i64 6                  ; &eptr87781[6]
  %eptr87782 = getelementptr inbounds i64, i64* %cloptr87774, i64 7                  ; &eptr87782[7]
  store i64 %cont83503, i64* %eptr87776                                              ; *eptr87776 = %cont83503
  store i64 %PVS$lx, i64* %eptr87777                                                 ; *eptr87777 = %PVS$lx
  store i64 %kew$ly, i64* %eptr87778                                                 ; *eptr87778 = %kew$ly
  store i64 %Eic$_37_62, i64* %eptr87779                                             ; *eptr87779 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87780                                            ; *eptr87780 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87781                                                  ; *eptr87781 = %qse$y
  store i64 %lIp$x, i64* %eptr87782                                                  ; *eptr87782 = %lIp$x
  %eptr87775 = getelementptr inbounds i64, i64* %cloptr87774, i64 0                  ; &cloptr87774[0]
  %f87783 = ptrtoint void(i64,i64)* @lam86531 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87783, i64* %eptr87775                                                 ; store fptr
  %arg84075 = ptrtoint i64* %cloptr87774 to i64                                      ; closure cast; i64* -> i64
  %rva85256 = add i64 0, 0                                                           ; quoted ()
  %rva85255 = call i64 @prim_cons(i64 %arg84075, i64 %rva85256)                      ; call prim_cons
  %cloptr87784 = inttoptr i64 %arg84076 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87785 = getelementptr inbounds i64, i64* %cloptr87784, i64 0                 ; &cloptr87784[0]
  %f87787 = load i64, i64* %i0ptr87785, align 8                                      ; load; *i0ptr87785
  %fptr87786 = inttoptr i64 %f87787 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87786(i64 %arg84076, i64 %rva85255)                 ; tail call
  ret void
}


define void @lam86535(i64 %env86536, i64 %TJh$lst83515) {
  %cont83514 = call i64 @prim_car(i64 %TJh$lst83515)                                 ; call prim_car
  %TJh$lst = call i64 @prim_cdr(i64 %TJh$lst83515)                                   ; call prim_cdr
  %arg84080 = add i64 0, 0                                                           ; quoted ()
  %rva85146 = add i64 0, 0                                                           ; quoted ()
  %rva85145 = call i64 @prim_cons(i64 %TJh$lst, i64 %rva85146)                       ; call prim_cons
  %rva85144 = call i64 @prim_cons(i64 %arg84080, i64 %rva85145)                      ; call prim_cons
  %cloptr87788 = inttoptr i64 %cont83514 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87789 = getelementptr inbounds i64, i64* %cloptr87788, i64 0                 ; &cloptr87788[0]
  %f87791 = load i64, i64* %i0ptr87789, align 8                                      ; load; *i0ptr87789
  %fptr87790 = inttoptr i64 %f87791 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87790(i64 %cont83514, i64 %rva85144)                ; tail call
  ret void
}


define void @lam86531(i64 %env86532, i64 %rvp85254) {
  %envptr87792 = inttoptr i64 %env86532 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87793 = getelementptr inbounds i64, i64* %envptr87792, i64 7                ; &envptr87792[7]
  %lIp$x = load i64, i64* %envptr87793, align 8                                      ; load; *envptr87793
  %envptr87794 = inttoptr i64 %env86532 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87795 = getelementptr inbounds i64, i64* %envptr87794, i64 6                ; &envptr87794[6]
  %qse$y = load i64, i64* %envptr87795, align 8                                      ; load; *envptr87795
  %envptr87796 = inttoptr i64 %env86532 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87797 = getelementptr inbounds i64, i64* %envptr87796, i64 5                ; &envptr87796[5]
  %Iic$_37drop = load i64, i64* %envptr87797, align 8                                ; load; *envptr87797
  %envptr87798 = inttoptr i64 %env86532 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87799 = getelementptr inbounds i64, i64* %envptr87798, i64 4                ; &envptr87798[4]
  %Eic$_37_62 = load i64, i64* %envptr87799, align 8                                 ; load; *envptr87799
  %envptr87800 = inttoptr i64 %env86532 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87801 = getelementptr inbounds i64, i64* %envptr87800, i64 3                ; &envptr87800[3]
  %kew$ly = load i64, i64* %envptr87801, align 8                                     ; load; *envptr87801
  %envptr87802 = inttoptr i64 %env86532 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87803 = getelementptr inbounds i64, i64* %envptr87802, i64 2                ; &envptr87802[2]
  %PVS$lx = load i64, i64* %envptr87803, align 8                                     ; load; *envptr87803
  %envptr87804 = inttoptr i64 %env86532 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87805 = getelementptr inbounds i64, i64* %envptr87804, i64 1                ; &envptr87804[1]
  %cont83503 = load i64, i64* %envptr87805, align 8                                  ; load; *envptr87805
  %_9583512 = call i64 @prim_car(i64 %rvp85254)                                      ; call prim_car
  %rvp85253 = call i64 @prim_cdr(i64 %rvp85254)                                      ; call prim_cdr
  %a83357 = call i64 @prim_car(i64 %rvp85253)                                        ; call prim_car
  %na85148 = call i64 @prim_cdr(i64 %rvp85253)                                       ; call prim_cdr
  %arg84083 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83513 = call i64 @prim_make_45vector(i64 %arg84083, i64 %a83357)           ; call prim_make_45vector
  %cloptr87806 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr87808 = getelementptr inbounds i64, i64* %cloptr87806, i64 1                  ; &eptr87808[1]
  %eptr87809 = getelementptr inbounds i64, i64* %cloptr87806, i64 2                  ; &eptr87809[2]
  %eptr87810 = getelementptr inbounds i64, i64* %cloptr87806, i64 3                  ; &eptr87810[3]
  %eptr87811 = getelementptr inbounds i64, i64* %cloptr87806, i64 4                  ; &eptr87811[4]
  %eptr87812 = getelementptr inbounds i64, i64* %cloptr87806, i64 5                  ; &eptr87812[5]
  %eptr87813 = getelementptr inbounds i64, i64* %cloptr87806, i64 6                  ; &eptr87813[6]
  %eptr87814 = getelementptr inbounds i64, i64* %cloptr87806, i64 7                  ; &eptr87814[7]
  store i64 %cont83503, i64* %eptr87808                                              ; *eptr87808 = %cont83503
  store i64 %PVS$lx, i64* %eptr87809                                                 ; *eptr87809 = %PVS$lx
  store i64 %kew$ly, i64* %eptr87810                                                 ; *eptr87810 = %kew$ly
  store i64 %Eic$_37_62, i64* %eptr87811                                             ; *eptr87811 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87812                                            ; *eptr87812 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87813                                                  ; *eptr87813 = %qse$y
  store i64 %lIp$x, i64* %eptr87814                                                  ; *eptr87814 = %lIp$x
  %eptr87807 = getelementptr inbounds i64, i64* %cloptr87806, i64 0                  ; &cloptr87806[0]
  %f87815 = ptrtoint void(i64,i64)* @lam86528 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87815, i64* %eptr87807                                                 ; store fptr
  %arg84086 = ptrtoint i64* %cloptr87806 to i64                                      ; closure cast; i64* -> i64
  %arg84085 = add i64 0, 0                                                           ; quoted ()
  %rva85252 = add i64 0, 0                                                           ; quoted ()
  %rva85251 = call i64 @prim_cons(i64 %retprim83513, i64 %rva85252)                  ; call prim_cons
  %rva85250 = call i64 @prim_cons(i64 %arg84085, i64 %rva85251)                      ; call prim_cons
  %cloptr87816 = inttoptr i64 %arg84086 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87817 = getelementptr inbounds i64, i64* %cloptr87816, i64 0                 ; &cloptr87816[0]
  %f87819 = load i64, i64* %i0ptr87817, align 8                                      ; load; *i0ptr87817
  %fptr87818 = inttoptr i64 %f87819 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87818(i64 %arg84086, i64 %rva85250)                 ; tail call
  ret void
}


define void @lam86528(i64 %env86529, i64 %rvp85249) {
  %envptr87820 = inttoptr i64 %env86529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87821 = getelementptr inbounds i64, i64* %envptr87820, i64 7                ; &envptr87820[7]
  %lIp$x = load i64, i64* %envptr87821, align 8                                      ; load; *envptr87821
  %envptr87822 = inttoptr i64 %env86529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87823 = getelementptr inbounds i64, i64* %envptr87822, i64 6                ; &envptr87822[6]
  %qse$y = load i64, i64* %envptr87823, align 8                                      ; load; *envptr87823
  %envptr87824 = inttoptr i64 %env86529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87825 = getelementptr inbounds i64, i64* %envptr87824, i64 5                ; &envptr87824[5]
  %Iic$_37drop = load i64, i64* %envptr87825, align 8                                ; load; *envptr87825
  %envptr87826 = inttoptr i64 %env86529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87827 = getelementptr inbounds i64, i64* %envptr87826, i64 4                ; &envptr87826[4]
  %Eic$_37_62 = load i64, i64* %envptr87827, align 8                                 ; load; *envptr87827
  %envptr87828 = inttoptr i64 %env86529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87829 = getelementptr inbounds i64, i64* %envptr87828, i64 3                ; &envptr87828[3]
  %kew$ly = load i64, i64* %envptr87829, align 8                                     ; load; *envptr87829
  %envptr87830 = inttoptr i64 %env86529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87831 = getelementptr inbounds i64, i64* %envptr87830, i64 2                ; &envptr87830[2]
  %PVS$lx = load i64, i64* %envptr87831, align 8                                     ; load; *envptr87831
  %envptr87832 = inttoptr i64 %env86529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87833 = getelementptr inbounds i64, i64* %envptr87832, i64 1                ; &envptr87832[1]
  %cont83503 = load i64, i64* %envptr87833, align 8                                  ; load; *envptr87833
  %_9583506 = call i64 @prim_car(i64 %rvp85249)                                      ; call prim_car
  %rvp85248 = call i64 @prim_cdr(i64 %rvp85249)                                      ; call prim_cdr
  %Vxf$loop = call i64 @prim_car(i64 %rvp85248)                                      ; call prim_car
  %na85150 = call i64 @prim_cdr(i64 %rvp85248)                                       ; call prim_cdr
  %arg84088 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr87834 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr87836 = getelementptr inbounds i64, i64* %cloptr87834, i64 1                  ; &eptr87836[1]
  store i64 %Vxf$loop, i64* %eptr87836                                               ; *eptr87836 = %Vxf$loop
  %eptr87835 = getelementptr inbounds i64, i64* %cloptr87834, i64 0                  ; &cloptr87834[0]
  %f87837 = ptrtoint void(i64,i64)* @lam86525 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87837, i64* %eptr87835                                                 ; store fptr
  %arg84087 = ptrtoint i64* %cloptr87834 to i64                                      ; closure cast; i64* -> i64
  %PAm$_9583256 = call i64 @prim_vector_45set_33(i64 %Vxf$loop, i64 %arg84088, i64 %arg84087); call prim_vector_45set_33
  %arg84103 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83362 = call i64 @prim_vector_45ref(i64 %Vxf$loop, i64 %arg84103)                ; call prim_vector_45ref
  %cloptr87838 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr87840 = getelementptr inbounds i64, i64* %cloptr87838, i64 1                  ; &eptr87840[1]
  %eptr87841 = getelementptr inbounds i64, i64* %cloptr87838, i64 2                  ; &eptr87841[2]
  %eptr87842 = getelementptr inbounds i64, i64* %cloptr87838, i64 3                  ; &eptr87842[3]
  %eptr87843 = getelementptr inbounds i64, i64* %cloptr87838, i64 4                  ; &eptr87843[4]
  %eptr87844 = getelementptr inbounds i64, i64* %cloptr87838, i64 5                  ; &eptr87844[5]
  %eptr87845 = getelementptr inbounds i64, i64* %cloptr87838, i64 6                  ; &eptr87845[6]
  %eptr87846 = getelementptr inbounds i64, i64* %cloptr87838, i64 7                  ; &eptr87846[7]
  %eptr87847 = getelementptr inbounds i64, i64* %cloptr87838, i64 8                  ; &eptr87847[8]
  store i64 %a83362, i64* %eptr87840                                                 ; *eptr87840 = %a83362
  store i64 %cont83503, i64* %eptr87841                                              ; *eptr87841 = %cont83503
  store i64 %PVS$lx, i64* %eptr87842                                                 ; *eptr87842 = %PVS$lx
  store i64 %kew$ly, i64* %eptr87843                                                 ; *eptr87843 = %kew$ly
  store i64 %Eic$_37_62, i64* %eptr87844                                             ; *eptr87844 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87845                                            ; *eptr87845 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87846                                                  ; *eptr87846 = %qse$y
  store i64 %lIp$x, i64* %eptr87847                                                  ; *eptr87847 = %lIp$x
  %eptr87839 = getelementptr inbounds i64, i64* %cloptr87838, i64 0                  ; &cloptr87838[0]
  %f87848 = ptrtoint void(i64,i64)* @lam86518 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87848, i64* %eptr87839                                                 ; store fptr
  %arg84107 = ptrtoint i64* %cloptr87838 to i64                                      ; closure cast; i64* -> i64
  %rva85247 = add i64 0, 0                                                           ; quoted ()
  %rva85246 = call i64 @prim_cons(i64 %kew$ly, i64 %rva85247)                        ; call prim_cons
  %rva85245 = call i64 @prim_cons(i64 %PVS$lx, i64 %rva85246)                        ; call prim_cons
  %rva85244 = call i64 @prim_cons(i64 %arg84107, i64 %rva85245)                      ; call prim_cons
  %cloptr87849 = inttoptr i64 %Eic$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr87850 = getelementptr inbounds i64, i64* %cloptr87849, i64 0                 ; &cloptr87849[0]
  %f87852 = load i64, i64* %i0ptr87850, align 8                                      ; load; *i0ptr87850
  %fptr87851 = inttoptr i64 %f87852 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87851(i64 %Eic$_37_62, i64 %rva85244)               ; tail call
  ret void
}


define void @lam86525(i64 %env86526, i64 %rvp85162) {
  %envptr87853 = inttoptr i64 %env86526 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87854 = getelementptr inbounds i64, i64* %envptr87853, i64 1                ; &envptr87853[1]
  %Vxf$loop = load i64, i64* %envptr87854, align 8                                   ; load; *envptr87854
  %cont83507 = call i64 @prim_car(i64 %rvp85162)                                     ; call prim_car
  %rvp85161 = call i64 @prim_cdr(i64 %rvp85162)                                      ; call prim_cdr
  %sXq$x = call i64 @prim_car(i64 %rvp85161)                                         ; call prim_car
  %rvp85160 = call i64 @prim_cdr(i64 %rvp85161)                                      ; call prim_cdr
  %Ptt$y = call i64 @prim_car(i64 %rvp85160)                                         ; call prim_car
  %na85152 = call i64 @prim_cdr(i64 %rvp85160)                                       ; call prim_cdr
  %a83358 = call i64 @prim_eq_63(i64 %sXq$x, i64 %Ptt$y)                             ; call prim_eq_63
  %cmp87855 = icmp eq i64 %a83358, 15                                                ; false?
  br i1 %cmp87855, label %else87857, label %then87856                                ; if

then87856:
  %arg84093 = add i64 0, 0                                                           ; quoted ()
  %rva85155 = add i64 0, 0                                                           ; quoted ()
  %rva85154 = call i64 @prim_cons(i64 %sXq$x, i64 %rva85155)                         ; call prim_cons
  %rva85153 = call i64 @prim_cons(i64 %arg84093, i64 %rva85154)                      ; call prim_cons
  %cloptr87858 = inttoptr i64 %cont83507 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr87859 = getelementptr inbounds i64, i64* %cloptr87858, i64 0                 ; &cloptr87858[0]
  %f87861 = load i64, i64* %i0ptr87859, align 8                                      ; load; *i0ptr87859
  %fptr87860 = inttoptr i64 %f87861 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87860(i64 %cont83507, i64 %rva85153)                ; tail call
  ret void

else87857:
  %arg84095 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83359 = call i64 @prim_vector_45ref(i64 %Vxf$loop, i64 %arg84095)                ; call prim_vector_45ref
  %a83360 = call i64 @prim_cdr(i64 %sXq$x)                                           ; call prim_cdr
  %a83361 = call i64 @prim_cdr(i64 %Ptt$y)                                           ; call prim_cdr
  %rva85159 = add i64 0, 0                                                           ; quoted ()
  %rva85158 = call i64 @prim_cons(i64 %a83361, i64 %rva85159)                        ; call prim_cons
  %rva85157 = call i64 @prim_cons(i64 %a83360, i64 %rva85158)                        ; call prim_cons
  %rva85156 = call i64 @prim_cons(i64 %cont83507, i64 %rva85157)                     ; call prim_cons
  %cloptr87862 = inttoptr i64 %a83359 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87863 = getelementptr inbounds i64, i64* %cloptr87862, i64 0                 ; &cloptr87862[0]
  %f87865 = load i64, i64* %i0ptr87863, align 8                                      ; load; *i0ptr87863
  %fptr87864 = inttoptr i64 %f87865 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87864(i64 %a83359, i64 %rva85156)                   ; tail call
  ret void
}


define void @lam86518(i64 %env86519, i64 %rvp85243) {
  %envptr87866 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87867 = getelementptr inbounds i64, i64* %envptr87866, i64 8                ; &envptr87866[8]
  %lIp$x = load i64, i64* %envptr87867, align 8                                      ; load; *envptr87867
  %envptr87868 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87869 = getelementptr inbounds i64, i64* %envptr87868, i64 7                ; &envptr87868[7]
  %qse$y = load i64, i64* %envptr87869, align 8                                      ; load; *envptr87869
  %envptr87870 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87871 = getelementptr inbounds i64, i64* %envptr87870, i64 6                ; &envptr87870[6]
  %Iic$_37drop = load i64, i64* %envptr87871, align 8                                ; load; *envptr87871
  %envptr87872 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87873 = getelementptr inbounds i64, i64* %envptr87872, i64 5                ; &envptr87872[5]
  %Eic$_37_62 = load i64, i64* %envptr87873, align 8                                 ; load; *envptr87873
  %envptr87874 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87875 = getelementptr inbounds i64, i64* %envptr87874, i64 4                ; &envptr87874[4]
  %kew$ly = load i64, i64* %envptr87875, align 8                                     ; load; *envptr87875
  %envptr87876 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87877 = getelementptr inbounds i64, i64* %envptr87876, i64 3                ; &envptr87876[3]
  %PVS$lx = load i64, i64* %envptr87877, align 8                                     ; load; *envptr87877
  %envptr87878 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87879 = getelementptr inbounds i64, i64* %envptr87878, i64 2                ; &envptr87878[2]
  %cont83503 = load i64, i64* %envptr87879, align 8                                  ; load; *envptr87879
  %envptr87880 = inttoptr i64 %env86519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87881 = getelementptr inbounds i64, i64* %envptr87880, i64 1                ; &envptr87880[1]
  %a83362 = load i64, i64* %envptr87881, align 8                                     ; load; *envptr87881
  %_9583508 = call i64 @prim_car(i64 %rvp85243)                                      ; call prim_car
  %rvp85242 = call i64 @prim_cdr(i64 %rvp85243)                                      ; call prim_cdr
  %a83363 = call i64 @prim_car(i64 %rvp85242)                                        ; call prim_car
  %na85164 = call i64 @prim_cdr(i64 %rvp85242)                                       ; call prim_cdr
  %cmp87882 = icmp eq i64 %a83363, 15                                                ; false?
  br i1 %cmp87882, label %else87884, label %then87883                                ; if

then87883:
  %a83364 = call i64 @prim__45(i64 %PVS$lx, i64 %kew$ly)                             ; call prim__45
  %cloptr87885 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr87887 = getelementptr inbounds i64, i64* %cloptr87885, i64 1                  ; &eptr87887[1]
  %eptr87888 = getelementptr inbounds i64, i64* %cloptr87885, i64 2                  ; &eptr87888[2]
  %eptr87889 = getelementptr inbounds i64, i64* %cloptr87885, i64 3                  ; &eptr87889[3]
  %eptr87890 = getelementptr inbounds i64, i64* %cloptr87885, i64 4                  ; &eptr87890[4]
  %eptr87891 = getelementptr inbounds i64, i64* %cloptr87885, i64 5                  ; &eptr87891[5]
  %eptr87892 = getelementptr inbounds i64, i64* %cloptr87885, i64 6                  ; &eptr87892[6]
  %eptr87893 = getelementptr inbounds i64, i64* %cloptr87885, i64 7                  ; &eptr87893[7]
  store i64 %a83362, i64* %eptr87887                                                 ; *eptr87887 = %a83362
  store i64 %cont83503, i64* %eptr87888                                              ; *eptr87888 = %cont83503
  store i64 %PVS$lx, i64* %eptr87889                                                 ; *eptr87889 = %PVS$lx
  store i64 %kew$ly, i64* %eptr87890                                                 ; *eptr87890 = %kew$ly
  store i64 %Eic$_37_62, i64* %eptr87891                                             ; *eptr87891 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87892                                            ; *eptr87892 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87893                                                  ; *eptr87893 = %qse$y
  %eptr87886 = getelementptr inbounds i64, i64* %cloptr87885, i64 0                  ; &cloptr87885[0]
  %f87894 = ptrtoint void(i64,i64)* @lam86500 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87894, i64* %eptr87886                                                 ; store fptr
  %arg84113 = ptrtoint i64* %cloptr87885 to i64                                      ; closure cast; i64* -> i64
  %rva85203 = add i64 0, 0                                                           ; quoted ()
  %rva85202 = call i64 @prim_cons(i64 %a83364, i64 %rva85203)                        ; call prim_cons
  %rva85201 = call i64 @prim_cons(i64 %lIp$x, i64 %rva85202)                         ; call prim_cons
  %rva85200 = call i64 @prim_cons(i64 %arg84113, i64 %rva85201)                      ; call prim_cons
  %cloptr87895 = inttoptr i64 %Iic$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr87896 = getelementptr inbounds i64, i64* %cloptr87895, i64 0                 ; &cloptr87895[0]
  %f87898 = load i64, i64* %i0ptr87896, align 8                                      ; load; *i0ptr87896
  %fptr87897 = inttoptr i64 %f87898 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87897(i64 %Iic$_37drop, i64 %rva85200)              ; tail call
  ret void

else87884:
  %cloptr87899 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr87901 = getelementptr inbounds i64, i64* %cloptr87899, i64 1                  ; &eptr87901[1]
  %eptr87902 = getelementptr inbounds i64, i64* %cloptr87899, i64 2                  ; &eptr87902[2]
  %eptr87903 = getelementptr inbounds i64, i64* %cloptr87899, i64 3                  ; &eptr87903[3]
  %eptr87904 = getelementptr inbounds i64, i64* %cloptr87899, i64 4                  ; &eptr87904[4]
  %eptr87905 = getelementptr inbounds i64, i64* %cloptr87899, i64 5                  ; &eptr87905[5]
  %eptr87906 = getelementptr inbounds i64, i64* %cloptr87899, i64 6                  ; &eptr87906[6]
  %eptr87907 = getelementptr inbounds i64, i64* %cloptr87899, i64 7                  ; &eptr87907[7]
  store i64 %a83362, i64* %eptr87901                                                 ; *eptr87901 = %a83362
  store i64 %cont83503, i64* %eptr87902                                              ; *eptr87902 = %cont83503
  store i64 %PVS$lx, i64* %eptr87903                                                 ; *eptr87903 = %PVS$lx
  store i64 %kew$ly, i64* %eptr87904                                                 ; *eptr87904 = %kew$ly
  store i64 %Eic$_37_62, i64* %eptr87905                                             ; *eptr87905 = %Eic$_37_62
  store i64 %Iic$_37drop, i64* %eptr87906                                            ; *eptr87906 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87907                                                  ; *eptr87907 = %qse$y
  %eptr87900 = getelementptr inbounds i64, i64* %cloptr87899, i64 0                  ; &cloptr87899[0]
  %f87908 = ptrtoint void(i64,i64)* @lam86516 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87908, i64* %eptr87900                                                 ; store fptr
  %arg84138 = ptrtoint i64* %cloptr87899 to i64                                      ; closure cast; i64* -> i64
  %arg84137 = add i64 0, 0                                                           ; quoted ()
  %rva85241 = add i64 0, 0                                                           ; quoted ()
  %rva85240 = call i64 @prim_cons(i64 %lIp$x, i64 %rva85241)                         ; call prim_cons
  %rva85239 = call i64 @prim_cons(i64 %arg84137, i64 %rva85240)                      ; call prim_cons
  %cloptr87909 = inttoptr i64 %arg84138 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87910 = getelementptr inbounds i64, i64* %cloptr87909, i64 0                 ; &cloptr87909[0]
  %f87912 = load i64, i64* %i0ptr87910, align 8                                      ; load; *i0ptr87910
  %fptr87911 = inttoptr i64 %f87912 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87911(i64 %arg84138, i64 %rva85239)                 ; tail call
  ret void
}


define void @lam86516(i64 %env86517, i64 %rvp85238) {
  %envptr87913 = inttoptr i64 %env86517 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87914 = getelementptr inbounds i64, i64* %envptr87913, i64 7                ; &envptr87913[7]
  %qse$y = load i64, i64* %envptr87914, align 8                                      ; load; *envptr87914
  %envptr87915 = inttoptr i64 %env86517 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87916 = getelementptr inbounds i64, i64* %envptr87915, i64 6                ; &envptr87915[6]
  %Iic$_37drop = load i64, i64* %envptr87916, align 8                                ; load; *envptr87916
  %envptr87917 = inttoptr i64 %env86517 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87918 = getelementptr inbounds i64, i64* %envptr87917, i64 5                ; &envptr87917[5]
  %Eic$_37_62 = load i64, i64* %envptr87918, align 8                                 ; load; *envptr87918
  %envptr87919 = inttoptr i64 %env86517 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87920 = getelementptr inbounds i64, i64* %envptr87919, i64 4                ; &envptr87919[4]
  %kew$ly = load i64, i64* %envptr87920, align 8                                     ; load; *envptr87920
  %envptr87921 = inttoptr i64 %env86517 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87922 = getelementptr inbounds i64, i64* %envptr87921, i64 3                ; &envptr87921[3]
  %PVS$lx = load i64, i64* %envptr87922, align 8                                     ; load; *envptr87922
  %envptr87923 = inttoptr i64 %env86517 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87924 = getelementptr inbounds i64, i64* %envptr87923, i64 2                ; &envptr87923[2]
  %cont83503 = load i64, i64* %envptr87924, align 8                                  ; load; *envptr87924
  %envptr87925 = inttoptr i64 %env86517 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87926 = getelementptr inbounds i64, i64* %envptr87925, i64 1                ; &envptr87925[1]
  %a83362 = load i64, i64* %envptr87926, align 8                                     ; load; *envptr87926
  %_9583509 = call i64 @prim_car(i64 %rvp85238)                                      ; call prim_car
  %rvp85237 = call i64 @prim_cdr(i64 %rvp85238)                                      ; call prim_cdr
  %a83365 = call i64 @prim_car(i64 %rvp85237)                                        ; call prim_car
  %na85205 = call i64 @prim_cdr(i64 %rvp85237)                                       ; call prim_cdr
  %cloptr87927 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr87929 = getelementptr inbounds i64, i64* %cloptr87927, i64 1                  ; &eptr87929[1]
  %eptr87930 = getelementptr inbounds i64, i64* %cloptr87927, i64 2                  ; &eptr87930[2]
  %eptr87931 = getelementptr inbounds i64, i64* %cloptr87927, i64 3                  ; &eptr87931[3]
  %eptr87932 = getelementptr inbounds i64, i64* %cloptr87927, i64 4                  ; &eptr87932[4]
  %eptr87933 = getelementptr inbounds i64, i64* %cloptr87927, i64 5                  ; &eptr87933[5]
  %eptr87934 = getelementptr inbounds i64, i64* %cloptr87927, i64 6                  ; &eptr87934[6]
  %eptr87935 = getelementptr inbounds i64, i64* %cloptr87927, i64 7                  ; &eptr87935[7]
  store i64 %a83362, i64* %eptr87929                                                 ; *eptr87929 = %a83362
  store i64 %a83365, i64* %eptr87930                                                 ; *eptr87930 = %a83365
  store i64 %cont83503, i64* %eptr87931                                              ; *eptr87931 = %cont83503
  store i64 %PVS$lx, i64* %eptr87932                                                 ; *eptr87932 = %PVS$lx
  store i64 %kew$ly, i64* %eptr87933                                                 ; *eptr87933 = %kew$ly
  store i64 %Iic$_37drop, i64* %eptr87934                                            ; *eptr87934 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr87935                                                  ; *eptr87935 = %qse$y
  %eptr87928 = getelementptr inbounds i64, i64* %cloptr87927, i64 0                  ; &cloptr87927[0]
  %f87936 = ptrtoint void(i64,i64)* @lam86514 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87936, i64* %eptr87928                                                 ; store fptr
  %arg84141 = ptrtoint i64* %cloptr87927 to i64                                      ; closure cast; i64* -> i64
  %rva85236 = add i64 0, 0                                                           ; quoted ()
  %rva85235 = call i64 @prim_cons(i64 %PVS$lx, i64 %rva85236)                        ; call prim_cons
  %rva85234 = call i64 @prim_cons(i64 %kew$ly, i64 %rva85235)                        ; call prim_cons
  %rva85233 = call i64 @prim_cons(i64 %arg84141, i64 %rva85234)                      ; call prim_cons
  %cloptr87937 = inttoptr i64 %Eic$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr87938 = getelementptr inbounds i64, i64* %cloptr87937, i64 0                 ; &cloptr87937[0]
  %f87940 = load i64, i64* %i0ptr87938, align 8                                      ; load; *i0ptr87938
  %fptr87939 = inttoptr i64 %f87940 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87939(i64 %Eic$_37_62, i64 %rva85233)               ; tail call
  ret void
}


define void @lam86514(i64 %env86515, i64 %rvp85232) {
  %envptr87941 = inttoptr i64 %env86515 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87942 = getelementptr inbounds i64, i64* %envptr87941, i64 7                ; &envptr87941[7]
  %qse$y = load i64, i64* %envptr87942, align 8                                      ; load; *envptr87942
  %envptr87943 = inttoptr i64 %env86515 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87944 = getelementptr inbounds i64, i64* %envptr87943, i64 6                ; &envptr87943[6]
  %Iic$_37drop = load i64, i64* %envptr87944, align 8                                ; load; *envptr87944
  %envptr87945 = inttoptr i64 %env86515 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87946 = getelementptr inbounds i64, i64* %envptr87945, i64 5                ; &envptr87945[5]
  %kew$ly = load i64, i64* %envptr87946, align 8                                     ; load; *envptr87946
  %envptr87947 = inttoptr i64 %env86515 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87948 = getelementptr inbounds i64, i64* %envptr87947, i64 4                ; &envptr87947[4]
  %PVS$lx = load i64, i64* %envptr87948, align 8                                     ; load; *envptr87948
  %envptr87949 = inttoptr i64 %env86515 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87950 = getelementptr inbounds i64, i64* %envptr87949, i64 3                ; &envptr87949[3]
  %cont83503 = load i64, i64* %envptr87950, align 8                                  ; load; *envptr87950
  %envptr87951 = inttoptr i64 %env86515 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87952 = getelementptr inbounds i64, i64* %envptr87951, i64 2                ; &envptr87951[2]
  %a83365 = load i64, i64* %envptr87952, align 8                                     ; load; *envptr87952
  %envptr87953 = inttoptr i64 %env86515 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87954 = getelementptr inbounds i64, i64* %envptr87953, i64 1                ; &envptr87953[1]
  %a83362 = load i64, i64* %envptr87954, align 8                                     ; load; *envptr87954
  %_9583510 = call i64 @prim_car(i64 %rvp85232)                                      ; call prim_car
  %rvp85231 = call i64 @prim_cdr(i64 %rvp85232)                                      ; call prim_cdr
  %a83366 = call i64 @prim_car(i64 %rvp85231)                                        ; call prim_car
  %na85207 = call i64 @prim_cdr(i64 %rvp85231)                                       ; call prim_cdr
  %cmp87955 = icmp eq i64 %a83366, 15                                                ; false?
  br i1 %cmp87955, label %else87957, label %then87956                                ; if

then87956:
  %a83367 = call i64 @prim__45(i64 %kew$ly, i64 %PVS$lx)                             ; call prim__45
  %cloptr87958 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87960 = getelementptr inbounds i64, i64* %cloptr87958, i64 1                  ; &eptr87960[1]
  %eptr87961 = getelementptr inbounds i64, i64* %cloptr87958, i64 2                  ; &eptr87961[2]
  %eptr87962 = getelementptr inbounds i64, i64* %cloptr87958, i64 3                  ; &eptr87962[3]
  store i64 %a83362, i64* %eptr87960                                                 ; *eptr87960 = %a83362
  store i64 %a83365, i64* %eptr87961                                                 ; *eptr87961 = %a83365
  store i64 %cont83503, i64* %eptr87962                                              ; *eptr87962 = %cont83503
  %eptr87959 = getelementptr inbounds i64, i64* %cloptr87958, i64 0                  ; &cloptr87958[0]
  %f87963 = ptrtoint void(i64,i64)* @lam86507 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87963, i64* %eptr87959                                                 ; store fptr
  %arg84147 = ptrtoint i64* %cloptr87958 to i64                                      ; closure cast; i64* -> i64
  %rva85219 = add i64 0, 0                                                           ; quoted ()
  %rva85218 = call i64 @prim_cons(i64 %a83367, i64 %rva85219)                        ; call prim_cons
  %rva85217 = call i64 @prim_cons(i64 %qse$y, i64 %rva85218)                         ; call prim_cons
  %rva85216 = call i64 @prim_cons(i64 %arg84147, i64 %rva85217)                      ; call prim_cons
  %cloptr87964 = inttoptr i64 %Iic$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr87965 = getelementptr inbounds i64, i64* %cloptr87964, i64 0                 ; &cloptr87964[0]
  %f87967 = load i64, i64* %i0ptr87965, align 8                                      ; load; *i0ptr87965
  %fptr87966 = inttoptr i64 %f87967 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87966(i64 %Iic$_37drop, i64 %rva85216)              ; tail call
  ret void

else87957:
  %cloptr87968 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr87970 = getelementptr inbounds i64, i64* %cloptr87968, i64 1                  ; &eptr87970[1]
  %eptr87971 = getelementptr inbounds i64, i64* %cloptr87968, i64 2                  ; &eptr87971[2]
  %eptr87972 = getelementptr inbounds i64, i64* %cloptr87968, i64 3                  ; &eptr87972[3]
  store i64 %a83362, i64* %eptr87970                                                 ; *eptr87970 = %a83362
  store i64 %a83365, i64* %eptr87971                                                 ; *eptr87971 = %a83365
  store i64 %cont83503, i64* %eptr87972                                              ; *eptr87972 = %cont83503
  %eptr87969 = getelementptr inbounds i64, i64* %cloptr87968, i64 0                  ; &cloptr87968[0]
  %f87973 = ptrtoint void(i64,i64)* @lam86512 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f87973, i64* %eptr87969                                                 ; store fptr
  %arg84155 = ptrtoint i64* %cloptr87968 to i64                                      ; closure cast; i64* -> i64
  %arg84154 = add i64 0, 0                                                           ; quoted ()
  %rva85230 = add i64 0, 0                                                           ; quoted ()
  %rva85229 = call i64 @prim_cons(i64 %qse$y, i64 %rva85230)                         ; call prim_cons
  %rva85228 = call i64 @prim_cons(i64 %arg84154, i64 %rva85229)                      ; call prim_cons
  %cloptr87974 = inttoptr i64 %arg84155 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr87975 = getelementptr inbounds i64, i64* %cloptr87974, i64 0                 ; &cloptr87974[0]
  %f87977 = load i64, i64* %i0ptr87975, align 8                                      ; load; *i0ptr87975
  %fptr87976 = inttoptr i64 %f87977 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87976(i64 %arg84155, i64 %rva85228)                 ; tail call
  ret void
}


define void @lam86512(i64 %env86513, i64 %rvp85227) {
  %envptr87978 = inttoptr i64 %env86513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87979 = getelementptr inbounds i64, i64* %envptr87978, i64 3                ; &envptr87978[3]
  %cont83503 = load i64, i64* %envptr87979, align 8                                  ; load; *envptr87979
  %envptr87980 = inttoptr i64 %env86513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87981 = getelementptr inbounds i64, i64* %envptr87980, i64 2                ; &envptr87980[2]
  %a83365 = load i64, i64* %envptr87981, align 8                                     ; load; *envptr87981
  %envptr87982 = inttoptr i64 %env86513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87983 = getelementptr inbounds i64, i64* %envptr87982, i64 1                ; &envptr87982[1]
  %a83362 = load i64, i64* %envptr87983, align 8                                     ; load; *envptr87983
  %_9583511 = call i64 @prim_car(i64 %rvp85227)                                      ; call prim_car
  %rvp85226 = call i64 @prim_cdr(i64 %rvp85227)                                      ; call prim_cdr
  %a83368 = call i64 @prim_car(i64 %rvp85226)                                        ; call prim_car
  %na85221 = call i64 @prim_cdr(i64 %rvp85226)                                       ; call prim_cdr
  %rva85225 = add i64 0, 0                                                           ; quoted ()
  %rva85224 = call i64 @prim_cons(i64 %a83368, i64 %rva85225)                        ; call prim_cons
  %rva85223 = call i64 @prim_cons(i64 %a83365, i64 %rva85224)                        ; call prim_cons
  %rva85222 = call i64 @prim_cons(i64 %cont83503, i64 %rva85223)                     ; call prim_cons
  %cloptr87984 = inttoptr i64 %a83362 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87985 = getelementptr inbounds i64, i64* %cloptr87984, i64 0                 ; &cloptr87984[0]
  %f87987 = load i64, i64* %i0ptr87985, align 8                                      ; load; *i0ptr87985
  %fptr87986 = inttoptr i64 %f87987 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87986(i64 %a83362, i64 %rva85222)                   ; tail call
  ret void
}


define void @lam86507(i64 %env86508, i64 %rvp85215) {
  %envptr87988 = inttoptr i64 %env86508 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87989 = getelementptr inbounds i64, i64* %envptr87988, i64 3                ; &envptr87988[3]
  %cont83503 = load i64, i64* %envptr87989, align 8                                  ; load; *envptr87989
  %envptr87990 = inttoptr i64 %env86508 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87991 = getelementptr inbounds i64, i64* %envptr87990, i64 2                ; &envptr87990[2]
  %a83365 = load i64, i64* %envptr87991, align 8                                     ; load; *envptr87991
  %envptr87992 = inttoptr i64 %env86508 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87993 = getelementptr inbounds i64, i64* %envptr87992, i64 1                ; &envptr87992[1]
  %a83362 = load i64, i64* %envptr87993, align 8                                     ; load; *envptr87993
  %_9583511 = call i64 @prim_car(i64 %rvp85215)                                      ; call prim_car
  %rvp85214 = call i64 @prim_cdr(i64 %rvp85215)                                      ; call prim_cdr
  %a83368 = call i64 @prim_car(i64 %rvp85214)                                        ; call prim_car
  %na85209 = call i64 @prim_cdr(i64 %rvp85214)                                       ; call prim_cdr
  %rva85213 = add i64 0, 0                                                           ; quoted ()
  %rva85212 = call i64 @prim_cons(i64 %a83368, i64 %rva85213)                        ; call prim_cons
  %rva85211 = call i64 @prim_cons(i64 %a83365, i64 %rva85212)                        ; call prim_cons
  %rva85210 = call i64 @prim_cons(i64 %cont83503, i64 %rva85211)                     ; call prim_cons
  %cloptr87994 = inttoptr i64 %a83362 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr87995 = getelementptr inbounds i64, i64* %cloptr87994, i64 0                 ; &cloptr87994[0]
  %f87997 = load i64, i64* %i0ptr87995, align 8                                      ; load; *i0ptr87995
  %fptr87996 = inttoptr i64 %f87997 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr87996(i64 %a83362, i64 %rva85210)                   ; tail call
  ret void
}


define void @lam86500(i64 %env86501, i64 %rvp85199) {
  %envptr87998 = inttoptr i64 %env86501 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr87999 = getelementptr inbounds i64, i64* %envptr87998, i64 7                ; &envptr87998[7]
  %qse$y = load i64, i64* %envptr87999, align 8                                      ; load; *envptr87999
  %envptr88000 = inttoptr i64 %env86501 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88001 = getelementptr inbounds i64, i64* %envptr88000, i64 6                ; &envptr88000[6]
  %Iic$_37drop = load i64, i64* %envptr88001, align 8                                ; load; *envptr88001
  %envptr88002 = inttoptr i64 %env86501 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88003 = getelementptr inbounds i64, i64* %envptr88002, i64 5                ; &envptr88002[5]
  %Eic$_37_62 = load i64, i64* %envptr88003, align 8                                 ; load; *envptr88003
  %envptr88004 = inttoptr i64 %env86501 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88005 = getelementptr inbounds i64, i64* %envptr88004, i64 4                ; &envptr88004[4]
  %kew$ly = load i64, i64* %envptr88005, align 8                                     ; load; *envptr88005
  %envptr88006 = inttoptr i64 %env86501 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88007 = getelementptr inbounds i64, i64* %envptr88006, i64 3                ; &envptr88006[3]
  %PVS$lx = load i64, i64* %envptr88007, align 8                                     ; load; *envptr88007
  %envptr88008 = inttoptr i64 %env86501 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88009 = getelementptr inbounds i64, i64* %envptr88008, i64 2                ; &envptr88008[2]
  %cont83503 = load i64, i64* %envptr88009, align 8                                  ; load; *envptr88009
  %envptr88010 = inttoptr i64 %env86501 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88011 = getelementptr inbounds i64, i64* %envptr88010, i64 1                ; &envptr88010[1]
  %a83362 = load i64, i64* %envptr88011, align 8                                     ; load; *envptr88011
  %_9583509 = call i64 @prim_car(i64 %rvp85199)                                      ; call prim_car
  %rvp85198 = call i64 @prim_cdr(i64 %rvp85199)                                      ; call prim_cdr
  %a83365 = call i64 @prim_car(i64 %rvp85198)                                        ; call prim_car
  %na85166 = call i64 @prim_cdr(i64 %rvp85198)                                       ; call prim_cdr
  %cloptr88012 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88014 = getelementptr inbounds i64, i64* %cloptr88012, i64 1                  ; &eptr88014[1]
  %eptr88015 = getelementptr inbounds i64, i64* %cloptr88012, i64 2                  ; &eptr88015[2]
  %eptr88016 = getelementptr inbounds i64, i64* %cloptr88012, i64 3                  ; &eptr88016[3]
  %eptr88017 = getelementptr inbounds i64, i64* %cloptr88012, i64 4                  ; &eptr88017[4]
  %eptr88018 = getelementptr inbounds i64, i64* %cloptr88012, i64 5                  ; &eptr88018[5]
  %eptr88019 = getelementptr inbounds i64, i64* %cloptr88012, i64 6                  ; &eptr88019[6]
  %eptr88020 = getelementptr inbounds i64, i64* %cloptr88012, i64 7                  ; &eptr88020[7]
  store i64 %a83362, i64* %eptr88014                                                 ; *eptr88014 = %a83362
  store i64 %a83365, i64* %eptr88015                                                 ; *eptr88015 = %a83365
  store i64 %cont83503, i64* %eptr88016                                              ; *eptr88016 = %cont83503
  store i64 %PVS$lx, i64* %eptr88017                                                 ; *eptr88017 = %PVS$lx
  store i64 %kew$ly, i64* %eptr88018                                                 ; *eptr88018 = %kew$ly
  store i64 %Iic$_37drop, i64* %eptr88019                                            ; *eptr88019 = %Iic$_37drop
  store i64 %qse$y, i64* %eptr88020                                                  ; *eptr88020 = %qse$y
  %eptr88013 = getelementptr inbounds i64, i64* %cloptr88012, i64 0                  ; &cloptr88012[0]
  %f88021 = ptrtoint void(i64,i64)* @lam86498 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88021, i64* %eptr88013                                                 ; store fptr
  %arg84117 = ptrtoint i64* %cloptr88012 to i64                                      ; closure cast; i64* -> i64
  %rva85197 = add i64 0, 0                                                           ; quoted ()
  %rva85196 = call i64 @prim_cons(i64 %PVS$lx, i64 %rva85197)                        ; call prim_cons
  %rva85195 = call i64 @prim_cons(i64 %kew$ly, i64 %rva85196)                        ; call prim_cons
  %rva85194 = call i64 @prim_cons(i64 %arg84117, i64 %rva85195)                      ; call prim_cons
  %cloptr88022 = inttoptr i64 %Eic$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr88023 = getelementptr inbounds i64, i64* %cloptr88022, i64 0                 ; &cloptr88022[0]
  %f88025 = load i64, i64* %i0ptr88023, align 8                                      ; load; *i0ptr88023
  %fptr88024 = inttoptr i64 %f88025 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88024(i64 %Eic$_37_62, i64 %rva85194)               ; tail call
  ret void
}


define void @lam86498(i64 %env86499, i64 %rvp85193) {
  %envptr88026 = inttoptr i64 %env86499 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88027 = getelementptr inbounds i64, i64* %envptr88026, i64 7                ; &envptr88026[7]
  %qse$y = load i64, i64* %envptr88027, align 8                                      ; load; *envptr88027
  %envptr88028 = inttoptr i64 %env86499 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88029 = getelementptr inbounds i64, i64* %envptr88028, i64 6                ; &envptr88028[6]
  %Iic$_37drop = load i64, i64* %envptr88029, align 8                                ; load; *envptr88029
  %envptr88030 = inttoptr i64 %env86499 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88031 = getelementptr inbounds i64, i64* %envptr88030, i64 5                ; &envptr88030[5]
  %kew$ly = load i64, i64* %envptr88031, align 8                                     ; load; *envptr88031
  %envptr88032 = inttoptr i64 %env86499 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88033 = getelementptr inbounds i64, i64* %envptr88032, i64 4                ; &envptr88032[4]
  %PVS$lx = load i64, i64* %envptr88033, align 8                                     ; load; *envptr88033
  %envptr88034 = inttoptr i64 %env86499 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88035 = getelementptr inbounds i64, i64* %envptr88034, i64 3                ; &envptr88034[3]
  %cont83503 = load i64, i64* %envptr88035, align 8                                  ; load; *envptr88035
  %envptr88036 = inttoptr i64 %env86499 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88037 = getelementptr inbounds i64, i64* %envptr88036, i64 2                ; &envptr88036[2]
  %a83365 = load i64, i64* %envptr88037, align 8                                     ; load; *envptr88037
  %envptr88038 = inttoptr i64 %env86499 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88039 = getelementptr inbounds i64, i64* %envptr88038, i64 1                ; &envptr88038[1]
  %a83362 = load i64, i64* %envptr88039, align 8                                     ; load; *envptr88039
  %_9583510 = call i64 @prim_car(i64 %rvp85193)                                      ; call prim_car
  %rvp85192 = call i64 @prim_cdr(i64 %rvp85193)                                      ; call prim_cdr
  %a83366 = call i64 @prim_car(i64 %rvp85192)                                        ; call prim_car
  %na85168 = call i64 @prim_cdr(i64 %rvp85192)                                       ; call prim_cdr
  %cmp88040 = icmp eq i64 %a83366, 15                                                ; false?
  br i1 %cmp88040, label %else88042, label %then88041                                ; if

then88041:
  %a83367 = call i64 @prim__45(i64 %kew$ly, i64 %PVS$lx)                             ; call prim__45
  %cloptr88043 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88045 = getelementptr inbounds i64, i64* %cloptr88043, i64 1                  ; &eptr88045[1]
  %eptr88046 = getelementptr inbounds i64, i64* %cloptr88043, i64 2                  ; &eptr88046[2]
  %eptr88047 = getelementptr inbounds i64, i64* %cloptr88043, i64 3                  ; &eptr88047[3]
  store i64 %a83362, i64* %eptr88045                                                 ; *eptr88045 = %a83362
  store i64 %a83365, i64* %eptr88046                                                 ; *eptr88046 = %a83365
  store i64 %cont83503, i64* %eptr88047                                              ; *eptr88047 = %cont83503
  %eptr88044 = getelementptr inbounds i64, i64* %cloptr88043, i64 0                  ; &cloptr88043[0]
  %f88048 = ptrtoint void(i64,i64)* @lam86491 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88048, i64* %eptr88044                                                 ; store fptr
  %arg84123 = ptrtoint i64* %cloptr88043 to i64                                      ; closure cast; i64* -> i64
  %rva85180 = add i64 0, 0                                                           ; quoted ()
  %rva85179 = call i64 @prim_cons(i64 %a83367, i64 %rva85180)                        ; call prim_cons
  %rva85178 = call i64 @prim_cons(i64 %qse$y, i64 %rva85179)                         ; call prim_cons
  %rva85177 = call i64 @prim_cons(i64 %arg84123, i64 %rva85178)                      ; call prim_cons
  %cloptr88049 = inttoptr i64 %Iic$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr88050 = getelementptr inbounds i64, i64* %cloptr88049, i64 0                 ; &cloptr88049[0]
  %f88052 = load i64, i64* %i0ptr88050, align 8                                      ; load; *i0ptr88050
  %fptr88051 = inttoptr i64 %f88052 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88051(i64 %Iic$_37drop, i64 %rva85177)              ; tail call
  ret void

else88042:
  %cloptr88053 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88055 = getelementptr inbounds i64, i64* %cloptr88053, i64 1                  ; &eptr88055[1]
  %eptr88056 = getelementptr inbounds i64, i64* %cloptr88053, i64 2                  ; &eptr88056[2]
  %eptr88057 = getelementptr inbounds i64, i64* %cloptr88053, i64 3                  ; &eptr88057[3]
  store i64 %a83362, i64* %eptr88055                                                 ; *eptr88055 = %a83362
  store i64 %a83365, i64* %eptr88056                                                 ; *eptr88056 = %a83365
  store i64 %cont83503, i64* %eptr88057                                              ; *eptr88057 = %cont83503
  %eptr88054 = getelementptr inbounds i64, i64* %cloptr88053, i64 0                  ; &cloptr88053[0]
  %f88058 = ptrtoint void(i64,i64)* @lam86496 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88058, i64* %eptr88054                                                 ; store fptr
  %arg84131 = ptrtoint i64* %cloptr88053 to i64                                      ; closure cast; i64* -> i64
  %arg84130 = add i64 0, 0                                                           ; quoted ()
  %rva85191 = add i64 0, 0                                                           ; quoted ()
  %rva85190 = call i64 @prim_cons(i64 %qse$y, i64 %rva85191)                         ; call prim_cons
  %rva85189 = call i64 @prim_cons(i64 %arg84130, i64 %rva85190)                      ; call prim_cons
  %cloptr88059 = inttoptr i64 %arg84131 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88060 = getelementptr inbounds i64, i64* %cloptr88059, i64 0                 ; &cloptr88059[0]
  %f88062 = load i64, i64* %i0ptr88060, align 8                                      ; load; *i0ptr88060
  %fptr88061 = inttoptr i64 %f88062 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88061(i64 %arg84131, i64 %rva85189)                 ; tail call
  ret void
}


define void @lam86496(i64 %env86497, i64 %rvp85188) {
  %envptr88063 = inttoptr i64 %env86497 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88064 = getelementptr inbounds i64, i64* %envptr88063, i64 3                ; &envptr88063[3]
  %cont83503 = load i64, i64* %envptr88064, align 8                                  ; load; *envptr88064
  %envptr88065 = inttoptr i64 %env86497 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88066 = getelementptr inbounds i64, i64* %envptr88065, i64 2                ; &envptr88065[2]
  %a83365 = load i64, i64* %envptr88066, align 8                                     ; load; *envptr88066
  %envptr88067 = inttoptr i64 %env86497 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88068 = getelementptr inbounds i64, i64* %envptr88067, i64 1                ; &envptr88067[1]
  %a83362 = load i64, i64* %envptr88068, align 8                                     ; load; *envptr88068
  %_9583511 = call i64 @prim_car(i64 %rvp85188)                                      ; call prim_car
  %rvp85187 = call i64 @prim_cdr(i64 %rvp85188)                                      ; call prim_cdr
  %a83368 = call i64 @prim_car(i64 %rvp85187)                                        ; call prim_car
  %na85182 = call i64 @prim_cdr(i64 %rvp85187)                                       ; call prim_cdr
  %rva85186 = add i64 0, 0                                                           ; quoted ()
  %rva85185 = call i64 @prim_cons(i64 %a83368, i64 %rva85186)                        ; call prim_cons
  %rva85184 = call i64 @prim_cons(i64 %a83365, i64 %rva85185)                        ; call prim_cons
  %rva85183 = call i64 @prim_cons(i64 %cont83503, i64 %rva85184)                     ; call prim_cons
  %cloptr88069 = inttoptr i64 %a83362 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88070 = getelementptr inbounds i64, i64* %cloptr88069, i64 0                 ; &cloptr88069[0]
  %f88072 = load i64, i64* %i0ptr88070, align 8                                      ; load; *i0ptr88070
  %fptr88071 = inttoptr i64 %f88072 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88071(i64 %a83362, i64 %rva85183)                   ; tail call
  ret void
}


define void @lam86491(i64 %env86492, i64 %rvp85176) {
  %envptr88073 = inttoptr i64 %env86492 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88074 = getelementptr inbounds i64, i64* %envptr88073, i64 3                ; &envptr88073[3]
  %cont83503 = load i64, i64* %envptr88074, align 8                                  ; load; *envptr88074
  %envptr88075 = inttoptr i64 %env86492 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88076 = getelementptr inbounds i64, i64* %envptr88075, i64 2                ; &envptr88075[2]
  %a83365 = load i64, i64* %envptr88076, align 8                                     ; load; *envptr88076
  %envptr88077 = inttoptr i64 %env86492 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88078 = getelementptr inbounds i64, i64* %envptr88077, i64 1                ; &envptr88077[1]
  %a83362 = load i64, i64* %envptr88078, align 8                                     ; load; *envptr88078
  %_9583511 = call i64 @prim_car(i64 %rvp85176)                                      ; call prim_car
  %rvp85175 = call i64 @prim_cdr(i64 %rvp85176)                                      ; call prim_cdr
  %a83368 = call i64 @prim_car(i64 %rvp85175)                                        ; call prim_car
  %na85170 = call i64 @prim_cdr(i64 %rvp85175)                                       ; call prim_cdr
  %rva85174 = add i64 0, 0                                                           ; quoted ()
  %rva85173 = call i64 @prim_cons(i64 %a83368, i64 %rva85174)                        ; call prim_cons
  %rva85172 = call i64 @prim_cons(i64 %a83365, i64 %rva85173)                        ; call prim_cons
  %rva85171 = call i64 @prim_cons(i64 %cont83503, i64 %rva85172)                     ; call prim_cons
  %cloptr88079 = inttoptr i64 %a83362 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88080 = getelementptr inbounds i64, i64* %cloptr88079, i64 0                 ; &cloptr88079[0]
  %f88082 = load i64, i64* %i0ptr88080, align 8                                      ; load; *i0ptr88080
  %fptr88081 = inttoptr i64 %f88082 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88081(i64 %a83362, i64 %rva85171)                   ; tail call
  ret void
}


define void @lam86479(i64 %env86480, i64 %rvp85369) {
  %envptr88083 = inttoptr i64 %env86480 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88084 = getelementptr inbounds i64, i64* %envptr88083, i64 2                ; &envptr88083[2]
  %yol$_37common_45tail = load i64, i64* %envptr88084, align 8                       ; load; *envptr88084
  %envptr88085 = inttoptr i64 %env86480 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88086 = getelementptr inbounds i64, i64* %envptr88085, i64 1                ; &envptr88085[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88086, align 8                        ; load; *envptr88086
  %cont83516 = call i64 @prim_car(i64 %rvp85369)                                     ; call prim_car
  %rvp85368 = call i64 @prim_cdr(i64 %rvp85369)                                      ; call prim_cdr
  %rba$new = call i64 @prim_car(i64 %rvp85368)                                       ; call prim_car
  %na85271 = call i64 @prim_cdr(i64 %rvp85368)                                       ; call prim_cdr
  %arg84160 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83369 = call i64 @prim_vector_45ref(i64 %cmL$_37wind_45stack, i64 %arg84160)     ; call prim_vector_45ref
  %cloptr88087 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88089 = getelementptr inbounds i64, i64* %cloptr88087, i64 1                  ; &eptr88089[1]
  %eptr88090 = getelementptr inbounds i64, i64* %cloptr88087, i64 2                  ; &eptr88090[2]
  %eptr88091 = getelementptr inbounds i64, i64* %cloptr88087, i64 3                  ; &eptr88091[3]
  store i64 %cmL$_37wind_45stack, i64* %eptr88089                                    ; *eptr88089 = %cmL$_37wind_45stack
  store i64 %rba$new, i64* %eptr88090                                                ; *eptr88090 = %rba$new
  store i64 %cont83516, i64* %eptr88091                                              ; *eptr88091 = %cont83516
  %eptr88088 = getelementptr inbounds i64, i64* %cloptr88087, i64 0                  ; &cloptr88087[0]
  %f88092 = ptrtoint void(i64,i64)* @lam86476 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88092, i64* %eptr88088                                                 ; store fptr
  %arg84164 = ptrtoint i64* %cloptr88087 to i64                                      ; closure cast; i64* -> i64
  %rva85367 = add i64 0, 0                                                           ; quoted ()
  %rva85366 = call i64 @prim_cons(i64 %a83369, i64 %rva85367)                        ; call prim_cons
  %rva85365 = call i64 @prim_cons(i64 %rba$new, i64 %rva85366)                       ; call prim_cons
  %rva85364 = call i64 @prim_cons(i64 %arg84164, i64 %rva85365)                      ; call prim_cons
  %cloptr88093 = inttoptr i64 %yol$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr88094 = getelementptr inbounds i64, i64* %cloptr88093, i64 0                 ; &cloptr88093[0]
  %f88096 = load i64, i64* %i0ptr88094, align 8                                      ; load; *i0ptr88094
  %fptr88095 = inttoptr i64 %f88096 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88095(i64 %yol$_37common_45tail, i64 %rva85364)     ; tail call
  ret void
}


define void @lam86476(i64 %env86477, i64 %rvp85363) {
  %envptr88097 = inttoptr i64 %env86477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88098 = getelementptr inbounds i64, i64* %envptr88097, i64 3                ; &envptr88097[3]
  %cont83516 = load i64, i64* %envptr88098, align 8                                  ; load; *envptr88098
  %envptr88099 = inttoptr i64 %env86477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88100 = getelementptr inbounds i64, i64* %envptr88099, i64 2                ; &envptr88099[2]
  %rba$new = load i64, i64* %envptr88100, align 8                                    ; load; *envptr88100
  %envptr88101 = inttoptr i64 %env86477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88102 = getelementptr inbounds i64, i64* %envptr88101, i64 1                ; &envptr88101[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88102, align 8                        ; load; *envptr88102
  %_9583517 = call i64 @prim_car(i64 %rvp85363)                                      ; call prim_car
  %rvp85362 = call i64 @prim_cdr(i64 %rvp85363)                                      ; call prim_cdr
  %hNh$tail = call i64 @prim_car(i64 %rvp85362)                                      ; call prim_car
  %na85273 = call i64 @prim_cdr(i64 %rvp85362)                                       ; call prim_cdr
  %cloptr88103 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88104 = getelementptr inbounds i64, i64* %cloptr88103, i64 0                  ; &cloptr88103[0]
  %f88105 = ptrtoint void(i64,i64)* @lam86474 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88105, i64* %eptr88104                                                 ; store fptr
  %arg84167 = ptrtoint i64* %cloptr88103 to i64                                      ; closure cast; i64* -> i64
  %cloptr88106 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88108 = getelementptr inbounds i64, i64* %cloptr88106, i64 1                  ; &eptr88108[1]
  %eptr88109 = getelementptr inbounds i64, i64* %cloptr88106, i64 2                  ; &eptr88109[2]
  %eptr88110 = getelementptr inbounds i64, i64* %cloptr88106, i64 3                  ; &eptr88110[3]
  %eptr88111 = getelementptr inbounds i64, i64* %cloptr88106, i64 4                  ; &eptr88111[4]
  store i64 %cmL$_37wind_45stack, i64* %eptr88108                                    ; *eptr88108 = %cmL$_37wind_45stack
  store i64 %hNh$tail, i64* %eptr88109                                               ; *eptr88109 = %hNh$tail
  store i64 %rba$new, i64* %eptr88110                                                ; *eptr88110 = %rba$new
  store i64 %cont83516, i64* %eptr88111                                              ; *eptr88111 = %cont83516
  %eptr88107 = getelementptr inbounds i64, i64* %cloptr88106, i64 0                  ; &cloptr88106[0]
  %f88112 = ptrtoint void(i64,i64)* @lam86470 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88112, i64* %eptr88107                                                 ; store fptr
  %arg84166 = ptrtoint i64* %cloptr88106 to i64                                      ; closure cast; i64* -> i64
  %rva85361 = add i64 0, 0                                                           ; quoted ()
  %rva85360 = call i64 @prim_cons(i64 %arg84166, i64 %rva85361)                      ; call prim_cons
  %cloptr88113 = inttoptr i64 %arg84167 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88114 = getelementptr inbounds i64, i64* %cloptr88113, i64 0                 ; &cloptr88113[0]
  %f88116 = load i64, i64* %i0ptr88114, align 8                                      ; load; *i0ptr88114
  %fptr88115 = inttoptr i64 %f88116 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88115(i64 %arg84167, i64 %rva85360)                 ; tail call
  ret void
}


define void @lam86474(i64 %env86475, i64 %nZk$lst83538) {
  %cont83537 = call i64 @prim_car(i64 %nZk$lst83538)                                 ; call prim_car
  %nZk$lst = call i64 @prim_cdr(i64 %nZk$lst83538)                                   ; call prim_cdr
  %arg84171 = add i64 0, 0                                                           ; quoted ()
  %rva85276 = add i64 0, 0                                                           ; quoted ()
  %rva85275 = call i64 @prim_cons(i64 %nZk$lst, i64 %rva85276)                       ; call prim_cons
  %rva85274 = call i64 @prim_cons(i64 %arg84171, i64 %rva85275)                      ; call prim_cons
  %cloptr88117 = inttoptr i64 %cont83537 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88118 = getelementptr inbounds i64, i64* %cloptr88117, i64 0                 ; &cloptr88117[0]
  %f88120 = load i64, i64* %i0ptr88118, align 8                                      ; load; *i0ptr88118
  %fptr88119 = inttoptr i64 %f88120 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88119(i64 %cont83537, i64 %rva85274)                ; tail call
  ret void
}


define void @lam86470(i64 %env86471, i64 %rvp85359) {
  %envptr88121 = inttoptr i64 %env86471 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88122 = getelementptr inbounds i64, i64* %envptr88121, i64 4                ; &envptr88121[4]
  %cont83516 = load i64, i64* %envptr88122, align 8                                  ; load; *envptr88122
  %envptr88123 = inttoptr i64 %env86471 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88124 = getelementptr inbounds i64, i64* %envptr88123, i64 3                ; &envptr88123[3]
  %rba$new = load i64, i64* %envptr88124, align 8                                    ; load; *envptr88124
  %envptr88125 = inttoptr i64 %env86471 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88126 = getelementptr inbounds i64, i64* %envptr88125, i64 2                ; &envptr88125[2]
  %hNh$tail = load i64, i64* %envptr88126, align 8                                   ; load; *envptr88126
  %envptr88127 = inttoptr i64 %env86471 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88128 = getelementptr inbounds i64, i64* %envptr88127, i64 1                ; &envptr88127[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88128, align 8                        ; load; *envptr88128
  %_9583535 = call i64 @prim_car(i64 %rvp85359)                                      ; call prim_car
  %rvp85358 = call i64 @prim_cdr(i64 %rvp85359)                                      ; call prim_cdr
  %a83370 = call i64 @prim_car(i64 %rvp85358)                                        ; call prim_car
  %na85278 = call i64 @prim_cdr(i64 %rvp85358)                                       ; call prim_cdr
  %arg84174 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83536 = call i64 @prim_make_45vector(i64 %arg84174, i64 %a83370)           ; call prim_make_45vector
  %cloptr88129 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88131 = getelementptr inbounds i64, i64* %cloptr88129, i64 1                  ; &eptr88131[1]
  %eptr88132 = getelementptr inbounds i64, i64* %cloptr88129, i64 2                  ; &eptr88132[2]
  %eptr88133 = getelementptr inbounds i64, i64* %cloptr88129, i64 3                  ; &eptr88133[3]
  %eptr88134 = getelementptr inbounds i64, i64* %cloptr88129, i64 4                  ; &eptr88134[4]
  store i64 %cmL$_37wind_45stack, i64* %eptr88131                                    ; *eptr88131 = %cmL$_37wind_45stack
  store i64 %hNh$tail, i64* %eptr88132                                               ; *eptr88132 = %hNh$tail
  store i64 %rba$new, i64* %eptr88133                                                ; *eptr88133 = %rba$new
  store i64 %cont83516, i64* %eptr88134                                              ; *eptr88134 = %cont83516
  %eptr88130 = getelementptr inbounds i64, i64* %cloptr88129, i64 0                  ; &cloptr88129[0]
  %f88135 = ptrtoint void(i64,i64)* @lam86467 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88135, i64* %eptr88130                                                 ; store fptr
  %arg84177 = ptrtoint i64* %cloptr88129 to i64                                      ; closure cast; i64* -> i64
  %arg84176 = add i64 0, 0                                                           ; quoted ()
  %rva85357 = add i64 0, 0                                                           ; quoted ()
  %rva85356 = call i64 @prim_cons(i64 %retprim83536, i64 %rva85357)                  ; call prim_cons
  %rva85355 = call i64 @prim_cons(i64 %arg84176, i64 %rva85356)                      ; call prim_cons
  %cloptr88136 = inttoptr i64 %arg84177 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88137 = getelementptr inbounds i64, i64* %cloptr88136, i64 0                 ; &cloptr88136[0]
  %f88139 = load i64, i64* %i0ptr88137, align 8                                      ; load; *i0ptr88137
  %fptr88138 = inttoptr i64 %f88139 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88138(i64 %arg84177, i64 %rva85355)                 ; tail call
  ret void
}


define void @lam86467(i64 %env86468, i64 %rvp85354) {
  %envptr88140 = inttoptr i64 %env86468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88141 = getelementptr inbounds i64, i64* %envptr88140, i64 4                ; &envptr88140[4]
  %cont83516 = load i64, i64* %envptr88141, align 8                                  ; load; *envptr88141
  %envptr88142 = inttoptr i64 %env86468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88143 = getelementptr inbounds i64, i64* %envptr88142, i64 3                ; &envptr88142[3]
  %rba$new = load i64, i64* %envptr88143, align 8                                    ; load; *envptr88143
  %envptr88144 = inttoptr i64 %env86468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88145 = getelementptr inbounds i64, i64* %envptr88144, i64 2                ; &envptr88144[2]
  %hNh$tail = load i64, i64* %envptr88145, align 8                                   ; load; *envptr88145
  %envptr88146 = inttoptr i64 %env86468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88147 = getelementptr inbounds i64, i64* %envptr88146, i64 1                ; &envptr88146[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88147, align 8                        ; load; *envptr88147
  %_9583529 = call i64 @prim_car(i64 %rvp85354)                                      ; call prim_car
  %rvp85353 = call i64 @prim_cdr(i64 %rvp85354)                                      ; call prim_cdr
  %QLC$f = call i64 @prim_car(i64 %rvp85353)                                         ; call prim_car
  %na85280 = call i64 @prim_cdr(i64 %rvp85353)                                       ; call prim_cdr
  %arg84179 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88148 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88150 = getelementptr inbounds i64, i64* %cloptr88148, i64 1                  ; &eptr88150[1]
  %eptr88151 = getelementptr inbounds i64, i64* %cloptr88148, i64 2                  ; &eptr88151[2]
  %eptr88152 = getelementptr inbounds i64, i64* %cloptr88148, i64 3                  ; &eptr88152[3]
  store i64 %cmL$_37wind_45stack, i64* %eptr88150                                    ; *eptr88150 = %cmL$_37wind_45stack
  store i64 %hNh$tail, i64* %eptr88151                                               ; *eptr88151 = %hNh$tail
  store i64 %QLC$f, i64* %eptr88152                                                  ; *eptr88152 = %QLC$f
  %eptr88149 = getelementptr inbounds i64, i64* %cloptr88148, i64 0                  ; &cloptr88148[0]
  %f88153 = ptrtoint void(i64,i64)* @lam86464 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88153, i64* %eptr88149                                                 ; store fptr
  %arg84178 = ptrtoint i64* %cloptr88148 to i64                                      ; closure cast; i64* -> i64
  %UPT$_9583258 = call i64 @prim_vector_45set_33(i64 %QLC$f, i64 %arg84179, i64 %arg84178); call prim_vector_45set_33
  %arg84204 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83378 = call i64 @prim_vector_45ref(i64 %QLC$f, i64 %arg84204)                   ; call prim_vector_45ref
  %arg84206 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83379 = call i64 @prim_vector_45ref(i64 %cmL$_37wind_45stack, i64 %arg84206)     ; call prim_vector_45ref
  %cloptr88154 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88156 = getelementptr inbounds i64, i64* %cloptr88154, i64 1                  ; &eptr88156[1]
  %eptr88157 = getelementptr inbounds i64, i64* %cloptr88154, i64 2                  ; &eptr88157[2]
  %eptr88158 = getelementptr inbounds i64, i64* %cloptr88154, i64 3                  ; &eptr88158[3]
  %eptr88159 = getelementptr inbounds i64, i64* %cloptr88154, i64 4                  ; &eptr88159[4]
  store i64 %cmL$_37wind_45stack, i64* %eptr88156                                    ; *eptr88156 = %cmL$_37wind_45stack
  store i64 %hNh$tail, i64* %eptr88157                                               ; *eptr88157 = %hNh$tail
  store i64 %rba$new, i64* %eptr88158                                                ; *eptr88158 = %rba$new
  store i64 %cont83516, i64* %eptr88159                                              ; *eptr88159 = %cont83516
  %eptr88155 = getelementptr inbounds i64, i64* %cloptr88154, i64 0                  ; &cloptr88154[0]
  %f88160 = ptrtoint void(i64,i64)* @lam86448 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88160, i64* %eptr88155                                                 ; store fptr
  %arg84209 = ptrtoint i64* %cloptr88154 to i64                                      ; closure cast; i64* -> i64
  %rva85352 = add i64 0, 0                                                           ; quoted ()
  %rva85351 = call i64 @prim_cons(i64 %a83379, i64 %rva85352)                        ; call prim_cons
  %rva85350 = call i64 @prim_cons(i64 %arg84209, i64 %rva85351)                      ; call prim_cons
  %cloptr88161 = inttoptr i64 %a83378 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88162 = getelementptr inbounds i64, i64* %cloptr88161, i64 0                 ; &cloptr88161[0]
  %f88164 = load i64, i64* %i0ptr88162, align 8                                      ; load; *i0ptr88162
  %fptr88163 = inttoptr i64 %f88164 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88163(i64 %a83378, i64 %rva85350)                   ; tail call
  ret void
}


define void @lam86464(i64 %env86465, i64 %rvp85303) {
  %envptr88165 = inttoptr i64 %env86465 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88166 = getelementptr inbounds i64, i64* %envptr88165, i64 3                ; &envptr88165[3]
  %QLC$f = load i64, i64* %envptr88166, align 8                                      ; load; *envptr88166
  %envptr88167 = inttoptr i64 %env86465 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88168 = getelementptr inbounds i64, i64* %envptr88167, i64 2                ; &envptr88167[2]
  %hNh$tail = load i64, i64* %envptr88168, align 8                                   ; load; *envptr88168
  %envptr88169 = inttoptr i64 %env86465 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88170 = getelementptr inbounds i64, i64* %envptr88169, i64 1                ; &envptr88169[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88170, align 8                        ; load; *envptr88170
  %cont83530 = call i64 @prim_car(i64 %rvp85303)                                     ; call prim_car
  %rvp85302 = call i64 @prim_cdr(i64 %rvp85303)                                      ; call prim_cdr
  %C32$l = call i64 @prim_car(i64 %rvp85302)                                         ; call prim_car
  %na85282 = call i64 @prim_cdr(i64 %rvp85302)                                       ; call prim_cdr
  %a83371 = call i64 @prim_eq_63(i64 %C32$l, i64 %hNh$tail)                          ; call prim_eq_63
  %a83372 = call i64 @prim_not(i64 %a83371)                                          ; call prim_not
  %cmp88171 = icmp eq i64 %a83372, 15                                                ; false?
  br i1 %cmp88171, label %else88173, label %then88172                                ; if

then88172:
  %a83373 = call i64 @prim_cdr(i64 %C32$l)                                           ; call prim_cdr
  %arg84186 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83533 = call i64 @prim_vector_45set_33(i64 %cmL$_37wind_45stack, i64 %arg84186, i64 %a83373); call prim_vector_45set_33
  %cloptr88174 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88176 = getelementptr inbounds i64, i64* %cloptr88174, i64 1                  ; &eptr88176[1]
  %eptr88177 = getelementptr inbounds i64, i64* %cloptr88174, i64 2                  ; &eptr88177[2]
  %eptr88178 = getelementptr inbounds i64, i64* %cloptr88174, i64 3                  ; &eptr88178[3]
  store i64 %QLC$f, i64* %eptr88176                                                  ; *eptr88176 = %QLC$f
  store i64 %C32$l, i64* %eptr88177                                                  ; *eptr88177 = %C32$l
  store i64 %cont83530, i64* %eptr88178                                              ; *eptr88178 = %cont83530
  %eptr88175 = getelementptr inbounds i64, i64* %cloptr88174, i64 0                  ; &cloptr88174[0]
  %f88179 = ptrtoint void(i64,i64)* @lam86459 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88179, i64* %eptr88175                                                 ; store fptr
  %arg84190 = ptrtoint i64* %cloptr88174 to i64                                      ; closure cast; i64* -> i64
  %arg84189 = add i64 0, 0                                                           ; quoted ()
  %rva85298 = add i64 0, 0                                                           ; quoted ()
  %rva85297 = call i64 @prim_cons(i64 %retprim83533, i64 %rva85298)                  ; call prim_cons
  %rva85296 = call i64 @prim_cons(i64 %arg84189, i64 %rva85297)                      ; call prim_cons
  %cloptr88180 = inttoptr i64 %arg84190 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88181 = getelementptr inbounds i64, i64* %cloptr88180, i64 0                 ; &cloptr88180[0]
  %f88183 = load i64, i64* %i0ptr88181, align 8                                      ; load; *i0ptr88181
  %fptr88182 = inttoptr i64 %f88183 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88182(i64 %arg84190, i64 %rva85296)                 ; tail call
  ret void

else88173:
  %retprim83534 = call i64 @prim_void()                                              ; call prim_void
  %arg84202 = add i64 0, 0                                                           ; quoted ()
  %rva85301 = add i64 0, 0                                                           ; quoted ()
  %rva85300 = call i64 @prim_cons(i64 %retprim83534, i64 %rva85301)                  ; call prim_cons
  %rva85299 = call i64 @prim_cons(i64 %arg84202, i64 %rva85300)                      ; call prim_cons
  %cloptr88184 = inttoptr i64 %cont83530 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88185 = getelementptr inbounds i64, i64* %cloptr88184, i64 0                 ; &cloptr88184[0]
  %f88187 = load i64, i64* %i0ptr88185, align 8                                      ; load; *i0ptr88185
  %fptr88186 = inttoptr i64 %f88187 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88186(i64 %cont83530, i64 %rva85299)                ; tail call
  ret void
}


define void @lam86459(i64 %env86460, i64 %rvp85295) {
  %envptr88188 = inttoptr i64 %env86460 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88189 = getelementptr inbounds i64, i64* %envptr88188, i64 3                ; &envptr88188[3]
  %cont83530 = load i64, i64* %envptr88189, align 8                                  ; load; *envptr88189
  %envptr88190 = inttoptr i64 %env86460 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88191 = getelementptr inbounds i64, i64* %envptr88190, i64 2                ; &envptr88190[2]
  %C32$l = load i64, i64* %envptr88191, align 8                                      ; load; *envptr88191
  %envptr88192 = inttoptr i64 %env86460 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88193 = getelementptr inbounds i64, i64* %envptr88192, i64 1                ; &envptr88192[1]
  %QLC$f = load i64, i64* %envptr88193, align 8                                      ; load; *envptr88193
  %_9583531 = call i64 @prim_car(i64 %rvp85295)                                      ; call prim_car
  %rvp85294 = call i64 @prim_cdr(i64 %rvp85295)                                      ; call prim_cdr
  %w3N$_9583259 = call i64 @prim_car(i64 %rvp85294)                                  ; call prim_car
  %na85284 = call i64 @prim_cdr(i64 %rvp85294)                                       ; call prim_cdr
  %a83374 = call i64 @prim_car(i64 %C32$l)                                           ; call prim_car
  %a83375 = call i64 @prim_cdr(i64 %a83374)                                          ; call prim_cdr
  %cloptr88194 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88196 = getelementptr inbounds i64, i64* %cloptr88194, i64 1                  ; &eptr88196[1]
  %eptr88197 = getelementptr inbounds i64, i64* %cloptr88194, i64 2                  ; &eptr88197[2]
  %eptr88198 = getelementptr inbounds i64, i64* %cloptr88194, i64 3                  ; &eptr88198[3]
  store i64 %QLC$f, i64* %eptr88196                                                  ; *eptr88196 = %QLC$f
  store i64 %C32$l, i64* %eptr88197                                                  ; *eptr88197 = %C32$l
  store i64 %cont83530, i64* %eptr88198                                              ; *eptr88198 = %cont83530
  %eptr88195 = getelementptr inbounds i64, i64* %cloptr88194, i64 0                  ; &cloptr88194[0]
  %f88199 = ptrtoint void(i64,i64)* @lam86457 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88199, i64* %eptr88195                                                 ; store fptr
  %arg84193 = ptrtoint i64* %cloptr88194 to i64                                      ; closure cast; i64* -> i64
  %rva85293 = add i64 0, 0                                                           ; quoted ()
  %rva85292 = call i64 @prim_cons(i64 %arg84193, i64 %rva85293)                      ; call prim_cons
  %cloptr88200 = inttoptr i64 %a83375 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88201 = getelementptr inbounds i64, i64* %cloptr88200, i64 0                 ; &cloptr88200[0]
  %f88203 = load i64, i64* %i0ptr88201, align 8                                      ; load; *i0ptr88201
  %fptr88202 = inttoptr i64 %f88203 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88202(i64 %a83375, i64 %rva85292)                   ; tail call
  ret void
}


define void @lam86457(i64 %env86458, i64 %rvp85291) {
  %envptr88204 = inttoptr i64 %env86458 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88205 = getelementptr inbounds i64, i64* %envptr88204, i64 3                ; &envptr88204[3]
  %cont83530 = load i64, i64* %envptr88205, align 8                                  ; load; *envptr88205
  %envptr88206 = inttoptr i64 %env86458 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88207 = getelementptr inbounds i64, i64* %envptr88206, i64 2                ; &envptr88206[2]
  %C32$l = load i64, i64* %envptr88207, align 8                                      ; load; *envptr88207
  %envptr88208 = inttoptr i64 %env86458 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88209 = getelementptr inbounds i64, i64* %envptr88208, i64 1                ; &envptr88208[1]
  %QLC$f = load i64, i64* %envptr88209, align 8                                      ; load; *envptr88209
  %_9583532 = call i64 @prim_car(i64 %rvp85291)                                      ; call prim_car
  %rvp85290 = call i64 @prim_cdr(i64 %rvp85291)                                      ; call prim_cdr
  %Agu$_9583260 = call i64 @prim_car(i64 %rvp85290)                                  ; call prim_car
  %na85286 = call i64 @prim_cdr(i64 %rvp85290)                                       ; call prim_cdr
  %arg84195 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83376 = call i64 @prim_vector_45ref(i64 %QLC$f, i64 %arg84195)                   ; call prim_vector_45ref
  %a83377 = call i64 @prim_cdr(i64 %C32$l)                                           ; call prim_cdr
  %rva85289 = add i64 0, 0                                                           ; quoted ()
  %rva85288 = call i64 @prim_cons(i64 %a83377, i64 %rva85289)                        ; call prim_cons
  %rva85287 = call i64 @prim_cons(i64 %cont83530, i64 %rva85288)                     ; call prim_cons
  %cloptr88210 = inttoptr i64 %a83376 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88211 = getelementptr inbounds i64, i64* %cloptr88210, i64 0                 ; &cloptr88210[0]
  %f88213 = load i64, i64* %i0ptr88211, align 8                                      ; load; *i0ptr88211
  %fptr88212 = inttoptr i64 %f88213 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88212(i64 %a83376, i64 %rva85287)                   ; tail call
  ret void
}


define void @lam86448(i64 %env86449, i64 %rvp85349) {
  %envptr88214 = inttoptr i64 %env86449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88215 = getelementptr inbounds i64, i64* %envptr88214, i64 4                ; &envptr88214[4]
  %cont83516 = load i64, i64* %envptr88215, align 8                                  ; load; *envptr88215
  %envptr88216 = inttoptr i64 %env86449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88217 = getelementptr inbounds i64, i64* %envptr88216, i64 3                ; &envptr88216[3]
  %rba$new = load i64, i64* %envptr88217, align 8                                    ; load; *envptr88217
  %envptr88218 = inttoptr i64 %env86449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88219 = getelementptr inbounds i64, i64* %envptr88218, i64 2                ; &envptr88218[2]
  %hNh$tail = load i64, i64* %envptr88219, align 8                                   ; load; *envptr88219
  %envptr88220 = inttoptr i64 %env86449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88221 = getelementptr inbounds i64, i64* %envptr88220, i64 1                ; &envptr88220[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88221, align 8                        ; load; *envptr88221
  %_9583518 = call i64 @prim_car(i64 %rvp85349)                                      ; call prim_car
  %rvp85348 = call i64 @prim_cdr(i64 %rvp85349)                                      ; call prim_cdr
  %H6R$_9583257 = call i64 @prim_car(i64 %rvp85348)                                  ; call prim_car
  %na85305 = call i64 @prim_cdr(i64 %rvp85348)                                       ; call prim_cdr
  %cloptr88222 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88223 = getelementptr inbounds i64, i64* %cloptr88222, i64 0                  ; &cloptr88222[0]
  %f88224 = ptrtoint void(i64,i64)* @lam86446 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88224, i64* %eptr88223                                                 ; store fptr
  %arg84212 = ptrtoint i64* %cloptr88222 to i64                                      ; closure cast; i64* -> i64
  %cloptr88225 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88227 = getelementptr inbounds i64, i64* %cloptr88225, i64 1                  ; &eptr88227[1]
  %eptr88228 = getelementptr inbounds i64, i64* %cloptr88225, i64 2                  ; &eptr88228[2]
  %eptr88229 = getelementptr inbounds i64, i64* %cloptr88225, i64 3                  ; &eptr88229[3]
  %eptr88230 = getelementptr inbounds i64, i64* %cloptr88225, i64 4                  ; &eptr88230[4]
  store i64 %cmL$_37wind_45stack, i64* %eptr88227                                    ; *eptr88227 = %cmL$_37wind_45stack
  store i64 %hNh$tail, i64* %eptr88228                                               ; *eptr88228 = %hNh$tail
  store i64 %rba$new, i64* %eptr88229                                                ; *eptr88229 = %rba$new
  store i64 %cont83516, i64* %eptr88230                                              ; *eptr88230 = %cont83516
  %eptr88226 = getelementptr inbounds i64, i64* %cloptr88225, i64 0                  ; &cloptr88225[0]
  %f88231 = ptrtoint void(i64,i64)* @lam86442 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88231, i64* %eptr88226                                                 ; store fptr
  %arg84211 = ptrtoint i64* %cloptr88225 to i64                                      ; closure cast; i64* -> i64
  %rva85347 = add i64 0, 0                                                           ; quoted ()
  %rva85346 = call i64 @prim_cons(i64 %arg84211, i64 %rva85347)                      ; call prim_cons
  %cloptr88232 = inttoptr i64 %arg84212 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88233 = getelementptr inbounds i64, i64* %cloptr88232, i64 0                 ; &cloptr88232[0]
  %f88235 = load i64, i64* %i0ptr88233, align 8                                      ; load; *i0ptr88233
  %fptr88234 = inttoptr i64 %f88235 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88234(i64 %arg84212, i64 %rva85346)                 ; tail call
  ret void
}


define void @lam86446(i64 %env86447, i64 %syd$lst83528) {
  %cont83527 = call i64 @prim_car(i64 %syd$lst83528)                                 ; call prim_car
  %syd$lst = call i64 @prim_cdr(i64 %syd$lst83528)                                   ; call prim_cdr
  %arg84216 = add i64 0, 0                                                           ; quoted ()
  %rva85308 = add i64 0, 0                                                           ; quoted ()
  %rva85307 = call i64 @prim_cons(i64 %syd$lst, i64 %rva85308)                       ; call prim_cons
  %rva85306 = call i64 @prim_cons(i64 %arg84216, i64 %rva85307)                      ; call prim_cons
  %cloptr88236 = inttoptr i64 %cont83527 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88237 = getelementptr inbounds i64, i64* %cloptr88236, i64 0                 ; &cloptr88236[0]
  %f88239 = load i64, i64* %i0ptr88237, align 8                                      ; load; *i0ptr88237
  %fptr88238 = inttoptr i64 %f88239 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88238(i64 %cont83527, i64 %rva85306)                ; tail call
  ret void
}


define void @lam86442(i64 %env86443, i64 %rvp85345) {
  %envptr88240 = inttoptr i64 %env86443 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88241 = getelementptr inbounds i64, i64* %envptr88240, i64 4                ; &envptr88240[4]
  %cont83516 = load i64, i64* %envptr88241, align 8                                  ; load; *envptr88241
  %envptr88242 = inttoptr i64 %env86443 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88243 = getelementptr inbounds i64, i64* %envptr88242, i64 3                ; &envptr88242[3]
  %rba$new = load i64, i64* %envptr88243, align 8                                    ; load; *envptr88243
  %envptr88244 = inttoptr i64 %env86443 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88245 = getelementptr inbounds i64, i64* %envptr88244, i64 2                ; &envptr88244[2]
  %hNh$tail = load i64, i64* %envptr88245, align 8                                   ; load; *envptr88245
  %envptr88246 = inttoptr i64 %env86443 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88247 = getelementptr inbounds i64, i64* %envptr88246, i64 1                ; &envptr88246[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88247, align 8                        ; load; *envptr88247
  %_9583525 = call i64 @prim_car(i64 %rvp85345)                                      ; call prim_car
  %rvp85344 = call i64 @prim_cdr(i64 %rvp85345)                                      ; call prim_cdr
  %a83380 = call i64 @prim_car(i64 %rvp85344)                                        ; call prim_car
  %na85310 = call i64 @prim_cdr(i64 %rvp85344)                                       ; call prim_cdr
  %arg84219 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83526 = call i64 @prim_make_45vector(i64 %arg84219, i64 %a83380)           ; call prim_make_45vector
  %cloptr88248 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88250 = getelementptr inbounds i64, i64* %cloptr88248, i64 1                  ; &eptr88250[1]
  %eptr88251 = getelementptr inbounds i64, i64* %cloptr88248, i64 2                  ; &eptr88251[2]
  %eptr88252 = getelementptr inbounds i64, i64* %cloptr88248, i64 3                  ; &eptr88252[3]
  %eptr88253 = getelementptr inbounds i64, i64* %cloptr88248, i64 4                  ; &eptr88253[4]
  store i64 %cmL$_37wind_45stack, i64* %eptr88250                                    ; *eptr88250 = %cmL$_37wind_45stack
  store i64 %hNh$tail, i64* %eptr88251                                               ; *eptr88251 = %hNh$tail
  store i64 %rba$new, i64* %eptr88252                                                ; *eptr88252 = %rba$new
  store i64 %cont83516, i64* %eptr88253                                              ; *eptr88253 = %cont83516
  %eptr88249 = getelementptr inbounds i64, i64* %cloptr88248, i64 0                  ; &cloptr88248[0]
  %f88254 = ptrtoint void(i64,i64)* @lam86439 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88254, i64* %eptr88249                                                 ; store fptr
  %arg84222 = ptrtoint i64* %cloptr88248 to i64                                      ; closure cast; i64* -> i64
  %arg84221 = add i64 0, 0                                                           ; quoted ()
  %rva85343 = add i64 0, 0                                                           ; quoted ()
  %rva85342 = call i64 @prim_cons(i64 %retprim83526, i64 %rva85343)                  ; call prim_cons
  %rva85341 = call i64 @prim_cons(i64 %arg84221, i64 %rva85342)                      ; call prim_cons
  %cloptr88255 = inttoptr i64 %arg84222 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88256 = getelementptr inbounds i64, i64* %cloptr88255, i64 0                 ; &cloptr88255[0]
  %f88258 = load i64, i64* %i0ptr88256, align 8                                      ; load; *i0ptr88256
  %fptr88257 = inttoptr i64 %f88258 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88257(i64 %arg84222, i64 %rva85341)                 ; tail call
  ret void
}


define void @lam86439(i64 %env86440, i64 %rvp85340) {
  %envptr88259 = inttoptr i64 %env86440 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88260 = getelementptr inbounds i64, i64* %envptr88259, i64 4                ; &envptr88259[4]
  %cont83516 = load i64, i64* %envptr88260, align 8                                  ; load; *envptr88260
  %envptr88261 = inttoptr i64 %env86440 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88262 = getelementptr inbounds i64, i64* %envptr88261, i64 3                ; &envptr88261[3]
  %rba$new = load i64, i64* %envptr88262, align 8                                    ; load; *envptr88262
  %envptr88263 = inttoptr i64 %env86440 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88264 = getelementptr inbounds i64, i64* %envptr88263, i64 2                ; &envptr88263[2]
  %hNh$tail = load i64, i64* %envptr88264, align 8                                   ; load; *envptr88264
  %envptr88265 = inttoptr i64 %env86440 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88266 = getelementptr inbounds i64, i64* %envptr88265, i64 1                ; &envptr88265[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88266, align 8                        ; load; *envptr88266
  %_9583519 = call i64 @prim_car(i64 %rvp85340)                                      ; call prim_car
  %rvp85339 = call i64 @prim_cdr(i64 %rvp85340)                                      ; call prim_cdr
  %uJP$f = call i64 @prim_car(i64 %rvp85339)                                         ; call prim_car
  %na85312 = call i64 @prim_cdr(i64 %rvp85339)                                       ; call prim_cdr
  %arg84224 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88267 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88269 = getelementptr inbounds i64, i64* %cloptr88267, i64 1                  ; &eptr88269[1]
  %eptr88270 = getelementptr inbounds i64, i64* %cloptr88267, i64 2                  ; &eptr88270[2]
  %eptr88271 = getelementptr inbounds i64, i64* %cloptr88267, i64 3                  ; &eptr88271[3]
  store i64 %cmL$_37wind_45stack, i64* %eptr88269                                    ; *eptr88269 = %cmL$_37wind_45stack
  store i64 %hNh$tail, i64* %eptr88270                                               ; *eptr88270 = %hNh$tail
  store i64 %uJP$f, i64* %eptr88271                                                  ; *eptr88271 = %uJP$f
  %eptr88268 = getelementptr inbounds i64, i64* %cloptr88267, i64 0                  ; &cloptr88267[0]
  %f88272 = ptrtoint void(i64,i64)* @lam86436 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88272, i64* %eptr88268                                                 ; store fptr
  %arg84223 = ptrtoint i64* %cloptr88267 to i64                                      ; closure cast; i64* -> i64
  %k9a$_9583261 = call i64 @prim_vector_45set_33(i64 %uJP$f, i64 %arg84224, i64 %arg84223); call prim_vector_45set_33
  %arg84248 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83387 = call i64 @prim_vector_45ref(i64 %uJP$f, i64 %arg84248)                   ; call prim_vector_45ref
  %rva85338 = add i64 0, 0                                                           ; quoted ()
  %rva85337 = call i64 @prim_cons(i64 %rba$new, i64 %rva85338)                       ; call prim_cons
  %rva85336 = call i64 @prim_cons(i64 %cont83516, i64 %rva85337)                     ; call prim_cons
  %cloptr88273 = inttoptr i64 %a83387 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88274 = getelementptr inbounds i64, i64* %cloptr88273, i64 0                 ; &cloptr88273[0]
  %f88276 = load i64, i64* %i0ptr88274, align 8                                      ; load; *i0ptr88274
  %fptr88275 = inttoptr i64 %f88276 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88275(i64 %a83387, i64 %rva85336)                   ; tail call
  ret void
}


define void @lam86436(i64 %env86437, i64 %rvp85335) {
  %envptr88277 = inttoptr i64 %env86437 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88278 = getelementptr inbounds i64, i64* %envptr88277, i64 3                ; &envptr88277[3]
  %uJP$f = load i64, i64* %envptr88278, align 8                                      ; load; *envptr88278
  %envptr88279 = inttoptr i64 %env86437 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88280 = getelementptr inbounds i64, i64* %envptr88279, i64 2                ; &envptr88279[2]
  %hNh$tail = load i64, i64* %envptr88280, align 8                                   ; load; *envptr88280
  %envptr88281 = inttoptr i64 %env86437 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88282 = getelementptr inbounds i64, i64* %envptr88281, i64 1                ; &envptr88281[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88282, align 8                        ; load; *envptr88282
  %cont83520 = call i64 @prim_car(i64 %rvp85335)                                     ; call prim_car
  %rvp85334 = call i64 @prim_cdr(i64 %rvp85335)                                      ; call prim_cdr
  %Smg$l = call i64 @prim_car(i64 %rvp85334)                                         ; call prim_car
  %na85314 = call i64 @prim_cdr(i64 %rvp85334)                                       ; call prim_cdr
  %a83381 = call i64 @prim_eq_63(i64 %Smg$l, i64 %hNh$tail)                          ; call prim_eq_63
  %a83382 = call i64 @prim_not(i64 %a83381)                                          ; call prim_not
  %cmp88283 = icmp eq i64 %a83382, 15                                                ; false?
  br i1 %cmp88283, label %else88285, label %then88284                                ; if

then88284:
  %arg84229 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83383 = call i64 @prim_vector_45ref(i64 %uJP$f, i64 %arg84229)                   ; call prim_vector_45ref
  %a83384 = call i64 @prim_cdr(i64 %Smg$l)                                           ; call prim_cdr
  %cloptr88286 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88288 = getelementptr inbounds i64, i64* %cloptr88286, i64 1                  ; &eptr88288[1]
  %eptr88289 = getelementptr inbounds i64, i64* %cloptr88286, i64 2                  ; &eptr88289[2]
  %eptr88290 = getelementptr inbounds i64, i64* %cloptr88286, i64 3                  ; &eptr88290[3]
  store i64 %cmL$_37wind_45stack, i64* %eptr88288                                    ; *eptr88288 = %cmL$_37wind_45stack
  store i64 %Smg$l, i64* %eptr88289                                                  ; *eptr88289 = %Smg$l
  store i64 %cont83520, i64* %eptr88290                                              ; *eptr88290 = %cont83520
  %eptr88287 = getelementptr inbounds i64, i64* %cloptr88286, i64 0                  ; &cloptr88286[0]
  %f88291 = ptrtoint void(i64,i64)* @lam86431 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88291, i64* %eptr88287                                                 ; store fptr
  %arg84233 = ptrtoint i64* %cloptr88286 to i64                                      ; closure cast; i64* -> i64
  %rva85330 = add i64 0, 0                                                           ; quoted ()
  %rva85329 = call i64 @prim_cons(i64 %a83384, i64 %rva85330)                        ; call prim_cons
  %rva85328 = call i64 @prim_cons(i64 %arg84233, i64 %rva85329)                      ; call prim_cons
  %cloptr88292 = inttoptr i64 %a83383 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88293 = getelementptr inbounds i64, i64* %cloptr88292, i64 0                 ; &cloptr88292[0]
  %f88295 = load i64, i64* %i0ptr88293, align 8                                      ; load; *i0ptr88293
  %fptr88294 = inttoptr i64 %f88295 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88294(i64 %a83383, i64 %rva85328)                   ; tail call
  ret void

else88285:
  %retprim83524 = call i64 @prim_void()                                              ; call prim_void
  %arg84246 = add i64 0, 0                                                           ; quoted ()
  %rva85333 = add i64 0, 0                                                           ; quoted ()
  %rva85332 = call i64 @prim_cons(i64 %retprim83524, i64 %rva85333)                  ; call prim_cons
  %rva85331 = call i64 @prim_cons(i64 %arg84246, i64 %rva85332)                      ; call prim_cons
  %cloptr88296 = inttoptr i64 %cont83520 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88297 = getelementptr inbounds i64, i64* %cloptr88296, i64 0                 ; &cloptr88296[0]
  %f88299 = load i64, i64* %i0ptr88297, align 8                                      ; load; *i0ptr88297
  %fptr88298 = inttoptr i64 %f88299 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88298(i64 %cont83520, i64 %rva85331)                ; tail call
  ret void
}


define void @lam86431(i64 %env86432, i64 %rvp85327) {
  %envptr88300 = inttoptr i64 %env86432 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88301 = getelementptr inbounds i64, i64* %envptr88300, i64 3                ; &envptr88300[3]
  %cont83520 = load i64, i64* %envptr88301, align 8                                  ; load; *envptr88301
  %envptr88302 = inttoptr i64 %env86432 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88303 = getelementptr inbounds i64, i64* %envptr88302, i64 2                ; &envptr88302[2]
  %Smg$l = load i64, i64* %envptr88303, align 8                                      ; load; *envptr88303
  %envptr88304 = inttoptr i64 %env86432 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88305 = getelementptr inbounds i64, i64* %envptr88304, i64 1                ; &envptr88304[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88305, align 8                        ; load; *envptr88305
  %_9583521 = call i64 @prim_car(i64 %rvp85327)                                      ; call prim_car
  %rvp85326 = call i64 @prim_cdr(i64 %rvp85327)                                      ; call prim_cdr
  %kqd$_9583262 = call i64 @prim_car(i64 %rvp85326)                                  ; call prim_car
  %na85316 = call i64 @prim_cdr(i64 %rvp85326)                                       ; call prim_cdr
  %a83385 = call i64 @prim_car(i64 %Smg$l)                                           ; call prim_car
  %a83386 = call i64 @prim_car(i64 %a83385)                                          ; call prim_car
  %cloptr88306 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88308 = getelementptr inbounds i64, i64* %cloptr88306, i64 1                  ; &eptr88308[1]
  %eptr88309 = getelementptr inbounds i64, i64* %cloptr88306, i64 2                  ; &eptr88309[2]
  %eptr88310 = getelementptr inbounds i64, i64* %cloptr88306, i64 3                  ; &eptr88310[3]
  store i64 %cmL$_37wind_45stack, i64* %eptr88308                                    ; *eptr88308 = %cmL$_37wind_45stack
  store i64 %Smg$l, i64* %eptr88309                                                  ; *eptr88309 = %Smg$l
  store i64 %cont83520, i64* %eptr88310                                              ; *eptr88310 = %cont83520
  %eptr88307 = getelementptr inbounds i64, i64* %cloptr88306, i64 0                  ; &cloptr88306[0]
  %f88311 = ptrtoint void(i64,i64)* @lam86429 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88311, i64* %eptr88307                                                 ; store fptr
  %arg84237 = ptrtoint i64* %cloptr88306 to i64                                      ; closure cast; i64* -> i64
  %rva85325 = add i64 0, 0                                                           ; quoted ()
  %rva85324 = call i64 @prim_cons(i64 %arg84237, i64 %rva85325)                      ; call prim_cons
  %cloptr88312 = inttoptr i64 %a83386 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88313 = getelementptr inbounds i64, i64* %cloptr88312, i64 0                 ; &cloptr88312[0]
  %f88315 = load i64, i64* %i0ptr88313, align 8                                      ; load; *i0ptr88313
  %fptr88314 = inttoptr i64 %f88315 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88314(i64 %a83386, i64 %rva85324)                   ; tail call
  ret void
}


define void @lam86429(i64 %env86430, i64 %rvp85323) {
  %envptr88316 = inttoptr i64 %env86430 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88317 = getelementptr inbounds i64, i64* %envptr88316, i64 3                ; &envptr88316[3]
  %cont83520 = load i64, i64* %envptr88317, align 8                                  ; load; *envptr88317
  %envptr88318 = inttoptr i64 %env86430 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88319 = getelementptr inbounds i64, i64* %envptr88318, i64 2                ; &envptr88318[2]
  %Smg$l = load i64, i64* %envptr88319, align 8                                      ; load; *envptr88319
  %envptr88320 = inttoptr i64 %env86430 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88321 = getelementptr inbounds i64, i64* %envptr88320, i64 1                ; &envptr88320[1]
  %cmL$_37wind_45stack = load i64, i64* %envptr88321, align 8                        ; load; *envptr88321
  %_9583522 = call i64 @prim_car(i64 %rvp85323)                                      ; call prim_car
  %rvp85322 = call i64 @prim_cdr(i64 %rvp85323)                                      ; call prim_cdr
  %jWC$_9583263 = call i64 @prim_car(i64 %rvp85322)                                  ; call prim_car
  %na85318 = call i64 @prim_cdr(i64 %rvp85322)                                       ; call prim_cdr
  %arg84240 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim83523 = call i64 @prim_vector_45set_33(i64 %cmL$_37wind_45stack, i64 %arg84240, i64 %Smg$l); call prim_vector_45set_33
  %arg84243 = add i64 0, 0                                                           ; quoted ()
  %rva85321 = add i64 0, 0                                                           ; quoted ()
  %rva85320 = call i64 @prim_cons(i64 %retprim83523, i64 %rva85321)                  ; call prim_cons
  %rva85319 = call i64 @prim_cons(i64 %arg84243, i64 %rva85320)                      ; call prim_cons
  %cloptr88322 = inttoptr i64 %cont83520 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88323 = getelementptr inbounds i64, i64* %cloptr88322, i64 0                 ; &cloptr88322[0]
  %f88325 = load i64, i64* %i0ptr88323, align 8                                      ; load; *i0ptr88323
  %fptr88324 = inttoptr i64 %f88325 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88324(i64 %cont83520, i64 %rva85319)                ; tail call
  ret void
}


define void @lam86412(i64 %env86413, i64 %qRD$lst83586) {
  %cont83585 = call i64 @prim_car(i64 %qRD$lst83586)                                 ; call prim_car
  %qRD$lst = call i64 @prim_cdr(i64 %qRD$lst83586)                                   ; call prim_cdr
  %arg84258 = add i64 0, 0                                                           ; quoted ()
  %rva85372 = add i64 0, 0                                                           ; quoted ()
  %rva85371 = call i64 @prim_cons(i64 %qRD$lst, i64 %rva85372)                       ; call prim_cons
  %rva85370 = call i64 @prim_cons(i64 %arg84258, i64 %rva85371)                      ; call prim_cons
  %cloptr88326 = inttoptr i64 %cont83585 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88327 = getelementptr inbounds i64, i64* %cloptr88326, i64 0                 ; &cloptr88326[0]
  %f88329 = load i64, i64* %i0ptr88327, align 8                                      ; load; *i0ptr88327
  %fptr88328 = inttoptr i64 %f88329 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88328(i64 %cont83585, i64 %rva85370)                ; tail call
  ret void
}


define void @lam86408(i64 %env86409, i64 %rvp85617) {
  %envptr88330 = inttoptr i64 %env86409 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88331 = getelementptr inbounds i64, i64* %envptr88330, i64 1                ; &envptr88330[1]
  %hEZ$_37append = load i64, i64* %envptr88331, align 8                              ; load; *envptr88331
  %_9583583 = call i64 @prim_car(i64 %rvp85617)                                      ; call prim_car
  %rvp85616 = call i64 @prim_cdr(i64 %rvp85617)                                      ; call prim_cdr
  %a83388 = call i64 @prim_car(i64 %rvp85616)                                        ; call prim_car
  %na85374 = call i64 @prim_cdr(i64 %rvp85616)                                       ; call prim_cdr
  %arg84261 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83584 = call i64 @prim_make_45vector(i64 %arg84261, i64 %a83388)           ; call prim_make_45vector
  %cloptr88332 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88334 = getelementptr inbounds i64, i64* %cloptr88332, i64 1                  ; &eptr88334[1]
  store i64 %hEZ$_37append, i64* %eptr88334                                          ; *eptr88334 = %hEZ$_37append
  %eptr88333 = getelementptr inbounds i64, i64* %cloptr88332, i64 0                  ; &cloptr88332[0]
  %f88335 = ptrtoint void(i64,i64)* @lam86405 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88335, i64* %eptr88333                                                 ; store fptr
  %arg84264 = ptrtoint i64* %cloptr88332 to i64                                      ; closure cast; i64* -> i64
  %arg84263 = add i64 0, 0                                                           ; quoted ()
  %rva85615 = add i64 0, 0                                                           ; quoted ()
  %rva85614 = call i64 @prim_cons(i64 %retprim83584, i64 %rva85615)                  ; call prim_cons
  %rva85613 = call i64 @prim_cons(i64 %arg84263, i64 %rva85614)                      ; call prim_cons
  %cloptr88336 = inttoptr i64 %arg84264 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88337 = getelementptr inbounds i64, i64* %cloptr88336, i64 0                 ; &cloptr88336[0]
  %f88339 = load i64, i64* %i0ptr88337, align 8                                      ; load; *i0ptr88337
  %fptr88338 = inttoptr i64 %f88339 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88338(i64 %arg84264, i64 %rva85613)                 ; tail call
  ret void
}


define void @lam86405(i64 %env86406, i64 %rvp85612) {
  %envptr88340 = inttoptr i64 %env86406 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88341 = getelementptr inbounds i64, i64* %envptr88340, i64 1                ; &envptr88340[1]
  %hEZ$_37append = load i64, i64* %envptr88341, align 8                              ; load; *envptr88341
  %_9583539 = call i64 @prim_car(i64 %rvp85612)                                      ; call prim_car
  %rvp85611 = call i64 @prim_cdr(i64 %rvp85612)                                      ; call prim_cdr
  %YIS$nqueens = call i64 @prim_car(i64 %rvp85611)                                   ; call prim_car
  %na85376 = call i64 @prim_cdr(i64 %rvp85611)                                       ; call prim_cdr
  %arg84266 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88342 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88344 = getelementptr inbounds i64, i64* %cloptr88342, i64 1                  ; &eptr88344[1]
  store i64 %hEZ$_37append, i64* %eptr88344                                          ; *eptr88344 = %hEZ$_37append
  %eptr88343 = getelementptr inbounds i64, i64* %cloptr88342, i64 0                  ; &cloptr88342[0]
  %f88345 = ptrtoint void(i64,i64)* @lam86402 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88345, i64* %eptr88343                                                 ; store fptr
  %arg84265 = ptrtoint i64* %cloptr88342 to i64                                      ; closure cast; i64* -> i64
  %ssi$_9583264 = call i64 @prim_vector_45set_33(i64 %YIS$nqueens, i64 %arg84266, i64 %arg84265); call prim_vector_45set_33
  %arg84487 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83433 = call i64 @prim_vector_45ref(i64 %YIS$nqueens, i64 %arg84487)             ; call prim_vector_45ref
  %cloptr88346 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88347 = getelementptr inbounds i64, i64* %cloptr88346, i64 0                  ; &cloptr88346[0]
  %f88348 = ptrtoint void(i64,i64)* @lam86250 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88348, i64* %eptr88347                                                 ; store fptr
  %arg84490 = ptrtoint i64* %cloptr88346 to i64                                      ; closure cast; i64* -> i64
  %arg84489 = call i64 @const_init_int(i64 8)                                        ; quoted int
  %rva85610 = add i64 0, 0                                                           ; quoted ()
  %rva85609 = call i64 @prim_cons(i64 %arg84489, i64 %rva85610)                      ; call prim_cons
  %rva85608 = call i64 @prim_cons(i64 %arg84490, i64 %rva85609)                      ; call prim_cons
  %cloptr88349 = inttoptr i64 %a83433 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88350 = getelementptr inbounds i64, i64* %cloptr88349, i64 0                 ; &cloptr88349[0]
  %f88352 = load i64, i64* %i0ptr88350, align 8                                      ; load; *i0ptr88350
  %fptr88351 = inttoptr i64 %f88352 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88351(i64 %a83433, i64 %rva85608)                   ; tail call
  ret void
}


define void @lam86402(i64 %env86403, i64 %rvp85601) {
  %envptr88353 = inttoptr i64 %env86403 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88354 = getelementptr inbounds i64, i64* %envptr88353, i64 1                ; &envptr88353[1]
  %hEZ$_37append = load i64, i64* %envptr88354, align 8                              ; load; *envptr88354
  %cont83540 = call i64 @prim_car(i64 %rvp85601)                                     ; call prim_car
  %rvp85600 = call i64 @prim_cdr(i64 %rvp85601)                                      ; call prim_cdr
  %vyA$n = call i64 @prim_car(i64 %rvp85600)                                         ; call prim_car
  %na85378 = call i64 @prim_cdr(i64 %rvp85600)                                       ; call prim_cdr
  %cloptr88355 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88356 = getelementptr inbounds i64, i64* %cloptr88355, i64 0                  ; &cloptr88355[0]
  %f88357 = ptrtoint void(i64,i64)* @lam86400 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88357, i64* %eptr88356                                                 ; store fptr
  %arg84269 = ptrtoint i64* %cloptr88355 to i64                                      ; closure cast; i64* -> i64
  %cloptr88358 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88360 = getelementptr inbounds i64, i64* %cloptr88358, i64 1                  ; &eptr88360[1]
  %eptr88361 = getelementptr inbounds i64, i64* %cloptr88358, i64 2                  ; &eptr88361[2]
  %eptr88362 = getelementptr inbounds i64, i64* %cloptr88358, i64 3                  ; &eptr88362[3]
  store i64 %hEZ$_37append, i64* %eptr88360                                          ; *eptr88360 = %hEZ$_37append
  store i64 %vyA$n, i64* %eptr88361                                                  ; *eptr88361 = %vyA$n
  store i64 %cont83540, i64* %eptr88362                                              ; *eptr88362 = %cont83540
  %eptr88359 = getelementptr inbounds i64, i64* %cloptr88358, i64 0                  ; &cloptr88358[0]
  %f88363 = ptrtoint void(i64,i64)* @lam86396 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88363, i64* %eptr88359                                                 ; store fptr
  %arg84268 = ptrtoint i64* %cloptr88358 to i64                                      ; closure cast; i64* -> i64
  %rva85599 = add i64 0, 0                                                           ; quoted ()
  %rva85598 = call i64 @prim_cons(i64 %arg84268, i64 %rva85599)                      ; call prim_cons
  %cloptr88364 = inttoptr i64 %arg84269 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88365 = getelementptr inbounds i64, i64* %cloptr88364, i64 0                 ; &cloptr88364[0]
  %f88367 = load i64, i64* %i0ptr88365, align 8                                      ; load; *i0ptr88365
  %fptr88366 = inttoptr i64 %f88367 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88366(i64 %arg84269, i64 %rva85598)                 ; tail call
  ret void
}


define void @lam86400(i64 %env86401, i64 %b0z$lst83582) {
  %cont83581 = call i64 @prim_car(i64 %b0z$lst83582)                                 ; call prim_car
  %b0z$lst = call i64 @prim_cdr(i64 %b0z$lst83582)                                   ; call prim_cdr
  %arg84273 = add i64 0, 0                                                           ; quoted ()
  %rva85381 = add i64 0, 0                                                           ; quoted ()
  %rva85380 = call i64 @prim_cons(i64 %b0z$lst, i64 %rva85381)                       ; call prim_cons
  %rva85379 = call i64 @prim_cons(i64 %arg84273, i64 %rva85380)                      ; call prim_cons
  %cloptr88368 = inttoptr i64 %cont83581 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88369 = getelementptr inbounds i64, i64* %cloptr88368, i64 0                 ; &cloptr88368[0]
  %f88371 = load i64, i64* %i0ptr88369, align 8                                      ; load; *i0ptr88369
  %fptr88370 = inttoptr i64 %f88371 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88370(i64 %cont83581, i64 %rva85379)                ; tail call
  ret void
}


define void @lam86396(i64 %env86397, i64 %rvp85597) {
  %envptr88372 = inttoptr i64 %env86397 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88373 = getelementptr inbounds i64, i64* %envptr88372, i64 3                ; &envptr88372[3]
  %cont83540 = load i64, i64* %envptr88373, align 8                                  ; load; *envptr88373
  %envptr88374 = inttoptr i64 %env86397 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88375 = getelementptr inbounds i64, i64* %envptr88374, i64 2                ; &envptr88374[2]
  %vyA$n = load i64, i64* %envptr88375, align 8                                      ; load; *envptr88375
  %envptr88376 = inttoptr i64 %env86397 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88377 = getelementptr inbounds i64, i64* %envptr88376, i64 1                ; &envptr88376[1]
  %hEZ$_37append = load i64, i64* %envptr88377, align 8                              ; load; *envptr88377
  %_9583579 = call i64 @prim_car(i64 %rvp85597)                                      ; call prim_car
  %rvp85596 = call i64 @prim_cdr(i64 %rvp85597)                                      ; call prim_cdr
  %a83389 = call i64 @prim_car(i64 %rvp85596)                                        ; call prim_car
  %na85383 = call i64 @prim_cdr(i64 %rvp85596)                                       ; call prim_cdr
  %arg84276 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83580 = call i64 @prim_make_45vector(i64 %arg84276, i64 %a83389)           ; call prim_make_45vector
  %cloptr88378 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88380 = getelementptr inbounds i64, i64* %cloptr88378, i64 1                  ; &eptr88380[1]
  %eptr88381 = getelementptr inbounds i64, i64* %cloptr88378, i64 2                  ; &eptr88381[2]
  %eptr88382 = getelementptr inbounds i64, i64* %cloptr88378, i64 3                  ; &eptr88382[3]
  store i64 %hEZ$_37append, i64* %eptr88380                                          ; *eptr88380 = %hEZ$_37append
  store i64 %vyA$n, i64* %eptr88381                                                  ; *eptr88381 = %vyA$n
  store i64 %cont83540, i64* %eptr88382                                              ; *eptr88382 = %cont83540
  %eptr88379 = getelementptr inbounds i64, i64* %cloptr88378, i64 0                  ; &cloptr88378[0]
  %f88383 = ptrtoint void(i64,i64)* @lam86393 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88383, i64* %eptr88379                                                 ; store fptr
  %arg84279 = ptrtoint i64* %cloptr88378 to i64                                      ; closure cast; i64* -> i64
  %arg84278 = add i64 0, 0                                                           ; quoted ()
  %rva85595 = add i64 0, 0                                                           ; quoted ()
  %rva85594 = call i64 @prim_cons(i64 %retprim83580, i64 %rva85595)                  ; call prim_cons
  %rva85593 = call i64 @prim_cons(i64 %arg84278, i64 %rva85594)                      ; call prim_cons
  %cloptr88384 = inttoptr i64 %arg84279 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88385 = getelementptr inbounds i64, i64* %cloptr88384, i64 0                 ; &cloptr88384[0]
  %f88387 = load i64, i64* %i0ptr88385, align 8                                      ; load; *i0ptr88385
  %fptr88386 = inttoptr i64 %f88387 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88386(i64 %arg84279, i64 %rva85593)                 ; tail call
  ret void
}


define void @lam86393(i64 %env86394, i64 %rvp85592) {
  %envptr88388 = inttoptr i64 %env86394 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88389 = getelementptr inbounds i64, i64* %envptr88388, i64 3                ; &envptr88388[3]
  %cont83540 = load i64, i64* %envptr88389, align 8                                  ; load; *envptr88389
  %envptr88390 = inttoptr i64 %env86394 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88391 = getelementptr inbounds i64, i64* %envptr88390, i64 2                ; &envptr88390[2]
  %vyA$n = load i64, i64* %envptr88391, align 8                                      ; load; *envptr88391
  %envptr88392 = inttoptr i64 %env86394 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88393 = getelementptr inbounds i64, i64* %envptr88392, i64 1                ; &envptr88392[1]
  %hEZ$_37append = load i64, i64* %envptr88393, align 8                              ; load; *envptr88393
  %_9583541 = call i64 @prim_car(i64 %rvp85592)                                      ; call prim_car
  %rvp85591 = call i64 @prim_cdr(i64 %rvp85592)                                      ; call prim_cdr
  %kJv$one_45to = call i64 @prim_car(i64 %rvp85591)                                  ; call prim_car
  %na85385 = call i64 @prim_cdr(i64 %rvp85591)                                       ; call prim_cdr
  %cloptr88394 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88395 = getelementptr inbounds i64, i64* %cloptr88394, i64 0                  ; &cloptr88394[0]
  %f88396 = ptrtoint void(i64,i64)* @lam86391 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88396, i64* %eptr88395                                                 ; store fptr
  %arg84281 = ptrtoint i64* %cloptr88394 to i64                                      ; closure cast; i64* -> i64
  %cloptr88397 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88399 = getelementptr inbounds i64, i64* %cloptr88397, i64 1                  ; &eptr88399[1]
  %eptr88400 = getelementptr inbounds i64, i64* %cloptr88397, i64 2                  ; &eptr88400[2]
  %eptr88401 = getelementptr inbounds i64, i64* %cloptr88397, i64 3                  ; &eptr88401[3]
  %eptr88402 = getelementptr inbounds i64, i64* %cloptr88397, i64 4                  ; &eptr88402[4]
  store i64 %hEZ$_37append, i64* %eptr88399                                          ; *eptr88399 = %hEZ$_37append
  store i64 %vyA$n, i64* %eptr88400                                                  ; *eptr88400 = %vyA$n
  store i64 %cont83540, i64* %eptr88401                                              ; *eptr88401 = %cont83540
  store i64 %kJv$one_45to, i64* %eptr88402                                           ; *eptr88402 = %kJv$one_45to
  %eptr88398 = getelementptr inbounds i64, i64* %cloptr88397, i64 0                  ; &cloptr88397[0]
  %f88403 = ptrtoint void(i64,i64)* @lam86387 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88403, i64* %eptr88398                                                 ; store fptr
  %arg84280 = ptrtoint i64* %cloptr88397 to i64                                      ; closure cast; i64* -> i64
  %rva85590 = add i64 0, 0                                                           ; quoted ()
  %rva85589 = call i64 @prim_cons(i64 %arg84280, i64 %rva85590)                      ; call prim_cons
  %cloptr88404 = inttoptr i64 %arg84281 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88405 = getelementptr inbounds i64, i64* %cloptr88404, i64 0                 ; &cloptr88404[0]
  %f88407 = load i64, i64* %i0ptr88405, align 8                                      ; load; *i0ptr88405
  %fptr88406 = inttoptr i64 %f88407 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88406(i64 %arg84281, i64 %rva85589)                 ; tail call
  ret void
}


define void @lam86391(i64 %env86392, i64 %J9I$lst83578) {
  %cont83577 = call i64 @prim_car(i64 %J9I$lst83578)                                 ; call prim_car
  %J9I$lst = call i64 @prim_cdr(i64 %J9I$lst83578)                                   ; call prim_cdr
  %arg84285 = add i64 0, 0                                                           ; quoted ()
  %rva85388 = add i64 0, 0                                                           ; quoted ()
  %rva85387 = call i64 @prim_cons(i64 %J9I$lst, i64 %rva85388)                       ; call prim_cons
  %rva85386 = call i64 @prim_cons(i64 %arg84285, i64 %rva85387)                      ; call prim_cons
  %cloptr88408 = inttoptr i64 %cont83577 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88409 = getelementptr inbounds i64, i64* %cloptr88408, i64 0                 ; &cloptr88408[0]
  %f88411 = load i64, i64* %i0ptr88409, align 8                                      ; load; *i0ptr88409
  %fptr88410 = inttoptr i64 %f88411 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88410(i64 %cont83577, i64 %rva85386)                ; tail call
  ret void
}


define void @lam86387(i64 %env86388, i64 %rvp85588) {
  %envptr88412 = inttoptr i64 %env86388 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88413 = getelementptr inbounds i64, i64* %envptr88412, i64 4                ; &envptr88412[4]
  %kJv$one_45to = load i64, i64* %envptr88413, align 8                               ; load; *envptr88413
  %envptr88414 = inttoptr i64 %env86388 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88415 = getelementptr inbounds i64, i64* %envptr88414, i64 3                ; &envptr88414[3]
  %cont83540 = load i64, i64* %envptr88415, align 8                                  ; load; *envptr88415
  %envptr88416 = inttoptr i64 %env86388 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88417 = getelementptr inbounds i64, i64* %envptr88416, i64 2                ; &envptr88416[2]
  %vyA$n = load i64, i64* %envptr88417, align 8                                      ; load; *envptr88417
  %envptr88418 = inttoptr i64 %env86388 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88419 = getelementptr inbounds i64, i64* %envptr88418, i64 1                ; &envptr88418[1]
  %hEZ$_37append = load i64, i64* %envptr88419, align 8                              ; load; *envptr88419
  %_9583575 = call i64 @prim_car(i64 %rvp85588)                                      ; call prim_car
  %rvp85587 = call i64 @prim_cdr(i64 %rvp85588)                                      ; call prim_cdr
  %a83390 = call i64 @prim_car(i64 %rvp85587)                                        ; call prim_car
  %na85390 = call i64 @prim_cdr(i64 %rvp85587)                                       ; call prim_cdr
  %arg84288 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83576 = call i64 @prim_make_45vector(i64 %arg84288, i64 %a83390)           ; call prim_make_45vector
  %cloptr88420 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88422 = getelementptr inbounds i64, i64* %cloptr88420, i64 1                  ; &eptr88422[1]
  %eptr88423 = getelementptr inbounds i64, i64* %cloptr88420, i64 2                  ; &eptr88423[2]
  %eptr88424 = getelementptr inbounds i64, i64* %cloptr88420, i64 3                  ; &eptr88424[3]
  %eptr88425 = getelementptr inbounds i64, i64* %cloptr88420, i64 4                  ; &eptr88425[4]
  store i64 %hEZ$_37append, i64* %eptr88422                                          ; *eptr88422 = %hEZ$_37append
  store i64 %vyA$n, i64* %eptr88423                                                  ; *eptr88423 = %vyA$n
  store i64 %cont83540, i64* %eptr88424                                              ; *eptr88424 = %cont83540
  store i64 %kJv$one_45to, i64* %eptr88425                                           ; *eptr88425 = %kJv$one_45to
  %eptr88421 = getelementptr inbounds i64, i64* %cloptr88420, i64 0                  ; &cloptr88420[0]
  %f88426 = ptrtoint void(i64,i64)* @lam86384 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88426, i64* %eptr88421                                                 ; store fptr
  %arg84291 = ptrtoint i64* %cloptr88420 to i64                                      ; closure cast; i64* -> i64
  %arg84290 = add i64 0, 0                                                           ; quoted ()
  %rva85586 = add i64 0, 0                                                           ; quoted ()
  %rva85585 = call i64 @prim_cons(i64 %retprim83576, i64 %rva85586)                  ; call prim_cons
  %rva85584 = call i64 @prim_cons(i64 %arg84290, i64 %rva85585)                      ; call prim_cons
  %cloptr88427 = inttoptr i64 %arg84291 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88428 = getelementptr inbounds i64, i64* %cloptr88427, i64 0                 ; &cloptr88427[0]
  %f88430 = load i64, i64* %i0ptr88428, align 8                                      ; load; *i0ptr88428
  %fptr88429 = inttoptr i64 %f88430 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88429(i64 %arg84291, i64 %rva85584)                 ; tail call
  ret void
}


define void @lam86384(i64 %env86385, i64 %rvp85583) {
  %envptr88431 = inttoptr i64 %env86385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88432 = getelementptr inbounds i64, i64* %envptr88431, i64 4                ; &envptr88431[4]
  %kJv$one_45to = load i64, i64* %envptr88432, align 8                               ; load; *envptr88432
  %envptr88433 = inttoptr i64 %env86385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88434 = getelementptr inbounds i64, i64* %envptr88433, i64 3                ; &envptr88433[3]
  %cont83540 = load i64, i64* %envptr88434, align 8                                  ; load; *envptr88434
  %envptr88435 = inttoptr i64 %env86385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88436 = getelementptr inbounds i64, i64* %envptr88435, i64 2                ; &envptr88435[2]
  %vyA$n = load i64, i64* %envptr88436, align 8                                      ; load; *envptr88436
  %envptr88437 = inttoptr i64 %env86385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88438 = getelementptr inbounds i64, i64* %envptr88437, i64 1                ; &envptr88437[1]
  %hEZ$_37append = load i64, i64* %envptr88438, align 8                              ; load; *envptr88438
  %_9583542 = call i64 @prim_car(i64 %rvp85583)                                      ; call prim_car
  %rvp85582 = call i64 @prim_cdr(i64 %rvp85583)                                      ; call prim_cdr
  %uY4$my_45try = call i64 @prim_car(i64 %rvp85582)                                  ; call prim_car
  %na85392 = call i64 @prim_cdr(i64 %rvp85582)                                       ; call prim_cdr
  %cloptr88439 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88440 = getelementptr inbounds i64, i64* %cloptr88439, i64 0                  ; &cloptr88439[0]
  %f88441 = ptrtoint void(i64,i64)* @lam86382 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88441, i64* %eptr88440                                                 ; store fptr
  %arg84293 = ptrtoint i64* %cloptr88439 to i64                                      ; closure cast; i64* -> i64
  %cloptr88442 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr88444 = getelementptr inbounds i64, i64* %cloptr88442, i64 1                  ; &eptr88444[1]
  %eptr88445 = getelementptr inbounds i64, i64* %cloptr88442, i64 2                  ; &eptr88445[2]
  %eptr88446 = getelementptr inbounds i64, i64* %cloptr88442, i64 3                  ; &eptr88446[3]
  %eptr88447 = getelementptr inbounds i64, i64* %cloptr88442, i64 4                  ; &eptr88447[4]
  %eptr88448 = getelementptr inbounds i64, i64* %cloptr88442, i64 5                  ; &eptr88448[5]
  store i64 %hEZ$_37append, i64* %eptr88444                                          ; *eptr88444 = %hEZ$_37append
  store i64 %uY4$my_45try, i64* %eptr88445                                           ; *eptr88445 = %uY4$my_45try
  store i64 %vyA$n, i64* %eptr88446                                                  ; *eptr88446 = %vyA$n
  store i64 %cont83540, i64* %eptr88447                                              ; *eptr88447 = %cont83540
  store i64 %kJv$one_45to, i64* %eptr88448                                           ; *eptr88448 = %kJv$one_45to
  %eptr88443 = getelementptr inbounds i64, i64* %cloptr88442, i64 0                  ; &cloptr88442[0]
  %f88449 = ptrtoint void(i64,i64)* @lam86378 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88449, i64* %eptr88443                                                 ; store fptr
  %arg84292 = ptrtoint i64* %cloptr88442 to i64                                      ; closure cast; i64* -> i64
  %rva85581 = add i64 0, 0                                                           ; quoted ()
  %rva85580 = call i64 @prim_cons(i64 %arg84292, i64 %rva85581)                      ; call prim_cons
  %cloptr88450 = inttoptr i64 %arg84293 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88451 = getelementptr inbounds i64, i64* %cloptr88450, i64 0                 ; &cloptr88450[0]
  %f88453 = load i64, i64* %i0ptr88451, align 8                                      ; load; *i0ptr88451
  %fptr88452 = inttoptr i64 %f88453 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88452(i64 %arg84293, i64 %rva85580)                 ; tail call
  ret void
}


define void @lam86382(i64 %env86383, i64 %AfY$lst83574) {
  %cont83573 = call i64 @prim_car(i64 %AfY$lst83574)                                 ; call prim_car
  %AfY$lst = call i64 @prim_cdr(i64 %AfY$lst83574)                                   ; call prim_cdr
  %arg84297 = add i64 0, 0                                                           ; quoted ()
  %rva85395 = add i64 0, 0                                                           ; quoted ()
  %rva85394 = call i64 @prim_cons(i64 %AfY$lst, i64 %rva85395)                       ; call prim_cons
  %rva85393 = call i64 @prim_cons(i64 %arg84297, i64 %rva85394)                      ; call prim_cons
  %cloptr88454 = inttoptr i64 %cont83573 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88455 = getelementptr inbounds i64, i64* %cloptr88454, i64 0                 ; &cloptr88454[0]
  %f88457 = load i64, i64* %i0ptr88455, align 8                                      ; load; *i0ptr88455
  %fptr88456 = inttoptr i64 %f88457 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88456(i64 %cont83573, i64 %rva85393)                ; tail call
  ret void
}


define void @lam86378(i64 %env86379, i64 %rvp85579) {
  %envptr88458 = inttoptr i64 %env86379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88459 = getelementptr inbounds i64, i64* %envptr88458, i64 5                ; &envptr88458[5]
  %kJv$one_45to = load i64, i64* %envptr88459, align 8                               ; load; *envptr88459
  %envptr88460 = inttoptr i64 %env86379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88461 = getelementptr inbounds i64, i64* %envptr88460, i64 4                ; &envptr88460[4]
  %cont83540 = load i64, i64* %envptr88461, align 8                                  ; load; *envptr88461
  %envptr88462 = inttoptr i64 %env86379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88463 = getelementptr inbounds i64, i64* %envptr88462, i64 3                ; &envptr88462[3]
  %vyA$n = load i64, i64* %envptr88463, align 8                                      ; load; *envptr88463
  %envptr88464 = inttoptr i64 %env86379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88465 = getelementptr inbounds i64, i64* %envptr88464, i64 2                ; &envptr88464[2]
  %uY4$my_45try = load i64, i64* %envptr88465, align 8                               ; load; *envptr88465
  %envptr88466 = inttoptr i64 %env86379 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88467 = getelementptr inbounds i64, i64* %envptr88466, i64 1                ; &envptr88466[1]
  %hEZ$_37append = load i64, i64* %envptr88467, align 8                              ; load; *envptr88467
  %_9583571 = call i64 @prim_car(i64 %rvp85579)                                      ; call prim_car
  %rvp85578 = call i64 @prim_cdr(i64 %rvp85579)                                      ; call prim_cdr
  %a83391 = call i64 @prim_car(i64 %rvp85578)                                        ; call prim_car
  %na85397 = call i64 @prim_cdr(i64 %rvp85578)                                       ; call prim_cdr
  %arg84300 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83572 = call i64 @prim_make_45vector(i64 %arg84300, i64 %a83391)           ; call prim_make_45vector
  %cloptr88468 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr88470 = getelementptr inbounds i64, i64* %cloptr88468, i64 1                  ; &eptr88470[1]
  %eptr88471 = getelementptr inbounds i64, i64* %cloptr88468, i64 2                  ; &eptr88471[2]
  %eptr88472 = getelementptr inbounds i64, i64* %cloptr88468, i64 3                  ; &eptr88472[3]
  %eptr88473 = getelementptr inbounds i64, i64* %cloptr88468, i64 4                  ; &eptr88473[4]
  %eptr88474 = getelementptr inbounds i64, i64* %cloptr88468, i64 5                  ; &eptr88474[5]
  store i64 %hEZ$_37append, i64* %eptr88470                                          ; *eptr88470 = %hEZ$_37append
  store i64 %uY4$my_45try, i64* %eptr88471                                           ; *eptr88471 = %uY4$my_45try
  store i64 %vyA$n, i64* %eptr88472                                                  ; *eptr88472 = %vyA$n
  store i64 %cont83540, i64* %eptr88473                                              ; *eptr88473 = %cont83540
  store i64 %kJv$one_45to, i64* %eptr88474                                           ; *eptr88474 = %kJv$one_45to
  %eptr88469 = getelementptr inbounds i64, i64* %cloptr88468, i64 0                  ; &cloptr88468[0]
  %f88475 = ptrtoint void(i64,i64)* @lam86375 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88475, i64* %eptr88469                                                 ; store fptr
  %arg84303 = ptrtoint i64* %cloptr88468 to i64                                      ; closure cast; i64* -> i64
  %arg84302 = add i64 0, 0                                                           ; quoted ()
  %rva85577 = add i64 0, 0                                                           ; quoted ()
  %rva85576 = call i64 @prim_cons(i64 %retprim83572, i64 %rva85577)                  ; call prim_cons
  %rva85575 = call i64 @prim_cons(i64 %arg84302, i64 %rva85576)                      ; call prim_cons
  %cloptr88476 = inttoptr i64 %arg84303 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88477 = getelementptr inbounds i64, i64* %cloptr88476, i64 0                 ; &cloptr88476[0]
  %f88479 = load i64, i64* %i0ptr88477, align 8                                      ; load; *i0ptr88477
  %fptr88478 = inttoptr i64 %f88479 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88478(i64 %arg84303, i64 %rva85575)                 ; tail call
  ret void
}


define void @lam86375(i64 %env86376, i64 %rvp85574) {
  %envptr88480 = inttoptr i64 %env86376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88481 = getelementptr inbounds i64, i64* %envptr88480, i64 5                ; &envptr88480[5]
  %kJv$one_45to = load i64, i64* %envptr88481, align 8                               ; load; *envptr88481
  %envptr88482 = inttoptr i64 %env86376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88483 = getelementptr inbounds i64, i64* %envptr88482, i64 4                ; &envptr88482[4]
  %cont83540 = load i64, i64* %envptr88483, align 8                                  ; load; *envptr88483
  %envptr88484 = inttoptr i64 %env86376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88485 = getelementptr inbounds i64, i64* %envptr88484, i64 3                ; &envptr88484[3]
  %vyA$n = load i64, i64* %envptr88485, align 8                                      ; load; *envptr88485
  %envptr88486 = inttoptr i64 %env86376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88487 = getelementptr inbounds i64, i64* %envptr88486, i64 2                ; &envptr88486[2]
  %uY4$my_45try = load i64, i64* %envptr88487, align 8                               ; load; *envptr88487
  %envptr88488 = inttoptr i64 %env86376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88489 = getelementptr inbounds i64, i64* %envptr88488, i64 1                ; &envptr88488[1]
  %hEZ$_37append = load i64, i64* %envptr88489, align 8                              ; load; *envptr88489
  %_9583543 = call i64 @prim_car(i64 %rvp85574)                                      ; call prim_car
  %rvp85573 = call i64 @prim_cdr(i64 %rvp85574)                                      ; call prim_cdr
  %OJP$ok_63 = call i64 @prim_car(i64 %rvp85573)                                     ; call prim_car
  %na85399 = call i64 @prim_cdr(i64 %rvp85573)                                       ; call prim_cdr
  %arg84305 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88490 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88491 = getelementptr inbounds i64, i64* %cloptr88490, i64 0                  ; &cloptr88490[0]
  %f88492 = ptrtoint void(i64,i64)* @lam86372 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88492, i64* %eptr88491                                                 ; store fptr
  %arg84304 = ptrtoint i64* %cloptr88490 to i64                                      ; closure cast; i64* -> i64
  %sZg$_9583265 = call i64 @prim_vector_45set_33(i64 %kJv$one_45to, i64 %arg84305, i64 %arg84304); call prim_vector_45set_33
  %arg84351 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88493 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88495 = getelementptr inbounds i64, i64* %cloptr88493, i64 1                  ; &eptr88495[1]
  %eptr88496 = getelementptr inbounds i64, i64* %cloptr88493, i64 2                  ; &eptr88496[2]
  %eptr88497 = getelementptr inbounds i64, i64* %cloptr88493, i64 3                  ; &eptr88497[3]
  store i64 %hEZ$_37append, i64* %eptr88495                                          ; *eptr88495 = %hEZ$_37append
  store i64 %uY4$my_45try, i64* %eptr88496                                           ; *eptr88496 = %uY4$my_45try
  store i64 %OJP$ok_63, i64* %eptr88497                                              ; *eptr88497 = %OJP$ok_63
  %eptr88494 = getelementptr inbounds i64, i64* %cloptr88493, i64 0                  ; &cloptr88493[0]
  %f88498 = ptrtoint void(i64,i64)* @lam86339 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88498, i64* %eptr88494                                                 ; store fptr
  %arg84350 = ptrtoint i64* %cloptr88493 to i64                                      ; closure cast; i64* -> i64
  %gLA$_9583267 = call i64 @prim_vector_45set_33(i64 %uY4$my_45try, i64 %arg84351, i64 %arg84350); call prim_vector_45set_33
  %arg84427 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88499 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88501 = getelementptr inbounds i64, i64* %cloptr88499, i64 1                  ; &eptr88501[1]
  store i64 %OJP$ok_63, i64* %eptr88501                                              ; *eptr88501 = %OJP$ok_63
  %eptr88500 = getelementptr inbounds i64, i64* %cloptr88499, i64 0                  ; &cloptr88499[0]
  %f88502 = ptrtoint void(i64,i64)* @lam86294 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88502, i64* %eptr88500                                                 ; store fptr
  %arg84426 = ptrtoint i64* %cloptr88499 to i64                                      ; closure cast; i64* -> i64
  %uXc$_9583268 = call i64 @prim_vector_45set_33(i64 %OJP$ok_63, i64 %arg84427, i64 %arg84426); call prim_vector_45set_33
  %arg84461 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83428 = call i64 @prim_vector_45ref(i64 %uY4$my_45try, i64 %arg84461)            ; call prim_vector_45ref
  %arg84463 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83429 = call i64 @prim_vector_45ref(i64 %kJv$one_45to, i64 %arg84463)            ; call prim_vector_45ref
  %cloptr88503 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88505 = getelementptr inbounds i64, i64* %cloptr88503, i64 1                  ; &eptr88505[1]
  %eptr88506 = getelementptr inbounds i64, i64* %cloptr88503, i64 2                  ; &eptr88506[2]
  store i64 %cont83540, i64* %eptr88505                                              ; *eptr88505 = %cont83540
  store i64 %a83428, i64* %eptr88506                                                 ; *eptr88506 = %a83428
  %eptr88504 = getelementptr inbounds i64, i64* %cloptr88503, i64 0                  ; &cloptr88503[0]
  %f88507 = ptrtoint void(i64,i64)* @lam86278 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88507, i64* %eptr88504                                                 ; store fptr
  %arg84466 = ptrtoint i64* %cloptr88503 to i64                                      ; closure cast; i64* -> i64
  %rva85572 = add i64 0, 0                                                           ; quoted ()
  %rva85571 = call i64 @prim_cons(i64 %vyA$n, i64 %rva85572)                         ; call prim_cons
  %rva85570 = call i64 @prim_cons(i64 %arg84466, i64 %rva85571)                      ; call prim_cons
  %cloptr88508 = inttoptr i64 %a83429 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88509 = getelementptr inbounds i64, i64* %cloptr88508, i64 0                 ; &cloptr88508[0]
  %f88511 = load i64, i64* %i0ptr88509, align 8                                      ; load; *i0ptr88509
  %fptr88510 = inttoptr i64 %f88511 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88510(i64 %a83429, i64 %rva85570)                   ; tail call
  ret void
}


define void @lam86372(i64 %env86373, i64 %rvp85444) {
  %cont83544 = call i64 @prim_car(i64 %rvp85444)                                     ; call prim_car
  %rvp85443 = call i64 @prim_cdr(i64 %rvp85444)                                      ; call prim_cdr
  %iem$n = call i64 @prim_car(i64 %rvp85443)                                         ; call prim_car
  %na85401 = call i64 @prim_cdr(i64 %rvp85443)                                       ; call prim_cdr
  %cloptr88512 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88513 = getelementptr inbounds i64, i64* %cloptr88512, i64 0                  ; &cloptr88512[0]
  %f88514 = ptrtoint void(i64,i64)* @lam86370 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88514, i64* %eptr88513                                                 ; store fptr
  %arg84308 = ptrtoint i64* %cloptr88512 to i64                                      ; closure cast; i64* -> i64
  %cloptr88515 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88517 = getelementptr inbounds i64, i64* %cloptr88515, i64 1                  ; &eptr88517[1]
  %eptr88518 = getelementptr inbounds i64, i64* %cloptr88515, i64 2                  ; &eptr88518[2]
  store i64 %cont83544, i64* %eptr88517                                              ; *eptr88517 = %cont83544
  store i64 %iem$n, i64* %eptr88518                                                  ; *eptr88518 = %iem$n
  %eptr88516 = getelementptr inbounds i64, i64* %cloptr88515, i64 0                  ; &cloptr88515[0]
  %f88519 = ptrtoint void(i64,i64)* @lam86366 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88519, i64* %eptr88516                                                 ; store fptr
  %arg84307 = ptrtoint i64* %cloptr88515 to i64                                      ; closure cast; i64* -> i64
  %rva85442 = add i64 0, 0                                                           ; quoted ()
  %rva85441 = call i64 @prim_cons(i64 %arg84307, i64 %rva85442)                      ; call prim_cons
  %cloptr88520 = inttoptr i64 %arg84308 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88521 = getelementptr inbounds i64, i64* %cloptr88520, i64 0                 ; &cloptr88520[0]
  %f88523 = load i64, i64* %i0ptr88521, align 8                                      ; load; *i0ptr88521
  %fptr88522 = inttoptr i64 %f88523 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88522(i64 %arg84308, i64 %rva85441)                 ; tail call
  ret void
}


define void @lam86370(i64 %env86371, i64 %Wzo$lst83553) {
  %cont83552 = call i64 @prim_car(i64 %Wzo$lst83553)                                 ; call prim_car
  %Wzo$lst = call i64 @prim_cdr(i64 %Wzo$lst83553)                                   ; call prim_cdr
  %arg84312 = add i64 0, 0                                                           ; quoted ()
  %rva85404 = add i64 0, 0                                                           ; quoted ()
  %rva85403 = call i64 @prim_cons(i64 %Wzo$lst, i64 %rva85404)                       ; call prim_cons
  %rva85402 = call i64 @prim_cons(i64 %arg84312, i64 %rva85403)                      ; call prim_cons
  %cloptr88524 = inttoptr i64 %cont83552 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88525 = getelementptr inbounds i64, i64* %cloptr88524, i64 0                 ; &cloptr88524[0]
  %f88527 = load i64, i64* %i0ptr88525, align 8                                      ; load; *i0ptr88525
  %fptr88526 = inttoptr i64 %f88527 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88526(i64 %cont83552, i64 %rva85402)                ; tail call
  ret void
}


define void @lam86366(i64 %env86367, i64 %rvp85440) {
  %envptr88528 = inttoptr i64 %env86367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88529 = getelementptr inbounds i64, i64* %envptr88528, i64 2                ; &envptr88528[2]
  %iem$n = load i64, i64* %envptr88529, align 8                                      ; load; *envptr88529
  %envptr88530 = inttoptr i64 %env86367 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88531 = getelementptr inbounds i64, i64* %envptr88530, i64 1                ; &envptr88530[1]
  %cont83544 = load i64, i64* %envptr88531, align 8                                  ; load; *envptr88531
  %_9583550 = call i64 @prim_car(i64 %rvp85440)                                      ; call prim_car
  %rvp85439 = call i64 @prim_cdr(i64 %rvp85440)                                      ; call prim_cdr
  %a83392 = call i64 @prim_car(i64 %rvp85439)                                        ; call prim_car
  %na85406 = call i64 @prim_cdr(i64 %rvp85439)                                       ; call prim_cdr
  %arg84315 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83551 = call i64 @prim_make_45vector(i64 %arg84315, i64 %a83392)           ; call prim_make_45vector
  %cloptr88532 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88534 = getelementptr inbounds i64, i64* %cloptr88532, i64 1                  ; &eptr88534[1]
  %eptr88535 = getelementptr inbounds i64, i64* %cloptr88532, i64 2                  ; &eptr88535[2]
  store i64 %cont83544, i64* %eptr88534                                              ; *eptr88534 = %cont83544
  store i64 %iem$n, i64* %eptr88535                                                  ; *eptr88535 = %iem$n
  %eptr88533 = getelementptr inbounds i64, i64* %cloptr88532, i64 0                  ; &cloptr88532[0]
  %f88536 = ptrtoint void(i64,i64)* @lam86363 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88536, i64* %eptr88533                                                 ; store fptr
  %arg84318 = ptrtoint i64* %cloptr88532 to i64                                      ; closure cast; i64* -> i64
  %arg84317 = add i64 0, 0                                                           ; quoted ()
  %rva85438 = add i64 0, 0                                                           ; quoted ()
  %rva85437 = call i64 @prim_cons(i64 %retprim83551, i64 %rva85438)                  ; call prim_cons
  %rva85436 = call i64 @prim_cons(i64 %arg84317, i64 %rva85437)                      ; call prim_cons
  %cloptr88537 = inttoptr i64 %arg84318 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88538 = getelementptr inbounds i64, i64* %cloptr88537, i64 0                 ; &cloptr88537[0]
  %f88540 = load i64, i64* %i0ptr88538, align 8                                      ; load; *i0ptr88538
  %fptr88539 = inttoptr i64 %f88540 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88539(i64 %arg84318, i64 %rva85436)                 ; tail call
  ret void
}


define void @lam86363(i64 %env86364, i64 %rvp85435) {
  %envptr88541 = inttoptr i64 %env86364 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88542 = getelementptr inbounds i64, i64* %envptr88541, i64 2                ; &envptr88541[2]
  %iem$n = load i64, i64* %envptr88542, align 8                                      ; load; *envptr88542
  %envptr88543 = inttoptr i64 %env86364 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88544 = getelementptr inbounds i64, i64* %envptr88543, i64 1                ; &envptr88543[1]
  %cont83544 = load i64, i64* %envptr88544, align 8                                  ; load; *envptr88544
  %_9583545 = call i64 @prim_car(i64 %rvp85435)                                      ; call prim_car
  %rvp85434 = call i64 @prim_cdr(i64 %rvp85435)                                      ; call prim_cdr
  %DzI$loop = call i64 @prim_car(i64 %rvp85434)                                      ; call prim_car
  %na85408 = call i64 @prim_cdr(i64 %rvp85434)                                       ; call prim_cdr
  %arg84320 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr88545 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr88547 = getelementptr inbounds i64, i64* %cloptr88545, i64 1                  ; &eptr88547[1]
  store i64 %DzI$loop, i64* %eptr88547                                               ; *eptr88547 = %DzI$loop
  %eptr88546 = getelementptr inbounds i64, i64* %cloptr88545, i64 0                  ; &cloptr88545[0]
  %f88548 = ptrtoint void(i64,i64)* @lam86360 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88548, i64* %eptr88546                                                 ; store fptr
  %arg84319 = ptrtoint i64* %cloptr88545 to i64                                      ; closure cast; i64* -> i64
  %FwV$_9583266 = call i64 @prim_vector_45set_33(i64 %DzI$loop, i64 %arg84320, i64 %arg84319); call prim_vector_45set_33
  %arg84337 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83397 = call i64 @prim_vector_45ref(i64 %DzI$loop, i64 %arg84337)                ; call prim_vector_45ref
  %cloptr88549 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88550 = getelementptr inbounds i64, i64* %cloptr88549, i64 0                  ; &cloptr88549[0]
  %f88551 = ptrtoint void(i64,i64)* @lam86351 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88551, i64* %eptr88550                                                 ; store fptr
  %arg84340 = ptrtoint i64* %cloptr88549 to i64                                      ; closure cast; i64* -> i64
  %cloptr88552 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88554 = getelementptr inbounds i64, i64* %cloptr88552, i64 1                  ; &eptr88554[1]
  %eptr88555 = getelementptr inbounds i64, i64* %cloptr88552, i64 2                  ; &eptr88555[2]
  %eptr88556 = getelementptr inbounds i64, i64* %cloptr88552, i64 3                  ; &eptr88556[3]
  store i64 %a83397, i64* %eptr88554                                                 ; *eptr88554 = %a83397
  store i64 %cont83544, i64* %eptr88555                                              ; *eptr88555 = %cont83544
  store i64 %iem$n, i64* %eptr88556                                                  ; *eptr88556 = %iem$n
  %eptr88553 = getelementptr inbounds i64, i64* %cloptr88552, i64 0                  ; &cloptr88552[0]
  %f88557 = ptrtoint void(i64,i64)* @lam86347 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88557, i64* %eptr88553                                                 ; store fptr
  %arg84339 = ptrtoint i64* %cloptr88552 to i64                                      ; closure cast; i64* -> i64
  %rva85433 = add i64 0, 0                                                           ; quoted ()
  %rva85432 = call i64 @prim_cons(i64 %arg84339, i64 %rva85433)                      ; call prim_cons
  %cloptr88558 = inttoptr i64 %arg84340 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88559 = getelementptr inbounds i64, i64* %cloptr88558, i64 0                 ; &cloptr88558[0]
  %f88561 = load i64, i64* %i0ptr88559, align 8                                      ; load; *i0ptr88559
  %fptr88560 = inttoptr i64 %f88561 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88560(i64 %arg84340, i64 %rva85432)                 ; tail call
  ret void
}


define void @lam86360(i64 %env86361, i64 %rvp85420) {
  %envptr88562 = inttoptr i64 %env86361 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88563 = getelementptr inbounds i64, i64* %envptr88562, i64 1                ; &envptr88562[1]
  %DzI$loop = load i64, i64* %envptr88563, align 8                                   ; load; *envptr88563
  %cont83546 = call i64 @prim_car(i64 %rvp85420)                                     ; call prim_car
  %rvp85419 = call i64 @prim_cdr(i64 %rvp85420)                                      ; call prim_cdr
  %ptd$i = call i64 @prim_car(i64 %rvp85419)                                         ; call prim_car
  %rvp85418 = call i64 @prim_cdr(i64 %rvp85419)                                      ; call prim_cdr
  %Lxz$l = call i64 @prim_car(i64 %rvp85418)                                         ; call prim_car
  %na85410 = call i64 @prim_cdr(i64 %rvp85418)                                       ; call prim_cdr
  %arg84322 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83393 = call i64 @prim__61(i64 %ptd$i, i64 %arg84322)                            ; call prim__61
  %cmp88564 = icmp eq i64 %a83393, 15                                                ; false?
  br i1 %cmp88564, label %else88566, label %then88565                                ; if

then88565:
  %arg84325 = add i64 0, 0                                                           ; quoted ()
  %rva85413 = add i64 0, 0                                                           ; quoted ()
  %rva85412 = call i64 @prim_cons(i64 %Lxz$l, i64 %rva85413)                         ; call prim_cons
  %rva85411 = call i64 @prim_cons(i64 %arg84325, i64 %rva85412)                      ; call prim_cons
  %cloptr88567 = inttoptr i64 %cont83546 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88568 = getelementptr inbounds i64, i64* %cloptr88567, i64 0                 ; &cloptr88567[0]
  %f88570 = load i64, i64* %i0ptr88568, align 8                                      ; load; *i0ptr88568
  %fptr88569 = inttoptr i64 %f88570 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88569(i64 %cont83546, i64 %rva85411)                ; tail call
  ret void

else88566:
  %arg84327 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83394 = call i64 @prim_vector_45ref(i64 %DzI$loop, i64 %arg84327)                ; call prim_vector_45ref
  %arg84329 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83395 = call i64 @prim__45(i64 %ptd$i, i64 %arg84329)                            ; call prim__45
  %a83396 = call i64 @prim_cons(i64 %ptd$i, i64 %Lxz$l)                              ; call prim_cons
  %rva85417 = add i64 0, 0                                                           ; quoted ()
  %rva85416 = call i64 @prim_cons(i64 %a83396, i64 %rva85417)                        ; call prim_cons
  %rva85415 = call i64 @prim_cons(i64 %a83395, i64 %rva85416)                        ; call prim_cons
  %rva85414 = call i64 @prim_cons(i64 %cont83546, i64 %rva85415)                     ; call prim_cons
  %cloptr88571 = inttoptr i64 %a83394 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88572 = getelementptr inbounds i64, i64* %cloptr88571, i64 0                 ; &cloptr88571[0]
  %f88574 = load i64, i64* %i0ptr88572, align 8                                      ; load; *i0ptr88572
  %fptr88573 = inttoptr i64 %f88574 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88573(i64 %a83394, i64 %rva85414)                   ; tail call
  ret void
}


define void @lam86351(i64 %env86352, i64 %yml$lst83549) {
  %cont83548 = call i64 @prim_car(i64 %yml$lst83549)                                 ; call prim_car
  %yml$lst = call i64 @prim_cdr(i64 %yml$lst83549)                                   ; call prim_cdr
  %arg84344 = add i64 0, 0                                                           ; quoted ()
  %rva85423 = add i64 0, 0                                                           ; quoted ()
  %rva85422 = call i64 @prim_cons(i64 %yml$lst, i64 %rva85423)                       ; call prim_cons
  %rva85421 = call i64 @prim_cons(i64 %arg84344, i64 %rva85422)                      ; call prim_cons
  %cloptr88575 = inttoptr i64 %cont83548 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88576 = getelementptr inbounds i64, i64* %cloptr88575, i64 0                 ; &cloptr88575[0]
  %f88578 = load i64, i64* %i0ptr88576, align 8                                      ; load; *i0ptr88576
  %fptr88577 = inttoptr i64 %f88578 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88577(i64 %cont83548, i64 %rva85421)                ; tail call
  ret void
}


define void @lam86347(i64 %env86348, i64 %rvp85431) {
  %envptr88579 = inttoptr i64 %env86348 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88580 = getelementptr inbounds i64, i64* %envptr88579, i64 3                ; &envptr88579[3]
  %iem$n = load i64, i64* %envptr88580, align 8                                      ; load; *envptr88580
  %envptr88581 = inttoptr i64 %env86348 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88582 = getelementptr inbounds i64, i64* %envptr88581, i64 2                ; &envptr88581[2]
  %cont83544 = load i64, i64* %envptr88582, align 8                                  ; load; *envptr88582
  %envptr88583 = inttoptr i64 %env86348 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88584 = getelementptr inbounds i64, i64* %envptr88583, i64 1                ; &envptr88583[1]
  %a83397 = load i64, i64* %envptr88584, align 8                                     ; load; *envptr88584
  %_9583547 = call i64 @prim_car(i64 %rvp85431)                                      ; call prim_car
  %rvp85430 = call i64 @prim_cdr(i64 %rvp85431)                                      ; call prim_cdr
  %a83398 = call i64 @prim_car(i64 %rvp85430)                                        ; call prim_car
  %na85425 = call i64 @prim_cdr(i64 %rvp85430)                                       ; call prim_cdr
  %rva85429 = add i64 0, 0                                                           ; quoted ()
  %rva85428 = call i64 @prim_cons(i64 %a83398, i64 %rva85429)                        ; call prim_cons
  %rva85427 = call i64 @prim_cons(i64 %iem$n, i64 %rva85428)                         ; call prim_cons
  %rva85426 = call i64 @prim_cons(i64 %cont83544, i64 %rva85427)                     ; call prim_cons
  %cloptr88585 = inttoptr i64 %a83397 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88586 = getelementptr inbounds i64, i64* %cloptr88585, i64 0                 ; &cloptr88585[0]
  %f88588 = load i64, i64* %i0ptr88586, align 8                                      ; load; *i0ptr88586
  %fptr88587 = inttoptr i64 %f88588 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88587(i64 %a83397, i64 %rva85426)                   ; tail call
  ret void
}


define void @lam86339(i64 %env86340, i64 %rvp85522) {
  %envptr88589 = inttoptr i64 %env86340 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88590 = getelementptr inbounds i64, i64* %envptr88589, i64 3                ; &envptr88589[3]
  %OJP$ok_63 = load i64, i64* %envptr88590, align 8                                  ; load; *envptr88590
  %envptr88591 = inttoptr i64 %env86340 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88592 = getelementptr inbounds i64, i64* %envptr88591, i64 2                ; &envptr88591[2]
  %uY4$my_45try = load i64, i64* %envptr88592, align 8                               ; load; *envptr88592
  %envptr88593 = inttoptr i64 %env86340 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88594 = getelementptr inbounds i64, i64* %envptr88593, i64 1                ; &envptr88593[1]
  %hEZ$_37append = load i64, i64* %envptr88594, align 8                              ; load; *envptr88594
  %cont83554 = call i64 @prim_car(i64 %rvp85522)                                     ; call prim_car
  %rvp85521 = call i64 @prim_cdr(i64 %rvp85522)                                      ; call prim_cdr
  %UGh$x = call i64 @prim_car(i64 %rvp85521)                                         ; call prim_car
  %rvp85520 = call i64 @prim_cdr(i64 %rvp85521)                                      ; call prim_cdr
  %FpY$y = call i64 @prim_car(i64 %rvp85520)                                         ; call prim_car
  %rvp85519 = call i64 @prim_cdr(i64 %rvp85520)                                      ; call prim_cdr
  %Z6Y$z = call i64 @prim_car(i64 %rvp85519)                                         ; call prim_car
  %na85446 = call i64 @prim_cdr(i64 %rvp85519)                                       ; call prim_cdr
  %a83399 = call i64 @prim_null_63(i64 %UGh$x)                                       ; call prim_null_63
  %cmp88595 = icmp eq i64 %a83399, 15                                                ; false?
  br i1 %cmp88595, label %else88597, label %then88596                                ; if

then88596:
  %a83400 = call i64 @prim_null_63(i64 %FpY$y)                                       ; call prim_null_63
  %cmp88598 = icmp eq i64 %a83400, 15                                                ; false?
  br i1 %cmp88598, label %else88600, label %then88599                                ; if

then88599:
  %arg84356 = add i64 0, 0                                                           ; quoted ()
  %arg84355 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva85449 = add i64 0, 0                                                           ; quoted ()
  %rva85448 = call i64 @prim_cons(i64 %arg84355, i64 %rva85449)                      ; call prim_cons
  %rva85447 = call i64 @prim_cons(i64 %arg84356, i64 %rva85448)                      ; call prim_cons
  %cloptr88601 = inttoptr i64 %cont83554 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88602 = getelementptr inbounds i64, i64* %cloptr88601, i64 0                 ; &cloptr88601[0]
  %f88604 = load i64, i64* %i0ptr88602, align 8                                      ; load; *i0ptr88602
  %fptr88603 = inttoptr i64 %f88604 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88603(i64 %cont83554, i64 %rva85447)                ; tail call
  ret void

else88600:
  %arg84359 = add i64 0, 0                                                           ; quoted ()
  %arg84358 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva85452 = add i64 0, 0                                                           ; quoted ()
  %rva85451 = call i64 @prim_cons(i64 %arg84358, i64 %rva85452)                      ; call prim_cons
  %rva85450 = call i64 @prim_cons(i64 %arg84359, i64 %rva85451)                      ; call prim_cons
  %cloptr88605 = inttoptr i64 %cont83554 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88606 = getelementptr inbounds i64, i64* %cloptr88605, i64 0                 ; &cloptr88605[0]
  %f88608 = load i64, i64* %i0ptr88606, align 8                                      ; load; *i0ptr88606
  %fptr88607 = inttoptr i64 %f88608 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88607(i64 %cont83554, i64 %rva85450)                ; tail call
  ret void

else88597:
  %arg84361 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83401 = call i64 @prim_vector_45ref(i64 %OJP$ok_63, i64 %arg84361)               ; call prim_vector_45ref
  %a83402 = call i64 @prim_car(i64 %UGh$x)                                           ; call prim_car
  %cloptr88609 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr88611 = getelementptr inbounds i64, i64* %cloptr88609, i64 1                  ; &eptr88611[1]
  %eptr88612 = getelementptr inbounds i64, i64* %cloptr88609, i64 2                  ; &eptr88612[2]
  %eptr88613 = getelementptr inbounds i64, i64* %cloptr88609, i64 3                  ; &eptr88613[3]
  %eptr88614 = getelementptr inbounds i64, i64* %cloptr88609, i64 4                  ; &eptr88614[4]
  %eptr88615 = getelementptr inbounds i64, i64* %cloptr88609, i64 5                  ; &eptr88615[5]
  %eptr88616 = getelementptr inbounds i64, i64* %cloptr88609, i64 6                  ; &eptr88616[6]
  store i64 %hEZ$_37append, i64* %eptr88611                                          ; *eptr88611 = %hEZ$_37append
  store i64 %uY4$my_45try, i64* %eptr88612                                           ; *eptr88612 = %uY4$my_45try
  store i64 %UGh$x, i64* %eptr88613                                                  ; *eptr88613 = %UGh$x
  store i64 %cont83554, i64* %eptr88614                                              ; *eptr88614 = %cont83554
  store i64 %FpY$y, i64* %eptr88615                                                  ; *eptr88615 = %FpY$y
  store i64 %Z6Y$z, i64* %eptr88616                                                  ; *eptr88616 = %Z6Y$z
  %eptr88610 = getelementptr inbounds i64, i64* %cloptr88609, i64 0                  ; &cloptr88609[0]
  %f88617 = ptrtoint void(i64,i64)* @lam86336 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88617, i64* %eptr88610                                                 ; store fptr
  %arg84367 = ptrtoint i64* %cloptr88609 to i64                                      ; closure cast; i64* -> i64
  %arg84365 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva85518 = add i64 0, 0                                                           ; quoted ()
  %rva85517 = call i64 @prim_cons(i64 %Z6Y$z, i64 %rva85518)                         ; call prim_cons
  %rva85516 = call i64 @prim_cons(i64 %arg84365, i64 %rva85517)                      ; call prim_cons
  %rva85515 = call i64 @prim_cons(i64 %a83402, i64 %rva85516)                        ; call prim_cons
  %rva85514 = call i64 @prim_cons(i64 %arg84367, i64 %rva85515)                      ; call prim_cons
  %cloptr88618 = inttoptr i64 %a83401 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88619 = getelementptr inbounds i64, i64* %cloptr88618, i64 0                 ; &cloptr88618[0]
  %f88621 = load i64, i64* %i0ptr88619, align 8                                      ; load; *i0ptr88619
  %fptr88620 = inttoptr i64 %f88621 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88620(i64 %a83401, i64 %rva85514)                   ; tail call
  ret void
}


define void @lam86336(i64 %env86337, i64 %rvp85513) {
  %envptr88622 = inttoptr i64 %env86337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88623 = getelementptr inbounds i64, i64* %envptr88622, i64 6                ; &envptr88622[6]
  %Z6Y$z = load i64, i64* %envptr88623, align 8                                      ; load; *envptr88623
  %envptr88624 = inttoptr i64 %env86337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88625 = getelementptr inbounds i64, i64* %envptr88624, i64 5                ; &envptr88624[5]
  %FpY$y = load i64, i64* %envptr88625, align 8                                      ; load; *envptr88625
  %envptr88626 = inttoptr i64 %env86337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88627 = getelementptr inbounds i64, i64* %envptr88626, i64 4                ; &envptr88626[4]
  %cont83554 = load i64, i64* %envptr88627, align 8                                  ; load; *envptr88627
  %envptr88628 = inttoptr i64 %env86337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88629 = getelementptr inbounds i64, i64* %envptr88628, i64 3                ; &envptr88628[3]
  %UGh$x = load i64, i64* %envptr88629, align 8                                      ; load; *envptr88629
  %envptr88630 = inttoptr i64 %env86337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88631 = getelementptr inbounds i64, i64* %envptr88630, i64 2                ; &envptr88630[2]
  %uY4$my_45try = load i64, i64* %envptr88631, align 8                               ; load; *envptr88631
  %envptr88632 = inttoptr i64 %env86337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88633 = getelementptr inbounds i64, i64* %envptr88632, i64 1                ; &envptr88632[1]
  %hEZ$_37append = load i64, i64* %envptr88633, align 8                              ; load; *envptr88633
  %_9583555 = call i64 @prim_car(i64 %rvp85513)                                      ; call prim_car
  %rvp85512 = call i64 @prim_cdr(i64 %rvp85513)                                      ; call prim_cdr
  %a83403 = call i64 @prim_car(i64 %rvp85512)                                        ; call prim_car
  %na85454 = call i64 @prim_cdr(i64 %rvp85512)                                       ; call prim_cdr
  %cmp88634 = icmp eq i64 %a83403, 15                                                ; false?
  br i1 %cmp88634, label %else88636, label %then88635                                ; if

then88635:
  %arg84369 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83404 = call i64 @prim_vector_45ref(i64 %uY4$my_45try, i64 %arg84369)            ; call prim_vector_45ref
  %a83405 = call i64 @prim_cdr(i64 %UGh$x)                                           ; call prim_cdr
  %cloptr88637 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr88639 = getelementptr inbounds i64, i64* %cloptr88637, i64 1                  ; &eptr88639[1]
  %eptr88640 = getelementptr inbounds i64, i64* %cloptr88637, i64 2                  ; &eptr88640[2]
  %eptr88641 = getelementptr inbounds i64, i64* %cloptr88637, i64 3                  ; &eptr88641[3]
  %eptr88642 = getelementptr inbounds i64, i64* %cloptr88637, i64 4                  ; &eptr88642[4]
  %eptr88643 = getelementptr inbounds i64, i64* %cloptr88637, i64 5                  ; &eptr88643[5]
  %eptr88644 = getelementptr inbounds i64, i64* %cloptr88637, i64 6                  ; &eptr88644[6]
  store i64 %uY4$my_45try, i64* %eptr88639                                           ; *eptr88639 = %uY4$my_45try
  store i64 %UGh$x, i64* %eptr88640                                                  ; *eptr88640 = %UGh$x
  store i64 %a83404, i64* %eptr88641                                                 ; *eptr88641 = %a83404
  store i64 %cont83554, i64* %eptr88642                                              ; *eptr88642 = %cont83554
  store i64 %FpY$y, i64* %eptr88643                                                  ; *eptr88643 = %FpY$y
  store i64 %Z6Y$z, i64* %eptr88644                                                  ; *eptr88644 = %Z6Y$z
  %eptr88638 = getelementptr inbounds i64, i64* %cloptr88637, i64 0                  ; &cloptr88637[0]
  %f88645 = ptrtoint void(i64,i64)* @lam86322 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88645, i64* %eptr88638                                                 ; store fptr
  %arg84374 = ptrtoint i64* %cloptr88637 to i64                                      ; closure cast; i64* -> i64
  %rva85492 = add i64 0, 0                                                           ; quoted ()
  %rva85491 = call i64 @prim_cons(i64 %FpY$y, i64 %rva85492)                         ; call prim_cons
  %rva85490 = call i64 @prim_cons(i64 %a83405, i64 %rva85491)                        ; call prim_cons
  %rva85489 = call i64 @prim_cons(i64 %arg84374, i64 %rva85490)                      ; call prim_cons
  %cloptr88646 = inttoptr i64 %hEZ$_37append to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr88647 = getelementptr inbounds i64, i64* %cloptr88646, i64 0                 ; &cloptr88646[0]
  %f88649 = load i64, i64* %i0ptr88647, align 8                                      ; load; *i0ptr88647
  %fptr88648 = inttoptr i64 %f88649 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88648(i64 %hEZ$_37append, i64 %rva85489)            ; tail call
  ret void

else88636:
  %cloptr88650 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr88652 = getelementptr inbounds i64, i64* %cloptr88650, i64 1                  ; &eptr88652[1]
  %eptr88653 = getelementptr inbounds i64, i64* %cloptr88650, i64 2                  ; &eptr88653[2]
  %eptr88654 = getelementptr inbounds i64, i64* %cloptr88650, i64 3                  ; &eptr88654[3]
  %eptr88655 = getelementptr inbounds i64, i64* %cloptr88650, i64 4                  ; &eptr88655[4]
  %eptr88656 = getelementptr inbounds i64, i64* %cloptr88650, i64 5                  ; &eptr88656[5]
  store i64 %uY4$my_45try, i64* %eptr88652                                           ; *eptr88652 = %uY4$my_45try
  store i64 %UGh$x, i64* %eptr88653                                                  ; *eptr88653 = %UGh$x
  store i64 %cont83554, i64* %eptr88654                                              ; *eptr88654 = %cont83554
  store i64 %FpY$y, i64* %eptr88655                                                  ; *eptr88655 = %FpY$y
  store i64 %Z6Y$z, i64* %eptr88656                                                  ; *eptr88656 = %Z6Y$z
  %eptr88651 = getelementptr inbounds i64, i64* %cloptr88650, i64 0                  ; &cloptr88650[0]
  %f88657 = ptrtoint void(i64,i64)* @lam86334 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88657, i64* %eptr88651                                                 ; store fptr
  %arg84409 = ptrtoint i64* %cloptr88650 to i64                                      ; closure cast; i64* -> i64
  %arg84408 = add i64 0, 0                                                           ; quoted ()
  %arg84407 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva85511 = add i64 0, 0                                                           ; quoted ()
  %rva85510 = call i64 @prim_cons(i64 %arg84407, i64 %rva85511)                      ; call prim_cons
  %rva85509 = call i64 @prim_cons(i64 %arg84408, i64 %rva85510)                      ; call prim_cons
  %cloptr88658 = inttoptr i64 %arg84409 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88659 = getelementptr inbounds i64, i64* %cloptr88658, i64 0                 ; &cloptr88658[0]
  %f88661 = load i64, i64* %i0ptr88659, align 8                                      ; load; *i0ptr88659
  %fptr88660 = inttoptr i64 %f88661 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88660(i64 %arg84409, i64 %rva85509)                 ; tail call
  ret void
}


define void @lam86334(i64 %env86335, i64 %rvp85508) {
  %envptr88662 = inttoptr i64 %env86335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88663 = getelementptr inbounds i64, i64* %envptr88662, i64 5                ; &envptr88662[5]
  %Z6Y$z = load i64, i64* %envptr88663, align 8                                      ; load; *envptr88663
  %envptr88664 = inttoptr i64 %env86335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88665 = getelementptr inbounds i64, i64* %envptr88664, i64 4                ; &envptr88664[4]
  %FpY$y = load i64, i64* %envptr88665, align 8                                      ; load; *envptr88665
  %envptr88666 = inttoptr i64 %env86335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88667 = getelementptr inbounds i64, i64* %envptr88666, i64 3                ; &envptr88666[3]
  %cont83554 = load i64, i64* %envptr88667, align 8                                  ; load; *envptr88667
  %envptr88668 = inttoptr i64 %env86335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88669 = getelementptr inbounds i64, i64* %envptr88668, i64 2                ; &envptr88668[2]
  %UGh$x = load i64, i64* %envptr88669, align 8                                      ; load; *envptr88669
  %envptr88670 = inttoptr i64 %env86335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88671 = getelementptr inbounds i64, i64* %envptr88670, i64 1                ; &envptr88670[1]
  %uY4$my_45try = load i64, i64* %envptr88671, align 8                               ; load; *envptr88671
  %_9583556 = call i64 @prim_car(i64 %rvp85508)                                      ; call prim_car
  %rvp85507 = call i64 @prim_cdr(i64 %rvp85508)                                      ; call prim_cdr
  %a83410 = call i64 @prim_car(i64 %rvp85507)                                        ; call prim_car
  %na85494 = call i64 @prim_cdr(i64 %rvp85507)                                       ; call prim_cdr
  %arg84410 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83411 = call i64 @prim_vector_45ref(i64 %uY4$my_45try, i64 %arg84410)            ; call prim_vector_45ref
  %a83412 = call i64 @prim_cdr(i64 %UGh$x)                                           ; call prim_cdr
  %a83413 = call i64 @prim_car(i64 %UGh$x)                                           ; call prim_car
  %a83414 = call i64 @prim_cons(i64 %a83413, i64 %FpY$y)                             ; call prim_cons
  %cloptr88672 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88674 = getelementptr inbounds i64, i64* %cloptr88672, i64 1                  ; &eptr88674[1]
  %eptr88675 = getelementptr inbounds i64, i64* %cloptr88672, i64 2                  ; &eptr88675[2]
  store i64 %a83410, i64* %eptr88674                                                 ; *eptr88674 = %a83410
  store i64 %cont83554, i64* %eptr88675                                              ; *eptr88675 = %cont83554
  %eptr88673 = getelementptr inbounds i64, i64* %cloptr88672, i64 0                  ; &cloptr88672[0]
  %f88676 = ptrtoint void(i64,i64)* @lam86331 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88676, i64* %eptr88673                                                 ; store fptr
  %arg84419 = ptrtoint i64* %cloptr88672 to i64                                      ; closure cast; i64* -> i64
  %rva85506 = add i64 0, 0                                                           ; quoted ()
  %rva85505 = call i64 @prim_cons(i64 %Z6Y$z, i64 %rva85506)                         ; call prim_cons
  %rva85504 = call i64 @prim_cons(i64 %a83414, i64 %rva85505)                        ; call prim_cons
  %rva85503 = call i64 @prim_cons(i64 %a83412, i64 %rva85504)                        ; call prim_cons
  %rva85502 = call i64 @prim_cons(i64 %arg84419, i64 %rva85503)                      ; call prim_cons
  %cloptr88677 = inttoptr i64 %a83411 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88678 = getelementptr inbounds i64, i64* %cloptr88677, i64 0                 ; &cloptr88677[0]
  %f88680 = load i64, i64* %i0ptr88678, align 8                                      ; load; *i0ptr88678
  %fptr88679 = inttoptr i64 %f88680 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88679(i64 %a83411, i64 %rva85502)                   ; tail call
  ret void
}


define void @lam86331(i64 %env86332, i64 %rvp85501) {
  %envptr88681 = inttoptr i64 %env86332 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88682 = getelementptr inbounds i64, i64* %envptr88681, i64 2                ; &envptr88681[2]
  %cont83554 = load i64, i64* %envptr88682, align 8                                  ; load; *envptr88682
  %envptr88683 = inttoptr i64 %env86332 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88684 = getelementptr inbounds i64, i64* %envptr88683, i64 1                ; &envptr88683[1]
  %a83410 = load i64, i64* %envptr88684, align 8                                     ; load; *envptr88684
  %_9583557 = call i64 @prim_car(i64 %rvp85501)                                      ; call prim_car
  %rvp85500 = call i64 @prim_cdr(i64 %rvp85501)                                      ; call prim_cdr
  %a83415 = call i64 @prim_car(i64 %rvp85500)                                        ; call prim_car
  %na85496 = call i64 @prim_cdr(i64 %rvp85500)                                       ; call prim_cdr
  %retprim83558 = call i64 @prim__43(i64 %a83410, i64 %a83415)                       ; call prim__43
  %arg84424 = add i64 0, 0                                                           ; quoted ()
  %rva85499 = add i64 0, 0                                                           ; quoted ()
  %rva85498 = call i64 @prim_cons(i64 %retprim83558, i64 %rva85499)                  ; call prim_cons
  %rva85497 = call i64 @prim_cons(i64 %arg84424, i64 %rva85498)                      ; call prim_cons
  %cloptr88685 = inttoptr i64 %cont83554 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88686 = getelementptr inbounds i64, i64* %cloptr88685, i64 0                 ; &cloptr88685[0]
  %f88688 = load i64, i64* %i0ptr88686, align 8                                      ; load; *i0ptr88686
  %fptr88687 = inttoptr i64 %f88688 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88687(i64 %cont83554, i64 %rva85497)                ; tail call
  ret void
}


define void @lam86322(i64 %env86323, i64 %rvp85488) {
  %envptr88689 = inttoptr i64 %env86323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88690 = getelementptr inbounds i64, i64* %envptr88689, i64 6                ; &envptr88689[6]
  %Z6Y$z = load i64, i64* %envptr88690, align 8                                      ; load; *envptr88690
  %envptr88691 = inttoptr i64 %env86323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88692 = getelementptr inbounds i64, i64* %envptr88691, i64 5                ; &envptr88691[5]
  %FpY$y = load i64, i64* %envptr88692, align 8                                      ; load; *envptr88692
  %envptr88693 = inttoptr i64 %env86323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88694 = getelementptr inbounds i64, i64* %envptr88693, i64 4                ; &envptr88693[4]
  %cont83554 = load i64, i64* %envptr88694, align 8                                  ; load; *envptr88694
  %envptr88695 = inttoptr i64 %env86323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88696 = getelementptr inbounds i64, i64* %envptr88695, i64 3                ; &envptr88695[3]
  %a83404 = load i64, i64* %envptr88696, align 8                                     ; load; *envptr88696
  %envptr88697 = inttoptr i64 %env86323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88698 = getelementptr inbounds i64, i64* %envptr88697, i64 2                ; &envptr88697[2]
  %UGh$x = load i64, i64* %envptr88698, align 8                                      ; load; *envptr88698
  %envptr88699 = inttoptr i64 %env86323 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88700 = getelementptr inbounds i64, i64* %envptr88699, i64 1                ; &envptr88699[1]
  %uY4$my_45try = load i64, i64* %envptr88700, align 8                               ; load; *envptr88700
  %_9583559 = call i64 @prim_car(i64 %rvp85488)                                      ; call prim_car
  %rvp85487 = call i64 @prim_cdr(i64 %rvp85488)                                      ; call prim_cdr
  %a83406 = call i64 @prim_car(i64 %rvp85487)                                        ; call prim_car
  %na85456 = call i64 @prim_cdr(i64 %rvp85487)                                       ; call prim_cdr
  %cloptr88701 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88702 = getelementptr inbounds i64, i64* %cloptr88701, i64 0                  ; &cloptr88701[0]
  %f88703 = ptrtoint void(i64,i64)* @lam86320 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88703, i64* %eptr88702                                                 ; store fptr
  %arg84377 = ptrtoint i64* %cloptr88701 to i64                                      ; closure cast; i64* -> i64
  %cloptr88704 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88706 = getelementptr inbounds i64, i64* %cloptr88704, i64 1                  ; &eptr88706[1]
  %eptr88707 = getelementptr inbounds i64, i64* %cloptr88704, i64 2                  ; &eptr88707[2]
  %eptr88708 = getelementptr inbounds i64, i64* %cloptr88704, i64 3                  ; &eptr88708[3]
  %eptr88709 = getelementptr inbounds i64, i64* %cloptr88704, i64 4                  ; &eptr88709[4]
  %eptr88710 = getelementptr inbounds i64, i64* %cloptr88704, i64 5                  ; &eptr88710[5]
  %eptr88711 = getelementptr inbounds i64, i64* %cloptr88704, i64 6                  ; &eptr88711[6]
  %eptr88712 = getelementptr inbounds i64, i64* %cloptr88704, i64 7                  ; &eptr88712[7]
  store i64 %uY4$my_45try, i64* %eptr88706                                           ; *eptr88706 = %uY4$my_45try
  store i64 %UGh$x, i64* %eptr88707                                                  ; *eptr88707 = %UGh$x
  store i64 %a83404, i64* %eptr88708                                                 ; *eptr88708 = %a83404
  store i64 %cont83554, i64* %eptr88709                                              ; *eptr88709 = %cont83554
  store i64 %FpY$y, i64* %eptr88710                                                  ; *eptr88710 = %FpY$y
  store i64 %Z6Y$z, i64* %eptr88711                                                  ; *eptr88711 = %Z6Y$z
  store i64 %a83406, i64* %eptr88712                                                 ; *eptr88712 = %a83406
  %eptr88705 = getelementptr inbounds i64, i64* %cloptr88704, i64 0                  ; &cloptr88704[0]
  %f88713 = ptrtoint void(i64,i64)* @lam86316 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88713, i64* %eptr88705                                                 ; store fptr
  %arg84376 = ptrtoint i64* %cloptr88704 to i64                                      ; closure cast; i64* -> i64
  %rva85486 = add i64 0, 0                                                           ; quoted ()
  %rva85485 = call i64 @prim_cons(i64 %arg84376, i64 %rva85486)                      ; call prim_cons
  %cloptr88714 = inttoptr i64 %arg84377 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88715 = getelementptr inbounds i64, i64* %cloptr88714, i64 0                 ; &cloptr88714[0]
  %f88717 = load i64, i64* %i0ptr88715, align 8                                      ; load; *i0ptr88715
  %fptr88716 = inttoptr i64 %f88717 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88716(i64 %arg84377, i64 %rva85485)                 ; tail call
  ret void
}


define void @lam86320(i64 %env86321, i64 %T8v$lst83562) {
  %cont83561 = call i64 @prim_car(i64 %T8v$lst83562)                                 ; call prim_car
  %T8v$lst = call i64 @prim_cdr(i64 %T8v$lst83562)                                   ; call prim_cdr
  %arg84381 = add i64 0, 0                                                           ; quoted ()
  %rva85459 = add i64 0, 0                                                           ; quoted ()
  %rva85458 = call i64 @prim_cons(i64 %T8v$lst, i64 %rva85459)                       ; call prim_cons
  %rva85457 = call i64 @prim_cons(i64 %arg84381, i64 %rva85458)                      ; call prim_cons
  %cloptr88718 = inttoptr i64 %cont83561 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88719 = getelementptr inbounds i64, i64* %cloptr88718, i64 0                 ; &cloptr88718[0]
  %f88721 = load i64, i64* %i0ptr88719, align 8                                      ; load; *i0ptr88719
  %fptr88720 = inttoptr i64 %f88721 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88720(i64 %cont83561, i64 %rva85457)                ; tail call
  ret void
}


define void @lam86316(i64 %env86317, i64 %rvp85484) {
  %envptr88722 = inttoptr i64 %env86317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88723 = getelementptr inbounds i64, i64* %envptr88722, i64 7                ; &envptr88722[7]
  %a83406 = load i64, i64* %envptr88723, align 8                                     ; load; *envptr88723
  %envptr88724 = inttoptr i64 %env86317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88725 = getelementptr inbounds i64, i64* %envptr88724, i64 6                ; &envptr88724[6]
  %Z6Y$z = load i64, i64* %envptr88725, align 8                                      ; load; *envptr88725
  %envptr88726 = inttoptr i64 %env86317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88727 = getelementptr inbounds i64, i64* %envptr88726, i64 5                ; &envptr88726[5]
  %FpY$y = load i64, i64* %envptr88727, align 8                                      ; load; *envptr88727
  %envptr88728 = inttoptr i64 %env86317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88729 = getelementptr inbounds i64, i64* %envptr88728, i64 4                ; &envptr88728[4]
  %cont83554 = load i64, i64* %envptr88729, align 8                                  ; load; *envptr88729
  %envptr88730 = inttoptr i64 %env86317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88731 = getelementptr inbounds i64, i64* %envptr88730, i64 3                ; &envptr88730[3]
  %a83404 = load i64, i64* %envptr88731, align 8                                     ; load; *envptr88731
  %envptr88732 = inttoptr i64 %env86317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88733 = getelementptr inbounds i64, i64* %envptr88732, i64 2                ; &envptr88732[2]
  %UGh$x = load i64, i64* %envptr88733, align 8                                      ; load; *envptr88733
  %envptr88734 = inttoptr i64 %env86317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88735 = getelementptr inbounds i64, i64* %envptr88734, i64 1                ; &envptr88734[1]
  %uY4$my_45try = load i64, i64* %envptr88735, align 8                               ; load; *envptr88735
  %_9583560 = call i64 @prim_car(i64 %rvp85484)                                      ; call prim_car
  %rvp85483 = call i64 @prim_cdr(i64 %rvp85484)                                      ; call prim_cdr
  %a83407 = call i64 @prim_car(i64 %rvp85483)                                        ; call prim_car
  %na85461 = call i64 @prim_cdr(i64 %rvp85483)                                       ; call prim_cdr
  %a83408 = call i64 @prim_car(i64 %UGh$x)                                           ; call prim_car
  %a83409 = call i64 @prim_cons(i64 %a83408, i64 %Z6Y$z)                             ; call prim_cons
  %cloptr88736 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr88738 = getelementptr inbounds i64, i64* %cloptr88736, i64 1                  ; &eptr88738[1]
  %eptr88739 = getelementptr inbounds i64, i64* %cloptr88736, i64 2                  ; &eptr88739[2]
  %eptr88740 = getelementptr inbounds i64, i64* %cloptr88736, i64 3                  ; &eptr88740[3]
  %eptr88741 = getelementptr inbounds i64, i64* %cloptr88736, i64 4                  ; &eptr88741[4]
  %eptr88742 = getelementptr inbounds i64, i64* %cloptr88736, i64 5                  ; &eptr88742[5]
  store i64 %uY4$my_45try, i64* %eptr88738                                           ; *eptr88738 = %uY4$my_45try
  store i64 %UGh$x, i64* %eptr88739                                                  ; *eptr88739 = %UGh$x
  store i64 %cont83554, i64* %eptr88740                                              ; *eptr88740 = %cont83554
  store i64 %FpY$y, i64* %eptr88741                                                  ; *eptr88741 = %FpY$y
  store i64 %Z6Y$z, i64* %eptr88742                                                  ; *eptr88742 = %Z6Y$z
  %eptr88737 = getelementptr inbounds i64, i64* %cloptr88736, i64 0                  ; &cloptr88736[0]
  %f88743 = ptrtoint void(i64,i64)* @lam86314 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88743, i64* %eptr88737                                                 ; store fptr
  %arg84389 = ptrtoint i64* %cloptr88736 to i64                                      ; closure cast; i64* -> i64
  %rva85482 = add i64 0, 0                                                           ; quoted ()
  %rva85481 = call i64 @prim_cons(i64 %a83409, i64 %rva85482)                        ; call prim_cons
  %rva85480 = call i64 @prim_cons(i64 %a83407, i64 %rva85481)                        ; call prim_cons
  %rva85479 = call i64 @prim_cons(i64 %a83406, i64 %rva85480)                        ; call prim_cons
  %rva85478 = call i64 @prim_cons(i64 %arg84389, i64 %rva85479)                      ; call prim_cons
  %cloptr88744 = inttoptr i64 %a83404 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88745 = getelementptr inbounds i64, i64* %cloptr88744, i64 0                 ; &cloptr88744[0]
  %f88747 = load i64, i64* %i0ptr88745, align 8                                      ; load; *i0ptr88745
  %fptr88746 = inttoptr i64 %f88747 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88746(i64 %a83404, i64 %rva85478)                   ; tail call
  ret void
}


define void @lam86314(i64 %env86315, i64 %rvp85477) {
  %envptr88748 = inttoptr i64 %env86315 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88749 = getelementptr inbounds i64, i64* %envptr88748, i64 5                ; &envptr88748[5]
  %Z6Y$z = load i64, i64* %envptr88749, align 8                                      ; load; *envptr88749
  %envptr88750 = inttoptr i64 %env86315 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88751 = getelementptr inbounds i64, i64* %envptr88750, i64 4                ; &envptr88750[4]
  %FpY$y = load i64, i64* %envptr88751, align 8                                      ; load; *envptr88751
  %envptr88752 = inttoptr i64 %env86315 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88753 = getelementptr inbounds i64, i64* %envptr88752, i64 3                ; &envptr88752[3]
  %cont83554 = load i64, i64* %envptr88753, align 8                                  ; load; *envptr88753
  %envptr88754 = inttoptr i64 %env86315 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88755 = getelementptr inbounds i64, i64* %envptr88754, i64 2                ; &envptr88754[2]
  %UGh$x = load i64, i64* %envptr88755, align 8                                      ; load; *envptr88755
  %envptr88756 = inttoptr i64 %env86315 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88757 = getelementptr inbounds i64, i64* %envptr88756, i64 1                ; &envptr88756[1]
  %uY4$my_45try = load i64, i64* %envptr88757, align 8                               ; load; *envptr88757
  %_9583556 = call i64 @prim_car(i64 %rvp85477)                                      ; call prim_car
  %rvp85476 = call i64 @prim_cdr(i64 %rvp85477)                                      ; call prim_cdr
  %a83410 = call i64 @prim_car(i64 %rvp85476)                                        ; call prim_car
  %na85463 = call i64 @prim_cdr(i64 %rvp85476)                                       ; call prim_cdr
  %arg84391 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83411 = call i64 @prim_vector_45ref(i64 %uY4$my_45try, i64 %arg84391)            ; call prim_vector_45ref
  %a83412 = call i64 @prim_cdr(i64 %UGh$x)                                           ; call prim_cdr
  %a83413 = call i64 @prim_car(i64 %UGh$x)                                           ; call prim_car
  %a83414 = call i64 @prim_cons(i64 %a83413, i64 %FpY$y)                             ; call prim_cons
  %cloptr88758 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr88760 = getelementptr inbounds i64, i64* %cloptr88758, i64 1                  ; &eptr88760[1]
  %eptr88761 = getelementptr inbounds i64, i64* %cloptr88758, i64 2                  ; &eptr88761[2]
  store i64 %a83410, i64* %eptr88760                                                 ; *eptr88760 = %a83410
  store i64 %cont83554, i64* %eptr88761                                              ; *eptr88761 = %cont83554
  %eptr88759 = getelementptr inbounds i64, i64* %cloptr88758, i64 0                  ; &cloptr88758[0]
  %f88762 = ptrtoint void(i64,i64)* @lam86311 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88762, i64* %eptr88759                                                 ; store fptr
  %arg84400 = ptrtoint i64* %cloptr88758 to i64                                      ; closure cast; i64* -> i64
  %rva85475 = add i64 0, 0                                                           ; quoted ()
  %rva85474 = call i64 @prim_cons(i64 %Z6Y$z, i64 %rva85475)                         ; call prim_cons
  %rva85473 = call i64 @prim_cons(i64 %a83414, i64 %rva85474)                        ; call prim_cons
  %rva85472 = call i64 @prim_cons(i64 %a83412, i64 %rva85473)                        ; call prim_cons
  %rva85471 = call i64 @prim_cons(i64 %arg84400, i64 %rva85472)                      ; call prim_cons
  %cloptr88763 = inttoptr i64 %a83411 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88764 = getelementptr inbounds i64, i64* %cloptr88763, i64 0                 ; &cloptr88763[0]
  %f88766 = load i64, i64* %i0ptr88764, align 8                                      ; load; *i0ptr88764
  %fptr88765 = inttoptr i64 %f88766 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88765(i64 %a83411, i64 %rva85471)                   ; tail call
  ret void
}


define void @lam86311(i64 %env86312, i64 %rvp85470) {
  %envptr88767 = inttoptr i64 %env86312 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88768 = getelementptr inbounds i64, i64* %envptr88767, i64 2                ; &envptr88767[2]
  %cont83554 = load i64, i64* %envptr88768, align 8                                  ; load; *envptr88768
  %envptr88769 = inttoptr i64 %env86312 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88770 = getelementptr inbounds i64, i64* %envptr88769, i64 1                ; &envptr88769[1]
  %a83410 = load i64, i64* %envptr88770, align 8                                     ; load; *envptr88770
  %_9583557 = call i64 @prim_car(i64 %rvp85470)                                      ; call prim_car
  %rvp85469 = call i64 @prim_cdr(i64 %rvp85470)                                      ; call prim_cdr
  %a83415 = call i64 @prim_car(i64 %rvp85469)                                        ; call prim_car
  %na85465 = call i64 @prim_cdr(i64 %rvp85469)                                       ; call prim_cdr
  %retprim83558 = call i64 @prim__43(i64 %a83410, i64 %a83415)                       ; call prim__43
  %arg84405 = add i64 0, 0                                                           ; quoted ()
  %rva85468 = add i64 0, 0                                                           ; quoted ()
  %rva85467 = call i64 @prim_cons(i64 %retprim83558, i64 %rva85468)                  ; call prim_cons
  %rva85466 = call i64 @prim_cons(i64 %arg84405, i64 %rva85467)                      ; call prim_cons
  %cloptr88771 = inttoptr i64 %cont83554 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88772 = getelementptr inbounds i64, i64* %cloptr88771, i64 0                 ; &cloptr88771[0]
  %f88774 = load i64, i64* %i0ptr88772, align 8                                      ; load; *i0ptr88772
  %fptr88773 = inttoptr i64 %f88774 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88773(i64 %cont83554, i64 %rva85466)                ; tail call
  ret void
}


define void @lam86294(i64 %env86295, i64 %rvp85542) {
  %envptr88775 = inttoptr i64 %env86295 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88776 = getelementptr inbounds i64, i64* %envptr88775, i64 1                ; &envptr88775[1]
  %OJP$ok_63 = load i64, i64* %envptr88776, align 8                                  ; load; *envptr88776
  %cont83563 = call i64 @prim_car(i64 %rvp85542)                                     ; call prim_car
  %rvp85541 = call i64 @prim_cdr(i64 %rvp85542)                                      ; call prim_cdr
  %ldZ$row = call i64 @prim_car(i64 %rvp85541)                                       ; call prim_car
  %rvp85540 = call i64 @prim_cdr(i64 %rvp85541)                                      ; call prim_cdr
  %v18$dist = call i64 @prim_car(i64 %rvp85540)                                      ; call prim_car
  %rvp85539 = call i64 @prim_cdr(i64 %rvp85540)                                      ; call prim_cdr
  %OPN$placed = call i64 @prim_car(i64 %rvp85539)                                    ; call prim_car
  %na85524 = call i64 @prim_cdr(i64 %rvp85539)                                       ; call prim_cdr
  %a83416 = call i64 @prim_null_63(i64 %OPN$placed)                                  ; call prim_null_63
  %cmp88777 = icmp eq i64 %a83416, 15                                                ; false?
  br i1 %cmp88777, label %else88779, label %then88778                                ; if

then88778:
  %arg84431 = add i64 0, 0                                                           ; quoted ()
  %arg84430 = call i64 @const_init_true()                                            ; quoted #t
  %rva85527 = add i64 0, 0                                                           ; quoted ()
  %rva85526 = call i64 @prim_cons(i64 %arg84430, i64 %rva85527)                      ; call prim_cons
  %rva85525 = call i64 @prim_cons(i64 %arg84431, i64 %rva85526)                      ; call prim_cons
  %cloptr88780 = inttoptr i64 %cont83563 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88781 = getelementptr inbounds i64, i64* %cloptr88780, i64 0                 ; &cloptr88780[0]
  %f88783 = load i64, i64* %i0ptr88781, align 8                                      ; load; *i0ptr88781
  %fptr88782 = inttoptr i64 %f88783 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88782(i64 %cont83563, i64 %rva85525)                ; tail call
  ret void

else88779:
  %a83417 = call i64 @prim_car(i64 %OPN$placed)                                      ; call prim_car
  %a83418 = call i64 @prim__43(i64 %ldZ$row, i64 %v18$dist)                          ; call prim__43
  %a83419 = call i64 @prim__61(i64 %a83417, i64 %a83418)                             ; call prim__61
  %a83420 = call i64 @prim_not(i64 %a83419)                                          ; call prim_not
  %cmp88784 = icmp eq i64 %a83420, 15                                                ; false?
  br i1 %cmp88784, label %else88786, label %then88785                                ; if

then88785:
  %a83421 = call i64 @prim_car(i64 %OPN$placed)                                      ; call prim_car
  %a83422 = call i64 @prim__45(i64 %ldZ$row, i64 %v18$dist)                          ; call prim__45
  %a83423 = call i64 @prim__61(i64 %a83421, i64 %a83422)                             ; call prim__61
  %a83424 = call i64 @prim_not(i64 %a83423)                                          ; call prim_not
  %cmp88787 = icmp eq i64 %a83424, 15                                                ; false?
  br i1 %cmp88787, label %else88789, label %then88788                                ; if

then88788:
  %arg84445 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83425 = call i64 @prim_vector_45ref(i64 %OJP$ok_63, i64 %arg84445)               ; call prim_vector_45ref
  %arg84447 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83426 = call i64 @prim__43(i64 %v18$dist, i64 %arg84447)                         ; call prim__43
  %a83427 = call i64 @prim_cdr(i64 %OPN$placed)                                      ; call prim_cdr
  %rva85532 = add i64 0, 0                                                           ; quoted ()
  %rva85531 = call i64 @prim_cons(i64 %a83427, i64 %rva85532)                        ; call prim_cons
  %rva85530 = call i64 @prim_cons(i64 %a83426, i64 %rva85531)                        ; call prim_cons
  %rva85529 = call i64 @prim_cons(i64 %ldZ$row, i64 %rva85530)                       ; call prim_cons
  %rva85528 = call i64 @prim_cons(i64 %cont83563, i64 %rva85529)                     ; call prim_cons
  %cloptr88790 = inttoptr i64 %a83425 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88791 = getelementptr inbounds i64, i64* %cloptr88790, i64 0                 ; &cloptr88790[0]
  %f88793 = load i64, i64* %i0ptr88791, align 8                                      ; load; *i0ptr88791
  %fptr88792 = inttoptr i64 %f88793 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88792(i64 %a83425, i64 %rva85528)                   ; tail call
  ret void

else88789:
  %arg84456 = add i64 0, 0                                                           ; quoted ()
  %arg84455 = call i64 @const_init_false()                                           ; quoted #f
  %rva85535 = add i64 0, 0                                                           ; quoted ()
  %rva85534 = call i64 @prim_cons(i64 %arg84455, i64 %rva85535)                      ; call prim_cons
  %rva85533 = call i64 @prim_cons(i64 %arg84456, i64 %rva85534)                      ; call prim_cons
  %cloptr88794 = inttoptr i64 %cont83563 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88795 = getelementptr inbounds i64, i64* %cloptr88794, i64 0                 ; &cloptr88794[0]
  %f88797 = load i64, i64* %i0ptr88795, align 8                                      ; load; *i0ptr88795
  %fptr88796 = inttoptr i64 %f88797 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88796(i64 %cont83563, i64 %rva85533)                ; tail call
  ret void

else88786:
  %arg84459 = add i64 0, 0                                                           ; quoted ()
  %arg84458 = call i64 @const_init_false()                                           ; quoted #f
  %rva85538 = add i64 0, 0                                                           ; quoted ()
  %rva85537 = call i64 @prim_cons(i64 %arg84458, i64 %rva85538)                      ; call prim_cons
  %rva85536 = call i64 @prim_cons(i64 %arg84459, i64 %rva85537)                      ; call prim_cons
  %cloptr88798 = inttoptr i64 %cont83563 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88799 = getelementptr inbounds i64, i64* %cloptr88798, i64 0                 ; &cloptr88798[0]
  %f88801 = load i64, i64* %i0ptr88799, align 8                                      ; load; *i0ptr88799
  %fptr88800 = inttoptr i64 %f88801 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88800(i64 %cont83563, i64 %rva85536)                ; tail call
  ret void
}


define void @lam86278(i64 %env86279, i64 %rvp85569) {
  %envptr88802 = inttoptr i64 %env86279 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88803 = getelementptr inbounds i64, i64* %envptr88802, i64 2                ; &envptr88802[2]
  %a83428 = load i64, i64* %envptr88803, align 8                                     ; load; *envptr88803
  %envptr88804 = inttoptr i64 %env86279 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88805 = getelementptr inbounds i64, i64* %envptr88804, i64 1                ; &envptr88804[1]
  %cont83540 = load i64, i64* %envptr88805, align 8                                  ; load; *envptr88805
  %_9583564 = call i64 @prim_car(i64 %rvp85569)                                      ; call prim_car
  %rvp85568 = call i64 @prim_cdr(i64 %rvp85569)                                      ; call prim_cdr
  %a83430 = call i64 @prim_car(i64 %rvp85568)                                        ; call prim_car
  %na85544 = call i64 @prim_cdr(i64 %rvp85568)                                       ; call prim_cdr
  %cloptr88806 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88807 = getelementptr inbounds i64, i64* %cloptr88806, i64 0                  ; &cloptr88806[0]
  %f88808 = ptrtoint void(i64,i64)* @lam86276 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88808, i64* %eptr88807                                                 ; store fptr
  %arg84469 = ptrtoint i64* %cloptr88806 to i64                                      ; closure cast; i64* -> i64
  %cloptr88809 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr88811 = getelementptr inbounds i64, i64* %cloptr88809, i64 1                  ; &eptr88811[1]
  %eptr88812 = getelementptr inbounds i64, i64* %cloptr88809, i64 2                  ; &eptr88812[2]
  %eptr88813 = getelementptr inbounds i64, i64* %cloptr88809, i64 3                  ; &eptr88813[3]
  store i64 %cont83540, i64* %eptr88811                                              ; *eptr88811 = %cont83540
  store i64 %a83430, i64* %eptr88812                                                 ; *eptr88812 = %a83430
  store i64 %a83428, i64* %eptr88813                                                 ; *eptr88813 = %a83428
  %eptr88810 = getelementptr inbounds i64, i64* %cloptr88809, i64 0                  ; &cloptr88809[0]
  %f88814 = ptrtoint void(i64,i64)* @lam86272 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88814, i64* %eptr88810                                                 ; store fptr
  %arg84468 = ptrtoint i64* %cloptr88809 to i64                                      ; closure cast; i64* -> i64
  %rva85567 = add i64 0, 0                                                           ; quoted ()
  %rva85566 = call i64 @prim_cons(i64 %arg84468, i64 %rva85567)                      ; call prim_cons
  %cloptr88815 = inttoptr i64 %arg84469 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88816 = getelementptr inbounds i64, i64* %cloptr88815, i64 0                 ; &cloptr88815[0]
  %f88818 = load i64, i64* %i0ptr88816, align 8                                      ; load; *i0ptr88816
  %fptr88817 = inttoptr i64 %f88818 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88817(i64 %arg84469, i64 %rva85566)                 ; tail call
  ret void
}


define void @lam86276(i64 %env86277, i64 %SgM$lst83570) {
  %cont83569 = call i64 @prim_car(i64 %SgM$lst83570)                                 ; call prim_car
  %SgM$lst = call i64 @prim_cdr(i64 %SgM$lst83570)                                   ; call prim_cdr
  %arg84473 = add i64 0, 0                                                           ; quoted ()
  %rva85547 = add i64 0, 0                                                           ; quoted ()
  %rva85546 = call i64 @prim_cons(i64 %SgM$lst, i64 %rva85547)                       ; call prim_cons
  %rva85545 = call i64 @prim_cons(i64 %arg84473, i64 %rva85546)                      ; call prim_cons
  %cloptr88819 = inttoptr i64 %cont83569 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88820 = getelementptr inbounds i64, i64* %cloptr88819, i64 0                 ; &cloptr88819[0]
  %f88822 = load i64, i64* %i0ptr88820, align 8                                      ; load; *i0ptr88820
  %fptr88821 = inttoptr i64 %f88822 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88821(i64 %cont83569, i64 %rva85545)                ; tail call
  ret void
}


define void @lam86272(i64 %env86273, i64 %rvp85565) {
  %envptr88823 = inttoptr i64 %env86273 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88824 = getelementptr inbounds i64, i64* %envptr88823, i64 3                ; &envptr88823[3]
  %a83428 = load i64, i64* %envptr88824, align 8                                     ; load; *envptr88824
  %envptr88825 = inttoptr i64 %env86273 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88826 = getelementptr inbounds i64, i64* %envptr88825, i64 2                ; &envptr88825[2]
  %a83430 = load i64, i64* %envptr88826, align 8                                     ; load; *envptr88826
  %envptr88827 = inttoptr i64 %env86273 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88828 = getelementptr inbounds i64, i64* %envptr88827, i64 1                ; &envptr88827[1]
  %cont83540 = load i64, i64* %envptr88828, align 8                                  ; load; *envptr88828
  %_9583565 = call i64 @prim_car(i64 %rvp85565)                                      ; call prim_car
  %rvp85564 = call i64 @prim_cdr(i64 %rvp85565)                                      ; call prim_cdr
  %a83431 = call i64 @prim_car(i64 %rvp85564)                                        ; call prim_car
  %na85549 = call i64 @prim_cdr(i64 %rvp85564)                                       ; call prim_cdr
  %cloptr88829 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88830 = getelementptr inbounds i64, i64* %cloptr88829, i64 0                  ; &cloptr88829[0]
  %f88831 = ptrtoint void(i64,i64)* @lam86270 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88831, i64* %eptr88830                                                 ; store fptr
  %arg84476 = ptrtoint i64* %cloptr88829 to i64                                      ; closure cast; i64* -> i64
  %cloptr88832 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88834 = getelementptr inbounds i64, i64* %cloptr88832, i64 1                  ; &eptr88834[1]
  %eptr88835 = getelementptr inbounds i64, i64* %cloptr88832, i64 2                  ; &eptr88835[2]
  %eptr88836 = getelementptr inbounds i64, i64* %cloptr88832, i64 3                  ; &eptr88836[3]
  %eptr88837 = getelementptr inbounds i64, i64* %cloptr88832, i64 4                  ; &eptr88837[4]
  store i64 %cont83540, i64* %eptr88834                                              ; *eptr88834 = %cont83540
  store i64 %a83430, i64* %eptr88835                                                 ; *eptr88835 = %a83430
  store i64 %a83431, i64* %eptr88836                                                 ; *eptr88836 = %a83431
  store i64 %a83428, i64* %eptr88837                                                 ; *eptr88837 = %a83428
  %eptr88833 = getelementptr inbounds i64, i64* %cloptr88832, i64 0                  ; &cloptr88832[0]
  %f88838 = ptrtoint void(i64,i64)* @lam86266 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88838, i64* %eptr88833                                                 ; store fptr
  %arg84475 = ptrtoint i64* %cloptr88832 to i64                                      ; closure cast; i64* -> i64
  %rva85563 = add i64 0, 0                                                           ; quoted ()
  %rva85562 = call i64 @prim_cons(i64 %arg84475, i64 %rva85563)                      ; call prim_cons
  %cloptr88839 = inttoptr i64 %arg84476 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88840 = getelementptr inbounds i64, i64* %cloptr88839, i64 0                 ; &cloptr88839[0]
  %f88842 = load i64, i64* %i0ptr88840, align 8                                      ; load; *i0ptr88840
  %fptr88841 = inttoptr i64 %f88842 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88841(i64 %arg84476, i64 %rva85562)                 ; tail call
  ret void
}


define void @lam86270(i64 %env86271, i64 %UJ7$lst83568) {
  %cont83567 = call i64 @prim_car(i64 %UJ7$lst83568)                                 ; call prim_car
  %UJ7$lst = call i64 @prim_cdr(i64 %UJ7$lst83568)                                   ; call prim_cdr
  %arg84480 = add i64 0, 0                                                           ; quoted ()
  %rva85552 = add i64 0, 0                                                           ; quoted ()
  %rva85551 = call i64 @prim_cons(i64 %UJ7$lst, i64 %rva85552)                       ; call prim_cons
  %rva85550 = call i64 @prim_cons(i64 %arg84480, i64 %rva85551)                      ; call prim_cons
  %cloptr88843 = inttoptr i64 %cont83567 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88844 = getelementptr inbounds i64, i64* %cloptr88843, i64 0                 ; &cloptr88843[0]
  %f88846 = load i64, i64* %i0ptr88844, align 8                                      ; load; *i0ptr88844
  %fptr88845 = inttoptr i64 %f88846 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88845(i64 %cont83567, i64 %rva85550)                ; tail call
  ret void
}


define void @lam86266(i64 %env86267, i64 %rvp85561) {
  %envptr88847 = inttoptr i64 %env86267 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88848 = getelementptr inbounds i64, i64* %envptr88847, i64 4                ; &envptr88847[4]
  %a83428 = load i64, i64* %envptr88848, align 8                                     ; load; *envptr88848
  %envptr88849 = inttoptr i64 %env86267 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88850 = getelementptr inbounds i64, i64* %envptr88849, i64 3                ; &envptr88849[3]
  %a83431 = load i64, i64* %envptr88850, align 8                                     ; load; *envptr88850
  %envptr88851 = inttoptr i64 %env86267 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88852 = getelementptr inbounds i64, i64* %envptr88851, i64 2                ; &envptr88851[2]
  %a83430 = load i64, i64* %envptr88852, align 8                                     ; load; *envptr88852
  %envptr88853 = inttoptr i64 %env86267 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88854 = getelementptr inbounds i64, i64* %envptr88853, i64 1                ; &envptr88853[1]
  %cont83540 = load i64, i64* %envptr88854, align 8                                  ; load; *envptr88854
  %_9583566 = call i64 @prim_car(i64 %rvp85561)                                      ; call prim_car
  %rvp85560 = call i64 @prim_cdr(i64 %rvp85561)                                      ; call prim_cdr
  %a83432 = call i64 @prim_car(i64 %rvp85560)                                        ; call prim_car
  %na85554 = call i64 @prim_cdr(i64 %rvp85560)                                       ; call prim_cdr
  %rva85559 = add i64 0, 0                                                           ; quoted ()
  %rva85558 = call i64 @prim_cons(i64 %a83432, i64 %rva85559)                        ; call prim_cons
  %rva85557 = call i64 @prim_cons(i64 %a83431, i64 %rva85558)                        ; call prim_cons
  %rva85556 = call i64 @prim_cons(i64 %a83430, i64 %rva85557)                        ; call prim_cons
  %rva85555 = call i64 @prim_cons(i64 %cont83540, i64 %rva85556)                     ; call prim_cons
  %cloptr88855 = inttoptr i64 %a83428 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr88856 = getelementptr inbounds i64, i64* %cloptr88855, i64 0                 ; &cloptr88855[0]
  %f88858 = load i64, i64* %i0ptr88856, align 8                                      ; load; *i0ptr88856
  %fptr88857 = inttoptr i64 %f88858 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88857(i64 %a83428, i64 %rva85555)                   ; tail call
  ret void
}


define void @lam86250(i64 %env86251, i64 %rvp85607) {
  %_950 = call i64 @prim_car(i64 %rvp85607)                                          ; call prim_car
  %rvp85606 = call i64 @prim_cdr(i64 %rvp85607)                                      ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp85606)                                             ; call prim_car
  %na85603 = call i64 @prim_cdr(i64 %rvp85606)                                       ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva85605 = add i64 0, 0                                                           ; quoted ()
  %rva85604 = call i64 @prim_cons(i64 %_951, i64 %rva85605)                          ; call prim_cons
  %cloptr88859 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  %i0ptr88860 = getelementptr inbounds i64, i64* %cloptr88859, i64 0                 ; &cloptr88859[0]
  %f88862 = load i64, i64* %i0ptr88860, align 8                                      ; load; *i0ptr88860
  %fptr88861 = inttoptr i64 %f88862 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88861(i64 %_951, i64 %rva85604)                     ; tail call
  ret void
}


define void @lam86236(i64 %env86237, i64 %rvp85734) {
  %envptr88863 = inttoptr i64 %env86237 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88864 = getelementptr inbounds i64, i64* %envptr88863, i64 3                ; &envptr88863[3]
  %p8Z$_37foldr = load i64, i64* %envptr88864, align 8                               ; load; *envptr88864
  %envptr88865 = inttoptr i64 %env86237 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88866 = getelementptr inbounds i64, i64* %envptr88865, i64 2                ; &envptr88865[2]
  %XLr$_37map1 = load i64, i64* %envptr88866, align 8                                ; load; *envptr88866
  %envptr88867 = inttoptr i64 %env86237 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88868 = getelementptr inbounds i64, i64* %envptr88867, i64 1                ; &envptr88867[1]
  %WRN$_37foldr1 = load i64, i64* %envptr88868, align 8                              ; load; *envptr88868
  %cont83597 = call i64 @prim_car(i64 %rvp85734)                                     ; call prim_car
  %rvp85733 = call i64 @prim_cdr(i64 %rvp85734)                                      ; call prim_cdr
  %wUs$_37foldl = call i64 @prim_car(i64 %rvp85733)                                  ; call prim_car
  %na85641 = call i64 @prim_cdr(i64 %rvp85733)                                       ; call prim_cdr
  %arg84496 = add i64 0, 0                                                           ; quoted ()
  %cloptr88869 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr88871 = getelementptr inbounds i64, i64* %cloptr88869, i64 1                  ; &eptr88871[1]
  %eptr88872 = getelementptr inbounds i64, i64* %cloptr88869, i64 2                  ; &eptr88872[2]
  %eptr88873 = getelementptr inbounds i64, i64* %cloptr88869, i64 3                  ; &eptr88873[3]
  %eptr88874 = getelementptr inbounds i64, i64* %cloptr88869, i64 4                  ; &eptr88874[4]
  store i64 %WRN$_37foldr1, i64* %eptr88871                                          ; *eptr88871 = %WRN$_37foldr1
  store i64 %wUs$_37foldl, i64* %eptr88872                                           ; *eptr88872 = %wUs$_37foldl
  store i64 %XLr$_37map1, i64* %eptr88873                                            ; *eptr88873 = %XLr$_37map1
  store i64 %p8Z$_37foldr, i64* %eptr88874                                           ; *eptr88874 = %p8Z$_37foldr
  %eptr88870 = getelementptr inbounds i64, i64* %cloptr88869, i64 0                  ; &cloptr88869[0]
  %f88875 = ptrtoint void(i64,i64)* @lam86233 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88875, i64* %eptr88870                                                 ; store fptr
  %arg84495 = ptrtoint i64* %cloptr88869 to i64                                      ; closure cast; i64* -> i64
  %rva85732 = add i64 0, 0                                                           ; quoted ()
  %rva85731 = call i64 @prim_cons(i64 %arg84495, i64 %rva85732)                      ; call prim_cons
  %rva85730 = call i64 @prim_cons(i64 %arg84496, i64 %rva85731)                      ; call prim_cons
  %cloptr88876 = inttoptr i64 %cont83597 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88877 = getelementptr inbounds i64, i64* %cloptr88876, i64 0                 ; &cloptr88876[0]
  %f88879 = load i64, i64* %i0ptr88877, align 8                                      ; load; *i0ptr88877
  %fptr88878 = inttoptr i64 %f88879 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88878(i64 %cont83597, i64 %rva85730)                ; tail call
  ret void
}


define void @lam86233(i64 %env86234, i64 %Oac$args83599) {
  %envptr88880 = inttoptr i64 %env86234 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88881 = getelementptr inbounds i64, i64* %envptr88880, i64 4                ; &envptr88880[4]
  %p8Z$_37foldr = load i64, i64* %envptr88881, align 8                               ; load; *envptr88881
  %envptr88882 = inttoptr i64 %env86234 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88883 = getelementptr inbounds i64, i64* %envptr88882, i64 3                ; &envptr88882[3]
  %XLr$_37map1 = load i64, i64* %envptr88883, align 8                                ; load; *envptr88883
  %envptr88884 = inttoptr i64 %env86234 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88885 = getelementptr inbounds i64, i64* %envptr88884, i64 2                ; &envptr88884[2]
  %wUs$_37foldl = load i64, i64* %envptr88885, align 8                               ; load; *envptr88885
  %envptr88886 = inttoptr i64 %env86234 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88887 = getelementptr inbounds i64, i64* %envptr88886, i64 1                ; &envptr88886[1]
  %WRN$_37foldr1 = load i64, i64* %envptr88887, align 8                              ; load; *envptr88887
  %cont83598 = call i64 @prim_car(i64 %Oac$args83599)                                ; call prim_car
  %Oac$args = call i64 @prim_cdr(i64 %Oac$args83599)                                 ; call prim_cdr
  %Fyf$f = call i64 @prim_car(i64 %Oac$args)                                         ; call prim_car
  %a83309 = call i64 @prim_cdr(i64 %Oac$args)                                        ; call prim_cdr
  %retprim83618 = call i64 @prim_car(i64 %a83309)                                    ; call prim_car
  %cloptr88888 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88890 = getelementptr inbounds i64, i64* %cloptr88888, i64 1                  ; &eptr88890[1]
  %eptr88891 = getelementptr inbounds i64, i64* %cloptr88888, i64 2                  ; &eptr88891[2]
  %eptr88892 = getelementptr inbounds i64, i64* %cloptr88888, i64 3                  ; &eptr88892[3]
  %eptr88893 = getelementptr inbounds i64, i64* %cloptr88888, i64 4                  ; &eptr88893[4]
  %eptr88894 = getelementptr inbounds i64, i64* %cloptr88888, i64 5                  ; &eptr88894[5]
  %eptr88895 = getelementptr inbounds i64, i64* %cloptr88888, i64 6                  ; &eptr88895[6]
  %eptr88896 = getelementptr inbounds i64, i64* %cloptr88888, i64 7                  ; &eptr88896[7]
  store i64 %Fyf$f, i64* %eptr88890                                                  ; *eptr88890 = %Fyf$f
  store i64 %WRN$_37foldr1, i64* %eptr88891                                          ; *eptr88891 = %WRN$_37foldr1
  store i64 %wUs$_37foldl, i64* %eptr88892                                           ; *eptr88892 = %wUs$_37foldl
  store i64 %Oac$args, i64* %eptr88893                                               ; *eptr88893 = %Oac$args
  store i64 %XLr$_37map1, i64* %eptr88894                                            ; *eptr88894 = %XLr$_37map1
  store i64 %p8Z$_37foldr, i64* %eptr88895                                           ; *eptr88895 = %p8Z$_37foldr
  store i64 %cont83598, i64* %eptr88896                                              ; *eptr88896 = %cont83598
  %eptr88889 = getelementptr inbounds i64, i64* %cloptr88888, i64 0                  ; &cloptr88888[0]
  %f88897 = ptrtoint void(i64,i64)* @lam86231 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88897, i64* %eptr88889                                                 ; store fptr
  %arg84505 = ptrtoint i64* %cloptr88888 to i64                                      ; closure cast; i64* -> i64
  %arg84504 = add i64 0, 0                                                           ; quoted ()
  %rva85729 = add i64 0, 0                                                           ; quoted ()
  %rva85728 = call i64 @prim_cons(i64 %retprim83618, i64 %rva85729)                  ; call prim_cons
  %rva85727 = call i64 @prim_cons(i64 %arg84504, i64 %rva85728)                      ; call prim_cons
  %cloptr88898 = inttoptr i64 %arg84505 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88899 = getelementptr inbounds i64, i64* %cloptr88898, i64 0                 ; &cloptr88898[0]
  %f88901 = load i64, i64* %i0ptr88899, align 8                                      ; load; *i0ptr88899
  %fptr88900 = inttoptr i64 %f88901 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88900(i64 %arg84505, i64 %rva85727)                 ; tail call
  ret void
}


define void @lam86231(i64 %env86232, i64 %rvp85726) {
  %envptr88902 = inttoptr i64 %env86232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88903 = getelementptr inbounds i64, i64* %envptr88902, i64 7                ; &envptr88902[7]
  %cont83598 = load i64, i64* %envptr88903, align 8                                  ; load; *envptr88903
  %envptr88904 = inttoptr i64 %env86232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88905 = getelementptr inbounds i64, i64* %envptr88904, i64 6                ; &envptr88904[6]
  %p8Z$_37foldr = load i64, i64* %envptr88905, align 8                               ; load; *envptr88905
  %envptr88906 = inttoptr i64 %env86232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88907 = getelementptr inbounds i64, i64* %envptr88906, i64 5                ; &envptr88906[5]
  %XLr$_37map1 = load i64, i64* %envptr88907, align 8                                ; load; *envptr88907
  %envptr88908 = inttoptr i64 %env86232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88909 = getelementptr inbounds i64, i64* %envptr88908, i64 4                ; &envptr88908[4]
  %Oac$args = load i64, i64* %envptr88909, align 8                                   ; load; *envptr88909
  %envptr88910 = inttoptr i64 %env86232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88911 = getelementptr inbounds i64, i64* %envptr88910, i64 3                ; &envptr88910[3]
  %wUs$_37foldl = load i64, i64* %envptr88911, align 8                               ; load; *envptr88911
  %envptr88912 = inttoptr i64 %env86232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88913 = getelementptr inbounds i64, i64* %envptr88912, i64 2                ; &envptr88912[2]
  %WRN$_37foldr1 = load i64, i64* %envptr88913, align 8                              ; load; *envptr88913
  %envptr88914 = inttoptr i64 %env86232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88915 = getelementptr inbounds i64, i64* %envptr88914, i64 1                ; &envptr88914[1]
  %Fyf$f = load i64, i64* %envptr88915, align 8                                      ; load; *envptr88915
  %_9583600 = call i64 @prim_car(i64 %rvp85726)                                      ; call prim_car
  %rvp85725 = call i64 @prim_cdr(i64 %rvp85726)                                      ; call prim_cdr
  %DKa$acc = call i64 @prim_car(i64 %rvp85725)                                       ; call prim_car
  %na85643 = call i64 @prim_cdr(i64 %rvp85725)                                       ; call prim_cdr
  %a83310 = call i64 @prim_cdr(i64 %Oac$args)                                        ; call prim_cdr
  %retprim83617 = call i64 @prim_cdr(i64 %a83310)                                    ; call prim_cdr
  %cloptr88916 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88918 = getelementptr inbounds i64, i64* %cloptr88916, i64 1                  ; &eptr88918[1]
  %eptr88919 = getelementptr inbounds i64, i64* %cloptr88916, i64 2                  ; &eptr88919[2]
  %eptr88920 = getelementptr inbounds i64, i64* %cloptr88916, i64 3                  ; &eptr88920[3]
  %eptr88921 = getelementptr inbounds i64, i64* %cloptr88916, i64 4                  ; &eptr88921[4]
  %eptr88922 = getelementptr inbounds i64, i64* %cloptr88916, i64 5                  ; &eptr88922[5]
  %eptr88923 = getelementptr inbounds i64, i64* %cloptr88916, i64 6                  ; &eptr88923[6]
  %eptr88924 = getelementptr inbounds i64, i64* %cloptr88916, i64 7                  ; &eptr88924[7]
  store i64 %Fyf$f, i64* %eptr88918                                                  ; *eptr88918 = %Fyf$f
  store i64 %WRN$_37foldr1, i64* %eptr88919                                          ; *eptr88919 = %WRN$_37foldr1
  store i64 %wUs$_37foldl, i64* %eptr88920                                           ; *eptr88920 = %wUs$_37foldl
  store i64 %DKa$acc, i64* %eptr88921                                                ; *eptr88921 = %DKa$acc
  store i64 %XLr$_37map1, i64* %eptr88922                                            ; *eptr88922 = %XLr$_37map1
  store i64 %p8Z$_37foldr, i64* %eptr88923                                           ; *eptr88923 = %p8Z$_37foldr
  store i64 %cont83598, i64* %eptr88924                                              ; *eptr88924 = %cont83598
  %eptr88917 = getelementptr inbounds i64, i64* %cloptr88916, i64 0                  ; &cloptr88916[0]
  %f88925 = ptrtoint void(i64,i64)* @lam86229 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88925, i64* %eptr88917                                                 ; store fptr
  %arg84510 = ptrtoint i64* %cloptr88916 to i64                                      ; closure cast; i64* -> i64
  %arg84509 = add i64 0, 0                                                           ; quoted ()
  %rva85724 = add i64 0, 0                                                           ; quoted ()
  %rva85723 = call i64 @prim_cons(i64 %retprim83617, i64 %rva85724)                  ; call prim_cons
  %rva85722 = call i64 @prim_cons(i64 %arg84509, i64 %rva85723)                      ; call prim_cons
  %cloptr88926 = inttoptr i64 %arg84510 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr88927 = getelementptr inbounds i64, i64* %cloptr88926, i64 0                 ; &cloptr88926[0]
  %f88929 = load i64, i64* %i0ptr88927, align 8                                      ; load; *i0ptr88927
  %fptr88928 = inttoptr i64 %f88929 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88928(i64 %arg84510, i64 %rva85722)                 ; tail call
  ret void
}


define void @lam86229(i64 %env86230, i64 %rvp85721) {
  %envptr88930 = inttoptr i64 %env86230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88931 = getelementptr inbounds i64, i64* %envptr88930, i64 7                ; &envptr88930[7]
  %cont83598 = load i64, i64* %envptr88931, align 8                                  ; load; *envptr88931
  %envptr88932 = inttoptr i64 %env86230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88933 = getelementptr inbounds i64, i64* %envptr88932, i64 6                ; &envptr88932[6]
  %p8Z$_37foldr = load i64, i64* %envptr88933, align 8                               ; load; *envptr88933
  %envptr88934 = inttoptr i64 %env86230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88935 = getelementptr inbounds i64, i64* %envptr88934, i64 5                ; &envptr88934[5]
  %XLr$_37map1 = load i64, i64* %envptr88935, align 8                                ; load; *envptr88935
  %envptr88936 = inttoptr i64 %env86230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88937 = getelementptr inbounds i64, i64* %envptr88936, i64 4                ; &envptr88936[4]
  %DKa$acc = load i64, i64* %envptr88937, align 8                                    ; load; *envptr88937
  %envptr88938 = inttoptr i64 %env86230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88939 = getelementptr inbounds i64, i64* %envptr88938, i64 3                ; &envptr88938[3]
  %wUs$_37foldl = load i64, i64* %envptr88939, align 8                               ; load; *envptr88939
  %envptr88940 = inttoptr i64 %env86230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88941 = getelementptr inbounds i64, i64* %envptr88940, i64 2                ; &envptr88940[2]
  %WRN$_37foldr1 = load i64, i64* %envptr88941, align 8                              ; load; *envptr88941
  %envptr88942 = inttoptr i64 %env86230 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88943 = getelementptr inbounds i64, i64* %envptr88942, i64 1                ; &envptr88942[1]
  %Fyf$f = load i64, i64* %envptr88943, align 8                                      ; load; *envptr88943
  %_9583601 = call i64 @prim_car(i64 %rvp85721)                                      ; call prim_car
  %rvp85720 = call i64 @prim_cdr(i64 %rvp85721)                                      ; call prim_cdr
  %eq3$lsts = call i64 @prim_car(i64 %rvp85720)                                      ; call prim_car
  %na85645 = call i64 @prim_cdr(i64 %rvp85720)                                       ; call prim_cdr
  %cloptr88944 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88946 = getelementptr inbounds i64, i64* %cloptr88944, i64 1                  ; &eptr88946[1]
  %eptr88947 = getelementptr inbounds i64, i64* %cloptr88944, i64 2                  ; &eptr88947[2]
  %eptr88948 = getelementptr inbounds i64, i64* %cloptr88944, i64 3                  ; &eptr88948[3]
  %eptr88949 = getelementptr inbounds i64, i64* %cloptr88944, i64 4                  ; &eptr88949[4]
  %eptr88950 = getelementptr inbounds i64, i64* %cloptr88944, i64 5                  ; &eptr88950[5]
  %eptr88951 = getelementptr inbounds i64, i64* %cloptr88944, i64 6                  ; &eptr88951[6]
  %eptr88952 = getelementptr inbounds i64, i64* %cloptr88944, i64 7                  ; &eptr88952[7]
  store i64 %Fyf$f, i64* %eptr88946                                                  ; *eptr88946 = %Fyf$f
  store i64 %wUs$_37foldl, i64* %eptr88947                                           ; *eptr88947 = %wUs$_37foldl
  store i64 %DKa$acc, i64* %eptr88948                                                ; *eptr88948 = %DKa$acc
  store i64 %eq3$lsts, i64* %eptr88949                                               ; *eptr88949 = %eq3$lsts
  store i64 %XLr$_37map1, i64* %eptr88950                                            ; *eptr88950 = %XLr$_37map1
  store i64 %p8Z$_37foldr, i64* %eptr88951                                           ; *eptr88951 = %p8Z$_37foldr
  store i64 %cont83598, i64* %eptr88952                                              ; *eptr88952 = %cont83598
  %eptr88945 = getelementptr inbounds i64, i64* %cloptr88944, i64 0                  ; &cloptr88944[0]
  %f88953 = ptrtoint void(i64,i64)* @lam86227 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88953, i64* %eptr88945                                                 ; store fptr
  %arg84514 = ptrtoint i64* %cloptr88944 to i64                                      ; closure cast; i64* -> i64
  %cloptr88954 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88955 = getelementptr inbounds i64, i64* %cloptr88954, i64 0                  ; &cloptr88954[0]
  %f88956 = ptrtoint void(i64,i64)* @lam86199 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88956, i64* %eptr88955                                                 ; store fptr
  %arg84513 = ptrtoint i64* %cloptr88954 to i64                                      ; closure cast; i64* -> i64
  %arg84512 = call i64 @const_init_false()                                           ; quoted #f
  %rva85719 = add i64 0, 0                                                           ; quoted ()
  %rva85718 = call i64 @prim_cons(i64 %eq3$lsts, i64 %rva85719)                      ; call prim_cons
  %rva85717 = call i64 @prim_cons(i64 %arg84512, i64 %rva85718)                      ; call prim_cons
  %rva85716 = call i64 @prim_cons(i64 %arg84513, i64 %rva85717)                      ; call prim_cons
  %rva85715 = call i64 @prim_cons(i64 %arg84514, i64 %rva85716)                      ; call prim_cons
  %cloptr88957 = inttoptr i64 %WRN$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr88958 = getelementptr inbounds i64, i64* %cloptr88957, i64 0                 ; &cloptr88957[0]
  %f88960 = load i64, i64* %i0ptr88958, align 8                                      ; load; *i0ptr88958
  %fptr88959 = inttoptr i64 %f88960 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88959(i64 %WRN$_37foldr1, i64 %rva85715)            ; tail call
  ret void
}


define void @lam86227(i64 %env86228, i64 %rvp85703) {
  %envptr88961 = inttoptr i64 %env86228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88962 = getelementptr inbounds i64, i64* %envptr88961, i64 7                ; &envptr88961[7]
  %cont83598 = load i64, i64* %envptr88962, align 8                                  ; load; *envptr88962
  %envptr88963 = inttoptr i64 %env86228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88964 = getelementptr inbounds i64, i64* %envptr88963, i64 6                ; &envptr88963[6]
  %p8Z$_37foldr = load i64, i64* %envptr88964, align 8                               ; load; *envptr88964
  %envptr88965 = inttoptr i64 %env86228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88966 = getelementptr inbounds i64, i64* %envptr88965, i64 5                ; &envptr88965[5]
  %XLr$_37map1 = load i64, i64* %envptr88966, align 8                                ; load; *envptr88966
  %envptr88967 = inttoptr i64 %env86228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88968 = getelementptr inbounds i64, i64* %envptr88967, i64 4                ; &envptr88967[4]
  %eq3$lsts = load i64, i64* %envptr88968, align 8                                   ; load; *envptr88968
  %envptr88969 = inttoptr i64 %env86228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88970 = getelementptr inbounds i64, i64* %envptr88969, i64 3                ; &envptr88969[3]
  %DKa$acc = load i64, i64* %envptr88970, align 8                                    ; load; *envptr88970
  %envptr88971 = inttoptr i64 %env86228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88972 = getelementptr inbounds i64, i64* %envptr88971, i64 2                ; &envptr88971[2]
  %wUs$_37foldl = load i64, i64* %envptr88972, align 8                               ; load; *envptr88972
  %envptr88973 = inttoptr i64 %env86228 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr88974 = getelementptr inbounds i64, i64* %envptr88973, i64 1                ; &envptr88973[1]
  %Fyf$f = load i64, i64* %envptr88974, align 8                                      ; load; *envptr88974
  %_9583602 = call i64 @prim_car(i64 %rvp85703)                                      ; call prim_car
  %rvp85702 = call i64 @prim_cdr(i64 %rvp85703)                                      ; call prim_cdr
  %a83311 = call i64 @prim_car(i64 %rvp85702)                                        ; call prim_car
  %na85647 = call i64 @prim_cdr(i64 %rvp85702)                                       ; call prim_cdr
  %cmp88975 = icmp eq i64 %a83311, 15                                                ; false?
  br i1 %cmp88975, label %else88977, label %then88976                                ; if

then88976:
  %arg84517 = add i64 0, 0                                                           ; quoted ()
  %rva85650 = add i64 0, 0                                                           ; quoted ()
  %rva85649 = call i64 @prim_cons(i64 %DKa$acc, i64 %rva85650)                       ; call prim_cons
  %rva85648 = call i64 @prim_cons(i64 %arg84517, i64 %rva85649)                      ; call prim_cons
  %cloptr88978 = inttoptr i64 %cont83598 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr88979 = getelementptr inbounds i64, i64* %cloptr88978, i64 0                 ; &cloptr88978[0]
  %f88981 = load i64, i64* %i0ptr88979, align 8                                      ; load; *i0ptr88979
  %fptr88980 = inttoptr i64 %f88981 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88980(i64 %cont83598, i64 %rva85648)                ; tail call
  ret void

else88977:
  %cloptr88982 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr88984 = getelementptr inbounds i64, i64* %cloptr88982, i64 1                  ; &eptr88984[1]
  %eptr88985 = getelementptr inbounds i64, i64* %cloptr88982, i64 2                  ; &eptr88985[2]
  %eptr88986 = getelementptr inbounds i64, i64* %cloptr88982, i64 3                  ; &eptr88986[3]
  %eptr88987 = getelementptr inbounds i64, i64* %cloptr88982, i64 4                  ; &eptr88987[4]
  %eptr88988 = getelementptr inbounds i64, i64* %cloptr88982, i64 5                  ; &eptr88988[5]
  %eptr88989 = getelementptr inbounds i64, i64* %cloptr88982, i64 6                  ; &eptr88989[6]
  %eptr88990 = getelementptr inbounds i64, i64* %cloptr88982, i64 7                  ; &eptr88990[7]
  store i64 %Fyf$f, i64* %eptr88984                                                  ; *eptr88984 = %Fyf$f
  store i64 %wUs$_37foldl, i64* %eptr88985                                           ; *eptr88985 = %wUs$_37foldl
  store i64 %DKa$acc, i64* %eptr88986                                                ; *eptr88986 = %DKa$acc
  store i64 %eq3$lsts, i64* %eptr88987                                               ; *eptr88987 = %eq3$lsts
  store i64 %XLr$_37map1, i64* %eptr88988                                            ; *eptr88988 = %XLr$_37map1
  store i64 %p8Z$_37foldr, i64* %eptr88989                                           ; *eptr88989 = %p8Z$_37foldr
  store i64 %cont83598, i64* %eptr88990                                              ; *eptr88990 = %cont83598
  %eptr88983 = getelementptr inbounds i64, i64* %cloptr88982, i64 0                  ; &cloptr88982[0]
  %f88991 = ptrtoint void(i64,i64)* @lam86225 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88991, i64* %eptr88983                                                 ; store fptr
  %arg84521 = ptrtoint i64* %cloptr88982 to i64                                      ; closure cast; i64* -> i64
  %cloptr88992 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr88993 = getelementptr inbounds i64, i64* %cloptr88992, i64 0                  ; &cloptr88992[0]
  %f88994 = ptrtoint void(i64,i64)* @lam86206 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f88994, i64* %eptr88993                                                 ; store fptr
  %arg84520 = ptrtoint i64* %cloptr88992 to i64                                      ; closure cast; i64* -> i64
  %rva85701 = add i64 0, 0                                                           ; quoted ()
  %rva85700 = call i64 @prim_cons(i64 %eq3$lsts, i64 %rva85701)                      ; call prim_cons
  %rva85699 = call i64 @prim_cons(i64 %arg84520, i64 %rva85700)                      ; call prim_cons
  %rva85698 = call i64 @prim_cons(i64 %arg84521, i64 %rva85699)                      ; call prim_cons
  %cloptr88995 = inttoptr i64 %XLr$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr88996 = getelementptr inbounds i64, i64* %cloptr88995, i64 0                 ; &cloptr88995[0]
  %f88998 = load i64, i64* %i0ptr88996, align 8                                      ; load; *i0ptr88996
  %fptr88997 = inttoptr i64 %f88998 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr88997(i64 %XLr$_37map1, i64 %rva85698)              ; tail call
  ret void
}


define void @lam86225(i64 %env86226, i64 %rvp85690) {
  %envptr88999 = inttoptr i64 %env86226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89000 = getelementptr inbounds i64, i64* %envptr88999, i64 7                ; &envptr88999[7]
  %cont83598 = load i64, i64* %envptr89000, align 8                                  ; load; *envptr89000
  %envptr89001 = inttoptr i64 %env86226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89002 = getelementptr inbounds i64, i64* %envptr89001, i64 6                ; &envptr89001[6]
  %p8Z$_37foldr = load i64, i64* %envptr89002, align 8                               ; load; *envptr89002
  %envptr89003 = inttoptr i64 %env86226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89004 = getelementptr inbounds i64, i64* %envptr89003, i64 5                ; &envptr89003[5]
  %XLr$_37map1 = load i64, i64* %envptr89004, align 8                                ; load; *envptr89004
  %envptr89005 = inttoptr i64 %env86226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89006 = getelementptr inbounds i64, i64* %envptr89005, i64 4                ; &envptr89005[4]
  %eq3$lsts = load i64, i64* %envptr89006, align 8                                   ; load; *envptr89006
  %envptr89007 = inttoptr i64 %env86226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89008 = getelementptr inbounds i64, i64* %envptr89007, i64 3                ; &envptr89007[3]
  %DKa$acc = load i64, i64* %envptr89008, align 8                                    ; load; *envptr89008
  %envptr89009 = inttoptr i64 %env86226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89010 = getelementptr inbounds i64, i64* %envptr89009, i64 2                ; &envptr89009[2]
  %wUs$_37foldl = load i64, i64* %envptr89010, align 8                               ; load; *envptr89010
  %envptr89011 = inttoptr i64 %env86226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89012 = getelementptr inbounds i64, i64* %envptr89011, i64 1                ; &envptr89011[1]
  %Fyf$f = load i64, i64* %envptr89012, align 8                                      ; load; *envptr89012
  %_9583603 = call i64 @prim_car(i64 %rvp85690)                                      ; call prim_car
  %rvp85689 = call i64 @prim_cdr(i64 %rvp85690)                                      ; call prim_cdr
  %GM3$lsts_43 = call i64 @prim_car(i64 %rvp85689)                                   ; call prim_car
  %na85652 = call i64 @prim_cdr(i64 %rvp85689)                                       ; call prim_cdr
  %cloptr89013 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89015 = getelementptr inbounds i64, i64* %cloptr89013, i64 1                  ; &eptr89015[1]
  %eptr89016 = getelementptr inbounds i64, i64* %cloptr89013, i64 2                  ; &eptr89016[2]
  %eptr89017 = getelementptr inbounds i64, i64* %cloptr89013, i64 3                  ; &eptr89017[3]
  %eptr89018 = getelementptr inbounds i64, i64* %cloptr89013, i64 4                  ; &eptr89018[4]
  %eptr89019 = getelementptr inbounds i64, i64* %cloptr89013, i64 5                  ; &eptr89019[5]
  %eptr89020 = getelementptr inbounds i64, i64* %cloptr89013, i64 6                  ; &eptr89020[6]
  store i64 %Fyf$f, i64* %eptr89015                                                  ; *eptr89015 = %Fyf$f
  store i64 %wUs$_37foldl, i64* %eptr89016                                           ; *eptr89016 = %wUs$_37foldl
  store i64 %DKa$acc, i64* %eptr89017                                                ; *eptr89017 = %DKa$acc
  store i64 %p8Z$_37foldr, i64* %eptr89018                                           ; *eptr89018 = %p8Z$_37foldr
  store i64 %GM3$lsts_43, i64* %eptr89019                                            ; *eptr89019 = %GM3$lsts_43
  store i64 %cont83598, i64* %eptr89020                                              ; *eptr89020 = %cont83598
  %eptr89014 = getelementptr inbounds i64, i64* %cloptr89013, i64 0                  ; &cloptr89013[0]
  %f89021 = ptrtoint void(i64,i64)* @lam86223 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89021, i64* %eptr89014                                                 ; store fptr
  %arg84525 = ptrtoint i64* %cloptr89013 to i64                                      ; closure cast; i64* -> i64
  %cloptr89022 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89023 = getelementptr inbounds i64, i64* %cloptr89022, i64 0                  ; &cloptr89022[0]
  %f89024 = ptrtoint void(i64,i64)* @lam86211 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89024, i64* %eptr89023                                                 ; store fptr
  %arg84524 = ptrtoint i64* %cloptr89022 to i64                                      ; closure cast; i64* -> i64
  %rva85688 = add i64 0, 0                                                           ; quoted ()
  %rva85687 = call i64 @prim_cons(i64 %eq3$lsts, i64 %rva85688)                      ; call prim_cons
  %rva85686 = call i64 @prim_cons(i64 %arg84524, i64 %rva85687)                      ; call prim_cons
  %rva85685 = call i64 @prim_cons(i64 %arg84525, i64 %rva85686)                      ; call prim_cons
  %cloptr89025 = inttoptr i64 %XLr$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89026 = getelementptr inbounds i64, i64* %cloptr89025, i64 0                 ; &cloptr89025[0]
  %f89028 = load i64, i64* %i0ptr89026, align 8                                      ; load; *i0ptr89026
  %fptr89027 = inttoptr i64 %f89028 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89027(i64 %XLr$_37map1, i64 %rva85685)              ; tail call
  ret void
}


define void @lam86223(i64 %env86224, i64 %rvp85677) {
  %envptr89029 = inttoptr i64 %env86224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89030 = getelementptr inbounds i64, i64* %envptr89029, i64 6                ; &envptr89029[6]
  %cont83598 = load i64, i64* %envptr89030, align 8                                  ; load; *envptr89030
  %envptr89031 = inttoptr i64 %env86224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89032 = getelementptr inbounds i64, i64* %envptr89031, i64 5                ; &envptr89031[5]
  %GM3$lsts_43 = load i64, i64* %envptr89032, align 8                                ; load; *envptr89032
  %envptr89033 = inttoptr i64 %env86224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89034 = getelementptr inbounds i64, i64* %envptr89033, i64 4                ; &envptr89033[4]
  %p8Z$_37foldr = load i64, i64* %envptr89034, align 8                               ; load; *envptr89034
  %envptr89035 = inttoptr i64 %env86224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89036 = getelementptr inbounds i64, i64* %envptr89035, i64 3                ; &envptr89035[3]
  %DKa$acc = load i64, i64* %envptr89036, align 8                                    ; load; *envptr89036
  %envptr89037 = inttoptr i64 %env86224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89038 = getelementptr inbounds i64, i64* %envptr89037, i64 2                ; &envptr89037[2]
  %wUs$_37foldl = load i64, i64* %envptr89038, align 8                               ; load; *envptr89038
  %envptr89039 = inttoptr i64 %env86224 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89040 = getelementptr inbounds i64, i64* %envptr89039, i64 1                ; &envptr89039[1]
  %Fyf$f = load i64, i64* %envptr89040, align 8                                      ; load; *envptr89040
  %_9583604 = call i64 @prim_car(i64 %rvp85677)                                      ; call prim_car
  %rvp85676 = call i64 @prim_cdr(i64 %rvp85677)                                      ; call prim_cdr
  %a7M$vs = call i64 @prim_car(i64 %rvp85676)                                        ; call prim_car
  %na85654 = call i64 @prim_cdr(i64 %rvp85676)                                       ; call prim_cdr
  %arg84527 = add i64 0, 0                                                           ; quoted ()
  %a83312 = call i64 @prim_cons(i64 %DKa$acc, i64 %arg84527)                         ; call prim_cons
  %cloptr89041 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89043 = getelementptr inbounds i64, i64* %cloptr89041, i64 1                  ; &eptr89043[1]
  %eptr89044 = getelementptr inbounds i64, i64* %cloptr89041, i64 2                  ; &eptr89044[2]
  %eptr89045 = getelementptr inbounds i64, i64* %cloptr89041, i64 3                  ; &eptr89045[3]
  %eptr89046 = getelementptr inbounds i64, i64* %cloptr89041, i64 4                  ; &eptr89046[4]
  store i64 %Fyf$f, i64* %eptr89043                                                  ; *eptr89043 = %Fyf$f
  store i64 %wUs$_37foldl, i64* %eptr89044                                           ; *eptr89044 = %wUs$_37foldl
  store i64 %GM3$lsts_43, i64* %eptr89045                                            ; *eptr89045 = %GM3$lsts_43
  store i64 %cont83598, i64* %eptr89046                                              ; *eptr89046 = %cont83598
  %eptr89042 = getelementptr inbounds i64, i64* %cloptr89041, i64 0                  ; &cloptr89041[0]
  %f89047 = ptrtoint void(i64,i64)* @lam86220 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89047, i64* %eptr89042                                                 ; store fptr
  %arg84532 = ptrtoint i64* %cloptr89041 to i64                                      ; closure cast; i64* -> i64
  %cloptr89048 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89049 = getelementptr inbounds i64, i64* %cloptr89048, i64 0                  ; &cloptr89048[0]
  %f89050 = ptrtoint void(i64,i64)* @lam86216 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89050, i64* %eptr89049                                                 ; store fptr
  %arg84531 = ptrtoint i64* %cloptr89048 to i64                                      ; closure cast; i64* -> i64
  %rva85675 = add i64 0, 0                                                           ; quoted ()
  %rva85674 = call i64 @prim_cons(i64 %a7M$vs, i64 %rva85675)                        ; call prim_cons
  %rva85673 = call i64 @prim_cons(i64 %a83312, i64 %rva85674)                        ; call prim_cons
  %rva85672 = call i64 @prim_cons(i64 %arg84531, i64 %rva85673)                      ; call prim_cons
  %rva85671 = call i64 @prim_cons(i64 %arg84532, i64 %rva85672)                      ; call prim_cons
  %cloptr89051 = inttoptr i64 %p8Z$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr89052 = getelementptr inbounds i64, i64* %cloptr89051, i64 0                 ; &cloptr89051[0]
  %f89054 = load i64, i64* %i0ptr89052, align 8                                      ; load; *i0ptr89052
  %fptr89053 = inttoptr i64 %f89054 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89053(i64 %p8Z$_37foldr, i64 %rva85671)             ; tail call
  ret void
}


define void @lam86220(i64 %env86221, i64 %rvp85662) {
  %envptr89055 = inttoptr i64 %env86221 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89056 = getelementptr inbounds i64, i64* %envptr89055, i64 4                ; &envptr89055[4]
  %cont83598 = load i64, i64* %envptr89056, align 8                                  ; load; *envptr89056
  %envptr89057 = inttoptr i64 %env86221 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89058 = getelementptr inbounds i64, i64* %envptr89057, i64 3                ; &envptr89057[3]
  %GM3$lsts_43 = load i64, i64* %envptr89058, align 8                                ; load; *envptr89058
  %envptr89059 = inttoptr i64 %env86221 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89060 = getelementptr inbounds i64, i64* %envptr89059, i64 2                ; &envptr89059[2]
  %wUs$_37foldl = load i64, i64* %envptr89060, align 8                               ; load; *envptr89060
  %envptr89061 = inttoptr i64 %env86221 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89062 = getelementptr inbounds i64, i64* %envptr89061, i64 1                ; &envptr89061[1]
  %Fyf$f = load i64, i64* %envptr89062, align 8                                      ; load; *envptr89062
  %_9583607 = call i64 @prim_car(i64 %rvp85662)                                      ; call prim_car
  %rvp85661 = call i64 @prim_cdr(i64 %rvp85662)                                      ; call prim_cdr
  %a83313 = call i64 @prim_car(i64 %rvp85661)                                        ; call prim_car
  %na85656 = call i64 @prim_cdr(i64 %rvp85661)                                       ; call prim_cdr
  %cloptr89063 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89065 = getelementptr inbounds i64, i64* %cloptr89063, i64 1                  ; &eptr89065[1]
  %eptr89066 = getelementptr inbounds i64, i64* %cloptr89063, i64 2                  ; &eptr89066[2]
  %eptr89067 = getelementptr inbounds i64, i64* %cloptr89063, i64 3                  ; &eptr89067[3]
  %eptr89068 = getelementptr inbounds i64, i64* %cloptr89063, i64 4                  ; &eptr89068[4]
  store i64 %Fyf$f, i64* %eptr89065                                                  ; *eptr89065 = %Fyf$f
  store i64 %wUs$_37foldl, i64* %eptr89066                                           ; *eptr89066 = %wUs$_37foldl
  store i64 %GM3$lsts_43, i64* %eptr89067                                            ; *eptr89067 = %GM3$lsts_43
  store i64 %cont83598, i64* %eptr89068                                              ; *eptr89068 = %cont83598
  %eptr89064 = getelementptr inbounds i64, i64* %cloptr89063, i64 0                  ; &cloptr89063[0]
  %f89069 = ptrtoint void(i64,i64)* @lam86218 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89069, i64* %eptr89064                                                 ; store fptr
  %arg84535 = ptrtoint i64* %cloptr89063 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst83608 = call i64 @prim_cons(i64 %arg84535, i64 %a83313)                  ; call prim_cons
  %cloptr89070 = inttoptr i64 %Fyf$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89071 = getelementptr inbounds i64, i64* %cloptr89070, i64 0                 ; &cloptr89070[0]
  %f89073 = load i64, i64* %i0ptr89071, align 8                                      ; load; *i0ptr89071
  %fptr89072 = inttoptr i64 %f89073 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89072(i64 %Fyf$f, i64 %cps_45lst83608)              ; tail call
  ret void
}


define void @lam86218(i64 %env86219, i64 %rvp85660) {
  %envptr89074 = inttoptr i64 %env86219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89075 = getelementptr inbounds i64, i64* %envptr89074, i64 4                ; &envptr89074[4]
  %cont83598 = load i64, i64* %envptr89075, align 8                                  ; load; *envptr89075
  %envptr89076 = inttoptr i64 %env86219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89077 = getelementptr inbounds i64, i64* %envptr89076, i64 3                ; &envptr89076[3]
  %GM3$lsts_43 = load i64, i64* %envptr89077, align 8                                ; load; *envptr89077
  %envptr89078 = inttoptr i64 %env86219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89079 = getelementptr inbounds i64, i64* %envptr89078, i64 2                ; &envptr89078[2]
  %wUs$_37foldl = load i64, i64* %envptr89079, align 8                               ; load; *envptr89079
  %envptr89080 = inttoptr i64 %env86219 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89081 = getelementptr inbounds i64, i64* %envptr89080, i64 1                ; &envptr89080[1]
  %Fyf$f = load i64, i64* %envptr89081, align 8                                      ; load; *envptr89081
  %_9583605 = call i64 @prim_car(i64 %rvp85660)                                      ; call prim_car
  %rvp85659 = call i64 @prim_cdr(i64 %rvp85660)                                      ; call prim_cdr
  %vVd$acc_43 = call i64 @prim_car(i64 %rvp85659)                                    ; call prim_car
  %na85658 = call i64 @prim_cdr(i64 %rvp85659)                                       ; call prim_cdr
  %a83314 = call i64 @prim_cons(i64 %vVd$acc_43, i64 %GM3$lsts_43)                   ; call prim_cons
  %a83315 = call i64 @prim_cons(i64 %Fyf$f, i64 %a83314)                             ; call prim_cons
  %cps_45lst83606 = call i64 @prim_cons(i64 %cont83598, i64 %a83315)                 ; call prim_cons
  %cloptr89082 = inttoptr i64 %wUs$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr89083 = getelementptr inbounds i64, i64* %cloptr89082, i64 0                 ; &cloptr89082[0]
  %f89085 = load i64, i64* %i0ptr89083, align 8                                      ; load; *i0ptr89083
  %fptr89084 = inttoptr i64 %f89085 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89084(i64 %wUs$_37foldl, i64 %cps_45lst83606)       ; tail call
  ret void
}


define void @lam86216(i64 %env86217, i64 %rvp85670) {
  %cont83609 = call i64 @prim_car(i64 %rvp85670)                                     ; call prim_car
  %rvp85669 = call i64 @prim_cdr(i64 %rvp85670)                                      ; call prim_cdr
  %nbS$a = call i64 @prim_car(i64 %rvp85669)                                         ; call prim_car
  %rvp85668 = call i64 @prim_cdr(i64 %rvp85669)                                      ; call prim_cdr
  %Ers$b = call i64 @prim_car(i64 %rvp85668)                                         ; call prim_car
  %na85664 = call i64 @prim_cdr(i64 %rvp85668)                                       ; call prim_cdr
  %retprim83610 = call i64 @prim_cons(i64 %nbS$a, i64 %Ers$b)                        ; call prim_cons
  %arg84545 = add i64 0, 0                                                           ; quoted ()
  %rva85667 = add i64 0, 0                                                           ; quoted ()
  %rva85666 = call i64 @prim_cons(i64 %retprim83610, i64 %rva85667)                  ; call prim_cons
  %rva85665 = call i64 @prim_cons(i64 %arg84545, i64 %rva85666)                      ; call prim_cons
  %cloptr89086 = inttoptr i64 %cont83609 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89087 = getelementptr inbounds i64, i64* %cloptr89086, i64 0                 ; &cloptr89086[0]
  %f89089 = load i64, i64* %i0ptr89087, align 8                                      ; load; *i0ptr89087
  %fptr89088 = inttoptr i64 %f89089 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89088(i64 %cont83609, i64 %rva85665)                ; tail call
  ret void
}


define void @lam86211(i64 %env86212, i64 %rvp85684) {
  %cont83611 = call i64 @prim_car(i64 %rvp85684)                                     ; call prim_car
  %rvp85683 = call i64 @prim_cdr(i64 %rvp85684)                                      ; call prim_cdr
  %zhQ$x = call i64 @prim_car(i64 %rvp85683)                                         ; call prim_car
  %na85679 = call i64 @prim_cdr(i64 %rvp85683)                                       ; call prim_cdr
  %retprim83612 = call i64 @prim_car(i64 %zhQ$x)                                     ; call prim_car
  %arg84549 = add i64 0, 0                                                           ; quoted ()
  %rva85682 = add i64 0, 0                                                           ; quoted ()
  %rva85681 = call i64 @prim_cons(i64 %retprim83612, i64 %rva85682)                  ; call prim_cons
  %rva85680 = call i64 @prim_cons(i64 %arg84549, i64 %rva85681)                      ; call prim_cons
  %cloptr89090 = inttoptr i64 %cont83611 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89091 = getelementptr inbounds i64, i64* %cloptr89090, i64 0                 ; &cloptr89090[0]
  %f89093 = load i64, i64* %i0ptr89091, align 8                                      ; load; *i0ptr89091
  %fptr89092 = inttoptr i64 %f89093 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89092(i64 %cont83611, i64 %rva85680)                ; tail call
  ret void
}


define void @lam86206(i64 %env86207, i64 %rvp85697) {
  %cont83613 = call i64 @prim_car(i64 %rvp85697)                                     ; call prim_car
  %rvp85696 = call i64 @prim_cdr(i64 %rvp85697)                                      ; call prim_cdr
  %Lr1$x = call i64 @prim_car(i64 %rvp85696)                                         ; call prim_car
  %na85692 = call i64 @prim_cdr(i64 %rvp85696)                                       ; call prim_cdr
  %retprim83614 = call i64 @prim_cdr(i64 %Lr1$x)                                     ; call prim_cdr
  %arg84553 = add i64 0, 0                                                           ; quoted ()
  %rva85695 = add i64 0, 0                                                           ; quoted ()
  %rva85694 = call i64 @prim_cons(i64 %retprim83614, i64 %rva85695)                  ; call prim_cons
  %rva85693 = call i64 @prim_cons(i64 %arg84553, i64 %rva85694)                      ; call prim_cons
  %cloptr89094 = inttoptr i64 %cont83613 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89095 = getelementptr inbounds i64, i64* %cloptr89094, i64 0                 ; &cloptr89094[0]
  %f89097 = load i64, i64* %i0ptr89095, align 8                                      ; load; *i0ptr89095
  %fptr89096 = inttoptr i64 %f89097 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89096(i64 %cont83613, i64 %rva85693)                ; tail call
  ret void
}


define void @lam86199(i64 %env86200, i64 %rvp85714) {
  %cont83615 = call i64 @prim_car(i64 %rvp85714)                                     ; call prim_car
  %rvp85713 = call i64 @prim_cdr(i64 %rvp85714)                                      ; call prim_cdr
  %q4x$lst = call i64 @prim_car(i64 %rvp85713)                                       ; call prim_car
  %rvp85712 = call i64 @prim_cdr(i64 %rvp85713)                                      ; call prim_cdr
  %Fs2$b = call i64 @prim_car(i64 %rvp85712)                                         ; call prim_car
  %na85705 = call i64 @prim_cdr(i64 %rvp85712)                                       ; call prim_cdr
  %cmp89098 = icmp eq i64 %Fs2$b, 15                                                 ; false?
  br i1 %cmp89098, label %else89100, label %then89099                                ; if

then89099:
  %arg84556 = add i64 0, 0                                                           ; quoted ()
  %rva85708 = add i64 0, 0                                                           ; quoted ()
  %rva85707 = call i64 @prim_cons(i64 %Fs2$b, i64 %rva85708)                         ; call prim_cons
  %rva85706 = call i64 @prim_cons(i64 %arg84556, i64 %rva85707)                      ; call prim_cons
  %cloptr89101 = inttoptr i64 %cont83615 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89102 = getelementptr inbounds i64, i64* %cloptr89101, i64 0                 ; &cloptr89101[0]
  %f89104 = load i64, i64* %i0ptr89102, align 8                                      ; load; *i0ptr89102
  %fptr89103 = inttoptr i64 %f89104 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89103(i64 %cont83615, i64 %rva85706)                ; tail call
  ret void

else89100:
  %retprim83616 = call i64 @prim_null_63(i64 %q4x$lst)                               ; call prim_null_63
  %arg84560 = add i64 0, 0                                                           ; quoted ()
  %rva85711 = add i64 0, 0                                                           ; quoted ()
  %rva85710 = call i64 @prim_cons(i64 %retprim83616, i64 %rva85711)                  ; call prim_cons
  %rva85709 = call i64 @prim_cons(i64 %arg84560, i64 %rva85710)                      ; call prim_cons
  %cloptr89105 = inttoptr i64 %cont83615 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89106 = getelementptr inbounds i64, i64* %cloptr89105, i64 0                 ; &cloptr89105[0]
  %f89108 = load i64, i64* %i0ptr89106, align 8                                      ; load; *i0ptr89106
  %fptr89107 = inttoptr i64 %f89108 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89107(i64 %cont83615, i64 %rva85709)                ; tail call
  ret void
}


define void @lam86185(i64 %env86186, i64 %rvp85834) {
  %envptr89109 = inttoptr i64 %env86186 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89110 = getelementptr inbounds i64, i64* %envptr89109, i64 2                ; &envptr89109[2]
  %WRN$_37foldr1 = load i64, i64* %envptr89110, align 8                              ; load; *envptr89110
  %envptr89111 = inttoptr i64 %env86186 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89112 = getelementptr inbounds i64, i64* %envptr89111, i64 1                ; &envptr89111[1]
  %PPb$_37map1 = load i64, i64* %envptr89112, align 8                                ; load; *envptr89112
  %cont83619 = call i64 @prim_car(i64 %rvp85834)                                     ; call prim_car
  %rvp85833 = call i64 @prim_cdr(i64 %rvp85834)                                      ; call prim_cdr
  %CLp$_37foldr = call i64 @prim_car(i64 %rvp85833)                                  ; call prim_car
  %na85741 = call i64 @prim_cdr(i64 %rvp85833)                                       ; call prim_cdr
  %arg84563 = add i64 0, 0                                                           ; quoted ()
  %cloptr89113 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr89115 = getelementptr inbounds i64, i64* %cloptr89113, i64 1                  ; &eptr89115[1]
  %eptr89116 = getelementptr inbounds i64, i64* %cloptr89113, i64 2                  ; &eptr89116[2]
  %eptr89117 = getelementptr inbounds i64, i64* %cloptr89113, i64 3                  ; &eptr89117[3]
  store i64 %PPb$_37map1, i64* %eptr89115                                            ; *eptr89115 = %PPb$_37map1
  store i64 %WRN$_37foldr1, i64* %eptr89116                                          ; *eptr89116 = %WRN$_37foldr1
  store i64 %CLp$_37foldr, i64* %eptr89117                                           ; *eptr89117 = %CLp$_37foldr
  %eptr89114 = getelementptr inbounds i64, i64* %cloptr89113, i64 0                  ; &cloptr89113[0]
  %f89118 = ptrtoint void(i64,i64)* @lam86182 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89118, i64* %eptr89114                                                 ; store fptr
  %arg84562 = ptrtoint i64* %cloptr89113 to i64                                      ; closure cast; i64* -> i64
  %rva85832 = add i64 0, 0                                                           ; quoted ()
  %rva85831 = call i64 @prim_cons(i64 %arg84562, i64 %rva85832)                      ; call prim_cons
  %rva85830 = call i64 @prim_cons(i64 %arg84563, i64 %rva85831)                      ; call prim_cons
  %cloptr89119 = inttoptr i64 %cont83619 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89120 = getelementptr inbounds i64, i64* %cloptr89119, i64 0                 ; &cloptr89119[0]
  %f89122 = load i64, i64* %i0ptr89120, align 8                                      ; load; *i0ptr89120
  %fptr89121 = inttoptr i64 %f89122 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89121(i64 %cont83619, i64 %rva85830)                ; tail call
  ret void
}


define void @lam86182(i64 %env86183, i64 %Ynq$args83621) {
  %envptr89123 = inttoptr i64 %env86183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89124 = getelementptr inbounds i64, i64* %envptr89123, i64 3                ; &envptr89123[3]
  %CLp$_37foldr = load i64, i64* %envptr89124, align 8                               ; load; *envptr89124
  %envptr89125 = inttoptr i64 %env86183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89126 = getelementptr inbounds i64, i64* %envptr89125, i64 2                ; &envptr89125[2]
  %WRN$_37foldr1 = load i64, i64* %envptr89126, align 8                              ; load; *envptr89126
  %envptr89127 = inttoptr i64 %env86183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89128 = getelementptr inbounds i64, i64* %envptr89127, i64 1                ; &envptr89127[1]
  %PPb$_37map1 = load i64, i64* %envptr89128, align 8                                ; load; *envptr89128
  %cont83620 = call i64 @prim_car(i64 %Ynq$args83621)                                ; call prim_car
  %Ynq$args = call i64 @prim_cdr(i64 %Ynq$args83621)                                 ; call prim_cdr
  %MEE$f = call i64 @prim_car(i64 %Ynq$args)                                         ; call prim_car
  %a83295 = call i64 @prim_cdr(i64 %Ynq$args)                                        ; call prim_cdr
  %retprim83640 = call i64 @prim_car(i64 %a83295)                                    ; call prim_car
  %cloptr89129 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89131 = getelementptr inbounds i64, i64* %cloptr89129, i64 1                  ; &eptr89131[1]
  %eptr89132 = getelementptr inbounds i64, i64* %cloptr89129, i64 2                  ; &eptr89132[2]
  %eptr89133 = getelementptr inbounds i64, i64* %cloptr89129, i64 3                  ; &eptr89133[3]
  %eptr89134 = getelementptr inbounds i64, i64* %cloptr89129, i64 4                  ; &eptr89134[4]
  %eptr89135 = getelementptr inbounds i64, i64* %cloptr89129, i64 5                  ; &eptr89135[5]
  %eptr89136 = getelementptr inbounds i64, i64* %cloptr89129, i64 6                  ; &eptr89136[6]
  store i64 %PPb$_37map1, i64* %eptr89131                                            ; *eptr89131 = %PPb$_37map1
  store i64 %Ynq$args, i64* %eptr89132                                               ; *eptr89132 = %Ynq$args
  store i64 %WRN$_37foldr1, i64* %eptr89133                                          ; *eptr89133 = %WRN$_37foldr1
  store i64 %cont83620, i64* %eptr89134                                              ; *eptr89134 = %cont83620
  store i64 %CLp$_37foldr, i64* %eptr89135                                           ; *eptr89135 = %CLp$_37foldr
  store i64 %MEE$f, i64* %eptr89136                                                  ; *eptr89136 = %MEE$f
  %eptr89130 = getelementptr inbounds i64, i64* %cloptr89129, i64 0                  ; &cloptr89129[0]
  %f89137 = ptrtoint void(i64,i64)* @lam86180 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89137, i64* %eptr89130                                                 ; store fptr
  %arg84572 = ptrtoint i64* %cloptr89129 to i64                                      ; closure cast; i64* -> i64
  %arg84571 = add i64 0, 0                                                           ; quoted ()
  %rva85829 = add i64 0, 0                                                           ; quoted ()
  %rva85828 = call i64 @prim_cons(i64 %retprim83640, i64 %rva85829)                  ; call prim_cons
  %rva85827 = call i64 @prim_cons(i64 %arg84571, i64 %rva85828)                      ; call prim_cons
  %cloptr89138 = inttoptr i64 %arg84572 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89139 = getelementptr inbounds i64, i64* %cloptr89138, i64 0                 ; &cloptr89138[0]
  %f89141 = load i64, i64* %i0ptr89139, align 8                                      ; load; *i0ptr89139
  %fptr89140 = inttoptr i64 %f89141 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89140(i64 %arg84572, i64 %rva85827)                 ; tail call
  ret void
}


define void @lam86180(i64 %env86181, i64 %rvp85826) {
  %envptr89142 = inttoptr i64 %env86181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89143 = getelementptr inbounds i64, i64* %envptr89142, i64 6                ; &envptr89142[6]
  %MEE$f = load i64, i64* %envptr89143, align 8                                      ; load; *envptr89143
  %envptr89144 = inttoptr i64 %env86181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89145 = getelementptr inbounds i64, i64* %envptr89144, i64 5                ; &envptr89144[5]
  %CLp$_37foldr = load i64, i64* %envptr89145, align 8                               ; load; *envptr89145
  %envptr89146 = inttoptr i64 %env86181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89147 = getelementptr inbounds i64, i64* %envptr89146, i64 4                ; &envptr89146[4]
  %cont83620 = load i64, i64* %envptr89147, align 8                                  ; load; *envptr89147
  %envptr89148 = inttoptr i64 %env86181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89149 = getelementptr inbounds i64, i64* %envptr89148, i64 3                ; &envptr89148[3]
  %WRN$_37foldr1 = load i64, i64* %envptr89149, align 8                              ; load; *envptr89149
  %envptr89150 = inttoptr i64 %env86181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89151 = getelementptr inbounds i64, i64* %envptr89150, i64 2                ; &envptr89150[2]
  %Ynq$args = load i64, i64* %envptr89151, align 8                                   ; load; *envptr89151
  %envptr89152 = inttoptr i64 %env86181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89153 = getelementptr inbounds i64, i64* %envptr89152, i64 1                ; &envptr89152[1]
  %PPb$_37map1 = load i64, i64* %envptr89153, align 8                                ; load; *envptr89153
  %_9583622 = call i64 @prim_car(i64 %rvp85826)                                      ; call prim_car
  %rvp85825 = call i64 @prim_cdr(i64 %rvp85826)                                      ; call prim_cdr
  %OQe$acc = call i64 @prim_car(i64 %rvp85825)                                       ; call prim_car
  %na85743 = call i64 @prim_cdr(i64 %rvp85825)                                       ; call prim_cdr
  %a83296 = call i64 @prim_cdr(i64 %Ynq$args)                                        ; call prim_cdr
  %retprim83639 = call i64 @prim_cdr(i64 %a83296)                                    ; call prim_cdr
  %cloptr89154 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89156 = getelementptr inbounds i64, i64* %cloptr89154, i64 1                  ; &eptr89156[1]
  %eptr89157 = getelementptr inbounds i64, i64* %cloptr89154, i64 2                  ; &eptr89157[2]
  %eptr89158 = getelementptr inbounds i64, i64* %cloptr89154, i64 3                  ; &eptr89158[3]
  %eptr89159 = getelementptr inbounds i64, i64* %cloptr89154, i64 4                  ; &eptr89159[4]
  %eptr89160 = getelementptr inbounds i64, i64* %cloptr89154, i64 5                  ; &eptr89160[5]
  %eptr89161 = getelementptr inbounds i64, i64* %cloptr89154, i64 6                  ; &eptr89161[6]
  store i64 %PPb$_37map1, i64* %eptr89156                                            ; *eptr89156 = %PPb$_37map1
  store i64 %OQe$acc, i64* %eptr89157                                                ; *eptr89157 = %OQe$acc
  store i64 %WRN$_37foldr1, i64* %eptr89158                                          ; *eptr89158 = %WRN$_37foldr1
  store i64 %cont83620, i64* %eptr89159                                              ; *eptr89159 = %cont83620
  store i64 %CLp$_37foldr, i64* %eptr89160                                           ; *eptr89160 = %CLp$_37foldr
  store i64 %MEE$f, i64* %eptr89161                                                  ; *eptr89161 = %MEE$f
  %eptr89155 = getelementptr inbounds i64, i64* %cloptr89154, i64 0                  ; &cloptr89154[0]
  %f89162 = ptrtoint void(i64,i64)* @lam86178 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89162, i64* %eptr89155                                                 ; store fptr
  %arg84577 = ptrtoint i64* %cloptr89154 to i64                                      ; closure cast; i64* -> i64
  %arg84576 = add i64 0, 0                                                           ; quoted ()
  %rva85824 = add i64 0, 0                                                           ; quoted ()
  %rva85823 = call i64 @prim_cons(i64 %retprim83639, i64 %rva85824)                  ; call prim_cons
  %rva85822 = call i64 @prim_cons(i64 %arg84576, i64 %rva85823)                      ; call prim_cons
  %cloptr89163 = inttoptr i64 %arg84577 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr89164 = getelementptr inbounds i64, i64* %cloptr89163, i64 0                 ; &cloptr89163[0]
  %f89166 = load i64, i64* %i0ptr89164, align 8                                      ; load; *i0ptr89164
  %fptr89165 = inttoptr i64 %f89166 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89165(i64 %arg84577, i64 %rva85822)                 ; tail call
  ret void
}


define void @lam86178(i64 %env86179, i64 %rvp85821) {
  %envptr89167 = inttoptr i64 %env86179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89168 = getelementptr inbounds i64, i64* %envptr89167, i64 6                ; &envptr89167[6]
  %MEE$f = load i64, i64* %envptr89168, align 8                                      ; load; *envptr89168
  %envptr89169 = inttoptr i64 %env86179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89170 = getelementptr inbounds i64, i64* %envptr89169, i64 5                ; &envptr89169[5]
  %CLp$_37foldr = load i64, i64* %envptr89170, align 8                               ; load; *envptr89170
  %envptr89171 = inttoptr i64 %env86179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89172 = getelementptr inbounds i64, i64* %envptr89171, i64 4                ; &envptr89171[4]
  %cont83620 = load i64, i64* %envptr89172, align 8                                  ; load; *envptr89172
  %envptr89173 = inttoptr i64 %env86179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89174 = getelementptr inbounds i64, i64* %envptr89173, i64 3                ; &envptr89173[3]
  %WRN$_37foldr1 = load i64, i64* %envptr89174, align 8                              ; load; *envptr89174
  %envptr89175 = inttoptr i64 %env86179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89176 = getelementptr inbounds i64, i64* %envptr89175, i64 2                ; &envptr89175[2]
  %OQe$acc = load i64, i64* %envptr89176, align 8                                    ; load; *envptr89176
  %envptr89177 = inttoptr i64 %env86179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89178 = getelementptr inbounds i64, i64* %envptr89177, i64 1                ; &envptr89177[1]
  %PPb$_37map1 = load i64, i64* %envptr89178, align 8                                ; load; *envptr89178
  %_9583623 = call i64 @prim_car(i64 %rvp85821)                                      ; call prim_car
  %rvp85820 = call i64 @prim_cdr(i64 %rvp85821)                                      ; call prim_cdr
  %JPm$lsts = call i64 @prim_car(i64 %rvp85820)                                      ; call prim_car
  %na85745 = call i64 @prim_cdr(i64 %rvp85820)                                       ; call prim_cdr
  %cloptr89179 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89181 = getelementptr inbounds i64, i64* %cloptr89179, i64 1                  ; &eptr89181[1]
  %eptr89182 = getelementptr inbounds i64, i64* %cloptr89179, i64 2                  ; &eptr89182[2]
  %eptr89183 = getelementptr inbounds i64, i64* %cloptr89179, i64 3                  ; &eptr89183[3]
  %eptr89184 = getelementptr inbounds i64, i64* %cloptr89179, i64 4                  ; &eptr89184[4]
  %eptr89185 = getelementptr inbounds i64, i64* %cloptr89179, i64 5                  ; &eptr89185[5]
  %eptr89186 = getelementptr inbounds i64, i64* %cloptr89179, i64 6                  ; &eptr89186[6]
  %eptr89187 = getelementptr inbounds i64, i64* %cloptr89179, i64 7                  ; &eptr89187[7]
  store i64 %PPb$_37map1, i64* %eptr89181                                            ; *eptr89181 = %PPb$_37map1
  store i64 %OQe$acc, i64* %eptr89182                                                ; *eptr89182 = %OQe$acc
  store i64 %WRN$_37foldr1, i64* %eptr89183                                          ; *eptr89183 = %WRN$_37foldr1
  store i64 %cont83620, i64* %eptr89184                                              ; *eptr89184 = %cont83620
  store i64 %CLp$_37foldr, i64* %eptr89185                                           ; *eptr89185 = %CLp$_37foldr
  store i64 %JPm$lsts, i64* %eptr89186                                               ; *eptr89186 = %JPm$lsts
  store i64 %MEE$f, i64* %eptr89187                                                  ; *eptr89187 = %MEE$f
  %eptr89180 = getelementptr inbounds i64, i64* %cloptr89179, i64 0                  ; &cloptr89179[0]
  %f89188 = ptrtoint void(i64,i64)* @lam86176 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89188, i64* %eptr89180                                                 ; store fptr
  %arg84581 = ptrtoint i64* %cloptr89179 to i64                                      ; closure cast; i64* -> i64
  %cloptr89189 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89190 = getelementptr inbounds i64, i64* %cloptr89189, i64 0                  ; &cloptr89189[0]
  %f89191 = ptrtoint void(i64,i64)* @lam86148 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89191, i64* %eptr89190                                                 ; store fptr
  %arg84580 = ptrtoint i64* %cloptr89189 to i64                                      ; closure cast; i64* -> i64
  %arg84579 = call i64 @const_init_false()                                           ; quoted #f
  %rva85819 = add i64 0, 0                                                           ; quoted ()
  %rva85818 = call i64 @prim_cons(i64 %JPm$lsts, i64 %rva85819)                      ; call prim_cons
  %rva85817 = call i64 @prim_cons(i64 %arg84579, i64 %rva85818)                      ; call prim_cons
  %rva85816 = call i64 @prim_cons(i64 %arg84580, i64 %rva85817)                      ; call prim_cons
  %rva85815 = call i64 @prim_cons(i64 %arg84581, i64 %rva85816)                      ; call prim_cons
  %cloptr89192 = inttoptr i64 %WRN$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89193 = getelementptr inbounds i64, i64* %cloptr89192, i64 0                 ; &cloptr89192[0]
  %f89195 = load i64, i64* %i0ptr89193, align 8                                      ; load; *i0ptr89193
  %fptr89194 = inttoptr i64 %f89195 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89194(i64 %WRN$_37foldr1, i64 %rva85815)            ; tail call
  ret void
}


define void @lam86176(i64 %env86177, i64 %rvp85803) {
  %envptr89196 = inttoptr i64 %env86177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89197 = getelementptr inbounds i64, i64* %envptr89196, i64 7                ; &envptr89196[7]
  %MEE$f = load i64, i64* %envptr89197, align 8                                      ; load; *envptr89197
  %envptr89198 = inttoptr i64 %env86177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89199 = getelementptr inbounds i64, i64* %envptr89198, i64 6                ; &envptr89198[6]
  %JPm$lsts = load i64, i64* %envptr89199, align 8                                   ; load; *envptr89199
  %envptr89200 = inttoptr i64 %env86177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89201 = getelementptr inbounds i64, i64* %envptr89200, i64 5                ; &envptr89200[5]
  %CLp$_37foldr = load i64, i64* %envptr89201, align 8                               ; load; *envptr89201
  %envptr89202 = inttoptr i64 %env86177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89203 = getelementptr inbounds i64, i64* %envptr89202, i64 4                ; &envptr89202[4]
  %cont83620 = load i64, i64* %envptr89203, align 8                                  ; load; *envptr89203
  %envptr89204 = inttoptr i64 %env86177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89205 = getelementptr inbounds i64, i64* %envptr89204, i64 3                ; &envptr89204[3]
  %WRN$_37foldr1 = load i64, i64* %envptr89205, align 8                              ; load; *envptr89205
  %envptr89206 = inttoptr i64 %env86177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89207 = getelementptr inbounds i64, i64* %envptr89206, i64 2                ; &envptr89206[2]
  %OQe$acc = load i64, i64* %envptr89207, align 8                                    ; load; *envptr89207
  %envptr89208 = inttoptr i64 %env86177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89209 = getelementptr inbounds i64, i64* %envptr89208, i64 1                ; &envptr89208[1]
  %PPb$_37map1 = load i64, i64* %envptr89209, align 8                                ; load; *envptr89209
  %_9583624 = call i64 @prim_car(i64 %rvp85803)                                      ; call prim_car
  %rvp85802 = call i64 @prim_cdr(i64 %rvp85803)                                      ; call prim_cdr
  %a83297 = call i64 @prim_car(i64 %rvp85802)                                        ; call prim_car
  %na85747 = call i64 @prim_cdr(i64 %rvp85802)                                       ; call prim_cdr
  %cmp89210 = icmp eq i64 %a83297, 15                                                ; false?
  br i1 %cmp89210, label %else89212, label %then89211                                ; if

then89211:
  %arg84584 = add i64 0, 0                                                           ; quoted ()
  %rva85750 = add i64 0, 0                                                           ; quoted ()
  %rva85749 = call i64 @prim_cons(i64 %OQe$acc, i64 %rva85750)                       ; call prim_cons
  %rva85748 = call i64 @prim_cons(i64 %arg84584, i64 %rva85749)                      ; call prim_cons
  %cloptr89213 = inttoptr i64 %cont83620 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89214 = getelementptr inbounds i64, i64* %cloptr89213, i64 0                 ; &cloptr89213[0]
  %f89216 = load i64, i64* %i0ptr89214, align 8                                      ; load; *i0ptr89214
  %fptr89215 = inttoptr i64 %f89216 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89215(i64 %cont83620, i64 %rva85748)                ; tail call
  ret void

else89212:
  %cloptr89217 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr89219 = getelementptr inbounds i64, i64* %cloptr89217, i64 1                  ; &eptr89219[1]
  %eptr89220 = getelementptr inbounds i64, i64* %cloptr89217, i64 2                  ; &eptr89220[2]
  %eptr89221 = getelementptr inbounds i64, i64* %cloptr89217, i64 3                  ; &eptr89221[3]
  %eptr89222 = getelementptr inbounds i64, i64* %cloptr89217, i64 4                  ; &eptr89222[4]
  %eptr89223 = getelementptr inbounds i64, i64* %cloptr89217, i64 5                  ; &eptr89223[5]
  %eptr89224 = getelementptr inbounds i64, i64* %cloptr89217, i64 6                  ; &eptr89224[6]
  %eptr89225 = getelementptr inbounds i64, i64* %cloptr89217, i64 7                  ; &eptr89225[7]
  store i64 %PPb$_37map1, i64* %eptr89219                                            ; *eptr89219 = %PPb$_37map1
  store i64 %OQe$acc, i64* %eptr89220                                                ; *eptr89220 = %OQe$acc
  store i64 %WRN$_37foldr1, i64* %eptr89221                                          ; *eptr89221 = %WRN$_37foldr1
  store i64 %cont83620, i64* %eptr89222                                              ; *eptr89222 = %cont83620
  store i64 %CLp$_37foldr, i64* %eptr89223                                           ; *eptr89223 = %CLp$_37foldr
  store i64 %JPm$lsts, i64* %eptr89224                                               ; *eptr89224 = %JPm$lsts
  store i64 %MEE$f, i64* %eptr89225                                                  ; *eptr89225 = %MEE$f
  %eptr89218 = getelementptr inbounds i64, i64* %cloptr89217, i64 0                  ; &cloptr89217[0]
  %f89226 = ptrtoint void(i64,i64)* @lam86174 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89226, i64* %eptr89218                                                 ; store fptr
  %arg84588 = ptrtoint i64* %cloptr89217 to i64                                      ; closure cast; i64* -> i64
  %cloptr89227 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89228 = getelementptr inbounds i64, i64* %cloptr89227, i64 0                  ; &cloptr89227[0]
  %f89229 = ptrtoint void(i64,i64)* @lam86155 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89229, i64* %eptr89228                                                 ; store fptr
  %arg84587 = ptrtoint i64* %cloptr89227 to i64                                      ; closure cast; i64* -> i64
  %rva85801 = add i64 0, 0                                                           ; quoted ()
  %rva85800 = call i64 @prim_cons(i64 %JPm$lsts, i64 %rva85801)                      ; call prim_cons
  %rva85799 = call i64 @prim_cons(i64 %arg84587, i64 %rva85800)                      ; call prim_cons
  %rva85798 = call i64 @prim_cons(i64 %arg84588, i64 %rva85799)                      ; call prim_cons
  %cloptr89230 = inttoptr i64 %PPb$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89231 = getelementptr inbounds i64, i64* %cloptr89230, i64 0                 ; &cloptr89230[0]
  %f89233 = load i64, i64* %i0ptr89231, align 8                                      ; load; *i0ptr89231
  %fptr89232 = inttoptr i64 %f89233 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89232(i64 %PPb$_37map1, i64 %rva85798)              ; tail call
  ret void
}


define void @lam86174(i64 %env86175, i64 %rvp85790) {
  %envptr89234 = inttoptr i64 %env86175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89235 = getelementptr inbounds i64, i64* %envptr89234, i64 7                ; &envptr89234[7]
  %MEE$f = load i64, i64* %envptr89235, align 8                                      ; load; *envptr89235
  %envptr89236 = inttoptr i64 %env86175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89237 = getelementptr inbounds i64, i64* %envptr89236, i64 6                ; &envptr89236[6]
  %JPm$lsts = load i64, i64* %envptr89237, align 8                                   ; load; *envptr89237
  %envptr89238 = inttoptr i64 %env86175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89239 = getelementptr inbounds i64, i64* %envptr89238, i64 5                ; &envptr89238[5]
  %CLp$_37foldr = load i64, i64* %envptr89239, align 8                               ; load; *envptr89239
  %envptr89240 = inttoptr i64 %env86175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89241 = getelementptr inbounds i64, i64* %envptr89240, i64 4                ; &envptr89240[4]
  %cont83620 = load i64, i64* %envptr89241, align 8                                  ; load; *envptr89241
  %envptr89242 = inttoptr i64 %env86175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89243 = getelementptr inbounds i64, i64* %envptr89242, i64 3                ; &envptr89242[3]
  %WRN$_37foldr1 = load i64, i64* %envptr89243, align 8                              ; load; *envptr89243
  %envptr89244 = inttoptr i64 %env86175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89245 = getelementptr inbounds i64, i64* %envptr89244, i64 2                ; &envptr89244[2]
  %OQe$acc = load i64, i64* %envptr89245, align 8                                    ; load; *envptr89245
  %envptr89246 = inttoptr i64 %env86175 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89247 = getelementptr inbounds i64, i64* %envptr89246, i64 1                ; &envptr89246[1]
  %PPb$_37map1 = load i64, i64* %envptr89247, align 8                                ; load; *envptr89247
  %_9583625 = call i64 @prim_car(i64 %rvp85790)                                      ; call prim_car
  %rvp85789 = call i64 @prim_cdr(i64 %rvp85790)                                      ; call prim_cdr
  %hju$lsts_43 = call i64 @prim_car(i64 %rvp85789)                                   ; call prim_car
  %na85752 = call i64 @prim_cdr(i64 %rvp85789)                                       ; call prim_cdr
  %cloptr89248 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr89250 = getelementptr inbounds i64, i64* %cloptr89248, i64 1                  ; &eptr89250[1]
  %eptr89251 = getelementptr inbounds i64, i64* %cloptr89248, i64 2                  ; &eptr89251[2]
  %eptr89252 = getelementptr inbounds i64, i64* %cloptr89248, i64 3                  ; &eptr89252[3]
  %eptr89253 = getelementptr inbounds i64, i64* %cloptr89248, i64 4                  ; &eptr89253[4]
  %eptr89254 = getelementptr inbounds i64, i64* %cloptr89248, i64 5                  ; &eptr89254[5]
  %eptr89255 = getelementptr inbounds i64, i64* %cloptr89248, i64 6                  ; &eptr89255[6]
  store i64 %OQe$acc, i64* %eptr89250                                                ; *eptr89250 = %OQe$acc
  store i64 %WRN$_37foldr1, i64* %eptr89251                                          ; *eptr89251 = %WRN$_37foldr1
  store i64 %cont83620, i64* %eptr89252                                              ; *eptr89252 = %cont83620
  store i64 %CLp$_37foldr, i64* %eptr89253                                           ; *eptr89253 = %CLp$_37foldr
  store i64 %hju$lsts_43, i64* %eptr89254                                            ; *eptr89254 = %hju$lsts_43
  store i64 %MEE$f, i64* %eptr89255                                                  ; *eptr89255 = %MEE$f
  %eptr89249 = getelementptr inbounds i64, i64* %cloptr89248, i64 0                  ; &cloptr89248[0]
  %f89256 = ptrtoint void(i64,i64)* @lam86172 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89256, i64* %eptr89249                                                 ; store fptr
  %arg84592 = ptrtoint i64* %cloptr89248 to i64                                      ; closure cast; i64* -> i64
  %cloptr89257 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89258 = getelementptr inbounds i64, i64* %cloptr89257, i64 0                  ; &cloptr89257[0]
  %f89259 = ptrtoint void(i64,i64)* @lam86160 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89259, i64* %eptr89258                                                 ; store fptr
  %arg84591 = ptrtoint i64* %cloptr89257 to i64                                      ; closure cast; i64* -> i64
  %rva85788 = add i64 0, 0                                                           ; quoted ()
  %rva85787 = call i64 @prim_cons(i64 %JPm$lsts, i64 %rva85788)                      ; call prim_cons
  %rva85786 = call i64 @prim_cons(i64 %arg84591, i64 %rva85787)                      ; call prim_cons
  %rva85785 = call i64 @prim_cons(i64 %arg84592, i64 %rva85786)                      ; call prim_cons
  %cloptr89260 = inttoptr i64 %PPb$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89261 = getelementptr inbounds i64, i64* %cloptr89260, i64 0                 ; &cloptr89260[0]
  %f89263 = load i64, i64* %i0ptr89261, align 8                                      ; load; *i0ptr89261
  %fptr89262 = inttoptr i64 %f89263 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89262(i64 %PPb$_37map1, i64 %rva85785)              ; tail call
  ret void
}


define void @lam86172(i64 %env86173, i64 %rvp85777) {
  %envptr89264 = inttoptr i64 %env86173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89265 = getelementptr inbounds i64, i64* %envptr89264, i64 6                ; &envptr89264[6]
  %MEE$f = load i64, i64* %envptr89265, align 8                                      ; load; *envptr89265
  %envptr89266 = inttoptr i64 %env86173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89267 = getelementptr inbounds i64, i64* %envptr89266, i64 5                ; &envptr89266[5]
  %hju$lsts_43 = load i64, i64* %envptr89267, align 8                                ; load; *envptr89267
  %envptr89268 = inttoptr i64 %env86173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89269 = getelementptr inbounds i64, i64* %envptr89268, i64 4                ; &envptr89268[4]
  %CLp$_37foldr = load i64, i64* %envptr89269, align 8                               ; load; *envptr89269
  %envptr89270 = inttoptr i64 %env86173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89271 = getelementptr inbounds i64, i64* %envptr89270, i64 3                ; &envptr89270[3]
  %cont83620 = load i64, i64* %envptr89271, align 8                                  ; load; *envptr89271
  %envptr89272 = inttoptr i64 %env86173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89273 = getelementptr inbounds i64, i64* %envptr89272, i64 2                ; &envptr89272[2]
  %WRN$_37foldr1 = load i64, i64* %envptr89273, align 8                              ; load; *envptr89273
  %envptr89274 = inttoptr i64 %env86173 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89275 = getelementptr inbounds i64, i64* %envptr89274, i64 1                ; &envptr89274[1]
  %OQe$acc = load i64, i64* %envptr89275, align 8                                    ; load; *envptr89275
  %_9583626 = call i64 @prim_car(i64 %rvp85777)                                      ; call prim_car
  %rvp85776 = call i64 @prim_cdr(i64 %rvp85777)                                      ; call prim_cdr
  %t2z$vs = call i64 @prim_car(i64 %rvp85776)                                        ; call prim_car
  %na85754 = call i64 @prim_cdr(i64 %rvp85776)                                       ; call prim_cdr
  %a83298 = call i64 @prim_cons(i64 %OQe$acc, i64 %hju$lsts_43)                      ; call prim_cons
  %a83299 = call i64 @prim_cons(i64 %MEE$f, i64 %a83298)                             ; call prim_cons
  %cloptr89276 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89278 = getelementptr inbounds i64, i64* %cloptr89276, i64 1                  ; &eptr89278[1]
  %eptr89279 = getelementptr inbounds i64, i64* %cloptr89276, i64 2                  ; &eptr89279[2]
  %eptr89280 = getelementptr inbounds i64, i64* %cloptr89276, i64 3                  ; &eptr89280[3]
  %eptr89281 = getelementptr inbounds i64, i64* %cloptr89276, i64 4                  ; &eptr89281[4]
  store i64 %t2z$vs, i64* %eptr89278                                                 ; *eptr89278 = %t2z$vs
  store i64 %WRN$_37foldr1, i64* %eptr89279                                          ; *eptr89279 = %WRN$_37foldr1
  store i64 %cont83620, i64* %eptr89280                                              ; *eptr89280 = %cont83620
  store i64 %MEE$f, i64* %eptr89281                                                  ; *eptr89281 = %MEE$f
  %eptr89277 = getelementptr inbounds i64, i64* %cloptr89276, i64 0                  ; &cloptr89276[0]
  %f89282 = ptrtoint void(i64,i64)* @lam86170 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89282, i64* %eptr89277                                                 ; store fptr
  %arg84599 = ptrtoint i64* %cloptr89276 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst83632 = call i64 @prim_cons(i64 %arg84599, i64 %a83299)                  ; call prim_cons
  %cloptr89283 = inttoptr i64 %CLp$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr89284 = getelementptr inbounds i64, i64* %cloptr89283, i64 0                 ; &cloptr89283[0]
  %f89286 = load i64, i64* %i0ptr89284, align 8                                      ; load; *i0ptr89284
  %fptr89285 = inttoptr i64 %f89286 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89285(i64 %CLp$_37foldr, i64 %cps_45lst83632)       ; tail call
  ret void
}


define void @lam86170(i64 %env86171, i64 %rvp85775) {
  %envptr89287 = inttoptr i64 %env86171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89288 = getelementptr inbounds i64, i64* %envptr89287, i64 4                ; &envptr89287[4]
  %MEE$f = load i64, i64* %envptr89288, align 8                                      ; load; *envptr89288
  %envptr89289 = inttoptr i64 %env86171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89290 = getelementptr inbounds i64, i64* %envptr89289, i64 3                ; &envptr89289[3]
  %cont83620 = load i64, i64* %envptr89290, align 8                                  ; load; *envptr89290
  %envptr89291 = inttoptr i64 %env86171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89292 = getelementptr inbounds i64, i64* %envptr89291, i64 2                ; &envptr89291[2]
  %WRN$_37foldr1 = load i64, i64* %envptr89292, align 8                              ; load; *envptr89292
  %envptr89293 = inttoptr i64 %env86171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89294 = getelementptr inbounds i64, i64* %envptr89293, i64 1                ; &envptr89293[1]
  %t2z$vs = load i64, i64* %envptr89294, align 8                                     ; load; *envptr89294
  %_9583627 = call i64 @prim_car(i64 %rvp85775)                                      ; call prim_car
  %rvp85774 = call i64 @prim_cdr(i64 %rvp85775)                                      ; call prim_cdr
  %a83300 = call i64 @prim_car(i64 %rvp85774)                                        ; call prim_car
  %na85756 = call i64 @prim_cdr(i64 %rvp85774)                                       ; call prim_cdr
  %arg84600 = add i64 0, 0                                                           ; quoted ()
  %a83301 = call i64 @prim_cons(i64 %a83300, i64 %arg84600)                          ; call prim_cons
  %cloptr89295 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89297 = getelementptr inbounds i64, i64* %cloptr89295, i64 1                  ; &eptr89297[1]
  %eptr89298 = getelementptr inbounds i64, i64* %cloptr89295, i64 2                  ; &eptr89298[2]
  store i64 %cont83620, i64* %eptr89297                                              ; *eptr89297 = %cont83620
  store i64 %MEE$f, i64* %eptr89298                                                  ; *eptr89298 = %MEE$f
  %eptr89296 = getelementptr inbounds i64, i64* %cloptr89295, i64 0                  ; &cloptr89295[0]
  %f89299 = ptrtoint void(i64,i64)* @lam86167 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89299, i64* %eptr89296                                                 ; store fptr
  %arg84605 = ptrtoint i64* %cloptr89295 to i64                                      ; closure cast; i64* -> i64
  %cloptr89300 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr89301 = getelementptr inbounds i64, i64* %cloptr89300, i64 0                  ; &cloptr89300[0]
  %f89302 = ptrtoint void(i64,i64)* @lam86165 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89302, i64* %eptr89301                                                 ; store fptr
  %arg84604 = ptrtoint i64* %cloptr89300 to i64                                      ; closure cast; i64* -> i64
  %rva85773 = add i64 0, 0                                                           ; quoted ()
  %rva85772 = call i64 @prim_cons(i64 %t2z$vs, i64 %rva85773)                        ; call prim_cons
  %rva85771 = call i64 @prim_cons(i64 %a83301, i64 %rva85772)                        ; call prim_cons
  %rva85770 = call i64 @prim_cons(i64 %arg84604, i64 %rva85771)                      ; call prim_cons
  %rva85769 = call i64 @prim_cons(i64 %arg84605, i64 %rva85770)                      ; call prim_cons
  %cloptr89303 = inttoptr i64 %WRN$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89304 = getelementptr inbounds i64, i64* %cloptr89303, i64 0                 ; &cloptr89303[0]
  %f89306 = load i64, i64* %i0ptr89304, align 8                                      ; load; *i0ptr89304
  %fptr89305 = inttoptr i64 %f89306 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89305(i64 %WRN$_37foldr1, i64 %rva85769)            ; tail call
  ret void
}


define void @lam86167(i64 %env86168, i64 %rvp85760) {
  %envptr89307 = inttoptr i64 %env86168 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89308 = getelementptr inbounds i64, i64* %envptr89307, i64 2                ; &envptr89307[2]
  %MEE$f = load i64, i64* %envptr89308, align 8                                      ; load; *envptr89308
  %envptr89309 = inttoptr i64 %env86168 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89310 = getelementptr inbounds i64, i64* %envptr89309, i64 1                ; &envptr89309[1]
  %cont83620 = load i64, i64* %envptr89310, align 8                                  ; load; *envptr89310
  %_9583628 = call i64 @prim_car(i64 %rvp85760)                                      ; call prim_car
  %rvp85759 = call i64 @prim_cdr(i64 %rvp85760)                                      ; call prim_cdr
  %a83302 = call i64 @prim_car(i64 %rvp85759)                                        ; call prim_car
  %na85758 = call i64 @prim_cdr(i64 %rvp85759)                                       ; call prim_cdr
  %cps_45lst83629 = call i64 @prim_cons(i64 %cont83620, i64 %a83302)                 ; call prim_cons
  %cloptr89311 = inttoptr i64 %MEE$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89312 = getelementptr inbounds i64, i64* %cloptr89311, i64 0                 ; &cloptr89311[0]
  %f89314 = load i64, i64* %i0ptr89312, align 8                                      ; load; *i0ptr89312
  %fptr89313 = inttoptr i64 %f89314 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89313(i64 %MEE$f, i64 %cps_45lst83629)              ; tail call
  ret void
}


define void @lam86165(i64 %env86166, i64 %rvp85768) {
  %cont83630 = call i64 @prim_car(i64 %rvp85768)                                     ; call prim_car
  %rvp85767 = call i64 @prim_cdr(i64 %rvp85768)                                      ; call prim_cdr
  %BWq$a = call i64 @prim_car(i64 %rvp85767)                                         ; call prim_car
  %rvp85766 = call i64 @prim_cdr(i64 %rvp85767)                                      ; call prim_cdr
  %a6P$b = call i64 @prim_car(i64 %rvp85766)                                         ; call prim_car
  %na85762 = call i64 @prim_cdr(i64 %rvp85766)                                       ; call prim_cdr
  %retprim83631 = call i64 @prim_cons(i64 %BWq$a, i64 %a6P$b)                        ; call prim_cons
  %arg84612 = add i64 0, 0                                                           ; quoted ()
  %rva85765 = add i64 0, 0                                                           ; quoted ()
  %rva85764 = call i64 @prim_cons(i64 %retprim83631, i64 %rva85765)                  ; call prim_cons
  %rva85763 = call i64 @prim_cons(i64 %arg84612, i64 %rva85764)                      ; call prim_cons
  %cloptr89315 = inttoptr i64 %cont83630 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89316 = getelementptr inbounds i64, i64* %cloptr89315, i64 0                 ; &cloptr89315[0]
  %f89318 = load i64, i64* %i0ptr89316, align 8                                      ; load; *i0ptr89316
  %fptr89317 = inttoptr i64 %f89318 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89317(i64 %cont83630, i64 %rva85763)                ; tail call
  ret void
}


define void @lam86160(i64 %env86161, i64 %rvp85784) {
  %cont83633 = call i64 @prim_car(i64 %rvp85784)                                     ; call prim_car
  %rvp85783 = call i64 @prim_cdr(i64 %rvp85784)                                      ; call prim_cdr
  %ISt$x = call i64 @prim_car(i64 %rvp85783)                                         ; call prim_car
  %na85779 = call i64 @prim_cdr(i64 %rvp85783)                                       ; call prim_cdr
  %retprim83634 = call i64 @prim_car(i64 %ISt$x)                                     ; call prim_car
  %arg84616 = add i64 0, 0                                                           ; quoted ()
  %rva85782 = add i64 0, 0                                                           ; quoted ()
  %rva85781 = call i64 @prim_cons(i64 %retprim83634, i64 %rva85782)                  ; call prim_cons
  %rva85780 = call i64 @prim_cons(i64 %arg84616, i64 %rva85781)                      ; call prim_cons
  %cloptr89319 = inttoptr i64 %cont83633 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89320 = getelementptr inbounds i64, i64* %cloptr89319, i64 0                 ; &cloptr89319[0]
  %f89322 = load i64, i64* %i0ptr89320, align 8                                      ; load; *i0ptr89320
  %fptr89321 = inttoptr i64 %f89322 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89321(i64 %cont83633, i64 %rva85780)                ; tail call
  ret void
}


define void @lam86155(i64 %env86156, i64 %rvp85797) {
  %cont83635 = call i64 @prim_car(i64 %rvp85797)                                     ; call prim_car
  %rvp85796 = call i64 @prim_cdr(i64 %rvp85797)                                      ; call prim_cdr
  %v4m$x = call i64 @prim_car(i64 %rvp85796)                                         ; call prim_car
  %na85792 = call i64 @prim_cdr(i64 %rvp85796)                                       ; call prim_cdr
  %retprim83636 = call i64 @prim_cdr(i64 %v4m$x)                                     ; call prim_cdr
  %arg84620 = add i64 0, 0                                                           ; quoted ()
  %rva85795 = add i64 0, 0                                                           ; quoted ()
  %rva85794 = call i64 @prim_cons(i64 %retprim83636, i64 %rva85795)                  ; call prim_cons
  %rva85793 = call i64 @prim_cons(i64 %arg84620, i64 %rva85794)                      ; call prim_cons
  %cloptr89323 = inttoptr i64 %cont83635 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89324 = getelementptr inbounds i64, i64* %cloptr89323, i64 0                 ; &cloptr89323[0]
  %f89326 = load i64, i64* %i0ptr89324, align 8                                      ; load; *i0ptr89324
  %fptr89325 = inttoptr i64 %f89326 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89325(i64 %cont83635, i64 %rva85793)                ; tail call
  ret void
}


define void @lam86148(i64 %env86149, i64 %rvp85814) {
  %cont83637 = call i64 @prim_car(i64 %rvp85814)                                     ; call prim_car
  %rvp85813 = call i64 @prim_cdr(i64 %rvp85814)                                      ; call prim_cdr
  %WRq$lst = call i64 @prim_car(i64 %rvp85813)                                       ; call prim_car
  %rvp85812 = call i64 @prim_cdr(i64 %rvp85813)                                      ; call prim_cdr
  %BDL$b = call i64 @prim_car(i64 %rvp85812)                                         ; call prim_car
  %na85805 = call i64 @prim_cdr(i64 %rvp85812)                                       ; call prim_cdr
  %cmp89327 = icmp eq i64 %BDL$b, 15                                                 ; false?
  br i1 %cmp89327, label %else89329, label %then89328                                ; if

then89328:
  %arg84623 = add i64 0, 0                                                           ; quoted ()
  %rva85808 = add i64 0, 0                                                           ; quoted ()
  %rva85807 = call i64 @prim_cons(i64 %BDL$b, i64 %rva85808)                         ; call prim_cons
  %rva85806 = call i64 @prim_cons(i64 %arg84623, i64 %rva85807)                      ; call prim_cons
  %cloptr89330 = inttoptr i64 %cont83637 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89331 = getelementptr inbounds i64, i64* %cloptr89330, i64 0                 ; &cloptr89330[0]
  %f89333 = load i64, i64* %i0ptr89331, align 8                                      ; load; *i0ptr89331
  %fptr89332 = inttoptr i64 %f89333 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89332(i64 %cont83637, i64 %rva85806)                ; tail call
  ret void

else89329:
  %retprim83638 = call i64 @prim_null_63(i64 %WRq$lst)                               ; call prim_null_63
  %arg84627 = add i64 0, 0                                                           ; quoted ()
  %rva85811 = add i64 0, 0                                                           ; quoted ()
  %rva85810 = call i64 @prim_cons(i64 %retprim83638, i64 %rva85811)                  ; call prim_cons
  %rva85809 = call i64 @prim_cons(i64 %arg84627, i64 %rva85810)                      ; call prim_cons
  %cloptr89334 = inttoptr i64 %cont83637 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89335 = getelementptr inbounds i64, i64* %cloptr89334, i64 0                 ; &cloptr89334[0]
  %f89337 = load i64, i64* %i0ptr89335, align 8                                      ; load; *i0ptr89335
  %fptr89336 = inttoptr i64 %f89337 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89336(i64 %cont83637, i64 %rva85809)                ; tail call
  ret void
}


define void @lam86134(i64 %env86135, i64 %rvp85868) {
  %cont83641 = call i64 @prim_car(i64 %rvp85868)                                     ; call prim_car
  %rvp85867 = call i64 @prim_cdr(i64 %rvp85868)                                      ; call prim_cdr
  %lxO$_37foldl1 = call i64 @prim_car(i64 %rvp85867)                                 ; call prim_car
  %na85841 = call i64 @prim_cdr(i64 %rvp85867)                                       ; call prim_cdr
  %arg84630 = add i64 0, 0                                                           ; quoted ()
  %cloptr89338 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89340 = getelementptr inbounds i64, i64* %cloptr89338, i64 1                  ; &eptr89340[1]
  store i64 %lxO$_37foldl1, i64* %eptr89340                                          ; *eptr89340 = %lxO$_37foldl1
  %eptr89339 = getelementptr inbounds i64, i64* %cloptr89338, i64 0                  ; &cloptr89338[0]
  %f89341 = ptrtoint void(i64,i64)* @lam86131 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89341, i64* %eptr89339                                                 ; store fptr
  %arg84629 = ptrtoint i64* %cloptr89338 to i64                                      ; closure cast; i64* -> i64
  %rva85866 = add i64 0, 0                                                           ; quoted ()
  %rva85865 = call i64 @prim_cons(i64 %arg84629, i64 %rva85866)                      ; call prim_cons
  %rva85864 = call i64 @prim_cons(i64 %arg84630, i64 %rva85865)                      ; call prim_cons
  %cloptr89342 = inttoptr i64 %cont83641 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89343 = getelementptr inbounds i64, i64* %cloptr89342, i64 0                 ; &cloptr89342[0]
  %f89345 = load i64, i64* %i0ptr89343, align 8                                      ; load; *i0ptr89343
  %fptr89344 = inttoptr i64 %f89345 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89344(i64 %cont83641, i64 %rva85864)                ; tail call
  ret void
}


define void @lam86131(i64 %env86132, i64 %rvp85863) {
  %envptr89346 = inttoptr i64 %env86132 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89347 = getelementptr inbounds i64, i64* %envptr89346, i64 1                ; &envptr89346[1]
  %lxO$_37foldl1 = load i64, i64* %envptr89347, align 8                              ; load; *envptr89347
  %cont83642 = call i64 @prim_car(i64 %rvp85863)                                     ; call prim_car
  %rvp85862 = call i64 @prim_cdr(i64 %rvp85863)                                      ; call prim_cdr
  %TnW$f = call i64 @prim_car(i64 %rvp85862)                                         ; call prim_car
  %rvp85861 = call i64 @prim_cdr(i64 %rvp85862)                                      ; call prim_cdr
  %Mnj$acc = call i64 @prim_car(i64 %rvp85861)                                       ; call prim_car
  %rvp85860 = call i64 @prim_cdr(i64 %rvp85861)                                      ; call prim_cdr
  %X16$lst = call i64 @prim_car(i64 %rvp85860)                                       ; call prim_car
  %na85843 = call i64 @prim_cdr(i64 %rvp85860)                                       ; call prim_cdr
  %a83289 = call i64 @prim_null_63(i64 %X16$lst)                                     ; call prim_null_63
  %cmp89348 = icmp eq i64 %a83289, 15                                                ; false?
  br i1 %cmp89348, label %else89350, label %then89349                                ; if

then89349:
  %arg84634 = add i64 0, 0                                                           ; quoted ()
  %rva85846 = add i64 0, 0                                                           ; quoted ()
  %rva85845 = call i64 @prim_cons(i64 %Mnj$acc, i64 %rva85846)                       ; call prim_cons
  %rva85844 = call i64 @prim_cons(i64 %arg84634, i64 %rva85845)                      ; call prim_cons
  %cloptr89351 = inttoptr i64 %cont83642 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89352 = getelementptr inbounds i64, i64* %cloptr89351, i64 0                 ; &cloptr89351[0]
  %f89354 = load i64, i64* %i0ptr89352, align 8                                      ; load; *i0ptr89352
  %fptr89353 = inttoptr i64 %f89354 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89353(i64 %cont83642, i64 %rva85844)                ; tail call
  ret void

else89350:
  %a83290 = call i64 @prim_car(i64 %X16$lst)                                         ; call prim_car
  %cloptr89355 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89357 = getelementptr inbounds i64, i64* %cloptr89355, i64 1                  ; &eptr89357[1]
  %eptr89358 = getelementptr inbounds i64, i64* %cloptr89355, i64 2                  ; &eptr89358[2]
  %eptr89359 = getelementptr inbounds i64, i64* %cloptr89355, i64 3                  ; &eptr89359[3]
  %eptr89360 = getelementptr inbounds i64, i64* %cloptr89355, i64 4                  ; &eptr89360[4]
  store i64 %TnW$f, i64* %eptr89357                                                  ; *eptr89357 = %TnW$f
  store i64 %cont83642, i64* %eptr89358                                              ; *eptr89358 = %cont83642
  store i64 %X16$lst, i64* %eptr89359                                                ; *eptr89359 = %X16$lst
  store i64 %lxO$_37foldl1, i64* %eptr89360                                          ; *eptr89360 = %lxO$_37foldl1
  %eptr89356 = getelementptr inbounds i64, i64* %cloptr89355, i64 0                  ; &cloptr89355[0]
  %f89361 = ptrtoint void(i64,i64)* @lam86129 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89361, i64* %eptr89356                                                 ; store fptr
  %arg84639 = ptrtoint i64* %cloptr89355 to i64                                      ; closure cast; i64* -> i64
  %rva85859 = add i64 0, 0                                                           ; quoted ()
  %rva85858 = call i64 @prim_cons(i64 %Mnj$acc, i64 %rva85859)                       ; call prim_cons
  %rva85857 = call i64 @prim_cons(i64 %a83290, i64 %rva85858)                        ; call prim_cons
  %rva85856 = call i64 @prim_cons(i64 %arg84639, i64 %rva85857)                      ; call prim_cons
  %cloptr89362 = inttoptr i64 %TnW$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89363 = getelementptr inbounds i64, i64* %cloptr89362, i64 0                 ; &cloptr89362[0]
  %f89365 = load i64, i64* %i0ptr89363, align 8                                      ; load; *i0ptr89363
  %fptr89364 = inttoptr i64 %f89365 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89364(i64 %TnW$f, i64 %rva85856)                    ; tail call
  ret void
}


define void @lam86129(i64 %env86130, i64 %rvp85855) {
  %envptr89366 = inttoptr i64 %env86130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89367 = getelementptr inbounds i64, i64* %envptr89366, i64 4                ; &envptr89366[4]
  %lxO$_37foldl1 = load i64, i64* %envptr89367, align 8                              ; load; *envptr89367
  %envptr89368 = inttoptr i64 %env86130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89369 = getelementptr inbounds i64, i64* %envptr89368, i64 3                ; &envptr89368[3]
  %X16$lst = load i64, i64* %envptr89369, align 8                                    ; load; *envptr89369
  %envptr89370 = inttoptr i64 %env86130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89371 = getelementptr inbounds i64, i64* %envptr89370, i64 2                ; &envptr89370[2]
  %cont83642 = load i64, i64* %envptr89371, align 8                                  ; load; *envptr89371
  %envptr89372 = inttoptr i64 %env86130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89373 = getelementptr inbounds i64, i64* %envptr89372, i64 1                ; &envptr89372[1]
  %TnW$f = load i64, i64* %envptr89373, align 8                                      ; load; *envptr89373
  %_9583643 = call i64 @prim_car(i64 %rvp85855)                                      ; call prim_car
  %rvp85854 = call i64 @prim_cdr(i64 %rvp85855)                                      ; call prim_cdr
  %a83291 = call i64 @prim_car(i64 %rvp85854)                                        ; call prim_car
  %na85848 = call i64 @prim_cdr(i64 %rvp85854)                                       ; call prim_cdr
  %a83292 = call i64 @prim_cdr(i64 %X16$lst)                                         ; call prim_cdr
  %rva85853 = add i64 0, 0                                                           ; quoted ()
  %rva85852 = call i64 @prim_cons(i64 %a83292, i64 %rva85853)                        ; call prim_cons
  %rva85851 = call i64 @prim_cons(i64 %a83291, i64 %rva85852)                        ; call prim_cons
  %rva85850 = call i64 @prim_cons(i64 %TnW$f, i64 %rva85851)                         ; call prim_cons
  %rva85849 = call i64 @prim_cons(i64 %cont83642, i64 %rva85850)                     ; call prim_cons
  %cloptr89374 = inttoptr i64 %lxO$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89375 = getelementptr inbounds i64, i64* %cloptr89374, i64 0                 ; &cloptr89374[0]
  %f89377 = load i64, i64* %i0ptr89375, align 8                                      ; load; *i0ptr89375
  %fptr89376 = inttoptr i64 %f89377 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89376(i64 %lxO$_37foldl1, i64 %rva85849)            ; tail call
  ret void
}


define void @lam86121(i64 %env86122, i64 %rvp85897) {
  %cont83644 = call i64 @prim_car(i64 %rvp85897)                                     ; call prim_car
  %rvp85896 = call i64 @prim_cdr(i64 %rvp85897)                                      ; call prim_cdr
  %DIP$_37length = call i64 @prim_car(i64 %rvp85896)                                 ; call prim_car
  %na85875 = call i64 @prim_cdr(i64 %rvp85896)                                       ; call prim_cdr
  %arg84648 = add i64 0, 0                                                           ; quoted ()
  %cloptr89378 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89380 = getelementptr inbounds i64, i64* %cloptr89378, i64 1                  ; &eptr89380[1]
  store i64 %DIP$_37length, i64* %eptr89380                                          ; *eptr89380 = %DIP$_37length
  %eptr89379 = getelementptr inbounds i64, i64* %cloptr89378, i64 0                  ; &cloptr89378[0]
  %f89381 = ptrtoint void(i64,i64)* @lam86118 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89381, i64* %eptr89379                                                 ; store fptr
  %arg84647 = ptrtoint i64* %cloptr89378 to i64                                      ; closure cast; i64* -> i64
  %rva85895 = add i64 0, 0                                                           ; quoted ()
  %rva85894 = call i64 @prim_cons(i64 %arg84647, i64 %rva85895)                      ; call prim_cons
  %rva85893 = call i64 @prim_cons(i64 %arg84648, i64 %rva85894)                      ; call prim_cons
  %cloptr89382 = inttoptr i64 %cont83644 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89383 = getelementptr inbounds i64, i64* %cloptr89382, i64 0                 ; &cloptr89382[0]
  %f89385 = load i64, i64* %i0ptr89383, align 8                                      ; load; *i0ptr89383
  %fptr89384 = inttoptr i64 %f89385 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89384(i64 %cont83644, i64 %rva85893)                ; tail call
  ret void
}


define void @lam86118(i64 %env86119, i64 %rvp85892) {
  %envptr89386 = inttoptr i64 %env86119 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89387 = getelementptr inbounds i64, i64* %envptr89386, i64 1                ; &envptr89386[1]
  %DIP$_37length = load i64, i64* %envptr89387, align 8                              ; load; *envptr89387
  %cont83645 = call i64 @prim_car(i64 %rvp85892)                                     ; call prim_car
  %rvp85891 = call i64 @prim_cdr(i64 %rvp85892)                                      ; call prim_cdr
  %GtP$lst = call i64 @prim_car(i64 %rvp85891)                                       ; call prim_car
  %na85877 = call i64 @prim_cdr(i64 %rvp85891)                                       ; call prim_cdr
  %a83286 = call i64 @prim_null_63(i64 %GtP$lst)                                     ; call prim_null_63
  %cmp89388 = icmp eq i64 %a83286, 15                                                ; false?
  br i1 %cmp89388, label %else89390, label %then89389                                ; if

then89389:
  %arg84652 = add i64 0, 0                                                           ; quoted ()
  %arg84651 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva85880 = add i64 0, 0                                                           ; quoted ()
  %rva85879 = call i64 @prim_cons(i64 %arg84651, i64 %rva85880)                      ; call prim_cons
  %rva85878 = call i64 @prim_cons(i64 %arg84652, i64 %rva85879)                      ; call prim_cons
  %cloptr89391 = inttoptr i64 %cont83645 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89392 = getelementptr inbounds i64, i64* %cloptr89391, i64 0                 ; &cloptr89391[0]
  %f89394 = load i64, i64* %i0ptr89392, align 8                                      ; load; *i0ptr89392
  %fptr89393 = inttoptr i64 %f89394 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89393(i64 %cont83645, i64 %rva85878)                ; tail call
  ret void

else89390:
  %a83287 = call i64 @prim_cdr(i64 %GtP$lst)                                         ; call prim_cdr
  %cloptr89395 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89397 = getelementptr inbounds i64, i64* %cloptr89395, i64 1                  ; &eptr89397[1]
  store i64 %cont83645, i64* %eptr89397                                              ; *eptr89397 = %cont83645
  %eptr89396 = getelementptr inbounds i64, i64* %cloptr89395, i64 0                  ; &cloptr89395[0]
  %f89398 = ptrtoint void(i64,i64)* @lam86116 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89398, i64* %eptr89396                                                 ; store fptr
  %arg84656 = ptrtoint i64* %cloptr89395 to i64                                      ; closure cast; i64* -> i64
  %rva85890 = add i64 0, 0                                                           ; quoted ()
  %rva85889 = call i64 @prim_cons(i64 %a83287, i64 %rva85890)                        ; call prim_cons
  %rva85888 = call i64 @prim_cons(i64 %arg84656, i64 %rva85889)                      ; call prim_cons
  %cloptr89399 = inttoptr i64 %DIP$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89400 = getelementptr inbounds i64, i64* %cloptr89399, i64 0                 ; &cloptr89399[0]
  %f89402 = load i64, i64* %i0ptr89400, align 8                                      ; load; *i0ptr89400
  %fptr89401 = inttoptr i64 %f89402 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89401(i64 %DIP$_37length, i64 %rva85888)            ; tail call
  ret void
}


define void @lam86116(i64 %env86117, i64 %rvp85887) {
  %envptr89403 = inttoptr i64 %env86117 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89404 = getelementptr inbounds i64, i64* %envptr89403, i64 1                ; &envptr89403[1]
  %cont83645 = load i64, i64* %envptr89404, align 8                                  ; load; *envptr89404
  %_9583646 = call i64 @prim_car(i64 %rvp85887)                                      ; call prim_car
  %rvp85886 = call i64 @prim_cdr(i64 %rvp85887)                                      ; call prim_cdr
  %a83288 = call i64 @prim_car(i64 %rvp85886)                                        ; call prim_car
  %na85882 = call i64 @prim_cdr(i64 %rvp85886)                                       ; call prim_cdr
  %arg84659 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim83647 = call i64 @prim__43(i64 %arg84659, i64 %a83288)                     ; call prim__43
  %arg84661 = add i64 0, 0                                                           ; quoted ()
  %rva85885 = add i64 0, 0                                                           ; quoted ()
  %rva85884 = call i64 @prim_cons(i64 %retprim83647, i64 %rva85885)                  ; call prim_cons
  %rva85883 = call i64 @prim_cons(i64 %arg84661, i64 %rva85884)                      ; call prim_cons
  %cloptr89405 = inttoptr i64 %cont83645 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89406 = getelementptr inbounds i64, i64* %cloptr89405, i64 0                 ; &cloptr89405[0]
  %f89408 = load i64, i64* %i0ptr89406, align 8                                      ; load; *i0ptr89406
  %fptr89407 = inttoptr i64 %f89408 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89407(i64 %cont83645, i64 %rva85883)                ; tail call
  ret void
}


define void @lam86105(i64 %env86106, i64 %rvp85931) {
  %cont83648 = call i64 @prim_car(i64 %rvp85931)                                     ; call prim_car
  %rvp85930 = call i64 @prim_cdr(i64 %rvp85931)                                      ; call prim_cdr
  %My4$_37take = call i64 @prim_car(i64 %rvp85930)                                   ; call prim_car
  %na85904 = call i64 @prim_cdr(i64 %rvp85930)                                       ; call prim_cdr
  %arg84664 = add i64 0, 0                                                           ; quoted ()
  %cloptr89409 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89411 = getelementptr inbounds i64, i64* %cloptr89409, i64 1                  ; &eptr89411[1]
  store i64 %My4$_37take, i64* %eptr89411                                            ; *eptr89411 = %My4$_37take
  %eptr89410 = getelementptr inbounds i64, i64* %cloptr89409, i64 0                  ; &cloptr89409[0]
  %f89412 = ptrtoint void(i64,i64)* @lam86102 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89412, i64* %eptr89410                                                 ; store fptr
  %arg84663 = ptrtoint i64* %cloptr89409 to i64                                      ; closure cast; i64* -> i64
  %rva85929 = add i64 0, 0                                                           ; quoted ()
  %rva85928 = call i64 @prim_cons(i64 %arg84663, i64 %rva85929)                      ; call prim_cons
  %rva85927 = call i64 @prim_cons(i64 %arg84664, i64 %rva85928)                      ; call prim_cons
  %cloptr89413 = inttoptr i64 %cont83648 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89414 = getelementptr inbounds i64, i64* %cloptr89413, i64 0                 ; &cloptr89413[0]
  %f89416 = load i64, i64* %i0ptr89414, align 8                                      ; load; *i0ptr89414
  %fptr89415 = inttoptr i64 %f89416 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89415(i64 %cont83648, i64 %rva85927)                ; tail call
  ret void
}


define void @lam86102(i64 %env86103, i64 %rvp85926) {
  %envptr89417 = inttoptr i64 %env86103 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89418 = getelementptr inbounds i64, i64* %envptr89417, i64 1                ; &envptr89417[1]
  %My4$_37take = load i64, i64* %envptr89418, align 8                                ; load; *envptr89418
  %cont83649 = call i64 @prim_car(i64 %rvp85926)                                     ; call prim_car
  %rvp85925 = call i64 @prim_cdr(i64 %rvp85926)                                      ; call prim_cdr
  %wHJ$lst = call i64 @prim_car(i64 %rvp85925)                                       ; call prim_car
  %rvp85924 = call i64 @prim_cdr(i64 %rvp85925)                                      ; call prim_cdr
  %Ay9$n = call i64 @prim_car(i64 %rvp85924)                                         ; call prim_car
  %na85906 = call i64 @prim_cdr(i64 %rvp85924)                                       ; call prim_cdr
  %arg84666 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a83280 = call i64 @prim__61(i64 %Ay9$n, i64 %arg84666)                            ; call prim__61
  %cmp89419 = icmp eq i64 %a83280, 15                                                ; false?
  br i1 %cmp89419, label %else89421, label %then89420                                ; if

then89420:
  %arg84669 = add i64 0, 0                                                           ; quoted ()
  %arg84668 = add i64 0, 0                                                           ; quoted ()
  %rva85909 = add i64 0, 0                                                           ; quoted ()
  %rva85908 = call i64 @prim_cons(i64 %arg84668, i64 %rva85909)                      ; call prim_cons
  %rva85907 = call i64 @prim_cons(i64 %arg84669, i64 %rva85908)                      ; call prim_cons
  %cloptr89422 = inttoptr i64 %cont83649 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89423 = getelementptr inbounds i64, i64* %cloptr89422, i64 0                 ; &cloptr89422[0]
  %f89425 = load i64, i64* %i0ptr89423, align 8                                      ; load; *i0ptr89423
  %fptr89424 = inttoptr i64 %f89425 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89424(i64 %cont83649, i64 %rva85907)                ; tail call
  ret void

else89421:
  %a83281 = call i64 @prim_null_63(i64 %wHJ$lst)                                     ; call prim_null_63
  %cmp89426 = icmp eq i64 %a83281, 15                                                ; false?
  br i1 %cmp89426, label %else89428, label %then89427                                ; if

then89427:
  %arg84673 = add i64 0, 0                                                           ; quoted ()
  %arg84672 = add i64 0, 0                                                           ; quoted ()
  %rva85912 = add i64 0, 0                                                           ; quoted ()
  %rva85911 = call i64 @prim_cons(i64 %arg84672, i64 %rva85912)                      ; call prim_cons
  %rva85910 = call i64 @prim_cons(i64 %arg84673, i64 %rva85911)                      ; call prim_cons
  %cloptr89429 = inttoptr i64 %cont83649 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89430 = getelementptr inbounds i64, i64* %cloptr89429, i64 0                 ; &cloptr89429[0]
  %f89432 = load i64, i64* %i0ptr89430, align 8                                      ; load; *i0ptr89430
  %fptr89431 = inttoptr i64 %f89432 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89431(i64 %cont83649, i64 %rva85910)                ; tail call
  ret void

else89428:
  %a83282 = call i64 @prim_car(i64 %wHJ$lst)                                         ; call prim_car
  %a83283 = call i64 @prim_cdr(i64 %wHJ$lst)                                         ; call prim_cdr
  %arg84677 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a83284 = call i64 @prim__45(i64 %Ay9$n, i64 %arg84677)                            ; call prim__45
  %cloptr89433 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89435 = getelementptr inbounds i64, i64* %cloptr89433, i64 1                  ; &eptr89435[1]
  %eptr89436 = getelementptr inbounds i64, i64* %cloptr89433, i64 2                  ; &eptr89436[2]
  store i64 %a83282, i64* %eptr89435                                                 ; *eptr89435 = %a83282
  store i64 %cont83649, i64* %eptr89436                                              ; *eptr89436 = %cont83649
  %eptr89434 = getelementptr inbounds i64, i64* %cloptr89433, i64 0                  ; &cloptr89433[0]
  %f89437 = ptrtoint void(i64,i64)* @lam86098 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89437, i64* %eptr89434                                                 ; store fptr
  %arg84681 = ptrtoint i64* %cloptr89433 to i64                                      ; closure cast; i64* -> i64
  %rva85923 = add i64 0, 0                                                           ; quoted ()
  %rva85922 = call i64 @prim_cons(i64 %a83284, i64 %rva85923)                        ; call prim_cons
  %rva85921 = call i64 @prim_cons(i64 %a83283, i64 %rva85922)                        ; call prim_cons
  %rva85920 = call i64 @prim_cons(i64 %arg84681, i64 %rva85921)                      ; call prim_cons
  %cloptr89438 = inttoptr i64 %My4$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr89439 = getelementptr inbounds i64, i64* %cloptr89438, i64 0                 ; &cloptr89438[0]
  %f89441 = load i64, i64* %i0ptr89439, align 8                                      ; load; *i0ptr89439
  %fptr89440 = inttoptr i64 %f89441 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89440(i64 %My4$_37take, i64 %rva85920)              ; tail call
  ret void
}


define void @lam86098(i64 %env86099, i64 %rvp85919) {
  %envptr89442 = inttoptr i64 %env86099 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89443 = getelementptr inbounds i64, i64* %envptr89442, i64 2                ; &envptr89442[2]
  %cont83649 = load i64, i64* %envptr89443, align 8                                  ; load; *envptr89443
  %envptr89444 = inttoptr i64 %env86099 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89445 = getelementptr inbounds i64, i64* %envptr89444, i64 1                ; &envptr89444[1]
  %a83282 = load i64, i64* %envptr89445, align 8                                     ; load; *envptr89445
  %_9583650 = call i64 @prim_car(i64 %rvp85919)                                      ; call prim_car
  %rvp85918 = call i64 @prim_cdr(i64 %rvp85919)                                      ; call prim_cdr
  %a83285 = call i64 @prim_car(i64 %rvp85918)                                        ; call prim_car
  %na85914 = call i64 @prim_cdr(i64 %rvp85918)                                       ; call prim_cdr
  %retprim83651 = call i64 @prim_cons(i64 %a83282, i64 %a83285)                      ; call prim_cons
  %arg84686 = add i64 0, 0                                                           ; quoted ()
  %rva85917 = add i64 0, 0                                                           ; quoted ()
  %rva85916 = call i64 @prim_cons(i64 %retprim83651, i64 %rva85917)                  ; call prim_cons
  %rva85915 = call i64 @prim_cons(i64 %arg84686, i64 %rva85916)                      ; call prim_cons
  %cloptr89446 = inttoptr i64 %cont83649 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89447 = getelementptr inbounds i64, i64* %cloptr89446, i64 0                 ; &cloptr89446[0]
  %f89449 = load i64, i64* %i0ptr89447, align 8                                      ; load; *i0ptr89447
  %fptr89448 = inttoptr i64 %f89449 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89448(i64 %cont83649, i64 %rva85915)                ; tail call
  ret void
}


define void @lam86085(i64 %env86086, i64 %rvp85969) {
  %cont83652 = call i64 @prim_car(i64 %rvp85969)                                     ; call prim_car
  %rvp85968 = call i64 @prim_cdr(i64 %rvp85969)                                      ; call prim_cdr
  %BS5$_37map = call i64 @prim_car(i64 %rvp85968)                                    ; call prim_car
  %na85938 = call i64 @prim_cdr(i64 %rvp85968)                                       ; call prim_cdr
  %arg84689 = add i64 0, 0                                                           ; quoted ()
  %cloptr89450 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89452 = getelementptr inbounds i64, i64* %cloptr89450, i64 1                  ; &eptr89452[1]
  store i64 %BS5$_37map, i64* %eptr89452                                             ; *eptr89452 = %BS5$_37map
  %eptr89451 = getelementptr inbounds i64, i64* %cloptr89450, i64 0                  ; &cloptr89450[0]
  %f89453 = ptrtoint void(i64,i64)* @lam86082 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89453, i64* %eptr89451                                                 ; store fptr
  %arg84688 = ptrtoint i64* %cloptr89450 to i64                                      ; closure cast; i64* -> i64
  %rva85967 = add i64 0, 0                                                           ; quoted ()
  %rva85966 = call i64 @prim_cons(i64 %arg84688, i64 %rva85967)                      ; call prim_cons
  %rva85965 = call i64 @prim_cons(i64 %arg84689, i64 %rva85966)                      ; call prim_cons
  %cloptr89454 = inttoptr i64 %cont83652 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89455 = getelementptr inbounds i64, i64* %cloptr89454, i64 0                 ; &cloptr89454[0]
  %f89457 = load i64, i64* %i0ptr89455, align 8                                      ; load; *i0ptr89455
  %fptr89456 = inttoptr i64 %f89457 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89456(i64 %cont83652, i64 %rva85965)                ; tail call
  ret void
}


define void @lam86082(i64 %env86083, i64 %rvp85964) {
  %envptr89458 = inttoptr i64 %env86083 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89459 = getelementptr inbounds i64, i64* %envptr89458, i64 1                ; &envptr89458[1]
  %BS5$_37map = load i64, i64* %envptr89459, align 8                                 ; load; *envptr89459
  %cont83653 = call i64 @prim_car(i64 %rvp85964)                                     ; call prim_car
  %rvp85963 = call i64 @prim_cdr(i64 %rvp85964)                                      ; call prim_cdr
  %MTh$f = call i64 @prim_car(i64 %rvp85963)                                         ; call prim_car
  %rvp85962 = call i64 @prim_cdr(i64 %rvp85963)                                      ; call prim_cdr
  %HqC$lst = call i64 @prim_car(i64 %rvp85962)                                       ; call prim_car
  %na85940 = call i64 @prim_cdr(i64 %rvp85962)                                       ; call prim_cdr
  %a83275 = call i64 @prim_null_63(i64 %HqC$lst)                                     ; call prim_null_63
  %cmp89460 = icmp eq i64 %a83275, 15                                                ; false?
  br i1 %cmp89460, label %else89462, label %then89461                                ; if

then89461:
  %arg84693 = add i64 0, 0                                                           ; quoted ()
  %arg84692 = add i64 0, 0                                                           ; quoted ()
  %rva85943 = add i64 0, 0                                                           ; quoted ()
  %rva85942 = call i64 @prim_cons(i64 %arg84692, i64 %rva85943)                      ; call prim_cons
  %rva85941 = call i64 @prim_cons(i64 %arg84693, i64 %rva85942)                      ; call prim_cons
  %cloptr89463 = inttoptr i64 %cont83653 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89464 = getelementptr inbounds i64, i64* %cloptr89463, i64 0                 ; &cloptr89463[0]
  %f89466 = load i64, i64* %i0ptr89464, align 8                                      ; load; *i0ptr89464
  %fptr89465 = inttoptr i64 %f89466 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89465(i64 %cont83653, i64 %rva85941)                ; tail call
  ret void

else89462:
  %a83276 = call i64 @prim_car(i64 %HqC$lst)                                         ; call prim_car
  %cloptr89467 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr89469 = getelementptr inbounds i64, i64* %cloptr89467, i64 1                  ; &eptr89469[1]
  %eptr89470 = getelementptr inbounds i64, i64* %cloptr89467, i64 2                  ; &eptr89470[2]
  %eptr89471 = getelementptr inbounds i64, i64* %cloptr89467, i64 3                  ; &eptr89471[3]
  %eptr89472 = getelementptr inbounds i64, i64* %cloptr89467, i64 4                  ; &eptr89472[4]
  store i64 %HqC$lst, i64* %eptr89469                                                ; *eptr89469 = %HqC$lst
  store i64 %BS5$_37map, i64* %eptr89470                                             ; *eptr89470 = %BS5$_37map
  store i64 %MTh$f, i64* %eptr89471                                                  ; *eptr89471 = %MTh$f
  store i64 %cont83653, i64* %eptr89472                                              ; *eptr89472 = %cont83653
  %eptr89468 = getelementptr inbounds i64, i64* %cloptr89467, i64 0                  ; &cloptr89467[0]
  %f89473 = ptrtoint void(i64,i64)* @lam86080 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89473, i64* %eptr89468                                                 ; store fptr
  %arg84697 = ptrtoint i64* %cloptr89467 to i64                                      ; closure cast; i64* -> i64
  %rva85961 = add i64 0, 0                                                           ; quoted ()
  %rva85960 = call i64 @prim_cons(i64 %a83276, i64 %rva85961)                        ; call prim_cons
  %rva85959 = call i64 @prim_cons(i64 %arg84697, i64 %rva85960)                      ; call prim_cons
  %cloptr89474 = inttoptr i64 %MTh$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89475 = getelementptr inbounds i64, i64* %cloptr89474, i64 0                 ; &cloptr89474[0]
  %f89477 = load i64, i64* %i0ptr89475, align 8                                      ; load; *i0ptr89475
  %fptr89476 = inttoptr i64 %f89477 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89476(i64 %MTh$f, i64 %rva85959)                    ; tail call
  ret void
}


define void @lam86080(i64 %env86081, i64 %rvp85958) {
  %envptr89478 = inttoptr i64 %env86081 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89479 = getelementptr inbounds i64, i64* %envptr89478, i64 4                ; &envptr89478[4]
  %cont83653 = load i64, i64* %envptr89479, align 8                                  ; load; *envptr89479
  %envptr89480 = inttoptr i64 %env86081 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89481 = getelementptr inbounds i64, i64* %envptr89480, i64 3                ; &envptr89480[3]
  %MTh$f = load i64, i64* %envptr89481, align 8                                      ; load; *envptr89481
  %envptr89482 = inttoptr i64 %env86081 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89483 = getelementptr inbounds i64, i64* %envptr89482, i64 2                ; &envptr89482[2]
  %BS5$_37map = load i64, i64* %envptr89483, align 8                                 ; load; *envptr89483
  %envptr89484 = inttoptr i64 %env86081 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89485 = getelementptr inbounds i64, i64* %envptr89484, i64 1                ; &envptr89484[1]
  %HqC$lst = load i64, i64* %envptr89485, align 8                                    ; load; *envptr89485
  %_9583654 = call i64 @prim_car(i64 %rvp85958)                                      ; call prim_car
  %rvp85957 = call i64 @prim_cdr(i64 %rvp85958)                                      ; call prim_cdr
  %a83277 = call i64 @prim_car(i64 %rvp85957)                                        ; call prim_car
  %na85945 = call i64 @prim_cdr(i64 %rvp85957)                                       ; call prim_cdr
  %a83278 = call i64 @prim_cdr(i64 %HqC$lst)                                         ; call prim_cdr
  %cloptr89486 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89488 = getelementptr inbounds i64, i64* %cloptr89486, i64 1                  ; &eptr89488[1]
  %eptr89489 = getelementptr inbounds i64, i64* %cloptr89486, i64 2                  ; &eptr89489[2]
  store i64 %cont83653, i64* %eptr89488                                              ; *eptr89488 = %cont83653
  store i64 %a83277, i64* %eptr89489                                                 ; *eptr89489 = %a83277
  %eptr89487 = getelementptr inbounds i64, i64* %cloptr89486, i64 0                  ; &cloptr89486[0]
  %f89490 = ptrtoint void(i64,i64)* @lam86078 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89490, i64* %eptr89487                                                 ; store fptr
  %arg84702 = ptrtoint i64* %cloptr89486 to i64                                      ; closure cast; i64* -> i64
  %rva85956 = add i64 0, 0                                                           ; quoted ()
  %rva85955 = call i64 @prim_cons(i64 %a83278, i64 %rva85956)                        ; call prim_cons
  %rva85954 = call i64 @prim_cons(i64 %MTh$f, i64 %rva85955)                         ; call prim_cons
  %rva85953 = call i64 @prim_cons(i64 %arg84702, i64 %rva85954)                      ; call prim_cons
  %cloptr89491 = inttoptr i64 %BS5$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr89492 = getelementptr inbounds i64, i64* %cloptr89491, i64 0                 ; &cloptr89491[0]
  %f89494 = load i64, i64* %i0ptr89492, align 8                                      ; load; *i0ptr89492
  %fptr89493 = inttoptr i64 %f89494 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89493(i64 %BS5$_37map, i64 %rva85953)               ; tail call
  ret void
}


define void @lam86078(i64 %env86079, i64 %rvp85952) {
  %envptr89495 = inttoptr i64 %env86079 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89496 = getelementptr inbounds i64, i64* %envptr89495, i64 2                ; &envptr89495[2]
  %a83277 = load i64, i64* %envptr89496, align 8                                     ; load; *envptr89496
  %envptr89497 = inttoptr i64 %env86079 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89498 = getelementptr inbounds i64, i64* %envptr89497, i64 1                ; &envptr89497[1]
  %cont83653 = load i64, i64* %envptr89498, align 8                                  ; load; *envptr89498
  %_9583655 = call i64 @prim_car(i64 %rvp85952)                                      ; call prim_car
  %rvp85951 = call i64 @prim_cdr(i64 %rvp85952)                                      ; call prim_cdr
  %a83279 = call i64 @prim_car(i64 %rvp85951)                                        ; call prim_car
  %na85947 = call i64 @prim_cdr(i64 %rvp85951)                                       ; call prim_cdr
  %retprim83656 = call i64 @prim_cons(i64 %a83277, i64 %a83279)                      ; call prim_cons
  %arg84707 = add i64 0, 0                                                           ; quoted ()
  %rva85950 = add i64 0, 0                                                           ; quoted ()
  %rva85949 = call i64 @prim_cons(i64 %retprim83656, i64 %rva85950)                  ; call prim_cons
  %rva85948 = call i64 @prim_cons(i64 %arg84707, i64 %rva85949)                      ; call prim_cons
  %cloptr89499 = inttoptr i64 %cont83653 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89500 = getelementptr inbounds i64, i64* %cloptr89499, i64 0                 ; &cloptr89499[0]
  %f89502 = load i64, i64* %i0ptr89500, align 8                                      ; load; *i0ptr89500
  %fptr89501 = inttoptr i64 %f89502 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89501(i64 %cont83653, i64 %rva85948)                ; tail call
  ret void
}


define void @lam86067(i64 %env86068, i64 %rvp86003) {
  %cont83657 = call i64 @prim_car(i64 %rvp86003)                                     ; call prim_car
  %rvp86002 = call i64 @prim_cdr(i64 %rvp86003)                                      ; call prim_cdr
  %xq3$_37foldr1 = call i64 @prim_car(i64 %rvp86002)                                 ; call prim_car
  %na85976 = call i64 @prim_cdr(i64 %rvp86002)                                       ; call prim_cdr
  %arg84710 = add i64 0, 0                                                           ; quoted ()
  %cloptr89503 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89505 = getelementptr inbounds i64, i64* %cloptr89503, i64 1                  ; &eptr89505[1]
  store i64 %xq3$_37foldr1, i64* %eptr89505                                          ; *eptr89505 = %xq3$_37foldr1
  %eptr89504 = getelementptr inbounds i64, i64* %cloptr89503, i64 0                  ; &cloptr89503[0]
  %f89506 = ptrtoint void(i64,i64)* @lam86064 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89506, i64* %eptr89504                                                 ; store fptr
  %arg84709 = ptrtoint i64* %cloptr89503 to i64                                      ; closure cast; i64* -> i64
  %rva86001 = add i64 0, 0                                                           ; quoted ()
  %rva86000 = call i64 @prim_cons(i64 %arg84709, i64 %rva86001)                      ; call prim_cons
  %rva85999 = call i64 @prim_cons(i64 %arg84710, i64 %rva86000)                      ; call prim_cons
  %cloptr89507 = inttoptr i64 %cont83657 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89508 = getelementptr inbounds i64, i64* %cloptr89507, i64 0                 ; &cloptr89507[0]
  %f89510 = load i64, i64* %i0ptr89508, align 8                                      ; load; *i0ptr89508
  %fptr89509 = inttoptr i64 %f89510 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89509(i64 %cont83657, i64 %rva85999)                ; tail call
  ret void
}


define void @lam86064(i64 %env86065, i64 %rvp85998) {
  %envptr89511 = inttoptr i64 %env86065 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89512 = getelementptr inbounds i64, i64* %envptr89511, i64 1                ; &envptr89511[1]
  %xq3$_37foldr1 = load i64, i64* %envptr89512, align 8                              ; load; *envptr89512
  %cont83658 = call i64 @prim_car(i64 %rvp85998)                                     ; call prim_car
  %rvp85997 = call i64 @prim_cdr(i64 %rvp85998)                                      ; call prim_cdr
  %oI4$f = call i64 @prim_car(i64 %rvp85997)                                         ; call prim_car
  %rvp85996 = call i64 @prim_cdr(i64 %rvp85997)                                      ; call prim_cdr
  %N9x$acc = call i64 @prim_car(i64 %rvp85996)                                       ; call prim_car
  %rvp85995 = call i64 @prim_cdr(i64 %rvp85996)                                      ; call prim_cdr
  %hSP$lst = call i64 @prim_car(i64 %rvp85995)                                       ; call prim_car
  %na85978 = call i64 @prim_cdr(i64 %rvp85995)                                       ; call prim_cdr
  %a83271 = call i64 @prim_null_63(i64 %hSP$lst)                                     ; call prim_null_63
  %cmp89513 = icmp eq i64 %a83271, 15                                                ; false?
  br i1 %cmp89513, label %else89515, label %then89514                                ; if

then89514:
  %arg84714 = add i64 0, 0                                                           ; quoted ()
  %rva85981 = add i64 0, 0                                                           ; quoted ()
  %rva85980 = call i64 @prim_cons(i64 %N9x$acc, i64 %rva85981)                       ; call prim_cons
  %rva85979 = call i64 @prim_cons(i64 %arg84714, i64 %rva85980)                      ; call prim_cons
  %cloptr89516 = inttoptr i64 %cont83658 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89517 = getelementptr inbounds i64, i64* %cloptr89516, i64 0                 ; &cloptr89516[0]
  %f89519 = load i64, i64* %i0ptr89517, align 8                                      ; load; *i0ptr89517
  %fptr89518 = inttoptr i64 %f89519 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89518(i64 %cont83658, i64 %rva85979)                ; tail call
  ret void

else89515:
  %a83272 = call i64 @prim_car(i64 %hSP$lst)                                         ; call prim_car
  %a83273 = call i64 @prim_cdr(i64 %hSP$lst)                                         ; call prim_cdr
  %cloptr89520 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr89522 = getelementptr inbounds i64, i64* %cloptr89520, i64 1                  ; &eptr89522[1]
  %eptr89523 = getelementptr inbounds i64, i64* %cloptr89520, i64 2                  ; &eptr89523[2]
  %eptr89524 = getelementptr inbounds i64, i64* %cloptr89520, i64 3                  ; &eptr89524[3]
  store i64 %cont83658, i64* %eptr89522                                              ; *eptr89522 = %cont83658
  store i64 %a83272, i64* %eptr89523                                                 ; *eptr89523 = %a83272
  store i64 %oI4$f, i64* %eptr89524                                                  ; *eptr89524 = %oI4$f
  %eptr89521 = getelementptr inbounds i64, i64* %cloptr89520, i64 0                  ; &cloptr89520[0]
  %f89525 = ptrtoint void(i64,i64)* @lam86062 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89525, i64* %eptr89521                                                 ; store fptr
  %arg84721 = ptrtoint i64* %cloptr89520 to i64                                      ; closure cast; i64* -> i64
  %rva85994 = add i64 0, 0                                                           ; quoted ()
  %rva85993 = call i64 @prim_cons(i64 %a83273, i64 %rva85994)                        ; call prim_cons
  %rva85992 = call i64 @prim_cons(i64 %N9x$acc, i64 %rva85993)                       ; call prim_cons
  %rva85991 = call i64 @prim_cons(i64 %oI4$f, i64 %rva85992)                         ; call prim_cons
  %rva85990 = call i64 @prim_cons(i64 %arg84721, i64 %rva85991)                      ; call prim_cons
  %cloptr89526 = inttoptr i64 %xq3$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr89527 = getelementptr inbounds i64, i64* %cloptr89526, i64 0                 ; &cloptr89526[0]
  %f89529 = load i64, i64* %i0ptr89527, align 8                                      ; load; *i0ptr89527
  %fptr89528 = inttoptr i64 %f89529 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89528(i64 %xq3$_37foldr1, i64 %rva85990)            ; tail call
  ret void
}


define void @lam86062(i64 %env86063, i64 %rvp85989) {
  %envptr89530 = inttoptr i64 %env86063 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89531 = getelementptr inbounds i64, i64* %envptr89530, i64 3                ; &envptr89530[3]
  %oI4$f = load i64, i64* %envptr89531, align 8                                      ; load; *envptr89531
  %envptr89532 = inttoptr i64 %env86063 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89533 = getelementptr inbounds i64, i64* %envptr89532, i64 2                ; &envptr89532[2]
  %a83272 = load i64, i64* %envptr89533, align 8                                     ; load; *envptr89533
  %envptr89534 = inttoptr i64 %env86063 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89535 = getelementptr inbounds i64, i64* %envptr89534, i64 1                ; &envptr89534[1]
  %cont83658 = load i64, i64* %envptr89535, align 8                                  ; load; *envptr89535
  %_9583659 = call i64 @prim_car(i64 %rvp85989)                                      ; call prim_car
  %rvp85988 = call i64 @prim_cdr(i64 %rvp85989)                                      ; call prim_cdr
  %a83274 = call i64 @prim_car(i64 %rvp85988)                                        ; call prim_car
  %na85983 = call i64 @prim_cdr(i64 %rvp85988)                                       ; call prim_cdr
  %rva85987 = add i64 0, 0                                                           ; quoted ()
  %rva85986 = call i64 @prim_cons(i64 %a83274, i64 %rva85987)                        ; call prim_cons
  %rva85985 = call i64 @prim_cons(i64 %a83272, i64 %rva85986)                        ; call prim_cons
  %rva85984 = call i64 @prim_cons(i64 %cont83658, i64 %rva85985)                     ; call prim_cons
  %cloptr89536 = inttoptr i64 %oI4$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89537 = getelementptr inbounds i64, i64* %cloptr89536, i64 0                 ; &cloptr89536[0]
  %f89539 = load i64, i64* %i0ptr89537, align 8                                      ; load; *i0ptr89537
  %fptr89538 = inttoptr i64 %f89539 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89538(i64 %oI4$f, i64 %rva85984)                    ; tail call
  ret void
}


define void @lam86054(i64 %env86055, i64 %rvp86036) {
  %cont83661 = call i64 @prim_car(i64 %rvp86036)                                     ; call prim_car
  %rvp86035 = call i64 @prim_cdr(i64 %rvp86036)                                      ; call prim_cdr
  %Mv7$y = call i64 @prim_car(i64 %rvp86035)                                         ; call prim_car
  %na86010 = call i64 @prim_cdr(i64 %rvp86035)                                       ; call prim_cdr
  %arg84728 = add i64 0, 0                                                           ; quoted ()
  %cloptr89540 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr89542 = getelementptr inbounds i64, i64* %cloptr89540, i64 1                  ; &eptr89542[1]
  store i64 %Mv7$y, i64* %eptr89542                                                  ; *eptr89542 = %Mv7$y
  %eptr89541 = getelementptr inbounds i64, i64* %cloptr89540, i64 0                  ; &cloptr89540[0]
  %f89543 = ptrtoint void(i64,i64)* @lam86051 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89543, i64* %eptr89541                                                 ; store fptr
  %arg84727 = ptrtoint i64* %cloptr89540 to i64                                      ; closure cast; i64* -> i64
  %rva86034 = add i64 0, 0                                                           ; quoted ()
  %rva86033 = call i64 @prim_cons(i64 %arg84727, i64 %rva86034)                      ; call prim_cons
  %rva86032 = call i64 @prim_cons(i64 %arg84728, i64 %rva86033)                      ; call prim_cons
  %cloptr89544 = inttoptr i64 %cont83661 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr89545 = getelementptr inbounds i64, i64* %cloptr89544, i64 0                 ; &cloptr89544[0]
  %f89547 = load i64, i64* %i0ptr89545, align 8                                      ; load; *i0ptr89545
  %fptr89546 = inttoptr i64 %f89547 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89546(i64 %cont83661, i64 %rva86032)                ; tail call
  ret void
}


define void @lam86051(i64 %env86052, i64 %rvp86031) {
  %envptr89548 = inttoptr i64 %env86052 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89549 = getelementptr inbounds i64, i64* %envptr89548, i64 1                ; &envptr89548[1]
  %Mv7$y = load i64, i64* %envptr89549, align 8                                      ; load; *envptr89549
  %cont83662 = call i64 @prim_car(i64 %rvp86031)                                     ; call prim_car
  %rvp86030 = call i64 @prim_cdr(i64 %rvp86031)                                      ; call prim_cdr
  %Rto$f = call i64 @prim_car(i64 %rvp86030)                                         ; call prim_car
  %na86012 = call i64 @prim_cdr(i64 %rvp86030)                                       ; call prim_cdr
  %cloptr89550 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89552 = getelementptr inbounds i64, i64* %cloptr89550, i64 1                  ; &eptr89552[1]
  %eptr89553 = getelementptr inbounds i64, i64* %cloptr89550, i64 2                  ; &eptr89553[2]
  store i64 %Mv7$y, i64* %eptr89552                                                  ; *eptr89552 = %Mv7$y
  store i64 %Rto$f, i64* %eptr89553                                                  ; *eptr89553 = %Rto$f
  %eptr89551 = getelementptr inbounds i64, i64* %cloptr89550, i64 0                  ; &cloptr89550[0]
  %f89554 = ptrtoint void(i64,i64)* @lam86049 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89554, i64* %eptr89551                                                 ; store fptr
  %arg84730 = ptrtoint i64* %cloptr89550 to i64                                      ; closure cast; i64* -> i64
  %rva86029 = add i64 0, 0                                                           ; quoted ()
  %rva86028 = call i64 @prim_cons(i64 %arg84730, i64 %rva86029)                      ; call prim_cons
  %rva86027 = call i64 @prim_cons(i64 %cont83662, i64 %rva86028)                     ; call prim_cons
  %cloptr89555 = inttoptr i64 %Rto$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89556 = getelementptr inbounds i64, i64* %cloptr89555, i64 0                 ; &cloptr89555[0]
  %f89558 = load i64, i64* %i0ptr89556, align 8                                      ; load; *i0ptr89556
  %fptr89557 = inttoptr i64 %f89558 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89557(i64 %Rto$f, i64 %rva86027)                    ; tail call
  ret void
}


define void @lam86049(i64 %env86050, i64 %SfU$args83664) {
  %envptr89559 = inttoptr i64 %env86050 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89560 = getelementptr inbounds i64, i64* %envptr89559, i64 2                ; &envptr89559[2]
  %Rto$f = load i64, i64* %envptr89560, align 8                                      ; load; *envptr89560
  %envptr89561 = inttoptr i64 %env86050 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89562 = getelementptr inbounds i64, i64* %envptr89561, i64 1                ; &envptr89561[1]
  %Mv7$y = load i64, i64* %envptr89562, align 8                                      ; load; *envptr89562
  %cont83663 = call i64 @prim_car(i64 %SfU$args83664)                                ; call prim_car
  %SfU$args = call i64 @prim_cdr(i64 %SfU$args83664)                                 ; call prim_cdr
  %cloptr89563 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr89565 = getelementptr inbounds i64, i64* %cloptr89563, i64 1                  ; &eptr89565[1]
  %eptr89566 = getelementptr inbounds i64, i64* %cloptr89563, i64 2                  ; &eptr89566[2]
  %eptr89567 = getelementptr inbounds i64, i64* %cloptr89563, i64 3                  ; &eptr89567[3]
  store i64 %Rto$f, i64* %eptr89565                                                  ; *eptr89565 = %Rto$f
  store i64 %SfU$args, i64* %eptr89566                                               ; *eptr89566 = %SfU$args
  store i64 %cont83663, i64* %eptr89567                                              ; *eptr89567 = %cont83663
  %eptr89564 = getelementptr inbounds i64, i64* %cloptr89563, i64 0                  ; &cloptr89563[0]
  %f89568 = ptrtoint void(i64,i64)* @lam86047 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89568, i64* %eptr89564                                                 ; store fptr
  %arg84736 = ptrtoint i64* %cloptr89563 to i64                                      ; closure cast; i64* -> i64
  %rva86026 = add i64 0, 0                                                           ; quoted ()
  %rva86025 = call i64 @prim_cons(i64 %Mv7$y, i64 %rva86026)                         ; call prim_cons
  %rva86024 = call i64 @prim_cons(i64 %arg84736, i64 %rva86025)                      ; call prim_cons
  %cloptr89569 = inttoptr i64 %Mv7$y to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr89570 = getelementptr inbounds i64, i64* %cloptr89569, i64 0                 ; &cloptr89569[0]
  %f89572 = load i64, i64* %i0ptr89570, align 8                                      ; load; *i0ptr89570
  %fptr89571 = inttoptr i64 %f89572 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89571(i64 %Mv7$y, i64 %rva86024)                    ; tail call
  ret void
}


define void @lam86047(i64 %env86048, i64 %rvp86023) {
  %envptr89573 = inttoptr i64 %env86048 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89574 = getelementptr inbounds i64, i64* %envptr89573, i64 3                ; &envptr89573[3]
  %cont83663 = load i64, i64* %envptr89574, align 8                                  ; load; *envptr89574
  %envptr89575 = inttoptr i64 %env86048 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89576 = getelementptr inbounds i64, i64* %envptr89575, i64 2                ; &envptr89575[2]
  %SfU$args = load i64, i64* %envptr89576, align 8                                   ; load; *envptr89576
  %envptr89577 = inttoptr i64 %env86048 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89578 = getelementptr inbounds i64, i64* %envptr89577, i64 1                ; &envptr89577[1]
  %Rto$f = load i64, i64* %envptr89578, align 8                                      ; load; *envptr89578
  %_9583665 = call i64 @prim_car(i64 %rvp86023)                                      ; call prim_car
  %rvp86022 = call i64 @prim_cdr(i64 %rvp86023)                                      ; call prim_cdr
  %a83269 = call i64 @prim_car(i64 %rvp86022)                                        ; call prim_car
  %na86014 = call i64 @prim_cdr(i64 %rvp86022)                                       ; call prim_cdr
  %cloptr89579 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr89581 = getelementptr inbounds i64, i64* %cloptr89579, i64 1                  ; &eptr89581[1]
  %eptr89582 = getelementptr inbounds i64, i64* %cloptr89579, i64 2                  ; &eptr89582[2]
  store i64 %SfU$args, i64* %eptr89581                                               ; *eptr89581 = %SfU$args
  store i64 %cont83663, i64* %eptr89582                                              ; *eptr89582 = %cont83663
  %eptr89580 = getelementptr inbounds i64, i64* %cloptr89579, i64 0                  ; &cloptr89579[0]
  %f89583 = ptrtoint void(i64,i64)* @lam86045 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f89583, i64* %eptr89580                                                 ; store fptr
  %arg84739 = ptrtoint i64* %cloptr89579 to i64                                      ; closure cast; i64* -> i64
  %rva86021 = add i64 0, 0                                                           ; quoted ()
  %rva86020 = call i64 @prim_cons(i64 %Rto$f, i64 %rva86021)                         ; call prim_cons
  %rva86019 = call i64 @prim_cons(i64 %arg84739, i64 %rva86020)                      ; call prim_cons
  %cloptr89584 = inttoptr i64 %a83269 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89585 = getelementptr inbounds i64, i64* %cloptr89584, i64 0                 ; &cloptr89584[0]
  %f89587 = load i64, i64* %i0ptr89585, align 8                                      ; load; *i0ptr89585
  %fptr89586 = inttoptr i64 %f89587 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89586(i64 %a83269, i64 %rva86019)                   ; tail call
  ret void
}


define void @lam86045(i64 %env86046, i64 %rvp86018) {
  %envptr89588 = inttoptr i64 %env86046 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89589 = getelementptr inbounds i64, i64* %envptr89588, i64 2                ; &envptr89588[2]
  %cont83663 = load i64, i64* %envptr89589, align 8                                  ; load; *envptr89589
  %envptr89590 = inttoptr i64 %env86046 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr89591 = getelementptr inbounds i64, i64* %envptr89590, i64 1                ; &envptr89590[1]
  %SfU$args = load i64, i64* %envptr89591, align 8                                   ; load; *envptr89591
  %_9583666 = call i64 @prim_car(i64 %rvp86018)                                      ; call prim_car
  %rvp86017 = call i64 @prim_cdr(i64 %rvp86018)                                      ; call prim_cdr
  %a83270 = call i64 @prim_car(i64 %rvp86017)                                        ; call prim_car
  %na86016 = call i64 @prim_cdr(i64 %rvp86017)                                       ; call prim_cdr
  %cps_45lst83667 = call i64 @prim_cons(i64 %cont83663, i64 %SfU$args)               ; call prim_cons
  %cloptr89592 = inttoptr i64 %a83270 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr89593 = getelementptr inbounds i64, i64* %cloptr89592, i64 0                 ; &cloptr89592[0]
  %f89595 = load i64, i64* %i0ptr89593, align 8                                      ; load; *i0ptr89593
  %fptr89594 = inttoptr i64 %f89595 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr89594(i64 %a83270, i64 %cps_45lst83667)             ; tail call
  ret void
}





@sym87627 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
