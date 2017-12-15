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
  %cloptr77774 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77775 = getelementptr inbounds i64, i64* %cloptr77774, i64 0                  ; &cloptr77774[0]
  %f77776 = ptrtoint void(i64,i64)* @lam77772 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77776, i64* %eptr77775                                                 ; store fptr
  %arg74623 = ptrtoint i64* %cloptr77774 to i64                                      ; closure cast; i64* -> i64
  %cloptr77777 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77778 = getelementptr inbounds i64, i64* %cloptr77777, i64 0                  ; &cloptr77777[0]
  %f77779 = ptrtoint void(i64,i64)* @lam77769 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77779, i64* %eptr77778                                                 ; store fptr
  %arg74622 = ptrtoint i64* %cloptr77777 to i64                                      ; closure cast; i64* -> i64
  %cloptr77780 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77781 = getelementptr inbounds i64, i64* %cloptr77780, i64 0                  ; &cloptr77780[0]
  %f77782 = ptrtoint void(i64,i64)* @lam77007 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77782, i64* %eptr77781                                                 ; store fptr
  %arg74621 = ptrtoint i64* %cloptr77780 to i64                                      ; closure cast; i64* -> i64
  %rva76992 = add i64 0, 0                                                           ; quoted ()
  %rva76991 = call i64 @prim_cons(i64 %arg74621, i64 %rva76992)                      ; call prim_cons
  %rva76990 = call i64 @prim_cons(i64 %arg74622, i64 %rva76991)                      ; call prim_cons
  %cloptr77783 = inttoptr i64 %arg74623 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77784 = getelementptr inbounds i64, i64* %cloptr77783, i64 0                 ; &cloptr77783[0]
  %f77786 = load i64, i64* %i0ptr77784, align 8                                      ; load; *i0ptr77784
  %fptr77785 = inttoptr i64 %f77786 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77785(i64 %arg74623, i64 %rva76990)                 ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam77772(i64 %env77773, i64 %rvp75702) {
  %cont74613 = call i64 @prim_car(i64 %rvp75702)                                     ; call prim_car
  %rvp75701 = call i64 @prim_cdr(i64 %rvp75702)                                      ; call prim_cdr
  %tF5$yu = call i64 @prim_car(i64 %rvp75701)                                        ; call prim_car
  %na75697 = call i64 @prim_cdr(i64 %rvp75701)                                       ; call prim_cdr
  %rva75700 = add i64 0, 0                                                           ; quoted ()
  %rva75699 = call i64 @prim_cons(i64 %tF5$yu, i64 %rva75700)                        ; call prim_cons
  %rva75698 = call i64 @prim_cons(i64 %cont74613, i64 %rva75699)                     ; call prim_cons
  %cloptr77787 = inttoptr i64 %tF5$yu to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr77788 = getelementptr inbounds i64, i64* %cloptr77787, i64 0                 ; &cloptr77787[0]
  %f77790 = load i64, i64* %i0ptr77788, align 8                                      ; load; *i0ptr77788
  %fptr77789 = inttoptr i64 %f77790 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77789(i64 %tF5$yu, i64 %rva75698)                   ; tail call
  ret void
}


define void @lam77769(i64 %env77770, i64 %rvp76961) {
  %_9574387 = call i64 @prim_car(i64 %rvp76961)                                      ; call prim_car
  %rvp76960 = call i64 @prim_cdr(i64 %rvp76961)                                      ; call prim_cdr
  %iVe$Ycmb = call i64 @prim_car(i64 %rvp76960)                                      ; call prim_car
  %na75704 = call i64 @prim_cdr(i64 %rvp76960)                                       ; call prim_cdr
  %cloptr77791 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr77793 = getelementptr inbounds i64, i64* %cloptr77791, i64 1                  ; &eptr77793[1]
  store i64 %iVe$Ycmb, i64* %eptr77793                                               ; *eptr77793 = %iVe$Ycmb
  %eptr77792 = getelementptr inbounds i64, i64* %cloptr77791, i64 0                  ; &cloptr77791[0]
  %f77794 = ptrtoint void(i64,i64)* @lam77767 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77794, i64* %eptr77792                                                 ; store fptr
  %arg74628 = ptrtoint i64* %cloptr77791 to i64                                      ; closure cast; i64* -> i64
  %cloptr77795 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77796 = getelementptr inbounds i64, i64* %cloptr77795, i64 0                  ; &cloptr77795[0]
  %f77797 = ptrtoint void(i64,i64)* @lam77020 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77797, i64* %eptr77796                                                 ; store fptr
  %arg74627 = ptrtoint i64* %cloptr77795 to i64                                      ; closure cast; i64* -> i64
  %rva76959 = add i64 0, 0                                                           ; quoted ()
  %rva76958 = call i64 @prim_cons(i64 %arg74627, i64 %rva76959)                      ; call prim_cons
  %rva76957 = call i64 @prim_cons(i64 %arg74628, i64 %rva76958)                      ; call prim_cons
  %cloptr77798 = inttoptr i64 %iVe$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77799 = getelementptr inbounds i64, i64* %cloptr77798, i64 0                 ; &cloptr77798[0]
  %f77801 = load i64, i64* %i0ptr77799, align 8                                      ; load; *i0ptr77799
  %fptr77800 = inttoptr i64 %f77801 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77800(i64 %iVe$Ycmb, i64 %rva76957)                 ; tail call
  ret void
}


define void @lam77767(i64 %env77768, i64 %rvp76927) {
  %envptr77802 = inttoptr i64 %env77768 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77803 = getelementptr inbounds i64, i64* %envptr77802, i64 1                ; &envptr77802[1]
  %iVe$Ycmb = load i64, i64* %envptr77803, align 8                                   ; load; *envptr77803
  %_9574388 = call i64 @prim_car(i64 %rvp76927)                                      ; call prim_car
  %rvp76926 = call i64 @prim_cdr(i64 %rvp76927)                                      ; call prim_cdr
  %Cyf$_37foldr1 = call i64 @prim_car(i64 %rvp76926)                                 ; call prim_car
  %na75706 = call i64 @prim_cdr(i64 %rvp76926)                                       ; call prim_cdr
  %cloptr77804 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr77806 = getelementptr inbounds i64, i64* %cloptr77804, i64 1                  ; &eptr77806[1]
  %eptr77807 = getelementptr inbounds i64, i64* %cloptr77804, i64 2                  ; &eptr77807[2]
  store i64 %Cyf$_37foldr1, i64* %eptr77806                                          ; *eptr77806 = %Cyf$_37foldr1
  store i64 %iVe$Ycmb, i64* %eptr77807                                               ; *eptr77807 = %iVe$Ycmb
  %eptr77805 = getelementptr inbounds i64, i64* %cloptr77804, i64 0                  ; &cloptr77804[0]
  %f77808 = ptrtoint void(i64,i64)* @lam77765 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77808, i64* %eptr77805                                                 ; store fptr
  %arg74631 = ptrtoint i64* %cloptr77804 to i64                                      ; closure cast; i64* -> i64
  %cloptr77809 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77810 = getelementptr inbounds i64, i64* %cloptr77809, i64 0                  ; &cloptr77809[0]
  %f77811 = ptrtoint void(i64,i64)* @lam77038 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77811, i64* %eptr77810                                                 ; store fptr
  %arg74630 = ptrtoint i64* %cloptr77809 to i64                                      ; closure cast; i64* -> i64
  %rva76925 = add i64 0, 0                                                           ; quoted ()
  %rva76924 = call i64 @prim_cons(i64 %arg74630, i64 %rva76925)                      ; call prim_cons
  %rva76923 = call i64 @prim_cons(i64 %arg74631, i64 %rva76924)                      ; call prim_cons
  %cloptr77812 = inttoptr i64 %iVe$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77813 = getelementptr inbounds i64, i64* %cloptr77812, i64 0                 ; &cloptr77812[0]
  %f77815 = load i64, i64* %i0ptr77813, align 8                                      ; load; *i0ptr77813
  %fptr77814 = inttoptr i64 %f77815 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77814(i64 %iVe$Ycmb, i64 %rva76923)                 ; tail call
  ret void
}


define void @lam77765(i64 %env77766, i64 %rvp76889) {
  %envptr77816 = inttoptr i64 %env77766 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77817 = getelementptr inbounds i64, i64* %envptr77816, i64 2                ; &envptr77816[2]
  %iVe$Ycmb = load i64, i64* %envptr77817, align 8                                   ; load; *envptr77817
  %envptr77818 = inttoptr i64 %env77766 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77819 = getelementptr inbounds i64, i64* %envptr77818, i64 1                ; &envptr77818[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr77819, align 8                              ; load; *envptr77819
  %_9574389 = call i64 @prim_car(i64 %rvp76889)                                      ; call prim_car
  %rvp76888 = call i64 @prim_cdr(i64 %rvp76889)                                      ; call prim_cdr
  %VtU$_37map1 = call i64 @prim_car(i64 %rvp76888)                                   ; call prim_car
  %na75708 = call i64 @prim_cdr(i64 %rvp76888)                                       ; call prim_cdr
  %cloptr77820 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr77822 = getelementptr inbounds i64, i64* %cloptr77820, i64 1                  ; &eptr77822[1]
  %eptr77823 = getelementptr inbounds i64, i64* %cloptr77820, i64 2                  ; &eptr77823[2]
  %eptr77824 = getelementptr inbounds i64, i64* %cloptr77820, i64 3                  ; &eptr77824[3]
  store i64 %Cyf$_37foldr1, i64* %eptr77822                                          ; *eptr77822 = %Cyf$_37foldr1
  store i64 %VtU$_37map1, i64* %eptr77823                                            ; *eptr77823 = %VtU$_37map1
  store i64 %iVe$Ycmb, i64* %eptr77824                                               ; *eptr77824 = %iVe$Ycmb
  %eptr77821 = getelementptr inbounds i64, i64* %cloptr77820, i64 0                  ; &cloptr77820[0]
  %f77825 = ptrtoint void(i64,i64)* @lam77763 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77825, i64* %eptr77821                                                 ; store fptr
  %arg74634 = ptrtoint i64* %cloptr77820 to i64                                      ; closure cast; i64* -> i64
  %cloptr77826 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77827 = getelementptr inbounds i64, i64* %cloptr77826, i64 0                  ; &cloptr77826[0]
  %f77828 = ptrtoint void(i64,i64)* @lam77058 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77828, i64* %eptr77827                                                 ; store fptr
  %arg74633 = ptrtoint i64* %cloptr77826 to i64                                      ; closure cast; i64* -> i64
  %rva76887 = add i64 0, 0                                                           ; quoted ()
  %rva76886 = call i64 @prim_cons(i64 %arg74633, i64 %rva76887)                      ; call prim_cons
  %rva76885 = call i64 @prim_cons(i64 %arg74634, i64 %rva76886)                      ; call prim_cons
  %cloptr77829 = inttoptr i64 %iVe$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77830 = getelementptr inbounds i64, i64* %cloptr77829, i64 0                 ; &cloptr77829[0]
  %f77832 = load i64, i64* %i0ptr77830, align 8                                      ; load; *i0ptr77830
  %fptr77831 = inttoptr i64 %f77832 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77831(i64 %iVe$Ycmb, i64 %rva76885)                 ; tail call
  ret void
}


define void @lam77763(i64 %env77764, i64 %rvp76855) {
  %envptr77833 = inttoptr i64 %env77764 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77834 = getelementptr inbounds i64, i64* %envptr77833, i64 3                ; &envptr77833[3]
  %iVe$Ycmb = load i64, i64* %envptr77834, align 8                                   ; load; *envptr77834
  %envptr77835 = inttoptr i64 %env77764 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77836 = getelementptr inbounds i64, i64* %envptr77835, i64 2                ; &envptr77835[2]
  %VtU$_37map1 = load i64, i64* %envptr77836, align 8                                ; load; *envptr77836
  %envptr77837 = inttoptr i64 %env77764 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77838 = getelementptr inbounds i64, i64* %envptr77837, i64 1                ; &envptr77837[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr77838, align 8                              ; load; *envptr77838
  %_9574390 = call i64 @prim_car(i64 %rvp76855)                                      ; call prim_car
  %rvp76854 = call i64 @prim_cdr(i64 %rvp76855)                                      ; call prim_cdr
  %BuE$_37take = call i64 @prim_car(i64 %rvp76854)                                   ; call prim_car
  %na75710 = call i64 @prim_cdr(i64 %rvp76854)                                       ; call prim_cdr
  %cloptr77839 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr77841 = getelementptr inbounds i64, i64* %cloptr77839, i64 1                  ; &eptr77841[1]
  %eptr77842 = getelementptr inbounds i64, i64* %cloptr77839, i64 2                  ; &eptr77842[2]
  %eptr77843 = getelementptr inbounds i64, i64* %cloptr77839, i64 3                  ; &eptr77843[3]
  %eptr77844 = getelementptr inbounds i64, i64* %cloptr77839, i64 4                  ; &eptr77844[4]
  store i64 %Cyf$_37foldr1, i64* %eptr77841                                          ; *eptr77841 = %Cyf$_37foldr1
  store i64 %BuE$_37take, i64* %eptr77842                                            ; *eptr77842 = %BuE$_37take
  store i64 %VtU$_37map1, i64* %eptr77843                                            ; *eptr77843 = %VtU$_37map1
  store i64 %iVe$Ycmb, i64* %eptr77844                                               ; *eptr77844 = %iVe$Ycmb
  %eptr77840 = getelementptr inbounds i64, i64* %cloptr77839, i64 0                  ; &cloptr77839[0]
  %f77845 = ptrtoint void(i64,i64)* @lam77761 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77845, i64* %eptr77840                                                 ; store fptr
  %arg74637 = ptrtoint i64* %cloptr77839 to i64                                      ; closure cast; i64* -> i64
  %cloptr77846 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77847 = getelementptr inbounds i64, i64* %cloptr77846, i64 0                  ; &cloptr77846[0]
  %f77848 = ptrtoint void(i64,i64)* @lam77074 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77848, i64* %eptr77847                                                 ; store fptr
  %arg74636 = ptrtoint i64* %cloptr77846 to i64                                      ; closure cast; i64* -> i64
  %rva76853 = add i64 0, 0                                                           ; quoted ()
  %rva76852 = call i64 @prim_cons(i64 %arg74636, i64 %rva76853)                      ; call prim_cons
  %rva76851 = call i64 @prim_cons(i64 %arg74637, i64 %rva76852)                      ; call prim_cons
  %cloptr77849 = inttoptr i64 %iVe$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77850 = getelementptr inbounds i64, i64* %cloptr77849, i64 0                 ; &cloptr77849[0]
  %f77852 = load i64, i64* %i0ptr77850, align 8                                      ; load; *i0ptr77850
  %fptr77851 = inttoptr i64 %f77852 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77851(i64 %iVe$Ycmb, i64 %rva76851)                 ; tail call
  ret void
}


define void @lam77761(i64 %env77762, i64 %rvp76826) {
  %envptr77853 = inttoptr i64 %env77762 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77854 = getelementptr inbounds i64, i64* %envptr77853, i64 4                ; &envptr77853[4]
  %iVe$Ycmb = load i64, i64* %envptr77854, align 8                                   ; load; *envptr77854
  %envptr77855 = inttoptr i64 %env77762 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77856 = getelementptr inbounds i64, i64* %envptr77855, i64 3                ; &envptr77855[3]
  %VtU$_37map1 = load i64, i64* %envptr77856, align 8                                ; load; *envptr77856
  %envptr77857 = inttoptr i64 %env77762 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77858 = getelementptr inbounds i64, i64* %envptr77857, i64 2                ; &envptr77857[2]
  %BuE$_37take = load i64, i64* %envptr77858, align 8                                ; load; *envptr77858
  %envptr77859 = inttoptr i64 %env77762 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77860 = getelementptr inbounds i64, i64* %envptr77859, i64 1                ; &envptr77859[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr77860, align 8                              ; load; *envptr77860
  %_9574391 = call i64 @prim_car(i64 %rvp76826)                                      ; call prim_car
  %rvp76825 = call i64 @prim_cdr(i64 %rvp76826)                                      ; call prim_cdr
  %dQj$_37length = call i64 @prim_car(i64 %rvp76825)                                 ; call prim_car
  %na75712 = call i64 @prim_cdr(i64 %rvp76825)                                       ; call prim_cdr
  %cloptr77861 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr77863 = getelementptr inbounds i64, i64* %cloptr77861, i64 1                  ; &eptr77863[1]
  %eptr77864 = getelementptr inbounds i64, i64* %cloptr77861, i64 2                  ; &eptr77864[2]
  %eptr77865 = getelementptr inbounds i64, i64* %cloptr77861, i64 3                  ; &eptr77865[3]
  %eptr77866 = getelementptr inbounds i64, i64* %cloptr77861, i64 4                  ; &eptr77866[4]
  %eptr77867 = getelementptr inbounds i64, i64* %cloptr77861, i64 5                  ; &eptr77867[5]
  store i64 %dQj$_37length, i64* %eptr77863                                          ; *eptr77863 = %dQj$_37length
  store i64 %Cyf$_37foldr1, i64* %eptr77864                                          ; *eptr77864 = %Cyf$_37foldr1
  store i64 %BuE$_37take, i64* %eptr77865                                            ; *eptr77865 = %BuE$_37take
  store i64 %VtU$_37map1, i64* %eptr77866                                            ; *eptr77866 = %VtU$_37map1
  store i64 %iVe$Ycmb, i64* %eptr77867                                               ; *eptr77867 = %iVe$Ycmb
  %eptr77862 = getelementptr inbounds i64, i64* %cloptr77861, i64 0                  ; &cloptr77861[0]
  %f77868 = ptrtoint void(i64,i64)* @lam77759 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77868, i64* %eptr77862                                                 ; store fptr
  %arg74640 = ptrtoint i64* %cloptr77861 to i64                                      ; closure cast; i64* -> i64
  %cloptr77869 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77870 = getelementptr inbounds i64, i64* %cloptr77869, i64 0                  ; &cloptr77869[0]
  %f77871 = ptrtoint void(i64,i64)* @lam77087 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77871, i64* %eptr77870                                                 ; store fptr
  %arg74639 = ptrtoint i64* %cloptr77869 to i64                                      ; closure cast; i64* -> i64
  %rva76824 = add i64 0, 0                                                           ; quoted ()
  %rva76823 = call i64 @prim_cons(i64 %arg74639, i64 %rva76824)                      ; call prim_cons
  %rva76822 = call i64 @prim_cons(i64 %arg74640, i64 %rva76823)                      ; call prim_cons
  %cloptr77872 = inttoptr i64 %iVe$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77873 = getelementptr inbounds i64, i64* %cloptr77872, i64 0                 ; &cloptr77872[0]
  %f77875 = load i64, i64* %i0ptr77873, align 8                                      ; load; *i0ptr77873
  %fptr77874 = inttoptr i64 %f77875 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77874(i64 %iVe$Ycmb, i64 %rva76822)                 ; tail call
  ret void
}


define void @lam77759(i64 %env77760, i64 %rvp76792) {
  %envptr77876 = inttoptr i64 %env77760 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77877 = getelementptr inbounds i64, i64* %envptr77876, i64 5                ; &envptr77876[5]
  %iVe$Ycmb = load i64, i64* %envptr77877, align 8                                   ; load; *envptr77877
  %envptr77878 = inttoptr i64 %env77760 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77879 = getelementptr inbounds i64, i64* %envptr77878, i64 4                ; &envptr77878[4]
  %VtU$_37map1 = load i64, i64* %envptr77879, align 8                                ; load; *envptr77879
  %envptr77880 = inttoptr i64 %env77760 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77881 = getelementptr inbounds i64, i64* %envptr77880, i64 3                ; &envptr77880[3]
  %BuE$_37take = load i64, i64* %envptr77881, align 8                                ; load; *envptr77881
  %envptr77882 = inttoptr i64 %env77760 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77883 = getelementptr inbounds i64, i64* %envptr77882, i64 2                ; &envptr77882[2]
  %Cyf$_37foldr1 = load i64, i64* %envptr77883, align 8                              ; load; *envptr77883
  %envptr77884 = inttoptr i64 %env77760 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77885 = getelementptr inbounds i64, i64* %envptr77884, i64 1                ; &envptr77884[1]
  %dQj$_37length = load i64, i64* %envptr77885, align 8                              ; load; *envptr77885
  %_9574392 = call i64 @prim_car(i64 %rvp76792)                                      ; call prim_car
  %rvp76791 = call i64 @prim_cdr(i64 %rvp76792)                                      ; call prim_cdr
  %gFG$_37foldl1 = call i64 @prim_car(i64 %rvp76791)                                 ; call prim_car
  %na75714 = call i64 @prim_cdr(i64 %rvp76791)                                       ; call prim_cdr
  %cloptr77886 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr77888 = getelementptr inbounds i64, i64* %cloptr77886, i64 1                  ; &eptr77888[1]
  store i64 %gFG$_37foldl1, i64* %eptr77888                                          ; *eptr77888 = %gFG$_37foldl1
  %eptr77887 = getelementptr inbounds i64, i64* %cloptr77886, i64 0                  ; &cloptr77886[0]
  %f77889 = ptrtoint void(i64,i64)* @lam77757 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77889, i64* %eptr77887                                                 ; store fptr
  %YaV$_37last = ptrtoint i64* %cloptr77886 to i64                                   ; closure cast; i64* -> i64
  %cloptr77890 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr77892 = getelementptr inbounds i64, i64* %cloptr77890, i64 1                  ; &eptr77892[1]
  %eptr77893 = getelementptr inbounds i64, i64* %cloptr77890, i64 2                  ; &eptr77893[2]
  store i64 %dQj$_37length, i64* %eptr77892                                          ; *eptr77892 = %dQj$_37length
  store i64 %BuE$_37take, i64* %eptr77893                                            ; *eptr77893 = %BuE$_37take
  %eptr77891 = getelementptr inbounds i64, i64* %cloptr77890, i64 0                  ; &cloptr77890[0]
  %f77894 = ptrtoint void(i64,i64)* @lam77749 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77894, i64* %eptr77891                                                 ; store fptr
  %qPk$_37drop_45right = ptrtoint i64* %cloptr77890 to i64                           ; closure cast; i64* -> i64
  %cloptr77895 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr77897 = getelementptr inbounds i64, i64* %cloptr77895, i64 1                  ; &eptr77897[1]
  %eptr77898 = getelementptr inbounds i64, i64* %cloptr77895, i64 2                  ; &eptr77898[2]
  %eptr77899 = getelementptr inbounds i64, i64* %cloptr77895, i64 3                  ; &eptr77899[3]
  %eptr77900 = getelementptr inbounds i64, i64* %cloptr77895, i64 4                  ; &eptr77900[4]
  %eptr77901 = getelementptr inbounds i64, i64* %cloptr77895, i64 5                  ; &eptr77901[5]
  %eptr77902 = getelementptr inbounds i64, i64* %cloptr77895, i64 6                  ; &eptr77902[6]
  store i64 %gFG$_37foldl1, i64* %eptr77897                                          ; *eptr77897 = %gFG$_37foldl1
  store i64 %dQj$_37length, i64* %eptr77898                                          ; *eptr77898 = %dQj$_37length
  store i64 %Cyf$_37foldr1, i64* %eptr77899                                          ; *eptr77899 = %Cyf$_37foldr1
  store i64 %qPk$_37drop_45right, i64* %eptr77900                                    ; *eptr77900 = %qPk$_37drop_45right
  store i64 %YaV$_37last, i64* %eptr77901                                            ; *eptr77901 = %YaV$_37last
  store i64 %iVe$Ycmb, i64* %eptr77902                                               ; *eptr77902 = %iVe$Ycmb
  %eptr77896 = getelementptr inbounds i64, i64* %cloptr77895, i64 0                  ; &cloptr77895[0]
  %f77903 = ptrtoint void(i64,i64)* @lam77743 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77903, i64* %eptr77896                                                 ; store fptr
  %arg74660 = ptrtoint i64* %cloptr77895 to i64                                      ; closure cast; i64* -> i64
  %cloptr77904 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr77906 = getelementptr inbounds i64, i64* %cloptr77904, i64 1                  ; &eptr77906[1]
  %eptr77907 = getelementptr inbounds i64, i64* %cloptr77904, i64 2                  ; &eptr77907[2]
  store i64 %Cyf$_37foldr1, i64* %eptr77906                                          ; *eptr77906 = %Cyf$_37foldr1
  store i64 %VtU$_37map1, i64* %eptr77907                                            ; *eptr77907 = %VtU$_37map1
  %eptr77905 = getelementptr inbounds i64, i64* %cloptr77904, i64 0                  ; &cloptr77904[0]
  %f77908 = ptrtoint void(i64,i64)* @lam77138 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77908, i64* %eptr77905                                                 ; store fptr
  %arg74659 = ptrtoint i64* %cloptr77904 to i64                                      ; closure cast; i64* -> i64
  %rva76790 = add i64 0, 0                                                           ; quoted ()
  %rva76789 = call i64 @prim_cons(i64 %arg74659, i64 %rva76790)                      ; call prim_cons
  %rva76788 = call i64 @prim_cons(i64 %arg74660, i64 %rva76789)                      ; call prim_cons
  %cloptr77909 = inttoptr i64 %iVe$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77910 = getelementptr inbounds i64, i64* %cloptr77909, i64 0                 ; &cloptr77909[0]
  %f77912 = load i64, i64* %i0ptr77910, align 8                                      ; load; *i0ptr77910
  %fptr77911 = inttoptr i64 %f77912 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77911(i64 %iVe$Ycmb, i64 %rva76788)                 ; tail call
  ret void
}


define void @lam77757(i64 %env77758, i64 %rvp75731) {
  %envptr77913 = inttoptr i64 %env77758 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77914 = getelementptr inbounds i64, i64* %envptr77913, i64 1                ; &envptr77913[1]
  %gFG$_37foldl1 = load i64, i64* %envptr77914, align 8                              ; load; *envptr77914
  %cont74393 = call i64 @prim_car(i64 %rvp75731)                                     ; call prim_car
  %rvp75730 = call i64 @prim_cdr(i64 %rvp75731)                                      ; call prim_cdr
  %B3T$lst = call i64 @prim_car(i64 %rvp75730)                                       ; call prim_car
  %na75716 = call i64 @prim_cdr(i64 %rvp75730)                                       ; call prim_cdr
  %cloptr77915 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr77916 = getelementptr inbounds i64, i64* %cloptr77915, i64 0                  ; &cloptr77915[0]
  %f77917 = ptrtoint void(i64,i64)* @lam77755 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77917, i64* %eptr77916                                                 ; store fptr
  %arg74644 = ptrtoint i64* %cloptr77915 to i64                                      ; closure cast; i64* -> i64
  %arg74643 = add i64 0, 0                                                           ; quoted ()
  %rva75729 = add i64 0, 0                                                           ; quoted ()
  %rva75728 = call i64 @prim_cons(i64 %B3T$lst, i64 %rva75729)                       ; call prim_cons
  %rva75727 = call i64 @prim_cons(i64 %arg74643, i64 %rva75728)                      ; call prim_cons
  %rva75726 = call i64 @prim_cons(i64 %arg74644, i64 %rva75727)                      ; call prim_cons
  %rva75725 = call i64 @prim_cons(i64 %cont74393, i64 %rva75726)                     ; call prim_cons
  %cloptr77918 = inttoptr i64 %gFG$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr77919 = getelementptr inbounds i64, i64* %cloptr77918, i64 0                 ; &cloptr77918[0]
  %f77921 = load i64, i64* %i0ptr77919, align 8                                      ; load; *i0ptr77919
  %fptr77920 = inttoptr i64 %f77921 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77920(i64 %gFG$_37foldl1, i64 %rva75725)            ; tail call
  ret void
}


define void @lam77755(i64 %env77756, i64 %rvp75724) {
  %cont74394 = call i64 @prim_car(i64 %rvp75724)                                     ; call prim_car
  %rvp75723 = call i64 @prim_cdr(i64 %rvp75724)                                      ; call prim_cdr
  %EzN$x = call i64 @prim_car(i64 %rvp75723)                                         ; call prim_car
  %rvp75722 = call i64 @prim_cdr(i64 %rvp75723)                                      ; call prim_cdr
  %tlP$y = call i64 @prim_car(i64 %rvp75722)                                         ; call prim_car
  %na75718 = call i64 @prim_cdr(i64 %rvp75722)                                       ; call prim_cdr
  %arg74648 = add i64 0, 0                                                           ; quoted ()
  %rva75721 = add i64 0, 0                                                           ; quoted ()
  %rva75720 = call i64 @prim_cons(i64 %EzN$x, i64 %rva75721)                         ; call prim_cons
  %rva75719 = call i64 @prim_cons(i64 %arg74648, i64 %rva75720)                      ; call prim_cons
  %cloptr77922 = inttoptr i64 %cont74394 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr77923 = getelementptr inbounds i64, i64* %cloptr77922, i64 0                 ; &cloptr77922[0]
  %f77925 = load i64, i64* %i0ptr77923, align 8                                      ; load; *i0ptr77923
  %fptr77924 = inttoptr i64 %f77925 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77924(i64 %cont74394, i64 %rva75719)                ; tail call
  ret void
}


define void @lam77749(i64 %env77750, i64 %rvp75747) {
  %envptr77926 = inttoptr i64 %env77750 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77927 = getelementptr inbounds i64, i64* %envptr77926, i64 2                ; &envptr77926[2]
  %BuE$_37take = load i64, i64* %envptr77927, align 8                                ; load; *envptr77927
  %envptr77928 = inttoptr i64 %env77750 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77929 = getelementptr inbounds i64, i64* %envptr77928, i64 1                ; &envptr77928[1]
  %dQj$_37length = load i64, i64* %envptr77929, align 8                              ; load; *envptr77929
  %cont74395 = call i64 @prim_car(i64 %rvp75747)                                     ; call prim_car
  %rvp75746 = call i64 @prim_cdr(i64 %rvp75747)                                      ; call prim_cdr
  %CHx$lst = call i64 @prim_car(i64 %rvp75746)                                       ; call prim_car
  %rvp75745 = call i64 @prim_cdr(i64 %rvp75746)                                      ; call prim_cdr
  %blN$n = call i64 @prim_car(i64 %rvp75745)                                         ; call prim_car
  %na75733 = call i64 @prim_cdr(i64 %rvp75745)                                       ; call prim_cdr
  %cloptr77930 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr77932 = getelementptr inbounds i64, i64* %cloptr77930, i64 1                  ; &eptr77932[1]
  %eptr77933 = getelementptr inbounds i64, i64* %cloptr77930, i64 2                  ; &eptr77933[2]
  %eptr77934 = getelementptr inbounds i64, i64* %cloptr77930, i64 3                  ; &eptr77934[3]
  %eptr77935 = getelementptr inbounds i64, i64* %cloptr77930, i64 4                  ; &eptr77935[4]
  store i64 %blN$n, i64* %eptr77932                                                  ; *eptr77932 = %blN$n
  store i64 %BuE$_37take, i64* %eptr77933                                            ; *eptr77933 = %BuE$_37take
  store i64 %CHx$lst, i64* %eptr77934                                                ; *eptr77934 = %CHx$lst
  store i64 %cont74395, i64* %eptr77935                                              ; *eptr77935 = %cont74395
  %eptr77931 = getelementptr inbounds i64, i64* %cloptr77930, i64 0                  ; &cloptr77930[0]
  %f77936 = ptrtoint void(i64,i64)* @lam77747 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77936, i64* %eptr77931                                                 ; store fptr
  %arg74651 = ptrtoint i64* %cloptr77930 to i64                                      ; closure cast; i64* -> i64
  %rva75744 = add i64 0, 0                                                           ; quoted ()
  %rva75743 = call i64 @prim_cons(i64 %CHx$lst, i64 %rva75744)                       ; call prim_cons
  %rva75742 = call i64 @prim_cons(i64 %arg74651, i64 %rva75743)                      ; call prim_cons
  %cloptr77937 = inttoptr i64 %dQj$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr77938 = getelementptr inbounds i64, i64* %cloptr77937, i64 0                 ; &cloptr77937[0]
  %f77940 = load i64, i64* %i0ptr77938, align 8                                      ; load; *i0ptr77938
  %fptr77939 = inttoptr i64 %f77940 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77939(i64 %dQj$_37length, i64 %rva75742)            ; tail call
  ret void
}


define void @lam77747(i64 %env77748, i64 %rvp75741) {
  %envptr77941 = inttoptr i64 %env77748 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77942 = getelementptr inbounds i64, i64* %envptr77941, i64 4                ; &envptr77941[4]
  %cont74395 = load i64, i64* %envptr77942, align 8                                  ; load; *envptr77942
  %envptr77943 = inttoptr i64 %env77748 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77944 = getelementptr inbounds i64, i64* %envptr77943, i64 3                ; &envptr77943[3]
  %CHx$lst = load i64, i64* %envptr77944, align 8                                    ; load; *envptr77944
  %envptr77945 = inttoptr i64 %env77748 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77946 = getelementptr inbounds i64, i64* %envptr77945, i64 2                ; &envptr77945[2]
  %BuE$_37take = load i64, i64* %envptr77946, align 8                                ; load; *envptr77946
  %envptr77947 = inttoptr i64 %env77748 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77948 = getelementptr inbounds i64, i64* %envptr77947, i64 1                ; &envptr77947[1]
  %blN$n = load i64, i64* %envptr77948, align 8                                      ; load; *envptr77948
  %_9574396 = call i64 @prim_car(i64 %rvp75741)                                      ; call prim_car
  %rvp75740 = call i64 @prim_cdr(i64 %rvp75741)                                      ; call prim_cdr
  %a74246 = call i64 @prim_car(i64 %rvp75740)                                        ; call prim_car
  %na75735 = call i64 @prim_cdr(i64 %rvp75740)                                       ; call prim_cdr
  %a74247 = call i64 @prim__45(i64 %a74246, i64 %blN$n)                              ; call prim__45
  %rva75739 = add i64 0, 0                                                           ; quoted ()
  %rva75738 = call i64 @prim_cons(i64 %a74247, i64 %rva75739)                        ; call prim_cons
  %rva75737 = call i64 @prim_cons(i64 %CHx$lst, i64 %rva75738)                       ; call prim_cons
  %rva75736 = call i64 @prim_cons(i64 %cont74395, i64 %rva75737)                     ; call prim_cons
  %cloptr77949 = inttoptr i64 %BuE$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr77950 = getelementptr inbounds i64, i64* %cloptr77949, i64 0                 ; &cloptr77949[0]
  %f77952 = load i64, i64* %i0ptr77950, align 8                                      ; load; *i0ptr77950
  %fptr77951 = inttoptr i64 %f77952 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77951(i64 %BuE$_37take, i64 %rva75736)              ; tail call
  ret void
}


define void @lam77743(i64 %env77744, i64 %rvp76692) {
  %envptr77953 = inttoptr i64 %env77744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77954 = getelementptr inbounds i64, i64* %envptr77953, i64 6                ; &envptr77953[6]
  %iVe$Ycmb = load i64, i64* %envptr77954, align 8                                   ; load; *envptr77954
  %envptr77955 = inttoptr i64 %env77744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77956 = getelementptr inbounds i64, i64* %envptr77955, i64 5                ; &envptr77955[5]
  %YaV$_37last = load i64, i64* %envptr77956, align 8                                ; load; *envptr77956
  %envptr77957 = inttoptr i64 %env77744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77958 = getelementptr inbounds i64, i64* %envptr77957, i64 4                ; &envptr77957[4]
  %qPk$_37drop_45right = load i64, i64* %envptr77958, align 8                        ; load; *envptr77958
  %envptr77959 = inttoptr i64 %env77744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77960 = getelementptr inbounds i64, i64* %envptr77959, i64 3                ; &envptr77959[3]
  %Cyf$_37foldr1 = load i64, i64* %envptr77960, align 8                              ; load; *envptr77960
  %envptr77961 = inttoptr i64 %env77744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77962 = getelementptr inbounds i64, i64* %envptr77961, i64 2                ; &envptr77961[2]
  %dQj$_37length = load i64, i64* %envptr77962, align 8                              ; load; *envptr77962
  %envptr77963 = inttoptr i64 %env77744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77964 = getelementptr inbounds i64, i64* %envptr77963, i64 1                ; &envptr77963[1]
  %gFG$_37foldl1 = load i64, i64* %envptr77964, align 8                              ; load; *envptr77964
  %_9574397 = call i64 @prim_car(i64 %rvp76692)                                      ; call prim_car
  %rvp76691 = call i64 @prim_cdr(i64 %rvp76692)                                      ; call prim_cdr
  %CdI$_37foldr = call i64 @prim_car(i64 %rvp76691)                                  ; call prim_car
  %na75749 = call i64 @prim_cdr(i64 %rvp76691)                                       ; call prim_cdr
  %cloptr77965 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr77967 = getelementptr inbounds i64, i64* %cloptr77965, i64 1                  ; &eptr77967[1]
  store i64 %Cyf$_37foldr1, i64* %eptr77967                                          ; *eptr77967 = %Cyf$_37foldr1
  %eptr77966 = getelementptr inbounds i64, i64* %cloptr77965, i64 0                  ; &cloptr77965[0]
  %f77968 = ptrtoint void(i64,i64)* @lam77741 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77968, i64* %eptr77966                                                 ; store fptr
  %ovI$_37map1 = ptrtoint i64* %cloptr77965 to i64                                   ; closure cast; i64* -> i64
  %cloptr77969 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr77971 = getelementptr inbounds i64, i64* %cloptr77969, i64 1                  ; &eptr77971[1]
  %eptr77972 = getelementptr inbounds i64, i64* %cloptr77969, i64 2                  ; &eptr77972[2]
  %eptr77973 = getelementptr inbounds i64, i64* %cloptr77969, i64 3                  ; &eptr77973[3]
  store i64 %qPk$_37drop_45right, i64* %eptr77971                                    ; *eptr77971 = %qPk$_37drop_45right
  store i64 %YaV$_37last, i64* %eptr77972                                            ; *eptr77972 = %YaV$_37last
  store i64 %CdI$_37foldr, i64* %eptr77973                                           ; *eptr77973 = %CdI$_37foldr
  %eptr77970 = getelementptr inbounds i64, i64* %cloptr77969, i64 0                  ; &cloptr77969[0]
  %f77974 = ptrtoint void(i64,i64)* @lam77730 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77974, i64* %eptr77970                                                 ; store fptr
  %hj2$_37map = ptrtoint i64* %cloptr77969 to i64                                    ; closure cast; i64* -> i64
  %cloptr77975 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr77977 = getelementptr inbounds i64, i64* %cloptr77975, i64 1                  ; &eptr77977[1]
  %eptr77978 = getelementptr inbounds i64, i64* %cloptr77975, i64 2                  ; &eptr77978[2]
  store i64 %gFG$_37foldl1, i64* %eptr77977                                          ; *eptr77977 = %gFG$_37foldl1
  store i64 %dQj$_37length, i64* %eptr77978                                          ; *eptr77978 = %dQj$_37length
  %eptr77976 = getelementptr inbounds i64, i64* %cloptr77975, i64 0                  ; &cloptr77975[0]
  %f77979 = ptrtoint void(i64,i64)* @lam77714 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77979, i64* %eptr77976                                                 ; store fptr
  %arg74702 = ptrtoint i64* %cloptr77975 to i64                                      ; closure cast; i64* -> i64
  %cloptr77980 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr77982 = getelementptr inbounds i64, i64* %cloptr77980, i64 1                  ; &eptr77982[1]
  %eptr77983 = getelementptr inbounds i64, i64* %cloptr77980, i64 2                  ; &eptr77983[2]
  %eptr77984 = getelementptr inbounds i64, i64* %cloptr77980, i64 3                  ; &eptr77984[3]
  store i64 %Cyf$_37foldr1, i64* %eptr77982                                          ; *eptr77982 = %Cyf$_37foldr1
  store i64 %CdI$_37foldr, i64* %eptr77983                                           ; *eptr77983 = %CdI$_37foldr
  store i64 %ovI$_37map1, i64* %eptr77984                                            ; *eptr77984 = %ovI$_37map1
  %eptr77981 = getelementptr inbounds i64, i64* %cloptr77980, i64 0                  ; &cloptr77980[0]
  %f77985 = ptrtoint void(i64,i64)* @lam77189 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77985, i64* %eptr77981                                                 ; store fptr
  %arg74701 = ptrtoint i64* %cloptr77980 to i64                                      ; closure cast; i64* -> i64
  %rva76690 = add i64 0, 0                                                           ; quoted ()
  %rva76689 = call i64 @prim_cons(i64 %arg74701, i64 %rva76690)                      ; call prim_cons
  %rva76688 = call i64 @prim_cons(i64 %arg74702, i64 %rva76689)                      ; call prim_cons
  %cloptr77986 = inttoptr i64 %iVe$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr77987 = getelementptr inbounds i64, i64* %cloptr77986, i64 0                 ; &cloptr77986[0]
  %f77989 = load i64, i64* %i0ptr77987, align 8                                      ; load; *i0ptr77987
  %fptr77988 = inttoptr i64 %f77989 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77988(i64 %iVe$Ycmb, i64 %rva76688)                 ; tail call
  ret void
}


define void @lam77741(i64 %env77742, i64 %rvp75774) {
  %envptr77990 = inttoptr i64 %env77742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr77991 = getelementptr inbounds i64, i64* %envptr77990, i64 1                ; &envptr77990[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr77991, align 8                              ; load; *envptr77991
  %cont74398 = call i64 @prim_car(i64 %rvp75774)                                     ; call prim_car
  %rvp75773 = call i64 @prim_cdr(i64 %rvp75774)                                      ; call prim_cdr
  %TIg$f = call i64 @prim_car(i64 %rvp75773)                                         ; call prim_car
  %rvp75772 = call i64 @prim_cdr(i64 %rvp75773)                                      ; call prim_cdr
  %Dmr$lst = call i64 @prim_car(i64 %rvp75772)                                       ; call prim_car
  %na75751 = call i64 @prim_cdr(i64 %rvp75772)                                       ; call prim_cdr
  %cloptr77992 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr77994 = getelementptr inbounds i64, i64* %cloptr77992, i64 1                  ; &eptr77994[1]
  store i64 %TIg$f, i64* %eptr77994                                                  ; *eptr77994 = %TIg$f
  %eptr77993 = getelementptr inbounds i64, i64* %cloptr77992, i64 0                  ; &cloptr77992[0]
  %f77995 = ptrtoint void(i64,i64)* @lam77739 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f77995, i64* %eptr77993                                                 ; store fptr
  %arg74664 = ptrtoint i64* %cloptr77992 to i64                                      ; closure cast; i64* -> i64
  %arg74663 = add i64 0, 0                                                           ; quoted ()
  %rva75771 = add i64 0, 0                                                           ; quoted ()
  %rva75770 = call i64 @prim_cons(i64 %Dmr$lst, i64 %rva75771)                       ; call prim_cons
  %rva75769 = call i64 @prim_cons(i64 %arg74663, i64 %rva75770)                      ; call prim_cons
  %rva75768 = call i64 @prim_cons(i64 %arg74664, i64 %rva75769)                      ; call prim_cons
  %rva75767 = call i64 @prim_cons(i64 %cont74398, i64 %rva75768)                     ; call prim_cons
  %cloptr77996 = inttoptr i64 %Cyf$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr77997 = getelementptr inbounds i64, i64* %cloptr77996, i64 0                 ; &cloptr77996[0]
  %f77999 = load i64, i64* %i0ptr77997, align 8                                      ; load; *i0ptr77997
  %fptr77998 = inttoptr i64 %f77999 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr77998(i64 %Cyf$_37foldr1, i64 %rva75767)            ; tail call
  ret void
}


define void @lam77739(i64 %env77740, i64 %rvp75766) {
  %envptr78000 = inttoptr i64 %env77740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78001 = getelementptr inbounds i64, i64* %envptr78000, i64 1                ; &envptr78000[1]
  %TIg$f = load i64, i64* %envptr78001, align 8                                      ; load; *envptr78001
  %cont74399 = call i64 @prim_car(i64 %rvp75766)                                     ; call prim_car
  %rvp75765 = call i64 @prim_cdr(i64 %rvp75766)                                      ; call prim_cdr
  %ixv$v = call i64 @prim_car(i64 %rvp75765)                                         ; call prim_car
  %rvp75764 = call i64 @prim_cdr(i64 %rvp75765)                                      ; call prim_cdr
  %m6B$r = call i64 @prim_car(i64 %rvp75764)                                         ; call prim_car
  %na75753 = call i64 @prim_cdr(i64 %rvp75764)                                       ; call prim_cdr
  %cloptr78002 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78004 = getelementptr inbounds i64, i64* %cloptr78002, i64 1                  ; &eptr78004[1]
  %eptr78005 = getelementptr inbounds i64, i64* %cloptr78002, i64 2                  ; &eptr78005[2]
  store i64 %m6B$r, i64* %eptr78004                                                  ; *eptr78004 = %m6B$r
  store i64 %cont74399, i64* %eptr78005                                              ; *eptr78005 = %cont74399
  %eptr78003 = getelementptr inbounds i64, i64* %cloptr78002, i64 0                  ; &cloptr78002[0]
  %f78006 = ptrtoint void(i64,i64)* @lam77737 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78006, i64* %eptr78003                                                 ; store fptr
  %arg74668 = ptrtoint i64* %cloptr78002 to i64                                      ; closure cast; i64* -> i64
  %rva75763 = add i64 0, 0                                                           ; quoted ()
  %rva75762 = call i64 @prim_cons(i64 %ixv$v, i64 %rva75763)                         ; call prim_cons
  %rva75761 = call i64 @prim_cons(i64 %arg74668, i64 %rva75762)                      ; call prim_cons
  %cloptr78007 = inttoptr i64 %TIg$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr78008 = getelementptr inbounds i64, i64* %cloptr78007, i64 0                 ; &cloptr78007[0]
  %f78010 = load i64, i64* %i0ptr78008, align 8                                      ; load; *i0ptr78008
  %fptr78009 = inttoptr i64 %f78010 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78009(i64 %TIg$f, i64 %rva75761)                    ; tail call
  ret void
}


define void @lam77737(i64 %env77738, i64 %rvp75760) {
  %envptr78011 = inttoptr i64 %env77738 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78012 = getelementptr inbounds i64, i64* %envptr78011, i64 2                ; &envptr78011[2]
  %cont74399 = load i64, i64* %envptr78012, align 8                                  ; load; *envptr78012
  %envptr78013 = inttoptr i64 %env77738 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78014 = getelementptr inbounds i64, i64* %envptr78013, i64 1                ; &envptr78013[1]
  %m6B$r = load i64, i64* %envptr78014, align 8                                      ; load; *envptr78014
  %_9574400 = call i64 @prim_car(i64 %rvp75760)                                      ; call prim_car
  %rvp75759 = call i64 @prim_cdr(i64 %rvp75760)                                      ; call prim_cdr
  %a74256 = call i64 @prim_car(i64 %rvp75759)                                        ; call prim_car
  %na75755 = call i64 @prim_cdr(i64 %rvp75759)                                       ; call prim_cdr
  %retprim74401 = call i64 @prim_cons(i64 %a74256, i64 %m6B$r)                       ; call prim_cons
  %arg74673 = add i64 0, 0                                                           ; quoted ()
  %rva75758 = add i64 0, 0                                                           ; quoted ()
  %rva75757 = call i64 @prim_cons(i64 %retprim74401, i64 %rva75758)                  ; call prim_cons
  %rva75756 = call i64 @prim_cons(i64 %arg74673, i64 %rva75757)                      ; call prim_cons
  %cloptr78015 = inttoptr i64 %cont74399 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78016 = getelementptr inbounds i64, i64* %cloptr78015, i64 0                 ; &cloptr78015[0]
  %f78018 = load i64, i64* %i0ptr78016, align 8                                      ; load; *i0ptr78016
  %fptr78017 = inttoptr i64 %f78018 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78017(i64 %cont74399, i64 %rva75756)                ; tail call
  ret void
}


define void @lam77730(i64 %env77731, i64 %aOS$args74403) {
  %envptr78019 = inttoptr i64 %env77731 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78020 = getelementptr inbounds i64, i64* %envptr78019, i64 3                ; &envptr78019[3]
  %CdI$_37foldr = load i64, i64* %envptr78020, align 8                               ; load; *envptr78020
  %envptr78021 = inttoptr i64 %env77731 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78022 = getelementptr inbounds i64, i64* %envptr78021, i64 2                ; &envptr78021[2]
  %YaV$_37last = load i64, i64* %envptr78022, align 8                                ; load; *envptr78022
  %envptr78023 = inttoptr i64 %env77731 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78024 = getelementptr inbounds i64, i64* %envptr78023, i64 1                ; &envptr78023[1]
  %qPk$_37drop_45right = load i64, i64* %envptr78024, align 8                        ; load; *envptr78024
  %cont74402 = call i64 @prim_car(i64 %aOS$args74403)                                ; call prim_car
  %aOS$args = call i64 @prim_cdr(i64 %aOS$args74403)                                 ; call prim_cdr
  %yPM$f = call i64 @prim_car(i64 %aOS$args)                                         ; call prim_car
  %fxY$lsts = call i64 @prim_cdr(i64 %aOS$args)                                      ; call prim_cdr
  %arg74680 = add i64 0, 0                                                           ; quoted ()
  %a74260 = call i64 @prim_cons(i64 %arg74680, i64 %fxY$lsts)                        ; call prim_cons
  %cloptr78025 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78027 = getelementptr inbounds i64, i64* %cloptr78025, i64 1                  ; &eptr78027[1]
  %eptr78028 = getelementptr inbounds i64, i64* %cloptr78025, i64 2                  ; &eptr78028[2]
  %eptr78029 = getelementptr inbounds i64, i64* %cloptr78025, i64 3                  ; &eptr78029[3]
  store i64 %yPM$f, i64* %eptr78027                                                  ; *eptr78027 = %yPM$f
  store i64 %qPk$_37drop_45right, i64* %eptr78028                                    ; *eptr78028 = %qPk$_37drop_45right
  store i64 %YaV$_37last, i64* %eptr78029                                            ; *eptr78029 = %YaV$_37last
  %eptr78026 = getelementptr inbounds i64, i64* %cloptr78025, i64 0                  ; &cloptr78025[0]
  %f78030 = ptrtoint void(i64,i64)* @lam77727 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78030, i64* %eptr78026                                                 ; store fptr
  %arg74682 = ptrtoint i64* %cloptr78025 to i64                                      ; closure cast; i64* -> i64
  %a74261 = call i64 @prim_cons(i64 %arg74682, i64 %a74260)                          ; call prim_cons
  %cps_45lst74411 = call i64 @prim_cons(i64 %cont74402, i64 %a74261)                 ; call prim_cons
  %cloptr78031 = inttoptr i64 %CdI$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr78032 = getelementptr inbounds i64, i64* %cloptr78031, i64 0                 ; &cloptr78031[0]
  %f78034 = load i64, i64* %i0ptr78032, align 8                                      ; load; *i0ptr78032
  %fptr78033 = inttoptr i64 %f78034 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78033(i64 %CdI$_37foldr, i64 %cps_45lst74411)       ; tail call
  ret void
}


define void @lam77727(i64 %env77728, i64 %yDQ$fargs74405) {
  %envptr78035 = inttoptr i64 %env77728 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78036 = getelementptr inbounds i64, i64* %envptr78035, i64 3                ; &envptr78035[3]
  %YaV$_37last = load i64, i64* %envptr78036, align 8                                ; load; *envptr78036
  %envptr78037 = inttoptr i64 %env77728 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78038 = getelementptr inbounds i64, i64* %envptr78037, i64 2                ; &envptr78037[2]
  %qPk$_37drop_45right = load i64, i64* %envptr78038, align 8                        ; load; *envptr78038
  %envptr78039 = inttoptr i64 %env77728 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78040 = getelementptr inbounds i64, i64* %envptr78039, i64 1                ; &envptr78039[1]
  %yPM$f = load i64, i64* %envptr78040, align 8                                      ; load; *envptr78040
  %cont74404 = call i64 @prim_car(i64 %yDQ$fargs74405)                               ; call prim_car
  %yDQ$fargs = call i64 @prim_cdr(i64 %yDQ$fargs74405)                               ; call prim_cdr
  %cloptr78041 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr78043 = getelementptr inbounds i64, i64* %cloptr78041, i64 1                  ; &eptr78043[1]
  %eptr78044 = getelementptr inbounds i64, i64* %cloptr78041, i64 2                  ; &eptr78044[2]
  %eptr78045 = getelementptr inbounds i64, i64* %cloptr78041, i64 3                  ; &eptr78045[3]
  %eptr78046 = getelementptr inbounds i64, i64* %cloptr78041, i64 4                  ; &eptr78046[4]
  store i64 %yPM$f, i64* %eptr78043                                                  ; *eptr78043 = %yPM$f
  store i64 %cont74404, i64* %eptr78044                                              ; *eptr78044 = %cont74404
  store i64 %yDQ$fargs, i64* %eptr78045                                              ; *eptr78045 = %yDQ$fargs
  store i64 %YaV$_37last, i64* %eptr78046                                            ; *eptr78046 = %YaV$_37last
  %eptr78042 = getelementptr inbounds i64, i64* %cloptr78041, i64 0                  ; &cloptr78041[0]
  %f78047 = ptrtoint void(i64,i64)* @lam77725 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78047, i64* %eptr78042                                                 ; store fptr
  %arg74687 = ptrtoint i64* %cloptr78041 to i64                                      ; closure cast; i64* -> i64
  %arg74685 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva75796 = add i64 0, 0                                                           ; quoted ()
  %rva75795 = call i64 @prim_cons(i64 %arg74685, i64 %rva75796)                      ; call prim_cons
  %rva75794 = call i64 @prim_cons(i64 %yDQ$fargs, i64 %rva75795)                     ; call prim_cons
  %rva75793 = call i64 @prim_cons(i64 %arg74687, i64 %rva75794)                      ; call prim_cons
  %cloptr78048 = inttoptr i64 %qPk$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  %i0ptr78049 = getelementptr inbounds i64, i64* %cloptr78048, i64 0                 ; &cloptr78048[0]
  %f78051 = load i64, i64* %i0ptr78049, align 8                                      ; load; *i0ptr78049
  %fptr78050 = inttoptr i64 %f78051 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78050(i64 %qPk$_37drop_45right, i64 %rva75793)      ; tail call
  ret void
}


define void @lam77725(i64 %env77726, i64 %rvp75792) {
  %envptr78052 = inttoptr i64 %env77726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78053 = getelementptr inbounds i64, i64* %envptr78052, i64 4                ; &envptr78052[4]
  %YaV$_37last = load i64, i64* %envptr78053, align 8                                ; load; *envptr78053
  %envptr78054 = inttoptr i64 %env77726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78055 = getelementptr inbounds i64, i64* %envptr78054, i64 3                ; &envptr78054[3]
  %yDQ$fargs = load i64, i64* %envptr78055, align 8                                  ; load; *envptr78055
  %envptr78056 = inttoptr i64 %env77726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78057 = getelementptr inbounds i64, i64* %envptr78056, i64 2                ; &envptr78056[2]
  %cont74404 = load i64, i64* %envptr78057, align 8                                  ; load; *envptr78057
  %envptr78058 = inttoptr i64 %env77726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78059 = getelementptr inbounds i64, i64* %envptr78058, i64 1                ; &envptr78058[1]
  %yPM$f = load i64, i64* %envptr78059, align 8                                      ; load; *envptr78059
  %_9574406 = call i64 @prim_car(i64 %rvp75792)                                      ; call prim_car
  %rvp75791 = call i64 @prim_cdr(i64 %rvp75792)                                      ; call prim_cdr
  %a74257 = call i64 @prim_car(i64 %rvp75791)                                        ; call prim_car
  %na75776 = call i64 @prim_cdr(i64 %rvp75791)                                       ; call prim_cdr
  %cloptr78060 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78062 = getelementptr inbounds i64, i64* %cloptr78060, i64 1                  ; &eptr78062[1]
  %eptr78063 = getelementptr inbounds i64, i64* %cloptr78060, i64 2                  ; &eptr78063[2]
  %eptr78064 = getelementptr inbounds i64, i64* %cloptr78060, i64 3                  ; &eptr78064[3]
  store i64 %cont74404, i64* %eptr78062                                              ; *eptr78062 = %cont74404
  store i64 %yDQ$fargs, i64* %eptr78063                                              ; *eptr78063 = %yDQ$fargs
  store i64 %YaV$_37last, i64* %eptr78064                                            ; *eptr78064 = %YaV$_37last
  %eptr78061 = getelementptr inbounds i64, i64* %cloptr78060, i64 0                  ; &cloptr78060[0]
  %f78065 = ptrtoint void(i64,i64)* @lam77723 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78065, i64* %eptr78061                                                 ; store fptr
  %arg74690 = ptrtoint i64* %cloptr78060 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst74410 = call i64 @prim_cons(i64 %arg74690, i64 %a74257)                  ; call prim_cons
  %cloptr78066 = inttoptr i64 %yPM$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr78067 = getelementptr inbounds i64, i64* %cloptr78066, i64 0                 ; &cloptr78066[0]
  %f78069 = load i64, i64* %i0ptr78067, align 8                                      ; load; *i0ptr78067
  %fptr78068 = inttoptr i64 %f78069 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78068(i64 %yPM$f, i64 %cps_45lst74410)              ; tail call
  ret void
}


define void @lam77723(i64 %env77724, i64 %rvp75790) {
  %envptr78070 = inttoptr i64 %env77724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78071 = getelementptr inbounds i64, i64* %envptr78070, i64 3                ; &envptr78070[3]
  %YaV$_37last = load i64, i64* %envptr78071, align 8                                ; load; *envptr78071
  %envptr78072 = inttoptr i64 %env77724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78073 = getelementptr inbounds i64, i64* %envptr78072, i64 2                ; &envptr78072[2]
  %yDQ$fargs = load i64, i64* %envptr78073, align 8                                  ; load; *envptr78073
  %envptr78074 = inttoptr i64 %env77724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78075 = getelementptr inbounds i64, i64* %envptr78074, i64 1                ; &envptr78074[1]
  %cont74404 = load i64, i64* %envptr78075, align 8                                  ; load; *envptr78075
  %_9574407 = call i64 @prim_car(i64 %rvp75790)                                      ; call prim_car
  %rvp75789 = call i64 @prim_cdr(i64 %rvp75790)                                      ; call prim_cdr
  %a74258 = call i64 @prim_car(i64 %rvp75789)                                        ; call prim_car
  %na75778 = call i64 @prim_cdr(i64 %rvp75789)                                       ; call prim_cdr
  %cloptr78076 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78078 = getelementptr inbounds i64, i64* %cloptr78076, i64 1                  ; &eptr78078[1]
  %eptr78079 = getelementptr inbounds i64, i64* %cloptr78076, i64 2                  ; &eptr78079[2]
  store i64 %a74258, i64* %eptr78078                                                 ; *eptr78078 = %a74258
  store i64 %cont74404, i64* %eptr78079                                              ; *eptr78079 = %cont74404
  %eptr78077 = getelementptr inbounds i64, i64* %cloptr78076, i64 0                  ; &cloptr78076[0]
  %f78080 = ptrtoint void(i64,i64)* @lam77721 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78080, i64* %eptr78077                                                 ; store fptr
  %arg74692 = ptrtoint i64* %cloptr78076 to i64                                      ; closure cast; i64* -> i64
  %rva75788 = add i64 0, 0                                                           ; quoted ()
  %rva75787 = call i64 @prim_cons(i64 %yDQ$fargs, i64 %rva75788)                     ; call prim_cons
  %rva75786 = call i64 @prim_cons(i64 %arg74692, i64 %rva75787)                      ; call prim_cons
  %cloptr78081 = inttoptr i64 %YaV$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr78082 = getelementptr inbounds i64, i64* %cloptr78081, i64 0                 ; &cloptr78081[0]
  %f78084 = load i64, i64* %i0ptr78082, align 8                                      ; load; *i0ptr78082
  %fptr78083 = inttoptr i64 %f78084 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78083(i64 %YaV$_37last, i64 %rva75786)              ; tail call
  ret void
}


define void @lam77721(i64 %env77722, i64 %rvp75785) {
  %envptr78085 = inttoptr i64 %env77722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78086 = getelementptr inbounds i64, i64* %envptr78085, i64 2                ; &envptr78085[2]
  %cont74404 = load i64, i64* %envptr78086, align 8                                  ; load; *envptr78086
  %envptr78087 = inttoptr i64 %env77722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78088 = getelementptr inbounds i64, i64* %envptr78087, i64 1                ; &envptr78087[1]
  %a74258 = load i64, i64* %envptr78088, align 8                                     ; load; *envptr78088
  %_9574408 = call i64 @prim_car(i64 %rvp75785)                                      ; call prim_car
  %rvp75784 = call i64 @prim_cdr(i64 %rvp75785)                                      ; call prim_cdr
  %a74259 = call i64 @prim_car(i64 %rvp75784)                                        ; call prim_car
  %na75780 = call i64 @prim_cdr(i64 %rvp75784)                                       ; call prim_cdr
  %retprim74409 = call i64 @prim_cons(i64 %a74258, i64 %a74259)                      ; call prim_cons
  %arg74697 = add i64 0, 0                                                           ; quoted ()
  %rva75783 = add i64 0, 0                                                           ; quoted ()
  %rva75782 = call i64 @prim_cons(i64 %retprim74409, i64 %rva75783)                  ; call prim_cons
  %rva75781 = call i64 @prim_cons(i64 %arg74697, i64 %rva75782)                      ; call prim_cons
  %cloptr78089 = inttoptr i64 %cont74404 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78090 = getelementptr inbounds i64, i64* %cloptr78089, i64 0                 ; &cloptr78089[0]
  %f78092 = load i64, i64* %i0ptr78090, align 8                                      ; load; *i0ptr78090
  %fptr78091 = inttoptr i64 %f78092 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78091(i64 %cont74404, i64 %rva75781)                ; tail call
  ret void
}


define void @lam77714(i64 %env77715, i64 %rvp76592) {
  %envptr78093 = inttoptr i64 %env77715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78094 = getelementptr inbounds i64, i64* %envptr78093, i64 2                ; &envptr78093[2]
  %dQj$_37length = load i64, i64* %envptr78094, align 8                              ; load; *envptr78094
  %envptr78095 = inttoptr i64 %env77715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78096 = getelementptr inbounds i64, i64* %envptr78095, i64 1                ; &envptr78095[1]
  %gFG$_37foldl1 = load i64, i64* %envptr78096, align 8                              ; load; *envptr78096
  %_9574412 = call i64 @prim_car(i64 %rvp76592)                                      ; call prim_car
  %rvp76591 = call i64 @prim_cdr(i64 %rvp76592)                                      ; call prim_cdr
  %yYF$_37foldl = call i64 @prim_car(i64 %rvp76591)                                  ; call prim_car
  %na75798 = call i64 @prim_cdr(i64 %rvp76591)                                       ; call prim_cdr
  %cloptr78097 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78098 = getelementptr inbounds i64, i64* %cloptr78097, i64 0                  ; &cloptr78097[0]
  %f78099 = ptrtoint void(i64,i64)* @lam77712 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78099, i64* %eptr78098                                                 ; store fptr
  %N9Z$_37_62 = ptrtoint i64* %cloptr78097 to i64                                    ; closure cast; i64* -> i64
  %cloptr78100 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78101 = getelementptr inbounds i64, i64* %cloptr78100, i64 0                  ; &cloptr78100[0]
  %f78102 = ptrtoint void(i64,i64)* @lam77708 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78102, i64* %eptr78101                                                 ; store fptr
  %z4t$_37_62_61 = ptrtoint i64* %cloptr78100 to i64                                 ; closure cast; i64* -> i64
  %arg74717 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %arg74716 = add i64 0, 0                                                           ; quoted ()
  %yHs$_37append = call i64 @prim_make_45vector(i64 %arg74717, i64 %arg74716)        ; call prim_make_45vector
  %arg74719 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr78103 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr78105 = getelementptr inbounds i64, i64* %cloptr78103, i64 1                  ; &eptr78105[1]
  store i64 %yHs$_37append, i64* %eptr78105                                          ; *eptr78105 = %yHs$_37append
  %eptr78104 = getelementptr inbounds i64, i64* %cloptr78103, i64 0                  ; &cloptr78103[0]
  %f78106 = ptrtoint void(i64,i64)* @lam77701 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78106, i64* %eptr78104                                                 ; store fptr
  %arg74718 = ptrtoint i64* %cloptr78103 to i64                                      ; closure cast; i64* -> i64
  %Dvm$_950 = call i64 @prim_vector_45set_33(i64 %yHs$_37append, i64 %arg74719, i64 %arg74718); call prim_vector_45set_33
  %arg74738 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74549 = call i64 @prim_vector_45ref(i64 %yHs$_37append, i64 %arg74738)     ; call prim_vector_45ref
  %cloptr78107 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78109 = getelementptr inbounds i64, i64* %cloptr78107, i64 1                  ; &eptr78109[1]
  %eptr78110 = getelementptr inbounds i64, i64* %cloptr78107, i64 2                  ; &eptr78110[2]
  %eptr78111 = getelementptr inbounds i64, i64* %cloptr78107, i64 3                  ; &eptr78111[3]
  store i64 %gFG$_37foldl1, i64* %eptr78109                                          ; *eptr78109 = %gFG$_37foldl1
  store i64 %dQj$_37length, i64* %eptr78110                                          ; *eptr78110 = %dQj$_37length
  store i64 %N9Z$_37_62, i64* %eptr78111                                             ; *eptr78111 = %N9Z$_37_62
  %eptr78108 = getelementptr inbounds i64, i64* %cloptr78107, i64 0                  ; &cloptr78107[0]
  %f78112 = ptrtoint void(i64,i64)* @lam77690 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78112, i64* %eptr78108                                                 ; store fptr
  %arg74742 = ptrtoint i64* %cloptr78107 to i64                                      ; closure cast; i64* -> i64
  %arg74741 = add i64 0, 0                                                           ; quoted ()
  %rva76590 = add i64 0, 0                                                           ; quoted ()
  %rva76589 = call i64 @prim_cons(i64 %retprim74549, i64 %rva76590)                  ; call prim_cons
  %rva76588 = call i64 @prim_cons(i64 %arg74741, i64 %rva76589)                      ; call prim_cons
  %cloptr78113 = inttoptr i64 %arg74742 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78114 = getelementptr inbounds i64, i64* %cloptr78113, i64 0                 ; &cloptr78113[0]
  %f78116 = load i64, i64* %i0ptr78114, align 8                                      ; load; *i0ptr78114
  %fptr78115 = inttoptr i64 %f78116 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78115(i64 %arg74742, i64 %rva76588)                 ; tail call
  ret void
}


define void @lam77712(i64 %env77713, i64 %rvp75806) {
  %cont74413 = call i64 @prim_car(i64 %rvp75806)                                     ; call prim_car
  %rvp75805 = call i64 @prim_cdr(i64 %rvp75806)                                      ; call prim_cdr
  %Tlc$a = call i64 @prim_car(i64 %rvp75805)                                         ; call prim_car
  %rvp75804 = call i64 @prim_cdr(i64 %rvp75805)                                      ; call prim_cdr
  %ccW$b = call i64 @prim_car(i64 %rvp75804)                                         ; call prim_car
  %na75800 = call i64 @prim_cdr(i64 %rvp75804)                                       ; call prim_cdr
  %a74269 = call i64 @prim__60_61(i64 %Tlc$a, i64 %ccW$b)                            ; call prim__60_61
  %retprim74414 = call i64 @prim_not(i64 %a74269)                                    ; call prim_not
  %arg74708 = add i64 0, 0                                                           ; quoted ()
  %rva75803 = add i64 0, 0                                                           ; quoted ()
  %rva75802 = call i64 @prim_cons(i64 %retprim74414, i64 %rva75803)                  ; call prim_cons
  %rva75801 = call i64 @prim_cons(i64 %arg74708, i64 %rva75802)                      ; call prim_cons
  %cloptr78117 = inttoptr i64 %cont74413 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78118 = getelementptr inbounds i64, i64* %cloptr78117, i64 0                 ; &cloptr78117[0]
  %f78120 = load i64, i64* %i0ptr78118, align 8                                      ; load; *i0ptr78118
  %fptr78119 = inttoptr i64 %f78120 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78119(i64 %cont74413, i64 %rva75801)                ; tail call
  ret void
}


define void @lam77708(i64 %env77709, i64 %rvp75814) {
  %cont74415 = call i64 @prim_car(i64 %rvp75814)                                     ; call prim_car
  %rvp75813 = call i64 @prim_cdr(i64 %rvp75814)                                      ; call prim_cdr
  %WPM$a = call i64 @prim_car(i64 %rvp75813)                                         ; call prim_car
  %rvp75812 = call i64 @prim_cdr(i64 %rvp75813)                                      ; call prim_cdr
  %Owy$b = call i64 @prim_car(i64 %rvp75812)                                         ; call prim_car
  %na75808 = call i64 @prim_cdr(i64 %rvp75812)                                       ; call prim_cdr
  %a74270 = call i64 @prim__60(i64 %WPM$a, i64 %Owy$b)                               ; call prim__60
  %retprim74416 = call i64 @prim_not(i64 %a74270)                                    ; call prim_not
  %arg74714 = add i64 0, 0                                                           ; quoted ()
  %rva75811 = add i64 0, 0                                                           ; quoted ()
  %rva75810 = call i64 @prim_cons(i64 %retprim74416, i64 %rva75811)                  ; call prim_cons
  %rva75809 = call i64 @prim_cons(i64 %arg74714, i64 %rva75810)                      ; call prim_cons
  %cloptr78121 = inttoptr i64 %cont74415 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78122 = getelementptr inbounds i64, i64* %cloptr78121, i64 0                 ; &cloptr78121[0]
  %f78124 = load i64, i64* %i0ptr78122, align 8                                      ; load; *i0ptr78122
  %fptr78123 = inttoptr i64 %f78124 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78123(i64 %cont74415, i64 %rva75809)                ; tail call
  ret void
}


define void @lam77701(i64 %env77702, i64 %rvp75833) {
  %envptr78125 = inttoptr i64 %env77702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78126 = getelementptr inbounds i64, i64* %envptr78125, i64 1                ; &envptr78125[1]
  %yHs$_37append = load i64, i64* %envptr78126, align 8                              ; load; *envptr78126
  %cont74546 = call i64 @prim_car(i64 %rvp75833)                                     ; call prim_car
  %rvp75832 = call i64 @prim_cdr(i64 %rvp75833)                                      ; call prim_cdr
  %odh$ls0 = call i64 @prim_car(i64 %rvp75832)                                       ; call prim_car
  %rvp75831 = call i64 @prim_cdr(i64 %rvp75832)                                      ; call prim_cdr
  %WK3$ls1 = call i64 @prim_car(i64 %rvp75831)                                       ; call prim_car
  %na75816 = call i64 @prim_cdr(i64 %rvp75831)                                       ; call prim_cdr
  %a74271 = call i64 @prim_null_63(i64 %odh$ls0)                                     ; call prim_null_63
  %cmp78127 = icmp eq i64 %a74271, 15                                                ; false?
  br i1 %cmp78127, label %else78129, label %then78128                                ; if

then78128:
  %arg74723 = add i64 0, 0                                                           ; quoted ()
  %rva75819 = add i64 0, 0                                                           ; quoted ()
  %rva75818 = call i64 @prim_cons(i64 %WK3$ls1, i64 %rva75819)                       ; call prim_cons
  %rva75817 = call i64 @prim_cons(i64 %arg74723, i64 %rva75818)                      ; call prim_cons
  %cloptr78130 = inttoptr i64 %cont74546 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78131 = getelementptr inbounds i64, i64* %cloptr78130, i64 0                 ; &cloptr78130[0]
  %f78133 = load i64, i64* %i0ptr78131, align 8                                      ; load; *i0ptr78131
  %fptr78132 = inttoptr i64 %f78133 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78132(i64 %cont74546, i64 %rva75817)                ; tail call
  ret void

else78129:
  %a74272 = call i64 @prim_car(i64 %odh$ls0)                                         ; call prim_car
  %arg74726 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74273 = call i64 @prim_vector_45ref(i64 %yHs$_37append, i64 %arg74726)           ; call prim_vector_45ref
  %a74274 = call i64 @prim_cdr(i64 %odh$ls0)                                         ; call prim_cdr
  %cloptr78134 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78136 = getelementptr inbounds i64, i64* %cloptr78134, i64 1                  ; &eptr78136[1]
  %eptr78137 = getelementptr inbounds i64, i64* %cloptr78134, i64 2                  ; &eptr78137[2]
  store i64 %cont74546, i64* %eptr78136                                              ; *eptr78136 = %cont74546
  store i64 %a74272, i64* %eptr78137                                                 ; *eptr78137 = %a74272
  %eptr78135 = getelementptr inbounds i64, i64* %cloptr78134, i64 0                  ; &cloptr78134[0]
  %f78138 = ptrtoint void(i64,i64)* @lam77698 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78138, i64* %eptr78135                                                 ; store fptr
  %arg74731 = ptrtoint i64* %cloptr78134 to i64                                      ; closure cast; i64* -> i64
  %rva75830 = add i64 0, 0                                                           ; quoted ()
  %rva75829 = call i64 @prim_cons(i64 %WK3$ls1, i64 %rva75830)                       ; call prim_cons
  %rva75828 = call i64 @prim_cons(i64 %a74274, i64 %rva75829)                        ; call prim_cons
  %rva75827 = call i64 @prim_cons(i64 %arg74731, i64 %rva75828)                      ; call prim_cons
  %cloptr78139 = inttoptr i64 %a74273 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78140 = getelementptr inbounds i64, i64* %cloptr78139, i64 0                 ; &cloptr78139[0]
  %f78142 = load i64, i64* %i0ptr78140, align 8                                      ; load; *i0ptr78140
  %fptr78141 = inttoptr i64 %f78142 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78141(i64 %a74273, i64 %rva75827)                   ; tail call
  ret void
}


define void @lam77698(i64 %env77699, i64 %rvp75826) {
  %envptr78143 = inttoptr i64 %env77699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78144 = getelementptr inbounds i64, i64* %envptr78143, i64 2                ; &envptr78143[2]
  %a74272 = load i64, i64* %envptr78144, align 8                                     ; load; *envptr78144
  %envptr78145 = inttoptr i64 %env77699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78146 = getelementptr inbounds i64, i64* %envptr78145, i64 1                ; &envptr78145[1]
  %cont74546 = load i64, i64* %envptr78146, align 8                                  ; load; *envptr78146
  %_9574547 = call i64 @prim_car(i64 %rvp75826)                                      ; call prim_car
  %rvp75825 = call i64 @prim_cdr(i64 %rvp75826)                                      ; call prim_cdr
  %a74275 = call i64 @prim_car(i64 %rvp75825)                                        ; call prim_car
  %na75821 = call i64 @prim_cdr(i64 %rvp75825)                                       ; call prim_cdr
  %retprim74548 = call i64 @prim_cons(i64 %a74272, i64 %a74275)                      ; call prim_cons
  %arg74736 = add i64 0, 0                                                           ; quoted ()
  %rva75824 = add i64 0, 0                                                           ; quoted ()
  %rva75823 = call i64 @prim_cons(i64 %retprim74548, i64 %rva75824)                  ; call prim_cons
  %rva75822 = call i64 @prim_cons(i64 %arg74736, i64 %rva75823)                      ; call prim_cons
  %cloptr78147 = inttoptr i64 %cont74546 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78148 = getelementptr inbounds i64, i64* %cloptr78147, i64 0                 ; &cloptr78147[0]
  %f78150 = load i64, i64* %i0ptr78148, align 8                                      ; load; *i0ptr78148
  %fptr78149 = inttoptr i64 %f78150 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78149(i64 %cont74546, i64 %rva75822)                ; tail call
  ret void
}


define void @lam77690(i64 %env77691, i64 %rvp76587) {
  %envptr78151 = inttoptr i64 %env77691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78152 = getelementptr inbounds i64, i64* %envptr78151, i64 3                ; &envptr78151[3]
  %N9Z$_37_62 = load i64, i64* %envptr78152, align 8                                 ; load; *envptr78152
  %envptr78153 = inttoptr i64 %env77691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78154 = getelementptr inbounds i64, i64* %envptr78153, i64 2                ; &envptr78153[2]
  %dQj$_37length = load i64, i64* %envptr78154, align 8                              ; load; *envptr78154
  %envptr78155 = inttoptr i64 %env77691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78156 = getelementptr inbounds i64, i64* %envptr78155, i64 1                ; &envptr78155[1]
  %gFG$_37foldl1 = load i64, i64* %envptr78156, align 8                              ; load; *envptr78156
  %_9574417 = call i64 @prim_car(i64 %rvp76587)                                      ; call prim_car
  %rvp76586 = call i64 @prim_cdr(i64 %rvp76587)                                      ; call prim_cdr
  %M2K$_37append = call i64 @prim_car(i64 %rvp76586)                                 ; call prim_car
  %na75835 = call i64 @prim_cdr(i64 %rvp76586)                                       ; call prim_cdr
  %cloptr78157 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78158 = getelementptr inbounds i64, i64* %cloptr78157, i64 0                  ; &cloptr78157[0]
  %f78159 = ptrtoint void(i64,i64)* @lam77688 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78159, i64* %eptr78158                                                 ; store fptr
  %eT3$_37list_63 = ptrtoint i64* %cloptr78157 to i64                                ; closure cast; i64* -> i64
  %cloptr78160 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78161 = getelementptr inbounds i64, i64* %cloptr78160, i64 0                  ; &cloptr78160[0]
  %f78162 = ptrtoint void(i64,i64)* @lam77636 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78162, i64* %eptr78161                                                 ; store fptr
  %B9u$_37drop = ptrtoint i64* %cloptr78160 to i64                                   ; closure cast; i64* -> i64
  %cloptr78163 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78164 = getelementptr inbounds i64, i64* %cloptr78163, i64 0                  ; &cloptr78163[0]
  %f78165 = ptrtoint void(i64,i64)* @lam77586 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78165, i64* %eptr78164                                                 ; store fptr
  %Oab$_37memv = ptrtoint i64* %cloptr78163 to i64                                   ; closure cast; i64* -> i64
  %cloptr78166 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr78168 = getelementptr inbounds i64, i64* %cloptr78166, i64 1                  ; &eptr78168[1]
  store i64 %gFG$_37foldl1, i64* %eptr78168                                          ; *eptr78168 = %gFG$_37foldl1
  %eptr78167 = getelementptr inbounds i64, i64* %cloptr78166, i64 0                  ; &cloptr78166[0]
  %f78169 = ptrtoint void(i64,i64)* @lam77545 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78169, i64* %eptr78167                                                 ; store fptr
  %nYb$_37_47 = ptrtoint i64* %cloptr78166 to i64                                    ; closure cast; i64* -> i64
  %cloptr78170 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78171 = getelementptr inbounds i64, i64* %cloptr78170, i64 0                  ; &cloptr78170[0]
  %f78172 = ptrtoint void(i64,i64)* @lam77533 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78172, i64* %eptr78171                                                 ; store fptr
  %t78$_37first = ptrtoint i64* %cloptr78170 to i64                                  ; closure cast; i64* -> i64
  %cloptr78173 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78174 = getelementptr inbounds i64, i64* %cloptr78173, i64 0                  ; &cloptr78173[0]
  %f78175 = ptrtoint void(i64,i64)* @lam77529 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78175, i64* %eptr78174                                                 ; store fptr
  %puL$_37second = ptrtoint i64* %cloptr78173 to i64                                 ; closure cast; i64* -> i64
  %cloptr78176 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78177 = getelementptr inbounds i64, i64* %cloptr78176, i64 0                  ; &cloptr78176[0]
  %f78178 = ptrtoint void(i64,i64)* @lam77525 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78178, i64* %eptr78177                                                 ; store fptr
  %Cj9$_37third = ptrtoint i64* %cloptr78176 to i64                                  ; closure cast; i64* -> i64
  %cloptr78179 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78180 = getelementptr inbounds i64, i64* %cloptr78179, i64 0                  ; &cloptr78179[0]
  %f78181 = ptrtoint void(i64,i64)* @lam77521 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78181, i64* %eptr78180                                                 ; store fptr
  %Daj$_37fourth = ptrtoint i64* %cloptr78179 to i64                                 ; closure cast; i64* -> i64
  %cloptr78182 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78183 = getelementptr inbounds i64, i64* %cloptr78182, i64 0                  ; &cloptr78182[0]
  %f78184 = ptrtoint void(i64,i64)* @lam77517 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78184, i64* %eptr78183                                                 ; store fptr
  %uvy$promise_63 = ptrtoint i64* %cloptr78182 to i64                                ; closure cast; i64* -> i64
  %cloptr78185 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78186 = getelementptr inbounds i64, i64* %cloptr78185, i64 0                  ; &cloptr78185[0]
  %f78187 = ptrtoint void(i64,i64)* @lam77509 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78187, i64* %eptr78186                                                 ; store fptr
  %arg75004 = ptrtoint i64* %cloptr78185 to i64                                      ; closure cast; i64* -> i64
  %cloptr78188 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr78190 = getelementptr inbounds i64, i64* %cloptr78188, i64 1                  ; &eptr78190[1]
  %eptr78191 = getelementptr inbounds i64, i64* %cloptr78188, i64 2                  ; &eptr78191[2]
  %eptr78192 = getelementptr inbounds i64, i64* %cloptr78188, i64 3                  ; &eptr78192[3]
  %eptr78193 = getelementptr inbounds i64, i64* %cloptr78188, i64 4                  ; &eptr78193[4]
  store i64 %dQj$_37length, i64* %eptr78190                                          ; *eptr78190 = %dQj$_37length
  store i64 %M2K$_37append, i64* %eptr78191                                          ; *eptr78191 = %M2K$_37append
  store i64 %B9u$_37drop, i64* %eptr78192                                            ; *eptr78192 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78193                                             ; *eptr78193 = %N9Z$_37_62
  %eptr78189 = getelementptr inbounds i64, i64* %cloptr78188, i64 0                  ; &cloptr78188[0]
  %f78194 = ptrtoint void(i64,i64)* @lam77505 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78194, i64* %eptr78189                                                 ; store fptr
  %arg75003 = ptrtoint i64* %cloptr78188 to i64                                      ; closure cast; i64* -> i64
  %rva76585 = add i64 0, 0                                                           ; quoted ()
  %rva76584 = call i64 @prim_cons(i64 %arg75003, i64 %rva76585)                      ; call prim_cons
  %cloptr78195 = inttoptr i64 %arg75004 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78196 = getelementptr inbounds i64, i64* %cloptr78195, i64 0                 ; &cloptr78195[0]
  %f78198 = load i64, i64* %i0ptr78196, align 8                                      ; load; *i0ptr78196
  %fptr78197 = inttoptr i64 %f78198 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78197(i64 %arg75004, i64 %rva76584)                 ; tail call
  ret void
}


define void @lam77688(i64 %env77689, i64 %rvp75903) {
  %cont74418 = call i64 @prim_car(i64 %rvp75903)                                     ; call prim_car
  %rvp75902 = call i64 @prim_cdr(i64 %rvp75903)                                      ; call prim_cdr
  %Imd$a = call i64 @prim_car(i64 %rvp75902)                                         ; call prim_car
  %na75837 = call i64 @prim_cdr(i64 %rvp75902)                                       ; call prim_cdr
  %arg74744 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %Rds$a = call i64 @prim_make_45vector(i64 %arg74744, i64 %Imd$a)                   ; call prim_make_45vector
  %cloptr78199 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78200 = getelementptr inbounds i64, i64* %cloptr78199, i64 0                  ; &cloptr78199[0]
  %f78201 = ptrtoint void(i64,i64)* @lam77685 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78201, i64* %eptr78200                                                 ; store fptr
  %arg74747 = ptrtoint i64* %cloptr78199 to i64                                      ; closure cast; i64* -> i64
  %cloptr78202 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78204 = getelementptr inbounds i64, i64* %cloptr78202, i64 1                  ; &eptr78204[1]
  %eptr78205 = getelementptr inbounds i64, i64* %cloptr78202, i64 2                  ; &eptr78205[2]
  store i64 %Rds$a, i64* %eptr78204                                                  ; *eptr78204 = %Rds$a
  store i64 %cont74418, i64* %eptr78205                                              ; *eptr78205 = %cont74418
  %eptr78203 = getelementptr inbounds i64, i64* %cloptr78202, i64 0                  ; &cloptr78202[0]
  %f78206 = ptrtoint void(i64,i64)* @lam77681 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78206, i64* %eptr78203                                                 ; store fptr
  %arg74746 = ptrtoint i64* %cloptr78202 to i64                                      ; closure cast; i64* -> i64
  %cloptr78207 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78209 = getelementptr inbounds i64, i64* %cloptr78207, i64 1                  ; &eptr78209[1]
  %eptr78210 = getelementptr inbounds i64, i64* %cloptr78207, i64 2                  ; &eptr78210[2]
  store i64 %Rds$a, i64* %eptr78209                                                  ; *eptr78209 = %Rds$a
  store i64 %cont74418, i64* %eptr78210                                              ; *eptr78210 = %cont74418
  %eptr78208 = getelementptr inbounds i64, i64* %cloptr78207, i64 0                  ; &cloptr78207[0]
  %f78211 = ptrtoint void(i64,i64)* @lam77659 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78211, i64* %eptr78208                                                 ; store fptr
  %arg74745 = ptrtoint i64* %cloptr78207 to i64                                      ; closure cast; i64* -> i64
  %rva75901 = add i64 0, 0                                                           ; quoted ()
  %rva75900 = call i64 @prim_cons(i64 %arg74745, i64 %rva75901)                      ; call prim_cons
  %rva75899 = call i64 @prim_cons(i64 %arg74746, i64 %rva75900)                      ; call prim_cons
  %cloptr78212 = inttoptr i64 %arg74747 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78213 = getelementptr inbounds i64, i64* %cloptr78212, i64 0                 ; &cloptr78212[0]
  %f78215 = load i64, i64* %i0ptr78213, align 8                                      ; load; *i0ptr78213
  %fptr78214 = inttoptr i64 %f78215 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78214(i64 %arg74747, i64 %rva75899)                 ; tail call
  ret void
}


define void @lam77685(i64 %env77686, i64 %rvp75844) {
  %cont74424 = call i64 @prim_car(i64 %rvp75844)                                     ; call prim_car
  %rvp75843 = call i64 @prim_cdr(i64 %rvp75844)                                      ; call prim_cdr
  %Kzh$k = call i64 @prim_car(i64 %rvp75843)                                         ; call prim_car
  %na75839 = call i64 @prim_cdr(i64 %rvp75843)                                       ; call prim_cdr
  %arg74749 = add i64 0, 0                                                           ; quoted ()
  %rva75842 = add i64 0, 0                                                           ; quoted ()
  %rva75841 = call i64 @prim_cons(i64 %Kzh$k, i64 %rva75842)                         ; call prim_cons
  %rva75840 = call i64 @prim_cons(i64 %arg74749, i64 %rva75841)                      ; call prim_cons
  %cloptr78216 = inttoptr i64 %cont74424 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78217 = getelementptr inbounds i64, i64* %cloptr78216, i64 0                 ; &cloptr78216[0]
  %f78219 = load i64, i64* %i0ptr78217, align 8                                      ; load; *i0ptr78217
  %fptr78218 = inttoptr i64 %f78219 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78218(i64 %cont74424, i64 %rva75840)                ; tail call
  ret void
}


define void @lam77681(i64 %env77682, i64 %rvp75871) {
  %envptr78220 = inttoptr i64 %env77682 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78221 = getelementptr inbounds i64, i64* %envptr78220, i64 2                ; &envptr78220[2]
  %cont74418 = load i64, i64* %envptr78221, align 8                                  ; load; *envptr78221
  %envptr78222 = inttoptr i64 %env77682 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78223 = getelementptr inbounds i64, i64* %envptr78222, i64 1                ; &envptr78222[1]
  %Rds$a = load i64, i64* %envptr78223, align 8                                      ; load; *envptr78223
  %_9574419 = call i64 @prim_car(i64 %rvp75871)                                      ; call prim_car
  %rvp75870 = call i64 @prim_cdr(i64 %rvp75871)                                      ; call prim_cdr
  %uOG$cc = call i64 @prim_car(i64 %rvp75870)                                        ; call prim_car
  %na75846 = call i64 @prim_cdr(i64 %rvp75870)                                       ; call prim_cdr
  %arg74751 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74276 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74751)                   ; call prim_vector_45ref
  %a74277 = call i64 @prim_null_63(i64 %a74276)                                      ; call prim_null_63
  %cmp78224 = icmp eq i64 %a74277, 15                                                ; false?
  br i1 %cmp78224, label %else78226, label %then78225                                ; if

then78225:
  %arg74755 = add i64 0, 0                                                           ; quoted ()
  %arg74754 = call i64 @const_init_true()                                            ; quoted #t
  %rva75849 = add i64 0, 0                                                           ; quoted ()
  %rva75848 = call i64 @prim_cons(i64 %arg74754, i64 %rva75849)                      ; call prim_cons
  %rva75847 = call i64 @prim_cons(i64 %arg74755, i64 %rva75848)                      ; call prim_cons
  %cloptr78227 = inttoptr i64 %cont74418 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78228 = getelementptr inbounds i64, i64* %cloptr78227, i64 0                 ; &cloptr78227[0]
  %f78230 = load i64, i64* %i0ptr78228, align 8                                      ; load; *i0ptr78228
  %fptr78229 = inttoptr i64 %f78230 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78229(i64 %cont74418, i64 %rva75847)                ; tail call
  ret void

else78226:
  %arg74757 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74278 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74757)                   ; call prim_vector_45ref
  %a74279 = call i64 @prim_cons_63(i64 %a74278)                                      ; call prim_cons_63
  %cmp78231 = icmp eq i64 %a74279, 15                                                ; false?
  br i1 %cmp78231, label %else78233, label %then78232                                ; if

then78232:
  %arg74760 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74280 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74760)                   ; call prim_vector_45ref
  %retprim74423 = call i64 @prim_cdr(i64 %a74280)                                    ; call prim_cdr
  %cloptr78234 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78236 = getelementptr inbounds i64, i64* %cloptr78234, i64 1                  ; &eptr78236[1]
  %eptr78237 = getelementptr inbounds i64, i64* %cloptr78234, i64 2                  ; &eptr78237[2]
  %eptr78238 = getelementptr inbounds i64, i64* %cloptr78234, i64 3                  ; &eptr78238[3]
  store i64 %uOG$cc, i64* %eptr78236                                                 ; *eptr78236 = %uOG$cc
  store i64 %Rds$a, i64* %eptr78237                                                  ; *eptr78237 = %Rds$a
  store i64 %cont74418, i64* %eptr78238                                              ; *eptr78238 = %cont74418
  %eptr78235 = getelementptr inbounds i64, i64* %cloptr78234, i64 0                  ; &cloptr78234[0]
  %f78239 = ptrtoint void(i64,i64)* @lam77673 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78239, i64* %eptr78235                                                 ; store fptr
  %arg74765 = ptrtoint i64* %cloptr78234 to i64                                      ; closure cast; i64* -> i64
  %arg74764 = add i64 0, 0                                                           ; quoted ()
  %rva75866 = add i64 0, 0                                                           ; quoted ()
  %rva75865 = call i64 @prim_cons(i64 %retprim74423, i64 %rva75866)                  ; call prim_cons
  %rva75864 = call i64 @prim_cons(i64 %arg74764, i64 %rva75865)                      ; call prim_cons
  %cloptr78240 = inttoptr i64 %arg74765 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78241 = getelementptr inbounds i64, i64* %cloptr78240, i64 0                 ; &cloptr78240[0]
  %f78243 = load i64, i64* %i0ptr78241, align 8                                      ; load; *i0ptr78241
  %fptr78242 = inttoptr i64 %f78243 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78242(i64 %arg74765, i64 %rva75864)                 ; tail call
  ret void

else78233:
  %arg74779 = add i64 0, 0                                                           ; quoted ()
  %arg74778 = call i64 @const_init_false()                                           ; quoted #f
  %rva75869 = add i64 0, 0                                                           ; quoted ()
  %rva75868 = call i64 @prim_cons(i64 %arg74778, i64 %rva75869)                      ; call prim_cons
  %rva75867 = call i64 @prim_cons(i64 %arg74779, i64 %rva75868)                      ; call prim_cons
  %cloptr78244 = inttoptr i64 %cont74418 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78245 = getelementptr inbounds i64, i64* %cloptr78244, i64 0                 ; &cloptr78244[0]
  %f78247 = load i64, i64* %i0ptr78245, align 8                                      ; load; *i0ptr78245
  %fptr78246 = inttoptr i64 %f78247 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78246(i64 %cont74418, i64 %rva75867)                ; tail call
  ret void
}


define void @lam77673(i64 %env77674, i64 %rvp75863) {
  %envptr78248 = inttoptr i64 %env77674 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78249 = getelementptr inbounds i64, i64* %envptr78248, i64 3                ; &envptr78248[3]
  %cont74418 = load i64, i64* %envptr78249, align 8                                  ; load; *envptr78249
  %envptr78250 = inttoptr i64 %env77674 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78251 = getelementptr inbounds i64, i64* %envptr78250, i64 2                ; &envptr78250[2]
  %Rds$a = load i64, i64* %envptr78251, align 8                                      ; load; *envptr78251
  %envptr78252 = inttoptr i64 %env77674 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78253 = getelementptr inbounds i64, i64* %envptr78252, i64 1                ; &envptr78252[1]
  %uOG$cc = load i64, i64* %envptr78253, align 8                                     ; load; *envptr78253
  %_9574420 = call i64 @prim_car(i64 %rvp75863)                                      ; call prim_car
  %rvp75862 = call i64 @prim_cdr(i64 %rvp75863)                                      ; call prim_cdr
  %Q2C$b = call i64 @prim_car(i64 %rvp75862)                                         ; call prim_car
  %na75851 = call i64 @prim_cdr(i64 %rvp75862)                                       ; call prim_cdr
  %arg74766 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74281 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74766)                   ; call prim_vector_45ref
  %a74282 = call i64 @prim_cdr(i64 %a74281)                                          ; call prim_cdr
  %arg74770 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74422 = call i64 @prim_vector_45set_33(i64 %Rds$a, i64 %arg74770, i64 %a74282); call prim_vector_45set_33
  %cloptr78254 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78256 = getelementptr inbounds i64, i64* %cloptr78254, i64 1                  ; &eptr78256[1]
  %eptr78257 = getelementptr inbounds i64, i64* %cloptr78254, i64 2                  ; &eptr78257[2]
  store i64 %uOG$cc, i64* %eptr78256                                                 ; *eptr78256 = %uOG$cc
  store i64 %cont74418, i64* %eptr78257                                              ; *eptr78257 = %cont74418
  %eptr78255 = getelementptr inbounds i64, i64* %cloptr78254, i64 0                  ; &cloptr78254[0]
  %f78258 = ptrtoint void(i64,i64)* @lam77669 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78258, i64* %eptr78255                                                 ; store fptr
  %arg74774 = ptrtoint i64* %cloptr78254 to i64                                      ; closure cast; i64* -> i64
  %arg74773 = add i64 0, 0                                                           ; quoted ()
  %rva75861 = add i64 0, 0                                                           ; quoted ()
  %rva75860 = call i64 @prim_cons(i64 %retprim74422, i64 %rva75861)                  ; call prim_cons
  %rva75859 = call i64 @prim_cons(i64 %arg74773, i64 %rva75860)                      ; call prim_cons
  %cloptr78259 = inttoptr i64 %arg74774 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78260 = getelementptr inbounds i64, i64* %cloptr78259, i64 0                 ; &cloptr78259[0]
  %f78262 = load i64, i64* %i0ptr78260, align 8                                      ; load; *i0ptr78260
  %fptr78261 = inttoptr i64 %f78262 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78261(i64 %arg74774, i64 %rva75859)                 ; tail call
  ret void
}


define void @lam77669(i64 %env77670, i64 %rvp75858) {
  %envptr78263 = inttoptr i64 %env77670 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78264 = getelementptr inbounds i64, i64* %envptr78263, i64 2                ; &envptr78263[2]
  %cont74418 = load i64, i64* %envptr78264, align 8                                  ; load; *envptr78264
  %envptr78265 = inttoptr i64 %env77670 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78266 = getelementptr inbounds i64, i64* %envptr78265, i64 1                ; &envptr78265[1]
  %uOG$cc = load i64, i64* %envptr78266, align 8                                     ; load; *envptr78266
  %_9574421 = call i64 @prim_car(i64 %rvp75858)                                      ; call prim_car
  %rvp75857 = call i64 @prim_cdr(i64 %rvp75858)                                      ; call prim_cdr
  %dIm$_950 = call i64 @prim_car(i64 %rvp75857)                                      ; call prim_car
  %na75853 = call i64 @prim_cdr(i64 %rvp75857)                                       ; call prim_cdr
  %rva75856 = add i64 0, 0                                                           ; quoted ()
  %rva75855 = call i64 @prim_cons(i64 %uOG$cc, i64 %rva75856)                        ; call prim_cons
  %rva75854 = call i64 @prim_cons(i64 %cont74418, i64 %rva75855)                     ; call prim_cons
  %cloptr78267 = inttoptr i64 %uOG$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78268 = getelementptr inbounds i64, i64* %cloptr78267, i64 0                 ; &cloptr78267[0]
  %f78270 = load i64, i64* %i0ptr78268, align 8                                      ; load; *i0ptr78268
  %fptr78269 = inttoptr i64 %f78270 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78269(i64 %uOG$cc, i64 %rva75854)                   ; tail call
  ret void
}


define void @lam77659(i64 %env77660, i64 %rvp75898) {
  %envptr78271 = inttoptr i64 %env77660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78272 = getelementptr inbounds i64, i64* %envptr78271, i64 2                ; &envptr78271[2]
  %cont74418 = load i64, i64* %envptr78272, align 8                                  ; load; *envptr78272
  %envptr78273 = inttoptr i64 %env77660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78274 = getelementptr inbounds i64, i64* %envptr78273, i64 1                ; &envptr78273[1]
  %Rds$a = load i64, i64* %envptr78274, align 8                                      ; load; *envptr78274
  %_9574419 = call i64 @prim_car(i64 %rvp75898)                                      ; call prim_car
  %rvp75897 = call i64 @prim_cdr(i64 %rvp75898)                                      ; call prim_cdr
  %uOG$cc = call i64 @prim_car(i64 %rvp75897)                                        ; call prim_car
  %na75873 = call i64 @prim_cdr(i64 %rvp75897)                                       ; call prim_cdr
  %arg74781 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74276 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74781)                   ; call prim_vector_45ref
  %a74277 = call i64 @prim_null_63(i64 %a74276)                                      ; call prim_null_63
  %cmp78275 = icmp eq i64 %a74277, 15                                                ; false?
  br i1 %cmp78275, label %else78277, label %then78276                                ; if

then78276:
  %arg74785 = add i64 0, 0                                                           ; quoted ()
  %arg74784 = call i64 @const_init_true()                                            ; quoted #t
  %rva75876 = add i64 0, 0                                                           ; quoted ()
  %rva75875 = call i64 @prim_cons(i64 %arg74784, i64 %rva75876)                      ; call prim_cons
  %rva75874 = call i64 @prim_cons(i64 %arg74785, i64 %rva75875)                      ; call prim_cons
  %cloptr78278 = inttoptr i64 %cont74418 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78279 = getelementptr inbounds i64, i64* %cloptr78278, i64 0                 ; &cloptr78278[0]
  %f78281 = load i64, i64* %i0ptr78279, align 8                                      ; load; *i0ptr78279
  %fptr78280 = inttoptr i64 %f78281 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78280(i64 %cont74418, i64 %rva75874)                ; tail call
  ret void

else78277:
  %arg74787 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74278 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74787)                   ; call prim_vector_45ref
  %a74279 = call i64 @prim_cons_63(i64 %a74278)                                      ; call prim_cons_63
  %cmp78282 = icmp eq i64 %a74279, 15                                                ; false?
  br i1 %cmp78282, label %else78284, label %then78283                                ; if

then78283:
  %arg74790 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74280 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74790)                   ; call prim_vector_45ref
  %retprim74423 = call i64 @prim_cdr(i64 %a74280)                                    ; call prim_cdr
  %cloptr78285 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78287 = getelementptr inbounds i64, i64* %cloptr78285, i64 1                  ; &eptr78287[1]
  %eptr78288 = getelementptr inbounds i64, i64* %cloptr78285, i64 2                  ; &eptr78288[2]
  %eptr78289 = getelementptr inbounds i64, i64* %cloptr78285, i64 3                  ; &eptr78289[3]
  store i64 %uOG$cc, i64* %eptr78287                                                 ; *eptr78287 = %uOG$cc
  store i64 %Rds$a, i64* %eptr78288                                                  ; *eptr78288 = %Rds$a
  store i64 %cont74418, i64* %eptr78289                                              ; *eptr78289 = %cont74418
  %eptr78286 = getelementptr inbounds i64, i64* %cloptr78285, i64 0                  ; &cloptr78285[0]
  %f78290 = ptrtoint void(i64,i64)* @lam77651 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78290, i64* %eptr78286                                                 ; store fptr
  %arg74795 = ptrtoint i64* %cloptr78285 to i64                                      ; closure cast; i64* -> i64
  %arg74794 = add i64 0, 0                                                           ; quoted ()
  %rva75893 = add i64 0, 0                                                           ; quoted ()
  %rva75892 = call i64 @prim_cons(i64 %retprim74423, i64 %rva75893)                  ; call prim_cons
  %rva75891 = call i64 @prim_cons(i64 %arg74794, i64 %rva75892)                      ; call prim_cons
  %cloptr78291 = inttoptr i64 %arg74795 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78292 = getelementptr inbounds i64, i64* %cloptr78291, i64 0                 ; &cloptr78291[0]
  %f78294 = load i64, i64* %i0ptr78292, align 8                                      ; load; *i0ptr78292
  %fptr78293 = inttoptr i64 %f78294 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78293(i64 %arg74795, i64 %rva75891)                 ; tail call
  ret void

else78284:
  %arg74809 = add i64 0, 0                                                           ; quoted ()
  %arg74808 = call i64 @const_init_false()                                           ; quoted #f
  %rva75896 = add i64 0, 0                                                           ; quoted ()
  %rva75895 = call i64 @prim_cons(i64 %arg74808, i64 %rva75896)                      ; call prim_cons
  %rva75894 = call i64 @prim_cons(i64 %arg74809, i64 %rva75895)                      ; call prim_cons
  %cloptr78295 = inttoptr i64 %cont74418 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78296 = getelementptr inbounds i64, i64* %cloptr78295, i64 0                 ; &cloptr78295[0]
  %f78298 = load i64, i64* %i0ptr78296, align 8                                      ; load; *i0ptr78296
  %fptr78297 = inttoptr i64 %f78298 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78297(i64 %cont74418, i64 %rva75894)                ; tail call
  ret void
}


define void @lam77651(i64 %env77652, i64 %rvp75890) {
  %envptr78299 = inttoptr i64 %env77652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78300 = getelementptr inbounds i64, i64* %envptr78299, i64 3                ; &envptr78299[3]
  %cont74418 = load i64, i64* %envptr78300, align 8                                  ; load; *envptr78300
  %envptr78301 = inttoptr i64 %env77652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78302 = getelementptr inbounds i64, i64* %envptr78301, i64 2                ; &envptr78301[2]
  %Rds$a = load i64, i64* %envptr78302, align 8                                      ; load; *envptr78302
  %envptr78303 = inttoptr i64 %env77652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78304 = getelementptr inbounds i64, i64* %envptr78303, i64 1                ; &envptr78303[1]
  %uOG$cc = load i64, i64* %envptr78304, align 8                                     ; load; *envptr78304
  %_9574420 = call i64 @prim_car(i64 %rvp75890)                                      ; call prim_car
  %rvp75889 = call i64 @prim_cdr(i64 %rvp75890)                                      ; call prim_cdr
  %Q2C$b = call i64 @prim_car(i64 %rvp75889)                                         ; call prim_car
  %na75878 = call i64 @prim_cdr(i64 %rvp75889)                                       ; call prim_cdr
  %arg74796 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74281 = call i64 @prim_vector_45ref(i64 %Rds$a, i64 %arg74796)                   ; call prim_vector_45ref
  %a74282 = call i64 @prim_cdr(i64 %a74281)                                          ; call prim_cdr
  %arg74800 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74422 = call i64 @prim_vector_45set_33(i64 %Rds$a, i64 %arg74800, i64 %a74282); call prim_vector_45set_33
  %cloptr78305 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78307 = getelementptr inbounds i64, i64* %cloptr78305, i64 1                  ; &eptr78307[1]
  %eptr78308 = getelementptr inbounds i64, i64* %cloptr78305, i64 2                  ; &eptr78308[2]
  store i64 %uOG$cc, i64* %eptr78307                                                 ; *eptr78307 = %uOG$cc
  store i64 %cont74418, i64* %eptr78308                                              ; *eptr78308 = %cont74418
  %eptr78306 = getelementptr inbounds i64, i64* %cloptr78305, i64 0                  ; &cloptr78305[0]
  %f78309 = ptrtoint void(i64,i64)* @lam77647 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78309, i64* %eptr78306                                                 ; store fptr
  %arg74804 = ptrtoint i64* %cloptr78305 to i64                                      ; closure cast; i64* -> i64
  %arg74803 = add i64 0, 0                                                           ; quoted ()
  %rva75888 = add i64 0, 0                                                           ; quoted ()
  %rva75887 = call i64 @prim_cons(i64 %retprim74422, i64 %rva75888)                  ; call prim_cons
  %rva75886 = call i64 @prim_cons(i64 %arg74803, i64 %rva75887)                      ; call prim_cons
  %cloptr78310 = inttoptr i64 %arg74804 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78311 = getelementptr inbounds i64, i64* %cloptr78310, i64 0                 ; &cloptr78310[0]
  %f78313 = load i64, i64* %i0ptr78311, align 8                                      ; load; *i0ptr78311
  %fptr78312 = inttoptr i64 %f78313 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78312(i64 %arg74804, i64 %rva75886)                 ; tail call
  ret void
}


define void @lam77647(i64 %env77648, i64 %rvp75885) {
  %envptr78314 = inttoptr i64 %env77648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78315 = getelementptr inbounds i64, i64* %envptr78314, i64 2                ; &envptr78314[2]
  %cont74418 = load i64, i64* %envptr78315, align 8                                  ; load; *envptr78315
  %envptr78316 = inttoptr i64 %env77648 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78317 = getelementptr inbounds i64, i64* %envptr78316, i64 1                ; &envptr78316[1]
  %uOG$cc = load i64, i64* %envptr78317, align 8                                     ; load; *envptr78317
  %_9574421 = call i64 @prim_car(i64 %rvp75885)                                      ; call prim_car
  %rvp75884 = call i64 @prim_cdr(i64 %rvp75885)                                      ; call prim_cdr
  %dIm$_950 = call i64 @prim_car(i64 %rvp75884)                                      ; call prim_car
  %na75880 = call i64 @prim_cdr(i64 %rvp75884)                                       ; call prim_cdr
  %rva75883 = add i64 0, 0                                                           ; quoted ()
  %rva75882 = call i64 @prim_cons(i64 %uOG$cc, i64 %rva75883)                        ; call prim_cons
  %rva75881 = call i64 @prim_cons(i64 %cont74418, i64 %rva75882)                     ; call prim_cons
  %cloptr78318 = inttoptr i64 %uOG$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78319 = getelementptr inbounds i64, i64* %cloptr78318, i64 0                 ; &cloptr78318[0]
  %f78321 = load i64, i64* %i0ptr78319, align 8                                      ; load; *i0ptr78319
  %fptr78320 = inttoptr i64 %f78321 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78320(i64 %uOG$cc, i64 %rva75881)                   ; tail call
  ret void
}


define void @lam77636(i64 %env77637, i64 %rvp75966) {
  %cont74425 = call i64 @prim_car(i64 %rvp75966)                                     ; call prim_car
  %rvp75965 = call i64 @prim_cdr(i64 %rvp75966)                                      ; call prim_cdr
  %If3$lst = call i64 @prim_car(i64 %rvp75965)                                       ; call prim_car
  %rvp75964 = call i64 @prim_cdr(i64 %rvp75965)                                      ; call prim_cdr
  %cbi$n = call i64 @prim_car(i64 %rvp75964)                                         ; call prim_car
  %na75905 = call i64 @prim_cdr(i64 %rvp75964)                                       ; call prim_cdr
  %arg74812 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %Xv3$lst = call i64 @prim_make_45vector(i64 %arg74812, i64 %If3$lst)               ; call prim_make_45vector
  %arg74814 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %iIc$n = call i64 @prim_make_45vector(i64 %arg74814, i64 %cbi$n)                   ; call prim_make_45vector
  %cloptr78322 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78323 = getelementptr inbounds i64, i64* %cloptr78322, i64 0                  ; &cloptr78322[0]
  %f78324 = ptrtoint void(i64,i64)* @lam77632 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78324, i64* %eptr78323                                                 ; store fptr
  %arg74817 = ptrtoint i64* %cloptr78322 to i64                                      ; closure cast; i64* -> i64
  %cloptr78325 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78327 = getelementptr inbounds i64, i64* %cloptr78325, i64 1                  ; &eptr78327[1]
  %eptr78328 = getelementptr inbounds i64, i64* %cloptr78325, i64 2                  ; &eptr78328[2]
  %eptr78329 = getelementptr inbounds i64, i64* %cloptr78325, i64 3                  ; &eptr78329[3]
  store i64 %Xv3$lst, i64* %eptr78327                                                ; *eptr78327 = %Xv3$lst
  store i64 %cont74425, i64* %eptr78328                                              ; *eptr78328 = %cont74425
  store i64 %iIc$n, i64* %eptr78329                                                  ; *eptr78329 = %iIc$n
  %eptr78326 = getelementptr inbounds i64, i64* %cloptr78325, i64 0                  ; &cloptr78325[0]
  %f78330 = ptrtoint void(i64,i64)* @lam77629 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78330, i64* %eptr78326                                                 ; store fptr
  %arg74816 = ptrtoint i64* %cloptr78325 to i64                                      ; closure cast; i64* -> i64
  %cloptr78331 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78333 = getelementptr inbounds i64, i64* %cloptr78331, i64 1                  ; &eptr78333[1]
  %eptr78334 = getelementptr inbounds i64, i64* %cloptr78331, i64 2                  ; &eptr78334[2]
  %eptr78335 = getelementptr inbounds i64, i64* %cloptr78331, i64 3                  ; &eptr78335[3]
  store i64 %Xv3$lst, i64* %eptr78333                                                ; *eptr78333 = %Xv3$lst
  store i64 %cont74425, i64* %eptr78334                                              ; *eptr78334 = %cont74425
  store i64 %iIc$n, i64* %eptr78335                                                  ; *eptr78335 = %iIc$n
  %eptr78332 = getelementptr inbounds i64, i64* %cloptr78331, i64 0                  ; &cloptr78331[0]
  %f78336 = ptrtoint void(i64,i64)* @lam77608 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78336, i64* %eptr78332                                                 ; store fptr
  %arg74815 = ptrtoint i64* %cloptr78331 to i64                                      ; closure cast; i64* -> i64
  %rva75963 = add i64 0, 0                                                           ; quoted ()
  %rva75962 = call i64 @prim_cons(i64 %arg74815, i64 %rva75963)                      ; call prim_cons
  %rva75961 = call i64 @prim_cons(i64 %arg74816, i64 %rva75962)                      ; call prim_cons
  %cloptr78337 = inttoptr i64 %arg74817 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78338 = getelementptr inbounds i64, i64* %cloptr78337, i64 0                 ; &cloptr78337[0]
  %f78340 = load i64, i64* %i0ptr78338, align 8                                      ; load; *i0ptr78338
  %fptr78339 = inttoptr i64 %f78340 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78339(i64 %arg74817, i64 %rva75961)                 ; tail call
  ret void
}


define void @lam77632(i64 %env77633, i64 %rvp75912) {
  %cont74432 = call i64 @prim_car(i64 %rvp75912)                                     ; call prim_car
  %rvp75911 = call i64 @prim_cdr(i64 %rvp75912)                                      ; call prim_cdr
  %I79$u = call i64 @prim_car(i64 %rvp75911)                                         ; call prim_car
  %na75907 = call i64 @prim_cdr(i64 %rvp75911)                                       ; call prim_cdr
  %rva75910 = add i64 0, 0                                                           ; quoted ()
  %rva75909 = call i64 @prim_cons(i64 %I79$u, i64 %rva75910)                         ; call prim_cons
  %rva75908 = call i64 @prim_cons(i64 %cont74432, i64 %rva75909)                     ; call prim_cons
  %cloptr78341 = inttoptr i64 %I79$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr78342 = getelementptr inbounds i64, i64* %cloptr78341, i64 0                 ; &cloptr78341[0]
  %f78344 = load i64, i64* %i0ptr78342, align 8                                      ; load; *i0ptr78342
  %fptr78343 = inttoptr i64 %f78344 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78343(i64 %I79$u, i64 %rva75908)                    ; tail call
  ret void
}


define void @lam77629(i64 %env77630, i64 %rvp75936) {
  %envptr78345 = inttoptr i64 %env77630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78346 = getelementptr inbounds i64, i64* %envptr78345, i64 3                ; &envptr78345[3]
  %iIc$n = load i64, i64* %envptr78346, align 8                                      ; load; *envptr78346
  %envptr78347 = inttoptr i64 %env77630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78348 = getelementptr inbounds i64, i64* %envptr78347, i64 2                ; &envptr78347[2]
  %cont74425 = load i64, i64* %envptr78348, align 8                                  ; load; *envptr78348
  %envptr78349 = inttoptr i64 %env77630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78350 = getelementptr inbounds i64, i64* %envptr78349, i64 1                ; &envptr78349[1]
  %Xv3$lst = load i64, i64* %envptr78350, align 8                                    ; load; *envptr78350
  %_9574426 = call i64 @prim_car(i64 %rvp75936)                                      ; call prim_car
  %rvp75935 = call i64 @prim_cdr(i64 %rvp75936)                                      ; call prim_cdr
  %f3m$cc = call i64 @prim_car(i64 %rvp75935)                                        ; call prim_car
  %na75914 = call i64 @prim_cdr(i64 %rvp75935)                                       ; call prim_cdr
  %arg74821 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74283 = call i64 @prim_vector_45ref(i64 %iIc$n, i64 %arg74821)                   ; call prim_vector_45ref
  %arg74824 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74284 = call i64 @prim__61(i64 %arg74824, i64 %a74283)                           ; call prim__61
  %cmp78351 = icmp eq i64 %a74284, 15                                                ; false?
  br i1 %cmp78351, label %else78353, label %then78352                                ; if

then78352:
  %arg74825 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74427 = call i64 @prim_vector_45ref(i64 %Xv3$lst, i64 %arg74825)           ; call prim_vector_45ref
  %arg74828 = add i64 0, 0                                                           ; quoted ()
  %rva75917 = add i64 0, 0                                                           ; quoted ()
  %rva75916 = call i64 @prim_cons(i64 %retprim74427, i64 %rva75917)                  ; call prim_cons
  %rva75915 = call i64 @prim_cons(i64 %arg74828, i64 %rva75916)                      ; call prim_cons
  %cloptr78354 = inttoptr i64 %cont74425 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78355 = getelementptr inbounds i64, i64* %cloptr78354, i64 0                 ; &cloptr78354[0]
  %f78357 = load i64, i64* %i0ptr78355, align 8                                      ; load; *i0ptr78355
  %fptr78356 = inttoptr i64 %f78357 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78356(i64 %cont74425, i64 %rva75915)                ; tail call
  ret void

else78353:
  %arg74830 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74285 = call i64 @prim_vector_45ref(i64 %Xv3$lst, i64 %arg74830)                 ; call prim_vector_45ref
  %a74286 = call i64 @prim_cdr(i64 %a74285)                                          ; call prim_cdr
  %arg74834 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74431 = call i64 @prim_vector_45set_33(i64 %Xv3$lst, i64 %arg74834, i64 %a74286); call prim_vector_45set_33
  %cloptr78358 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78360 = getelementptr inbounds i64, i64* %cloptr78358, i64 1                  ; &eptr78360[1]
  %eptr78361 = getelementptr inbounds i64, i64* %cloptr78358, i64 2                  ; &eptr78361[2]
  %eptr78362 = getelementptr inbounds i64, i64* %cloptr78358, i64 3                  ; &eptr78362[3]
  store i64 %cont74425, i64* %eptr78360                                              ; *eptr78360 = %cont74425
  store i64 %iIc$n, i64* %eptr78361                                                  ; *eptr78361 = %iIc$n
  store i64 %f3m$cc, i64* %eptr78362                                                 ; *eptr78362 = %f3m$cc
  %eptr78359 = getelementptr inbounds i64, i64* %cloptr78358, i64 0                  ; &cloptr78358[0]
  %f78363 = ptrtoint void(i64,i64)* @lam77623 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78363, i64* %eptr78359                                                 ; store fptr
  %arg74838 = ptrtoint i64* %cloptr78358 to i64                                      ; closure cast; i64* -> i64
  %arg74837 = add i64 0, 0                                                           ; quoted ()
  %rva75934 = add i64 0, 0                                                           ; quoted ()
  %rva75933 = call i64 @prim_cons(i64 %retprim74431, i64 %rva75934)                  ; call prim_cons
  %rva75932 = call i64 @prim_cons(i64 %arg74837, i64 %rva75933)                      ; call prim_cons
  %cloptr78364 = inttoptr i64 %arg74838 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78365 = getelementptr inbounds i64, i64* %cloptr78364, i64 0                 ; &cloptr78364[0]
  %f78367 = load i64, i64* %i0ptr78365, align 8                                      ; load; *i0ptr78365
  %fptr78366 = inttoptr i64 %f78367 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78366(i64 %arg74838, i64 %rva75932)                 ; tail call
  ret void
}


define void @lam77623(i64 %env77624, i64 %rvp75931) {
  %envptr78368 = inttoptr i64 %env77624 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78369 = getelementptr inbounds i64, i64* %envptr78368, i64 3                ; &envptr78368[3]
  %f3m$cc = load i64, i64* %envptr78369, align 8                                     ; load; *envptr78369
  %envptr78370 = inttoptr i64 %env77624 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78371 = getelementptr inbounds i64, i64* %envptr78370, i64 2                ; &envptr78370[2]
  %iIc$n = load i64, i64* %envptr78371, align 8                                      ; load; *envptr78371
  %envptr78372 = inttoptr i64 %env77624 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78373 = getelementptr inbounds i64, i64* %envptr78372, i64 1                ; &envptr78372[1]
  %cont74425 = load i64, i64* %envptr78373, align 8                                  ; load; *envptr78373
  %_9574428 = call i64 @prim_car(i64 %rvp75931)                                      ; call prim_car
  %rvp75930 = call i64 @prim_cdr(i64 %rvp75931)                                      ; call prim_cdr
  %xHi$_950 = call i64 @prim_car(i64 %rvp75930)                                      ; call prim_car
  %na75919 = call i64 @prim_cdr(i64 %rvp75930)                                       ; call prim_cdr
  %arg74839 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74287 = call i64 @prim_vector_45ref(i64 %iIc$n, i64 %arg74839)                   ; call prim_vector_45ref
  %arg74841 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a74288 = call i64 @prim__45(i64 %a74287, i64 %arg74841)                           ; call prim__45
  %arg74844 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74430 = call i64 @prim_vector_45set_33(i64 %iIc$n, i64 %arg74844, i64 %a74288); call prim_vector_45set_33
  %cloptr78374 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78376 = getelementptr inbounds i64, i64* %cloptr78374, i64 1                  ; &eptr78376[1]
  %eptr78377 = getelementptr inbounds i64, i64* %cloptr78374, i64 2                  ; &eptr78377[2]
  store i64 %cont74425, i64* %eptr78376                                              ; *eptr78376 = %cont74425
  store i64 %f3m$cc, i64* %eptr78377                                                 ; *eptr78377 = %f3m$cc
  %eptr78375 = getelementptr inbounds i64, i64* %cloptr78374, i64 0                  ; &cloptr78374[0]
  %f78378 = ptrtoint void(i64,i64)* @lam77618 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78378, i64* %eptr78375                                                 ; store fptr
  %arg74848 = ptrtoint i64* %cloptr78374 to i64                                      ; closure cast; i64* -> i64
  %arg74847 = add i64 0, 0                                                           ; quoted ()
  %rva75929 = add i64 0, 0                                                           ; quoted ()
  %rva75928 = call i64 @prim_cons(i64 %retprim74430, i64 %rva75929)                  ; call prim_cons
  %rva75927 = call i64 @prim_cons(i64 %arg74847, i64 %rva75928)                      ; call prim_cons
  %cloptr78379 = inttoptr i64 %arg74848 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78380 = getelementptr inbounds i64, i64* %cloptr78379, i64 0                 ; &cloptr78379[0]
  %f78382 = load i64, i64* %i0ptr78380, align 8                                      ; load; *i0ptr78380
  %fptr78381 = inttoptr i64 %f78382 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78381(i64 %arg74848, i64 %rva75927)                 ; tail call
  ret void
}


define void @lam77618(i64 %env77619, i64 %rvp75926) {
  %envptr78383 = inttoptr i64 %env77619 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78384 = getelementptr inbounds i64, i64* %envptr78383, i64 2                ; &envptr78383[2]
  %f3m$cc = load i64, i64* %envptr78384, align 8                                     ; load; *envptr78384
  %envptr78385 = inttoptr i64 %env77619 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78386 = getelementptr inbounds i64, i64* %envptr78385, i64 1                ; &envptr78385[1]
  %cont74425 = load i64, i64* %envptr78386, align 8                                  ; load; *envptr78386
  %_9574429 = call i64 @prim_car(i64 %rvp75926)                                      ; call prim_car
  %rvp75925 = call i64 @prim_cdr(i64 %rvp75926)                                      ; call prim_cdr
  %Vyc$_951 = call i64 @prim_car(i64 %rvp75925)                                      ; call prim_car
  %na75921 = call i64 @prim_cdr(i64 %rvp75925)                                       ; call prim_cdr
  %rva75924 = add i64 0, 0                                                           ; quoted ()
  %rva75923 = call i64 @prim_cons(i64 %f3m$cc, i64 %rva75924)                        ; call prim_cons
  %rva75922 = call i64 @prim_cons(i64 %cont74425, i64 %rva75923)                     ; call prim_cons
  %cloptr78387 = inttoptr i64 %f3m$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78388 = getelementptr inbounds i64, i64* %cloptr78387, i64 0                 ; &cloptr78387[0]
  %f78390 = load i64, i64* %i0ptr78388, align 8                                      ; load; *i0ptr78388
  %fptr78389 = inttoptr i64 %f78390 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78389(i64 %f3m$cc, i64 %rva75922)                   ; tail call
  ret void
}


define void @lam77608(i64 %env77609, i64 %rvp75960) {
  %envptr78391 = inttoptr i64 %env77609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78392 = getelementptr inbounds i64, i64* %envptr78391, i64 3                ; &envptr78391[3]
  %iIc$n = load i64, i64* %envptr78392, align 8                                      ; load; *envptr78392
  %envptr78393 = inttoptr i64 %env77609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78394 = getelementptr inbounds i64, i64* %envptr78393, i64 2                ; &envptr78393[2]
  %cont74425 = load i64, i64* %envptr78394, align 8                                  ; load; *envptr78394
  %envptr78395 = inttoptr i64 %env77609 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78396 = getelementptr inbounds i64, i64* %envptr78395, i64 1                ; &envptr78395[1]
  %Xv3$lst = load i64, i64* %envptr78396, align 8                                    ; load; *envptr78396
  %_9574426 = call i64 @prim_car(i64 %rvp75960)                                      ; call prim_car
  %rvp75959 = call i64 @prim_cdr(i64 %rvp75960)                                      ; call prim_cdr
  %f3m$cc = call i64 @prim_car(i64 %rvp75959)                                        ; call prim_car
  %na75938 = call i64 @prim_cdr(i64 %rvp75959)                                       ; call prim_cdr
  %arg74852 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74283 = call i64 @prim_vector_45ref(i64 %iIc$n, i64 %arg74852)                   ; call prim_vector_45ref
  %arg74855 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74284 = call i64 @prim__61(i64 %arg74855, i64 %a74283)                           ; call prim__61
  %cmp78397 = icmp eq i64 %a74284, 15                                                ; false?
  br i1 %cmp78397, label %else78399, label %then78398                                ; if

then78398:
  %arg74856 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74427 = call i64 @prim_vector_45ref(i64 %Xv3$lst, i64 %arg74856)           ; call prim_vector_45ref
  %arg74859 = add i64 0, 0                                                           ; quoted ()
  %rva75941 = add i64 0, 0                                                           ; quoted ()
  %rva75940 = call i64 @prim_cons(i64 %retprim74427, i64 %rva75941)                  ; call prim_cons
  %rva75939 = call i64 @prim_cons(i64 %arg74859, i64 %rva75940)                      ; call prim_cons
  %cloptr78400 = inttoptr i64 %cont74425 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78401 = getelementptr inbounds i64, i64* %cloptr78400, i64 0                 ; &cloptr78400[0]
  %f78403 = load i64, i64* %i0ptr78401, align 8                                      ; load; *i0ptr78401
  %fptr78402 = inttoptr i64 %f78403 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78402(i64 %cont74425, i64 %rva75939)                ; tail call
  ret void

else78399:
  %arg74861 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74285 = call i64 @prim_vector_45ref(i64 %Xv3$lst, i64 %arg74861)                 ; call prim_vector_45ref
  %a74286 = call i64 @prim_cdr(i64 %a74285)                                          ; call prim_cdr
  %arg74865 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74431 = call i64 @prim_vector_45set_33(i64 %Xv3$lst, i64 %arg74865, i64 %a74286); call prim_vector_45set_33
  %cloptr78404 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78406 = getelementptr inbounds i64, i64* %cloptr78404, i64 1                  ; &eptr78406[1]
  %eptr78407 = getelementptr inbounds i64, i64* %cloptr78404, i64 2                  ; &eptr78407[2]
  %eptr78408 = getelementptr inbounds i64, i64* %cloptr78404, i64 3                  ; &eptr78408[3]
  store i64 %cont74425, i64* %eptr78406                                              ; *eptr78406 = %cont74425
  store i64 %iIc$n, i64* %eptr78407                                                  ; *eptr78407 = %iIc$n
  store i64 %f3m$cc, i64* %eptr78408                                                 ; *eptr78408 = %f3m$cc
  %eptr78405 = getelementptr inbounds i64, i64* %cloptr78404, i64 0                  ; &cloptr78404[0]
  %f78409 = ptrtoint void(i64,i64)* @lam77602 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78409, i64* %eptr78405                                                 ; store fptr
  %arg74869 = ptrtoint i64* %cloptr78404 to i64                                      ; closure cast; i64* -> i64
  %arg74868 = add i64 0, 0                                                           ; quoted ()
  %rva75958 = add i64 0, 0                                                           ; quoted ()
  %rva75957 = call i64 @prim_cons(i64 %retprim74431, i64 %rva75958)                  ; call prim_cons
  %rva75956 = call i64 @prim_cons(i64 %arg74868, i64 %rva75957)                      ; call prim_cons
  %cloptr78410 = inttoptr i64 %arg74869 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78411 = getelementptr inbounds i64, i64* %cloptr78410, i64 0                 ; &cloptr78410[0]
  %f78413 = load i64, i64* %i0ptr78411, align 8                                      ; load; *i0ptr78411
  %fptr78412 = inttoptr i64 %f78413 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78412(i64 %arg74869, i64 %rva75956)                 ; tail call
  ret void
}


define void @lam77602(i64 %env77603, i64 %rvp75955) {
  %envptr78414 = inttoptr i64 %env77603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78415 = getelementptr inbounds i64, i64* %envptr78414, i64 3                ; &envptr78414[3]
  %f3m$cc = load i64, i64* %envptr78415, align 8                                     ; load; *envptr78415
  %envptr78416 = inttoptr i64 %env77603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78417 = getelementptr inbounds i64, i64* %envptr78416, i64 2                ; &envptr78416[2]
  %iIc$n = load i64, i64* %envptr78417, align 8                                      ; load; *envptr78417
  %envptr78418 = inttoptr i64 %env77603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78419 = getelementptr inbounds i64, i64* %envptr78418, i64 1                ; &envptr78418[1]
  %cont74425 = load i64, i64* %envptr78419, align 8                                  ; load; *envptr78419
  %_9574428 = call i64 @prim_car(i64 %rvp75955)                                      ; call prim_car
  %rvp75954 = call i64 @prim_cdr(i64 %rvp75955)                                      ; call prim_cdr
  %xHi$_950 = call i64 @prim_car(i64 %rvp75954)                                      ; call prim_car
  %na75943 = call i64 @prim_cdr(i64 %rvp75954)                                       ; call prim_cdr
  %arg74870 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74287 = call i64 @prim_vector_45ref(i64 %iIc$n, i64 %arg74870)                   ; call prim_vector_45ref
  %arg74872 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a74288 = call i64 @prim__45(i64 %a74287, i64 %arg74872)                           ; call prim__45
  %arg74875 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74430 = call i64 @prim_vector_45set_33(i64 %iIc$n, i64 %arg74875, i64 %a74288); call prim_vector_45set_33
  %cloptr78420 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78422 = getelementptr inbounds i64, i64* %cloptr78420, i64 1                  ; &eptr78422[1]
  %eptr78423 = getelementptr inbounds i64, i64* %cloptr78420, i64 2                  ; &eptr78423[2]
  store i64 %cont74425, i64* %eptr78422                                              ; *eptr78422 = %cont74425
  store i64 %f3m$cc, i64* %eptr78423                                                 ; *eptr78423 = %f3m$cc
  %eptr78421 = getelementptr inbounds i64, i64* %cloptr78420, i64 0                  ; &cloptr78420[0]
  %f78424 = ptrtoint void(i64,i64)* @lam77597 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78424, i64* %eptr78421                                                 ; store fptr
  %arg74879 = ptrtoint i64* %cloptr78420 to i64                                      ; closure cast; i64* -> i64
  %arg74878 = add i64 0, 0                                                           ; quoted ()
  %rva75953 = add i64 0, 0                                                           ; quoted ()
  %rva75952 = call i64 @prim_cons(i64 %retprim74430, i64 %rva75953)                  ; call prim_cons
  %rva75951 = call i64 @prim_cons(i64 %arg74878, i64 %rva75952)                      ; call prim_cons
  %cloptr78425 = inttoptr i64 %arg74879 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78426 = getelementptr inbounds i64, i64* %cloptr78425, i64 0                 ; &cloptr78425[0]
  %f78428 = load i64, i64* %i0ptr78426, align 8                                      ; load; *i0ptr78426
  %fptr78427 = inttoptr i64 %f78428 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78427(i64 %arg74879, i64 %rva75951)                 ; tail call
  ret void
}


define void @lam77597(i64 %env77598, i64 %rvp75950) {
  %envptr78429 = inttoptr i64 %env77598 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78430 = getelementptr inbounds i64, i64* %envptr78429, i64 2                ; &envptr78429[2]
  %f3m$cc = load i64, i64* %envptr78430, align 8                                     ; load; *envptr78430
  %envptr78431 = inttoptr i64 %env77598 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78432 = getelementptr inbounds i64, i64* %envptr78431, i64 1                ; &envptr78431[1]
  %cont74425 = load i64, i64* %envptr78432, align 8                                  ; load; *envptr78432
  %_9574429 = call i64 @prim_car(i64 %rvp75950)                                      ; call prim_car
  %rvp75949 = call i64 @prim_cdr(i64 %rvp75950)                                      ; call prim_cdr
  %Vyc$_951 = call i64 @prim_car(i64 %rvp75949)                                      ; call prim_car
  %na75945 = call i64 @prim_cdr(i64 %rvp75949)                                       ; call prim_cdr
  %rva75948 = add i64 0, 0                                                           ; quoted ()
  %rva75947 = call i64 @prim_cons(i64 %f3m$cc, i64 %rva75948)                        ; call prim_cons
  %rva75946 = call i64 @prim_cons(i64 %cont74425, i64 %rva75947)                     ; call prim_cons
  %cloptr78433 = inttoptr i64 %f3m$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78434 = getelementptr inbounds i64, i64* %cloptr78433, i64 0                 ; &cloptr78433[0]
  %f78436 = load i64, i64* %i0ptr78434, align 8                                      ; load; *i0ptr78434
  %fptr78435 = inttoptr i64 %f78436 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78435(i64 %f3m$cc, i64 %rva75946)                   ; tail call
  ret void
}


define void @lam77586(i64 %env77587, i64 %rvp76021) {
  %cont74433 = call i64 @prim_car(i64 %rvp76021)                                     ; call prim_car
  %rvp76020 = call i64 @prim_cdr(i64 %rvp76021)                                      ; call prim_cdr
  %tsn$v = call i64 @prim_car(i64 %rvp76020)                                         ; call prim_car
  %rvp76019 = call i64 @prim_cdr(i64 %rvp76020)                                      ; call prim_cdr
  %orx$lst = call i64 @prim_car(i64 %rvp76019)                                       ; call prim_car
  %na75968 = call i64 @prim_cdr(i64 %rvp76019)                                       ; call prim_cdr
  %arg74884 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %yfX$lst = call i64 @prim_make_45vector(i64 %arg74884, i64 %orx$lst)               ; call prim_make_45vector
  %cloptr78437 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78438 = getelementptr inbounds i64, i64* %cloptr78437, i64 0                  ; &cloptr78437[0]
  %f78439 = ptrtoint void(i64,i64)* @lam77583 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78439, i64* %eptr78438                                                 ; store fptr
  %arg74887 = ptrtoint i64* %cloptr78437 to i64                                      ; closure cast; i64* -> i64
  %cloptr78440 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78442 = getelementptr inbounds i64, i64* %cloptr78440, i64 1                  ; &eptr78442[1]
  %eptr78443 = getelementptr inbounds i64, i64* %cloptr78440, i64 2                  ; &eptr78443[2]
  %eptr78444 = getelementptr inbounds i64, i64* %cloptr78440, i64 3                  ; &eptr78444[3]
  store i64 %yfX$lst, i64* %eptr78442                                                ; *eptr78442 = %yfX$lst
  store i64 %tsn$v, i64* %eptr78443                                                  ; *eptr78443 = %tsn$v
  store i64 %cont74433, i64* %eptr78444                                              ; *eptr78444 = %cont74433
  %eptr78441 = getelementptr inbounds i64, i64* %cloptr78440, i64 0                  ; &cloptr78440[0]
  %f78445 = ptrtoint void(i64,i64)* @lam77580 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78445, i64* %eptr78441                                                 ; store fptr
  %arg74886 = ptrtoint i64* %cloptr78440 to i64                                      ; closure cast; i64* -> i64
  %cloptr78446 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78448 = getelementptr inbounds i64, i64* %cloptr78446, i64 1                  ; &eptr78448[1]
  %eptr78449 = getelementptr inbounds i64, i64* %cloptr78446, i64 2                  ; &eptr78449[2]
  %eptr78450 = getelementptr inbounds i64, i64* %cloptr78446, i64 3                  ; &eptr78450[3]
  store i64 %yfX$lst, i64* %eptr78448                                                ; *eptr78448 = %yfX$lst
  store i64 %tsn$v, i64* %eptr78449                                                  ; *eptr78449 = %tsn$v
  store i64 %cont74433, i64* %eptr78450                                              ; *eptr78450 = %cont74433
  %eptr78447 = getelementptr inbounds i64, i64* %cloptr78446, i64 0                  ; &cloptr78446[0]
  %f78451 = ptrtoint void(i64,i64)* @lam77563 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78451, i64* %eptr78447                                                 ; store fptr
  %arg74885 = ptrtoint i64* %cloptr78446 to i64                                      ; closure cast; i64* -> i64
  %rva76018 = add i64 0, 0                                                           ; quoted ()
  %rva76017 = call i64 @prim_cons(i64 %arg74885, i64 %rva76018)                      ; call prim_cons
  %rva76016 = call i64 @prim_cons(i64 %arg74886, i64 %rva76017)                      ; call prim_cons
  %cloptr78452 = inttoptr i64 %arg74887 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78453 = getelementptr inbounds i64, i64* %cloptr78452, i64 0                 ; &cloptr78452[0]
  %f78455 = load i64, i64* %i0ptr78453, align 8                                      ; load; *i0ptr78453
  %fptr78454 = inttoptr i64 %f78455 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78454(i64 %arg74887, i64 %rva76016)                 ; tail call
  ret void
}


define void @lam77583(i64 %env77584, i64 %rvp75975) {
  %cont74438 = call i64 @prim_car(i64 %rvp75975)                                     ; call prim_car
  %rvp75974 = call i64 @prim_cdr(i64 %rvp75975)                                      ; call prim_cdr
  %WVv$u = call i64 @prim_car(i64 %rvp75974)                                         ; call prim_car
  %na75970 = call i64 @prim_cdr(i64 %rvp75974)                                       ; call prim_cdr
  %rva75973 = add i64 0, 0                                                           ; quoted ()
  %rva75972 = call i64 @prim_cons(i64 %WVv$u, i64 %rva75973)                         ; call prim_cons
  %rva75971 = call i64 @prim_cons(i64 %cont74438, i64 %rva75972)                     ; call prim_cons
  %cloptr78456 = inttoptr i64 %WVv$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr78457 = getelementptr inbounds i64, i64* %cloptr78456, i64 0                 ; &cloptr78456[0]
  %f78459 = load i64, i64* %i0ptr78457, align 8                                      ; load; *i0ptr78457
  %fptr78458 = inttoptr i64 %f78459 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78458(i64 %WVv$u, i64 %rva75971)                    ; tail call
  ret void
}


define void @lam77580(i64 %env77581, i64 %rvp75995) {
  %envptr78460 = inttoptr i64 %env77581 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78461 = getelementptr inbounds i64, i64* %envptr78460, i64 3                ; &envptr78460[3]
  %cont74433 = load i64, i64* %envptr78461, align 8                                  ; load; *envptr78461
  %envptr78462 = inttoptr i64 %env77581 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78463 = getelementptr inbounds i64, i64* %envptr78462, i64 2                ; &envptr78462[2]
  %tsn$v = load i64, i64* %envptr78463, align 8                                      ; load; *envptr78463
  %envptr78464 = inttoptr i64 %env77581 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78465 = getelementptr inbounds i64, i64* %envptr78464, i64 1                ; &envptr78464[1]
  %yfX$lst = load i64, i64* %envptr78465, align 8                                    ; load; *envptr78465
  %_9574434 = call i64 @prim_car(i64 %rvp75995)                                      ; call prim_car
  %rvp75994 = call i64 @prim_cdr(i64 %rvp75995)                                      ; call prim_cdr
  %zVK$cc = call i64 @prim_car(i64 %rvp75994)                                        ; call prim_car
  %na75977 = call i64 @prim_cdr(i64 %rvp75994)                                       ; call prim_cdr
  %arg74891 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74289 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74891)                 ; call prim_vector_45ref
  %a74290 = call i64 @prim_null_63(i64 %a74289)                                      ; call prim_null_63
  %cmp78466 = icmp eq i64 %a74290, 15                                                ; false?
  br i1 %cmp78466, label %else78468, label %then78467                                ; if

then78467:
  %arg74895 = add i64 0, 0                                                           ; quoted ()
  %arg74894 = call i64 @const_init_false()                                           ; quoted #f
  %rva75980 = add i64 0, 0                                                           ; quoted ()
  %rva75979 = call i64 @prim_cons(i64 %arg74894, i64 %rva75980)                      ; call prim_cons
  %rva75978 = call i64 @prim_cons(i64 %arg74895, i64 %rva75979)                      ; call prim_cons
  %cloptr78469 = inttoptr i64 %cont74433 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78470 = getelementptr inbounds i64, i64* %cloptr78469, i64 0                 ; &cloptr78469[0]
  %f78472 = load i64, i64* %i0ptr78470, align 8                                      ; load; *i0ptr78470
  %fptr78471 = inttoptr i64 %f78472 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78471(i64 %cont74433, i64 %rva75978)                ; tail call
  ret void

else78468:
  %arg74897 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74291 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74897)                 ; call prim_vector_45ref
  %a74292 = call i64 @prim_car(i64 %a74291)                                          ; call prim_car
  %a74293 = call i64 @prim_eqv_63(i64 %a74292, i64 %tsn$v)                           ; call prim_eqv_63
  %cmp78473 = icmp eq i64 %a74293, 15                                                ; false?
  br i1 %cmp78473, label %else78475, label %then78474                                ; if

then78474:
  %arg74902 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74435 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74902)           ; call prim_vector_45ref
  %arg74905 = add i64 0, 0                                                           ; quoted ()
  %rva75983 = add i64 0, 0                                                           ; quoted ()
  %rva75982 = call i64 @prim_cons(i64 %retprim74435, i64 %rva75983)                  ; call prim_cons
  %rva75981 = call i64 @prim_cons(i64 %arg74905, i64 %rva75982)                      ; call prim_cons
  %cloptr78476 = inttoptr i64 %cont74433 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78477 = getelementptr inbounds i64, i64* %cloptr78476, i64 0                 ; &cloptr78476[0]
  %f78479 = load i64, i64* %i0ptr78477, align 8                                      ; load; *i0ptr78477
  %fptr78478 = inttoptr i64 %f78479 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78478(i64 %cont74433, i64 %rva75981)                ; tail call
  ret void

else78475:
  %arg74907 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74294 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74907)                 ; call prim_vector_45ref
  %a74295 = call i64 @prim_cdr(i64 %a74294)                                          ; call prim_cdr
  %arg74911 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74437 = call i64 @prim_vector_45set_33(i64 %yfX$lst, i64 %arg74911, i64 %a74295); call prim_vector_45set_33
  %cloptr78480 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78482 = getelementptr inbounds i64, i64* %cloptr78480, i64 1                  ; &eptr78482[1]
  %eptr78483 = getelementptr inbounds i64, i64* %cloptr78480, i64 2                  ; &eptr78483[2]
  store i64 %zVK$cc, i64* %eptr78482                                                 ; *eptr78482 = %zVK$cc
  store i64 %cont74433, i64* %eptr78483                                              ; *eptr78483 = %cont74433
  %eptr78481 = getelementptr inbounds i64, i64* %cloptr78480, i64 0                  ; &cloptr78480[0]
  %f78484 = ptrtoint void(i64,i64)* @lam77574 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78484, i64* %eptr78481                                                 ; store fptr
  %arg74915 = ptrtoint i64* %cloptr78480 to i64                                      ; closure cast; i64* -> i64
  %arg74914 = add i64 0, 0                                                           ; quoted ()
  %rva75993 = add i64 0, 0                                                           ; quoted ()
  %rva75992 = call i64 @prim_cons(i64 %retprim74437, i64 %rva75993)                  ; call prim_cons
  %rva75991 = call i64 @prim_cons(i64 %arg74914, i64 %rva75992)                      ; call prim_cons
  %cloptr78485 = inttoptr i64 %arg74915 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78486 = getelementptr inbounds i64, i64* %cloptr78485, i64 0                 ; &cloptr78485[0]
  %f78488 = load i64, i64* %i0ptr78486, align 8                                      ; load; *i0ptr78486
  %fptr78487 = inttoptr i64 %f78488 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78487(i64 %arg74915, i64 %rva75991)                 ; tail call
  ret void
}


define void @lam77574(i64 %env77575, i64 %rvp75990) {
  %envptr78489 = inttoptr i64 %env77575 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78490 = getelementptr inbounds i64, i64* %envptr78489, i64 2                ; &envptr78489[2]
  %cont74433 = load i64, i64* %envptr78490, align 8                                  ; load; *envptr78490
  %envptr78491 = inttoptr i64 %env77575 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78492 = getelementptr inbounds i64, i64* %envptr78491, i64 1                ; &envptr78491[1]
  %zVK$cc = load i64, i64* %envptr78492, align 8                                     ; load; *envptr78492
  %_9574436 = call i64 @prim_car(i64 %rvp75990)                                      ; call prim_car
  %rvp75989 = call i64 @prim_cdr(i64 %rvp75990)                                      ; call prim_cdr
  %ADX$_950 = call i64 @prim_car(i64 %rvp75989)                                      ; call prim_car
  %na75985 = call i64 @prim_cdr(i64 %rvp75989)                                       ; call prim_cdr
  %rva75988 = add i64 0, 0                                                           ; quoted ()
  %rva75987 = call i64 @prim_cons(i64 %zVK$cc, i64 %rva75988)                        ; call prim_cons
  %rva75986 = call i64 @prim_cons(i64 %cont74433, i64 %rva75987)                     ; call prim_cons
  %cloptr78493 = inttoptr i64 %zVK$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78494 = getelementptr inbounds i64, i64* %cloptr78493, i64 0                 ; &cloptr78493[0]
  %f78496 = load i64, i64* %i0ptr78494, align 8                                      ; load; *i0ptr78494
  %fptr78495 = inttoptr i64 %f78496 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78495(i64 %zVK$cc, i64 %rva75986)                   ; tail call
  ret void
}


define void @lam77563(i64 %env77564, i64 %rvp76015) {
  %envptr78497 = inttoptr i64 %env77564 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78498 = getelementptr inbounds i64, i64* %envptr78497, i64 3                ; &envptr78497[3]
  %cont74433 = load i64, i64* %envptr78498, align 8                                  ; load; *envptr78498
  %envptr78499 = inttoptr i64 %env77564 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78500 = getelementptr inbounds i64, i64* %envptr78499, i64 2                ; &envptr78499[2]
  %tsn$v = load i64, i64* %envptr78500, align 8                                      ; load; *envptr78500
  %envptr78501 = inttoptr i64 %env77564 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78502 = getelementptr inbounds i64, i64* %envptr78501, i64 1                ; &envptr78501[1]
  %yfX$lst = load i64, i64* %envptr78502, align 8                                    ; load; *envptr78502
  %_9574434 = call i64 @prim_car(i64 %rvp76015)                                      ; call prim_car
  %rvp76014 = call i64 @prim_cdr(i64 %rvp76015)                                      ; call prim_cdr
  %zVK$cc = call i64 @prim_car(i64 %rvp76014)                                        ; call prim_car
  %na75997 = call i64 @prim_cdr(i64 %rvp76014)                                       ; call prim_cdr
  %arg74919 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74289 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74919)                 ; call prim_vector_45ref
  %a74290 = call i64 @prim_null_63(i64 %a74289)                                      ; call prim_null_63
  %cmp78503 = icmp eq i64 %a74290, 15                                                ; false?
  br i1 %cmp78503, label %else78505, label %then78504                                ; if

then78504:
  %arg74923 = add i64 0, 0                                                           ; quoted ()
  %arg74922 = call i64 @const_init_false()                                           ; quoted #f
  %rva76000 = add i64 0, 0                                                           ; quoted ()
  %rva75999 = call i64 @prim_cons(i64 %arg74922, i64 %rva76000)                      ; call prim_cons
  %rva75998 = call i64 @prim_cons(i64 %arg74923, i64 %rva75999)                      ; call prim_cons
  %cloptr78506 = inttoptr i64 %cont74433 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78507 = getelementptr inbounds i64, i64* %cloptr78506, i64 0                 ; &cloptr78506[0]
  %f78509 = load i64, i64* %i0ptr78507, align 8                                      ; load; *i0ptr78507
  %fptr78508 = inttoptr i64 %f78509 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78508(i64 %cont74433, i64 %rva75998)                ; tail call
  ret void

else78505:
  %arg74925 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74291 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74925)                 ; call prim_vector_45ref
  %a74292 = call i64 @prim_car(i64 %a74291)                                          ; call prim_car
  %a74293 = call i64 @prim_eqv_63(i64 %a74292, i64 %tsn$v)                           ; call prim_eqv_63
  %cmp78510 = icmp eq i64 %a74293, 15                                                ; false?
  br i1 %cmp78510, label %else78512, label %then78511                                ; if

then78511:
  %arg74930 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74435 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74930)           ; call prim_vector_45ref
  %arg74933 = add i64 0, 0                                                           ; quoted ()
  %rva76003 = add i64 0, 0                                                           ; quoted ()
  %rva76002 = call i64 @prim_cons(i64 %retprim74435, i64 %rva76003)                  ; call prim_cons
  %rva76001 = call i64 @prim_cons(i64 %arg74933, i64 %rva76002)                      ; call prim_cons
  %cloptr78513 = inttoptr i64 %cont74433 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78514 = getelementptr inbounds i64, i64* %cloptr78513, i64 0                 ; &cloptr78513[0]
  %f78516 = load i64, i64* %i0ptr78514, align 8                                      ; load; *i0ptr78514
  %fptr78515 = inttoptr i64 %f78516 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78515(i64 %cont74433, i64 %rva76001)                ; tail call
  ret void

else78512:
  %arg74935 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74294 = call i64 @prim_vector_45ref(i64 %yfX$lst, i64 %arg74935)                 ; call prim_vector_45ref
  %a74295 = call i64 @prim_cdr(i64 %a74294)                                          ; call prim_cdr
  %arg74939 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74437 = call i64 @prim_vector_45set_33(i64 %yfX$lst, i64 %arg74939, i64 %a74295); call prim_vector_45set_33
  %cloptr78517 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78519 = getelementptr inbounds i64, i64* %cloptr78517, i64 1                  ; &eptr78519[1]
  %eptr78520 = getelementptr inbounds i64, i64* %cloptr78517, i64 2                  ; &eptr78520[2]
  store i64 %zVK$cc, i64* %eptr78519                                                 ; *eptr78519 = %zVK$cc
  store i64 %cont74433, i64* %eptr78520                                              ; *eptr78520 = %cont74433
  %eptr78518 = getelementptr inbounds i64, i64* %cloptr78517, i64 0                  ; &cloptr78517[0]
  %f78521 = ptrtoint void(i64,i64)* @lam77557 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78521, i64* %eptr78518                                                 ; store fptr
  %arg74943 = ptrtoint i64* %cloptr78517 to i64                                      ; closure cast; i64* -> i64
  %arg74942 = add i64 0, 0                                                           ; quoted ()
  %rva76013 = add i64 0, 0                                                           ; quoted ()
  %rva76012 = call i64 @prim_cons(i64 %retprim74437, i64 %rva76013)                  ; call prim_cons
  %rva76011 = call i64 @prim_cons(i64 %arg74942, i64 %rva76012)                      ; call prim_cons
  %cloptr78522 = inttoptr i64 %arg74943 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78523 = getelementptr inbounds i64, i64* %cloptr78522, i64 0                 ; &cloptr78522[0]
  %f78525 = load i64, i64* %i0ptr78523, align 8                                      ; load; *i0ptr78523
  %fptr78524 = inttoptr i64 %f78525 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78524(i64 %arg74943, i64 %rva76011)                 ; tail call
  ret void
}


define void @lam77557(i64 %env77558, i64 %rvp76010) {
  %envptr78526 = inttoptr i64 %env77558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78527 = getelementptr inbounds i64, i64* %envptr78526, i64 2                ; &envptr78526[2]
  %cont74433 = load i64, i64* %envptr78527, align 8                                  ; load; *envptr78527
  %envptr78528 = inttoptr i64 %env77558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78529 = getelementptr inbounds i64, i64* %envptr78528, i64 1                ; &envptr78528[1]
  %zVK$cc = load i64, i64* %envptr78529, align 8                                     ; load; *envptr78529
  %_9574436 = call i64 @prim_car(i64 %rvp76010)                                      ; call prim_car
  %rvp76009 = call i64 @prim_cdr(i64 %rvp76010)                                      ; call prim_cdr
  %ADX$_950 = call i64 @prim_car(i64 %rvp76009)                                      ; call prim_car
  %na76005 = call i64 @prim_cdr(i64 %rvp76009)                                       ; call prim_cdr
  %rva76008 = add i64 0, 0                                                           ; quoted ()
  %rva76007 = call i64 @prim_cons(i64 %zVK$cc, i64 %rva76008)                        ; call prim_cons
  %rva76006 = call i64 @prim_cons(i64 %cont74433, i64 %rva76007)                     ; call prim_cons
  %cloptr78530 = inttoptr i64 %zVK$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78531 = getelementptr inbounds i64, i64* %cloptr78530, i64 0                 ; &cloptr78530[0]
  %f78533 = load i64, i64* %i0ptr78531, align 8                                      ; load; *i0ptr78531
  %fptr78532 = inttoptr i64 %f78533 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78532(i64 %zVK$cc, i64 %rva76006)                   ; tail call
  ret void
}


define void @lam77545(i64 %env77546, i64 %lqC$args74440) {
  %envptr78534 = inttoptr i64 %env77546 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78535 = getelementptr inbounds i64, i64* %envptr78534, i64 1                ; &envptr78534[1]
  %gFG$_37foldl1 = load i64, i64* %envptr78535, align 8                              ; load; *envptr78535
  %cont74439 = call i64 @prim_car(i64 %lqC$args74440)                                ; call prim_car
  %lqC$args = call i64 @prim_cdr(i64 %lqC$args74440)                                 ; call prim_cdr
  %a74296 = call i64 @prim_null_63(i64 %lqC$args)                                    ; call prim_null_63
  %cmp78536 = icmp eq i64 %a74296, 15                                                ; false?
  br i1 %cmp78536, label %else78538, label %then78537                                ; if

then78537:
  %arg74951 = add i64 0, 0                                                           ; quoted ()
  %arg74950 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva76024 = add i64 0, 0                                                           ; quoted ()
  %rva76023 = call i64 @prim_cons(i64 %arg74950, i64 %rva76024)                      ; call prim_cons
  %rva76022 = call i64 @prim_cons(i64 %arg74951, i64 %rva76023)                      ; call prim_cons
  %cloptr78539 = inttoptr i64 %cont74439 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78540 = getelementptr inbounds i64, i64* %cloptr78539, i64 0                 ; &cloptr78539[0]
  %f78542 = load i64, i64* %i0ptr78540, align 8                                      ; load; *i0ptr78540
  %fptr78541 = inttoptr i64 %f78542 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78541(i64 %cont74439, i64 %rva76022)                ; tail call
  ret void

else78538:
  %a74297 = call i64 @prim_cdr(i64 %lqC$args)                                        ; call prim_cdr
  %a74298 = call i64 @prim_null_63(i64 %a74297)                                      ; call prim_null_63
  %cmp78543 = icmp eq i64 %a74298, 15                                                ; false?
  br i1 %cmp78543, label %else78545, label %then78544                                ; if

then78544:
  %retprim74441 = call i64 @prim_car(i64 %lqC$args)                                  ; call prim_car
  %arg74957 = add i64 0, 0                                                           ; quoted ()
  %rva76027 = add i64 0, 0                                                           ; quoted ()
  %rva76026 = call i64 @prim_cons(i64 %retprim74441, i64 %rva76027)                  ; call prim_cons
  %rva76025 = call i64 @prim_cons(i64 %arg74957, i64 %rva76026)                      ; call prim_cons
  %cloptr78546 = inttoptr i64 %cont74439 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78547 = getelementptr inbounds i64, i64* %cloptr78546, i64 0                 ; &cloptr78546[0]
  %f78549 = load i64, i64* %i0ptr78547, align 8                                      ; load; *i0ptr78547
  %fptr78548 = inttoptr i64 %f78549 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78548(i64 %cont74439, i64 %rva76025)                ; tail call
  ret void

else78545:
  %a74299 = call i64 @prim_car(i64 %lqC$args)                                        ; call prim_car
  %a74300 = call i64 @prim_cdr(i64 %lqC$args)                                        ; call prim_cdr
  %cloptr78550 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78551 = getelementptr inbounds i64, i64* %cloptr78550, i64 0                  ; &cloptr78550[0]
  %f78552 = ptrtoint void(i64,i64)* @lam77543 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78552, i64* %eptr78551                                                 ; store fptr
  %arg74963 = ptrtoint i64* %cloptr78550 to i64                                      ; closure cast; i64* -> i64
  %rva76040 = add i64 0, 0                                                           ; quoted ()
  %rva76039 = call i64 @prim_cons(i64 %a74300, i64 %rva76040)                        ; call prim_cons
  %rva76038 = call i64 @prim_cons(i64 %a74299, i64 %rva76039)                        ; call prim_cons
  %rva76037 = call i64 @prim_cons(i64 %arg74963, i64 %rva76038)                      ; call prim_cons
  %rva76036 = call i64 @prim_cons(i64 %cont74439, i64 %rva76037)                     ; call prim_cons
  %cloptr78553 = inttoptr i64 %gFG$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr78554 = getelementptr inbounds i64, i64* %cloptr78553, i64 0                 ; &cloptr78553[0]
  %f78556 = load i64, i64* %i0ptr78554, align 8                                      ; load; *i0ptr78554
  %fptr78555 = inttoptr i64 %f78556 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78555(i64 %gFG$_37foldl1, i64 %rva76036)            ; tail call
  ret void
}


define void @lam77543(i64 %env77544, i64 %rvp76035) {
  %cont74442 = call i64 @prim_car(i64 %rvp76035)                                     ; call prim_car
  %rvp76034 = call i64 @prim_cdr(i64 %rvp76035)                                      ; call prim_cdr
  %OAv$n = call i64 @prim_car(i64 %rvp76034)                                         ; call prim_car
  %rvp76033 = call i64 @prim_cdr(i64 %rvp76034)                                      ; call prim_cdr
  %Xud$v = call i64 @prim_car(i64 %rvp76033)                                         ; call prim_car
  %na76029 = call i64 @prim_cdr(i64 %rvp76033)                                       ; call prim_cdr
  %retprim74443 = call i64 @prim__47(i64 %Xud$v, i64 %OAv$n)                         ; call prim__47
  %arg74969 = add i64 0, 0                                                           ; quoted ()
  %rva76032 = add i64 0, 0                                                           ; quoted ()
  %rva76031 = call i64 @prim_cons(i64 %retprim74443, i64 %rva76032)                  ; call prim_cons
  %rva76030 = call i64 @prim_cons(i64 %arg74969, i64 %rva76031)                      ; call prim_cons
  %cloptr78557 = inttoptr i64 %cont74442 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78558 = getelementptr inbounds i64, i64* %cloptr78557, i64 0                 ; &cloptr78557[0]
  %f78560 = load i64, i64* %i0ptr78558, align 8                                      ; load; *i0ptr78558
  %fptr78559 = inttoptr i64 %f78560 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78559(i64 %cont74442, i64 %rva76030)                ; tail call
  ret void
}


define void @lam77533(i64 %env77534, i64 %rvp76047) {
  %cont74444 = call i64 @prim_car(i64 %rvp76047)                                     ; call prim_car
  %rvp76046 = call i64 @prim_cdr(i64 %rvp76047)                                      ; call prim_cdr
  %o2W$x = call i64 @prim_car(i64 %rvp76046)                                         ; call prim_car
  %na76042 = call i64 @prim_cdr(i64 %rvp76046)                                       ; call prim_cdr
  %retprim74445 = call i64 @prim_car(i64 %o2W$x)                                     ; call prim_car
  %arg74973 = add i64 0, 0                                                           ; quoted ()
  %rva76045 = add i64 0, 0                                                           ; quoted ()
  %rva76044 = call i64 @prim_cons(i64 %retprim74445, i64 %rva76045)                  ; call prim_cons
  %rva76043 = call i64 @prim_cons(i64 %arg74973, i64 %rva76044)                      ; call prim_cons
  %cloptr78561 = inttoptr i64 %cont74444 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78562 = getelementptr inbounds i64, i64* %cloptr78561, i64 0                 ; &cloptr78561[0]
  %f78564 = load i64, i64* %i0ptr78562, align 8                                      ; load; *i0ptr78562
  %fptr78563 = inttoptr i64 %f78564 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78563(i64 %cont74444, i64 %rva76043)                ; tail call
  ret void
}


define void @lam77529(i64 %env77530, i64 %rvp76054) {
  %cont74446 = call i64 @prim_car(i64 %rvp76054)                                     ; call prim_car
  %rvp76053 = call i64 @prim_cdr(i64 %rvp76054)                                      ; call prim_cdr
  %JC6$x = call i64 @prim_car(i64 %rvp76053)                                         ; call prim_car
  %na76049 = call i64 @prim_cdr(i64 %rvp76053)                                       ; call prim_cdr
  %a74301 = call i64 @prim_cdr(i64 %JC6$x)                                           ; call prim_cdr
  %retprim74447 = call i64 @prim_car(i64 %a74301)                                    ; call prim_car
  %arg74978 = add i64 0, 0                                                           ; quoted ()
  %rva76052 = add i64 0, 0                                                           ; quoted ()
  %rva76051 = call i64 @prim_cons(i64 %retprim74447, i64 %rva76052)                  ; call prim_cons
  %rva76050 = call i64 @prim_cons(i64 %arg74978, i64 %rva76051)                      ; call prim_cons
  %cloptr78565 = inttoptr i64 %cont74446 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78566 = getelementptr inbounds i64, i64* %cloptr78565, i64 0                 ; &cloptr78565[0]
  %f78568 = load i64, i64* %i0ptr78566, align 8                                      ; load; *i0ptr78566
  %fptr78567 = inttoptr i64 %f78568 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78567(i64 %cont74446, i64 %rva76050)                ; tail call
  ret void
}


define void @lam77525(i64 %env77526, i64 %rvp76061) {
  %cont74448 = call i64 @prim_car(i64 %rvp76061)                                     ; call prim_car
  %rvp76060 = call i64 @prim_cdr(i64 %rvp76061)                                      ; call prim_cdr
  %C3Q$x = call i64 @prim_car(i64 %rvp76060)                                         ; call prim_car
  %na76056 = call i64 @prim_cdr(i64 %rvp76060)                                       ; call prim_cdr
  %a74302 = call i64 @prim_cdr(i64 %C3Q$x)                                           ; call prim_cdr
  %a74303 = call i64 @prim_cdr(i64 %a74302)                                          ; call prim_cdr
  %retprim74449 = call i64 @prim_car(i64 %a74303)                                    ; call prim_car
  %arg74984 = add i64 0, 0                                                           ; quoted ()
  %rva76059 = add i64 0, 0                                                           ; quoted ()
  %rva76058 = call i64 @prim_cons(i64 %retprim74449, i64 %rva76059)                  ; call prim_cons
  %rva76057 = call i64 @prim_cons(i64 %arg74984, i64 %rva76058)                      ; call prim_cons
  %cloptr78569 = inttoptr i64 %cont74448 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78570 = getelementptr inbounds i64, i64* %cloptr78569, i64 0                 ; &cloptr78569[0]
  %f78572 = load i64, i64* %i0ptr78570, align 8                                      ; load; *i0ptr78570
  %fptr78571 = inttoptr i64 %f78572 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78571(i64 %cont74448, i64 %rva76057)                ; tail call
  ret void
}


define void @lam77521(i64 %env77522, i64 %rvp76068) {
  %cont74450 = call i64 @prim_car(i64 %rvp76068)                                     ; call prim_car
  %rvp76067 = call i64 @prim_cdr(i64 %rvp76068)                                      ; call prim_cdr
  %kr4$x = call i64 @prim_car(i64 %rvp76067)                                         ; call prim_car
  %na76063 = call i64 @prim_cdr(i64 %rvp76067)                                       ; call prim_cdr
  %a74304 = call i64 @prim_cdr(i64 %kr4$x)                                           ; call prim_cdr
  %a74305 = call i64 @prim_cdr(i64 %a74304)                                          ; call prim_cdr
  %a74306 = call i64 @prim_cdr(i64 %a74305)                                          ; call prim_cdr
  %retprim74451 = call i64 @prim_car(i64 %a74306)                                    ; call prim_car
  %arg74991 = add i64 0, 0                                                           ; quoted ()
  %rva76066 = add i64 0, 0                                                           ; quoted ()
  %rva76065 = call i64 @prim_cons(i64 %retprim74451, i64 %rva76066)                  ; call prim_cons
  %rva76064 = call i64 @prim_cons(i64 %arg74991, i64 %rva76065)                      ; call prim_cons
  %cloptr78573 = inttoptr i64 %cont74450 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78574 = getelementptr inbounds i64, i64* %cloptr78573, i64 0                 ; &cloptr78573[0]
  %f78576 = load i64, i64* %i0ptr78574, align 8                                      ; load; *i0ptr78574
  %fptr78575 = inttoptr i64 %f78576 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78575(i64 %cont74450, i64 %rva76064)                ; tail call
  ret void
}


define void @lam77517(i64 %env77518, i64 %rvp76078) {
  %cont74452 = call i64 @prim_car(i64 %rvp76078)                                     ; call prim_car
  %rvp76077 = call i64 @prim_cdr(i64 %rvp76078)                                      ; call prim_cdr
  %tNV$p = call i64 @prim_car(i64 %rvp76077)                                         ; call prim_car
  %na76070 = call i64 @prim_cdr(i64 %rvp76077)                                       ; call prim_cdr
  %a74307 = call i64 @prim_cons_63(i64 %tNV$p)                                       ; call prim_cons_63
  %cmp78577 = icmp eq i64 %a74307, 15                                                ; false?
  br i1 %cmp78577, label %else78579, label %then78578                                ; if

then78578:
  %a74308 = call i64 @prim_car(i64 %tNV$p)                                           ; call prim_car
  %arg74995 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym78580, i32 0, i32 0)); quoted string
  %retprim74453 = call i64 @prim_eq_63(i64 %a74308, i64 %arg74995)                   ; call prim_eq_63
  %arg74998 = add i64 0, 0                                                           ; quoted ()
  %rva76073 = add i64 0, 0                                                           ; quoted ()
  %rva76072 = call i64 @prim_cons(i64 %retprim74453, i64 %rva76073)                  ; call prim_cons
  %rva76071 = call i64 @prim_cons(i64 %arg74998, i64 %rva76072)                      ; call prim_cons
  %cloptr78581 = inttoptr i64 %cont74452 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78582 = getelementptr inbounds i64, i64* %cloptr78581, i64 0                 ; &cloptr78581[0]
  %f78584 = load i64, i64* %i0ptr78582, align 8                                      ; load; *i0ptr78582
  %fptr78583 = inttoptr i64 %f78584 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78583(i64 %cont74452, i64 %rva76071)                ; tail call
  ret void

else78579:
  %arg75001 = add i64 0, 0                                                           ; quoted ()
  %arg75000 = call i64 @const_init_false()                                           ; quoted #f
  %rva76076 = add i64 0, 0                                                           ; quoted ()
  %rva76075 = call i64 @prim_cons(i64 %arg75000, i64 %rva76076)                      ; call prim_cons
  %rva76074 = call i64 @prim_cons(i64 %arg75001, i64 %rva76075)                      ; call prim_cons
  %cloptr78585 = inttoptr i64 %cont74452 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78586 = getelementptr inbounds i64, i64* %cloptr78585, i64 0                 ; &cloptr78585[0]
  %f78588 = load i64, i64* %i0ptr78586, align 8                                      ; load; *i0ptr78586
  %fptr78587 = inttoptr i64 %f78588 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78587(i64 %cont74452, i64 %rva76074)                ; tail call
  ret void
}


define void @lam77509(i64 %env77510, i64 %Lgp$lst74545) {
  %cont74544 = call i64 @prim_car(i64 %Lgp$lst74545)                                 ; call prim_car
  %Lgp$lst = call i64 @prim_cdr(i64 %Lgp$lst74545)                                   ; call prim_cdr
  %arg75008 = add i64 0, 0                                                           ; quoted ()
  %rva76081 = add i64 0, 0                                                           ; quoted ()
  %rva76080 = call i64 @prim_cons(i64 %Lgp$lst, i64 %rva76081)                       ; call prim_cons
  %rva76079 = call i64 @prim_cons(i64 %arg75008, i64 %rva76080)                      ; call prim_cons
  %cloptr78589 = inttoptr i64 %cont74544 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78590 = getelementptr inbounds i64, i64* %cloptr78589, i64 0                 ; &cloptr78589[0]
  %f78592 = load i64, i64* %i0ptr78590, align 8                                      ; load; *i0ptr78590
  %fptr78591 = inttoptr i64 %f78592 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78591(i64 %cont74544, i64 %rva76079)                ; tail call
  ret void
}


define void @lam77505(i64 %env77506, i64 %rvp76583) {
  %envptr78593 = inttoptr i64 %env77506 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78594 = getelementptr inbounds i64, i64* %envptr78593, i64 4                ; &envptr78593[4]
  %N9Z$_37_62 = load i64, i64* %envptr78594, align 8                                 ; load; *envptr78594
  %envptr78595 = inttoptr i64 %env77506 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78596 = getelementptr inbounds i64, i64* %envptr78595, i64 3                ; &envptr78595[3]
  %B9u$_37drop = load i64, i64* %envptr78596, align 8                                ; load; *envptr78596
  %envptr78597 = inttoptr i64 %env77506 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78598 = getelementptr inbounds i64, i64* %envptr78597, i64 2                ; &envptr78597[2]
  %M2K$_37append = load i64, i64* %envptr78598, align 8                              ; load; *envptr78598
  %envptr78599 = inttoptr i64 %env77506 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78600 = getelementptr inbounds i64, i64* %envptr78599, i64 1                ; &envptr78599[1]
  %dQj$_37length = load i64, i64* %envptr78600, align 8                              ; load; *envptr78600
  %_9574454 = call i64 @prim_car(i64 %rvp76583)                                      ; call prim_car
  %rvp76582 = call i64 @prim_cdr(i64 %rvp76583)                                      ; call prim_cdr
  %yF2$_37raise_45handler = call i64 @prim_car(i64 %rvp76582)                        ; call prim_car
  %na76083 = call i64 @prim_cdr(i64 %rvp76582)                                       ; call prim_cdr
  %cloptr78601 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78602 = getelementptr inbounds i64, i64* %cloptr78601, i64 0                  ; &cloptr78601[0]
  %f78603 = ptrtoint void(i64,i64)* @lam77503 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78603, i64* %eptr78602                                                 ; store fptr
  %arg75011 = ptrtoint i64* %cloptr78601 to i64                                      ; closure cast; i64* -> i64
  %cloptr78604 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr78606 = getelementptr inbounds i64, i64* %cloptr78604, i64 1                  ; &eptr78606[1]
  %eptr78607 = getelementptr inbounds i64, i64* %cloptr78604, i64 2                  ; &eptr78607[2]
  %eptr78608 = getelementptr inbounds i64, i64* %cloptr78604, i64 3                  ; &eptr78608[3]
  %eptr78609 = getelementptr inbounds i64, i64* %cloptr78604, i64 4                  ; &eptr78609[4]
  store i64 %dQj$_37length, i64* %eptr78606                                          ; *eptr78606 = %dQj$_37length
  store i64 %M2K$_37append, i64* %eptr78607                                          ; *eptr78607 = %M2K$_37append
  store i64 %B9u$_37drop, i64* %eptr78608                                            ; *eptr78608 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78609                                             ; *eptr78609 = %N9Z$_37_62
  %eptr78605 = getelementptr inbounds i64, i64* %cloptr78604, i64 0                  ; &cloptr78604[0]
  %f78610 = ptrtoint void(i64,i64)* @lam77499 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78610, i64* %eptr78605                                                 ; store fptr
  %arg75010 = ptrtoint i64* %cloptr78604 to i64                                      ; closure cast; i64* -> i64
  %rva76581 = add i64 0, 0                                                           ; quoted ()
  %rva76580 = call i64 @prim_cons(i64 %arg75010, i64 %rva76581)                      ; call prim_cons
  %cloptr78611 = inttoptr i64 %arg75011 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78612 = getelementptr inbounds i64, i64* %cloptr78611, i64 0                 ; &cloptr78611[0]
  %f78614 = load i64, i64* %i0ptr78612, align 8                                      ; load; *i0ptr78612
  %fptr78613 = inttoptr i64 %f78614 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78613(i64 %arg75011, i64 %rva76580)                 ; tail call
  ret void
}


define void @lam77503(i64 %env77504, i64 %PJy$lst74543) {
  %cont74542 = call i64 @prim_car(i64 %PJy$lst74543)                                 ; call prim_car
  %PJy$lst = call i64 @prim_cdr(i64 %PJy$lst74543)                                   ; call prim_cdr
  %arg75015 = add i64 0, 0                                                           ; quoted ()
  %rva76086 = add i64 0, 0                                                           ; quoted ()
  %rva76085 = call i64 @prim_cons(i64 %PJy$lst, i64 %rva76086)                       ; call prim_cons
  %rva76084 = call i64 @prim_cons(i64 %arg75015, i64 %rva76085)                      ; call prim_cons
  %cloptr78615 = inttoptr i64 %cont74542 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78616 = getelementptr inbounds i64, i64* %cloptr78615, i64 0                 ; &cloptr78615[0]
  %f78618 = load i64, i64* %i0ptr78616, align 8                                      ; load; *i0ptr78616
  %fptr78617 = inttoptr i64 %f78618 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78617(i64 %cont74542, i64 %rva76084)                ; tail call
  ret void
}


define void @lam77499(i64 %env77500, i64 %rvp76579) {
  %envptr78619 = inttoptr i64 %env77500 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78620 = getelementptr inbounds i64, i64* %envptr78619, i64 4                ; &envptr78619[4]
  %N9Z$_37_62 = load i64, i64* %envptr78620, align 8                                 ; load; *envptr78620
  %envptr78621 = inttoptr i64 %env77500 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78622 = getelementptr inbounds i64, i64* %envptr78621, i64 3                ; &envptr78621[3]
  %B9u$_37drop = load i64, i64* %envptr78622, align 8                                ; load; *envptr78622
  %envptr78623 = inttoptr i64 %env77500 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78624 = getelementptr inbounds i64, i64* %envptr78623, i64 2                ; &envptr78623[2]
  %M2K$_37append = load i64, i64* %envptr78624, align 8                              ; load; *envptr78624
  %envptr78625 = inttoptr i64 %env77500 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78626 = getelementptr inbounds i64, i64* %envptr78625, i64 1                ; &envptr78625[1]
  %dQj$_37length = load i64, i64* %envptr78626, align 8                              ; load; *envptr78626
  %_9574540 = call i64 @prim_car(i64 %rvp76579)                                      ; call prim_car
  %rvp76578 = call i64 @prim_cdr(i64 %rvp76579)                                      ; call prim_cdr
  %a74309 = call i64 @prim_car(i64 %rvp76578)                                        ; call prim_car
  %na76088 = call i64 @prim_cdr(i64 %rvp76578)                                       ; call prim_cdr
  %arg75018 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74541 = call i64 @prim_make_45vector(i64 %arg75018, i64 %a74309)           ; call prim_make_45vector
  %cloptr78627 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr78629 = getelementptr inbounds i64, i64* %cloptr78627, i64 1                  ; &eptr78629[1]
  %eptr78630 = getelementptr inbounds i64, i64* %cloptr78627, i64 2                  ; &eptr78630[2]
  %eptr78631 = getelementptr inbounds i64, i64* %cloptr78627, i64 3                  ; &eptr78631[3]
  %eptr78632 = getelementptr inbounds i64, i64* %cloptr78627, i64 4                  ; &eptr78632[4]
  store i64 %dQj$_37length, i64* %eptr78629                                          ; *eptr78629 = %dQj$_37length
  store i64 %M2K$_37append, i64* %eptr78630                                          ; *eptr78630 = %M2K$_37append
  store i64 %B9u$_37drop, i64* %eptr78631                                            ; *eptr78631 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78632                                             ; *eptr78632 = %N9Z$_37_62
  %eptr78628 = getelementptr inbounds i64, i64* %cloptr78627, i64 0                  ; &cloptr78627[0]
  %f78633 = ptrtoint void(i64,i64)* @lam77496 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78633, i64* %eptr78628                                                 ; store fptr
  %arg75021 = ptrtoint i64* %cloptr78627 to i64                                      ; closure cast; i64* -> i64
  %arg75020 = add i64 0, 0                                                           ; quoted ()
  %rva76577 = add i64 0, 0                                                           ; quoted ()
  %rva76576 = call i64 @prim_cons(i64 %retprim74541, i64 %rva76577)                  ; call prim_cons
  %rva76575 = call i64 @prim_cons(i64 %arg75020, i64 %rva76576)                      ; call prim_cons
  %cloptr78634 = inttoptr i64 %arg75021 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78635 = getelementptr inbounds i64, i64* %cloptr78634, i64 0                 ; &cloptr78634[0]
  %f78637 = load i64, i64* %i0ptr78635, align 8                                      ; load; *i0ptr78635
  %fptr78636 = inttoptr i64 %f78637 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78636(i64 %arg75021, i64 %rva76575)                 ; tail call
  ret void
}


define void @lam77496(i64 %env77497, i64 %rvp76574) {
  %envptr78638 = inttoptr i64 %env77497 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78639 = getelementptr inbounds i64, i64* %envptr78638, i64 4                ; &envptr78638[4]
  %N9Z$_37_62 = load i64, i64* %envptr78639, align 8                                 ; load; *envptr78639
  %envptr78640 = inttoptr i64 %env77497 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78641 = getelementptr inbounds i64, i64* %envptr78640, i64 3                ; &envptr78640[3]
  %B9u$_37drop = load i64, i64* %envptr78641, align 8                                ; load; *envptr78641
  %envptr78642 = inttoptr i64 %env77497 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78643 = getelementptr inbounds i64, i64* %envptr78642, i64 2                ; &envptr78642[2]
  %M2K$_37append = load i64, i64* %envptr78643, align 8                              ; load; *envptr78643
  %envptr78644 = inttoptr i64 %env77497 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78645 = getelementptr inbounds i64, i64* %envptr78644, i64 1                ; &envptr78644[1]
  %dQj$_37length = load i64, i64* %envptr78645, align 8                              ; load; *envptr78645
  %_9574455 = call i64 @prim_car(i64 %rvp76574)                                      ; call prim_car
  %rvp76573 = call i64 @prim_cdr(i64 %rvp76574)                                      ; call prim_cdr
  %dQg$_37wind_45stack = call i64 @prim_car(i64 %rvp76573)                           ; call prim_car
  %na76090 = call i64 @prim_cdr(i64 %rvp76573)                                       ; call prim_cdr
  %cloptr78646 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78648 = getelementptr inbounds i64, i64* %cloptr78646, i64 1                  ; &eptr78648[1]
  %eptr78649 = getelementptr inbounds i64, i64* %cloptr78646, i64 2                  ; &eptr78649[2]
  %eptr78650 = getelementptr inbounds i64, i64* %cloptr78646, i64 3                  ; &eptr78650[3]
  store i64 %dQj$_37length, i64* %eptr78648                                          ; *eptr78648 = %dQj$_37length
  store i64 %B9u$_37drop, i64* %eptr78649                                            ; *eptr78649 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78650                                             ; *eptr78650 = %N9Z$_37_62
  %eptr78647 = getelementptr inbounds i64, i64* %cloptr78646, i64 0                  ; &cloptr78646[0]
  %f78651 = ptrtoint void(i64,i64)* @lam77494 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78651, i64* %eptr78647                                                 ; store fptr
  %otK$_37common_45tail = ptrtoint i64* %cloptr78646 to i64                          ; closure cast; i64* -> i64
  %cloptr78652 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr78654 = getelementptr inbounds i64, i64* %cloptr78652, i64 1                  ; &eptr78654[1]
  %eptr78655 = getelementptr inbounds i64, i64* %cloptr78652, i64 2                  ; &eptr78655[2]
  store i64 %dQg$_37wind_45stack, i64* %eptr78654                                    ; *eptr78654 = %dQg$_37wind_45stack
  store i64 %otK$_37common_45tail, i64* %eptr78655                                   ; *eptr78655 = %otK$_37common_45tail
  %eptr78653 = getelementptr inbounds i64, i64* %cloptr78652, i64 0                  ; &cloptr78652[0]
  %f78656 = ptrtoint void(i64,i64)* @lam77432 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78656, i64* %eptr78653                                                 ; store fptr
  %nRl$_37do_45wind = ptrtoint i64* %cloptr78652 to i64                              ; closure cast; i64* -> i64
  %cloptr78657 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78658 = getelementptr inbounds i64, i64* %cloptr78657, i64 0                  ; &cloptr78657[0]
  %f78659 = ptrtoint void(i64,i64)* @lam77365 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78659, i64* %eptr78658                                                 ; store fptr
  %arg75207 = ptrtoint i64* %cloptr78657 to i64                                      ; closure cast; i64* -> i64
  %cloptr78660 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr78662 = getelementptr inbounds i64, i64* %cloptr78660, i64 1                  ; &eptr78662[1]
  store i64 %M2K$_37append, i64* %eptr78662                                          ; *eptr78662 = %M2K$_37append
  %eptr78661 = getelementptr inbounds i64, i64* %cloptr78660, i64 0                  ; &cloptr78660[0]
  %f78663 = ptrtoint void(i64,i64)* @lam77361 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78663, i64* %eptr78661                                                 ; store fptr
  %arg75206 = ptrtoint i64* %cloptr78660 to i64                                      ; closure cast; i64* -> i64
  %rva76572 = add i64 0, 0                                                           ; quoted ()
  %rva76571 = call i64 @prim_cons(i64 %arg75206, i64 %rva76572)                      ; call prim_cons
  %cloptr78664 = inttoptr i64 %arg75207 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78665 = getelementptr inbounds i64, i64* %cloptr78664, i64 0                 ; &cloptr78664[0]
  %f78667 = load i64, i64* %i0ptr78665, align 8                                      ; load; *i0ptr78665
  %fptr78666 = inttoptr i64 %f78667 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78666(i64 %arg75207, i64 %rva76571)                 ; tail call
  ret void
}


define void @lam77494(i64 %env77495, i64 %rvp76222) {
  %envptr78668 = inttoptr i64 %env77495 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78669 = getelementptr inbounds i64, i64* %envptr78668, i64 3                ; &envptr78668[3]
  %N9Z$_37_62 = load i64, i64* %envptr78669, align 8                                 ; load; *envptr78669
  %envptr78670 = inttoptr i64 %env77495 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78671 = getelementptr inbounds i64, i64* %envptr78670, i64 2                ; &envptr78670[2]
  %B9u$_37drop = load i64, i64* %envptr78671, align 8                                ; load; *envptr78671
  %envptr78672 = inttoptr i64 %env77495 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78673 = getelementptr inbounds i64, i64* %envptr78672, i64 1                ; &envptr78672[1]
  %dQj$_37length = load i64, i64* %envptr78673, align 8                              ; load; *envptr78673
  %cont74456 = call i64 @prim_car(i64 %rvp76222)                                     ; call prim_car
  %rvp76221 = call i64 @prim_cdr(i64 %rvp76222)                                      ; call prim_cdr
  %Op4$x = call i64 @prim_car(i64 %rvp76221)                                         ; call prim_car
  %rvp76220 = call i64 @prim_cdr(i64 %rvp76221)                                      ; call prim_cdr
  %Gh2$y = call i64 @prim_car(i64 %rvp76220)                                         ; call prim_car
  %na76092 = call i64 @prim_cdr(i64 %rvp76220)                                       ; call prim_cdr
  %cloptr78674 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr78676 = getelementptr inbounds i64, i64* %cloptr78674, i64 1                  ; &eptr78676[1]
  %eptr78677 = getelementptr inbounds i64, i64* %cloptr78674, i64 2                  ; &eptr78677[2]
  %eptr78678 = getelementptr inbounds i64, i64* %cloptr78674, i64 3                  ; &eptr78678[3]
  %eptr78679 = getelementptr inbounds i64, i64* %cloptr78674, i64 4                  ; &eptr78679[4]
  %eptr78680 = getelementptr inbounds i64, i64* %cloptr78674, i64 5                  ; &eptr78680[5]
  %eptr78681 = getelementptr inbounds i64, i64* %cloptr78674, i64 6                  ; &eptr78681[6]
  store i64 %dQj$_37length, i64* %eptr78676                                          ; *eptr78676 = %dQj$_37length
  store i64 %cont74456, i64* %eptr78677                                              ; *eptr78677 = %cont74456
  store i64 %Gh2$y, i64* %eptr78678                                                  ; *eptr78678 = %Gh2$y
  store i64 %B9u$_37drop, i64* %eptr78679                                            ; *eptr78679 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78680                                             ; *eptr78680 = %N9Z$_37_62
  store i64 %Op4$x, i64* %eptr78681                                                  ; *eptr78681 = %Op4$x
  %eptr78675 = getelementptr inbounds i64, i64* %cloptr78674, i64 0                  ; &cloptr78674[0]
  %f78682 = ptrtoint void(i64,i64)* @lam77492 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78682, i64* %eptr78675                                                 ; store fptr
  %arg75023 = ptrtoint i64* %cloptr78674 to i64                                      ; closure cast; i64* -> i64
  %rva76219 = add i64 0, 0                                                           ; quoted ()
  %rva76218 = call i64 @prim_cons(i64 %Op4$x, i64 %rva76219)                         ; call prim_cons
  %rva76217 = call i64 @prim_cons(i64 %arg75023, i64 %rva76218)                      ; call prim_cons
  %cloptr78683 = inttoptr i64 %dQj$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr78684 = getelementptr inbounds i64, i64* %cloptr78683, i64 0                 ; &cloptr78683[0]
  %f78686 = load i64, i64* %i0ptr78684, align 8                                      ; load; *i0ptr78684
  %fptr78685 = inttoptr i64 %f78686 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78685(i64 %dQj$_37length, i64 %rva76217)            ; tail call
  ret void
}


define void @lam77492(i64 %env77493, i64 %rvp76216) {
  %envptr78687 = inttoptr i64 %env77493 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78688 = getelementptr inbounds i64, i64* %envptr78687, i64 6                ; &envptr78687[6]
  %Op4$x = load i64, i64* %envptr78688, align 8                                      ; load; *envptr78688
  %envptr78689 = inttoptr i64 %env77493 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78690 = getelementptr inbounds i64, i64* %envptr78689, i64 5                ; &envptr78689[5]
  %N9Z$_37_62 = load i64, i64* %envptr78690, align 8                                 ; load; *envptr78690
  %envptr78691 = inttoptr i64 %env77493 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78692 = getelementptr inbounds i64, i64* %envptr78691, i64 4                ; &envptr78691[4]
  %B9u$_37drop = load i64, i64* %envptr78692, align 8                                ; load; *envptr78692
  %envptr78693 = inttoptr i64 %env77493 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78694 = getelementptr inbounds i64, i64* %envptr78693, i64 3                ; &envptr78693[3]
  %Gh2$y = load i64, i64* %envptr78694, align 8                                      ; load; *envptr78694
  %envptr78695 = inttoptr i64 %env77493 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78696 = getelementptr inbounds i64, i64* %envptr78695, i64 2                ; &envptr78695[2]
  %cont74456 = load i64, i64* %envptr78696, align 8                                  ; load; *envptr78696
  %envptr78697 = inttoptr i64 %env77493 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78698 = getelementptr inbounds i64, i64* %envptr78697, i64 1                ; &envptr78697[1]
  %dQj$_37length = load i64, i64* %envptr78698, align 8                              ; load; *envptr78698
  %_9574457 = call i64 @prim_car(i64 %rvp76216)                                      ; call prim_car
  %rvp76215 = call i64 @prim_cdr(i64 %rvp76216)                                      ; call prim_cdr
  %fEI$lx = call i64 @prim_car(i64 %rvp76215)                                        ; call prim_car
  %na76094 = call i64 @prim_cdr(i64 %rvp76215)                                       ; call prim_cdr
  %cloptr78699 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr78701 = getelementptr inbounds i64, i64* %cloptr78699, i64 1                  ; &eptr78701[1]
  %eptr78702 = getelementptr inbounds i64, i64* %cloptr78699, i64 2                  ; &eptr78702[2]
  %eptr78703 = getelementptr inbounds i64, i64* %cloptr78699, i64 3                  ; &eptr78703[3]
  %eptr78704 = getelementptr inbounds i64, i64* %cloptr78699, i64 4                  ; &eptr78704[4]
  %eptr78705 = getelementptr inbounds i64, i64* %cloptr78699, i64 5                  ; &eptr78705[5]
  %eptr78706 = getelementptr inbounds i64, i64* %cloptr78699, i64 6                  ; &eptr78706[6]
  store i64 %fEI$lx, i64* %eptr78701                                                 ; *eptr78701 = %fEI$lx
  store i64 %cont74456, i64* %eptr78702                                              ; *eptr78702 = %cont74456
  store i64 %Gh2$y, i64* %eptr78703                                                  ; *eptr78703 = %Gh2$y
  store i64 %B9u$_37drop, i64* %eptr78704                                            ; *eptr78704 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78705                                             ; *eptr78705 = %N9Z$_37_62
  store i64 %Op4$x, i64* %eptr78706                                                  ; *eptr78706 = %Op4$x
  %eptr78700 = getelementptr inbounds i64, i64* %cloptr78699, i64 0                  ; &cloptr78699[0]
  %f78707 = ptrtoint void(i64,i64)* @lam77490 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78707, i64* %eptr78700                                                 ; store fptr
  %arg75026 = ptrtoint i64* %cloptr78699 to i64                                      ; closure cast; i64* -> i64
  %rva76214 = add i64 0, 0                                                           ; quoted ()
  %rva76213 = call i64 @prim_cons(i64 %Gh2$y, i64 %rva76214)                         ; call prim_cons
  %rva76212 = call i64 @prim_cons(i64 %arg75026, i64 %rva76213)                      ; call prim_cons
  %cloptr78708 = inttoptr i64 %dQj$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr78709 = getelementptr inbounds i64, i64* %cloptr78708, i64 0                 ; &cloptr78708[0]
  %f78711 = load i64, i64* %i0ptr78709, align 8                                      ; load; *i0ptr78709
  %fptr78710 = inttoptr i64 %f78711 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78710(i64 %dQj$_37length, i64 %rva76212)            ; tail call
  ret void
}


define void @lam77490(i64 %env77491, i64 %rvp76211) {
  %envptr78712 = inttoptr i64 %env77491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78713 = getelementptr inbounds i64, i64* %envptr78712, i64 6                ; &envptr78712[6]
  %Op4$x = load i64, i64* %envptr78713, align 8                                      ; load; *envptr78713
  %envptr78714 = inttoptr i64 %env77491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78715 = getelementptr inbounds i64, i64* %envptr78714, i64 5                ; &envptr78714[5]
  %N9Z$_37_62 = load i64, i64* %envptr78715, align 8                                 ; load; *envptr78715
  %envptr78716 = inttoptr i64 %env77491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78717 = getelementptr inbounds i64, i64* %envptr78716, i64 4                ; &envptr78716[4]
  %B9u$_37drop = load i64, i64* %envptr78717, align 8                                ; load; *envptr78717
  %envptr78718 = inttoptr i64 %env77491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78719 = getelementptr inbounds i64, i64* %envptr78718, i64 3                ; &envptr78718[3]
  %Gh2$y = load i64, i64* %envptr78719, align 8                                      ; load; *envptr78719
  %envptr78720 = inttoptr i64 %env77491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78721 = getelementptr inbounds i64, i64* %envptr78720, i64 2                ; &envptr78720[2]
  %cont74456 = load i64, i64* %envptr78721, align 8                                  ; load; *envptr78721
  %envptr78722 = inttoptr i64 %env77491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78723 = getelementptr inbounds i64, i64* %envptr78722, i64 1                ; &envptr78722[1]
  %fEI$lx = load i64, i64* %envptr78723, align 8                                     ; load; *envptr78723
  %_9574458 = call i64 @prim_car(i64 %rvp76211)                                      ; call prim_car
  %rvp76210 = call i64 @prim_cdr(i64 %rvp76211)                                      ; call prim_cdr
  %trS$ly = call i64 @prim_car(i64 %rvp76210)                                        ; call prim_car
  %na76096 = call i64 @prim_cdr(i64 %rvp76210)                                       ; call prim_cdr
  %cloptr78724 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr78725 = getelementptr inbounds i64, i64* %cloptr78724, i64 0                  ; &cloptr78724[0]
  %f78726 = ptrtoint void(i64,i64)* @lam77488 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78726, i64* %eptr78725                                                 ; store fptr
  %arg75029 = ptrtoint i64* %cloptr78724 to i64                                      ; closure cast; i64* -> i64
  %cloptr78727 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr78729 = getelementptr inbounds i64, i64* %cloptr78727, i64 1                  ; &eptr78729[1]
  %eptr78730 = getelementptr inbounds i64, i64* %cloptr78727, i64 2                  ; &eptr78730[2]
  %eptr78731 = getelementptr inbounds i64, i64* %cloptr78727, i64 3                  ; &eptr78731[3]
  %eptr78732 = getelementptr inbounds i64, i64* %cloptr78727, i64 4                  ; &eptr78732[4]
  %eptr78733 = getelementptr inbounds i64, i64* %cloptr78727, i64 5                  ; &eptr78733[5]
  %eptr78734 = getelementptr inbounds i64, i64* %cloptr78727, i64 6                  ; &eptr78734[6]
  %eptr78735 = getelementptr inbounds i64, i64* %cloptr78727, i64 7                  ; &eptr78735[7]
  store i64 %fEI$lx, i64* %eptr78729                                                 ; *eptr78729 = %fEI$lx
  store i64 %cont74456, i64* %eptr78730                                              ; *eptr78730 = %cont74456
  store i64 %Gh2$y, i64* %eptr78731                                                  ; *eptr78731 = %Gh2$y
  store i64 %trS$ly, i64* %eptr78732                                                 ; *eptr78732 = %trS$ly
  store i64 %B9u$_37drop, i64* %eptr78733                                            ; *eptr78733 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78734                                             ; *eptr78734 = %N9Z$_37_62
  store i64 %Op4$x, i64* %eptr78735                                                  ; *eptr78735 = %Op4$x
  %eptr78728 = getelementptr inbounds i64, i64* %cloptr78727, i64 0                  ; &cloptr78727[0]
  %f78736 = ptrtoint void(i64,i64)* @lam77484 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78736, i64* %eptr78728                                                 ; store fptr
  %arg75028 = ptrtoint i64* %cloptr78727 to i64                                      ; closure cast; i64* -> i64
  %rva76209 = add i64 0, 0                                                           ; quoted ()
  %rva76208 = call i64 @prim_cons(i64 %arg75028, i64 %rva76209)                      ; call prim_cons
  %cloptr78737 = inttoptr i64 %arg75029 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78738 = getelementptr inbounds i64, i64* %cloptr78737, i64 0                 ; &cloptr78737[0]
  %f78740 = load i64, i64* %i0ptr78738, align 8                                      ; load; *i0ptr78738
  %fptr78739 = inttoptr i64 %f78740 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78739(i64 %arg75029, i64 %rva76208)                 ; tail call
  ret void
}


define void @lam77488(i64 %env77489, i64 %gTM$lst74468) {
  %cont74467 = call i64 @prim_car(i64 %gTM$lst74468)                                 ; call prim_car
  %gTM$lst = call i64 @prim_cdr(i64 %gTM$lst74468)                                   ; call prim_cdr
  %arg75033 = add i64 0, 0                                                           ; quoted ()
  %rva76099 = add i64 0, 0                                                           ; quoted ()
  %rva76098 = call i64 @prim_cons(i64 %gTM$lst, i64 %rva76099)                       ; call prim_cons
  %rva76097 = call i64 @prim_cons(i64 %arg75033, i64 %rva76098)                      ; call prim_cons
  %cloptr78741 = inttoptr i64 %cont74467 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78742 = getelementptr inbounds i64, i64* %cloptr78741, i64 0                 ; &cloptr78741[0]
  %f78744 = load i64, i64* %i0ptr78742, align 8                                      ; load; *i0ptr78742
  %fptr78743 = inttoptr i64 %f78744 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78743(i64 %cont74467, i64 %rva76097)                ; tail call
  ret void
}


define void @lam77484(i64 %env77485, i64 %rvp76207) {
  %envptr78745 = inttoptr i64 %env77485 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78746 = getelementptr inbounds i64, i64* %envptr78745, i64 7                ; &envptr78745[7]
  %Op4$x = load i64, i64* %envptr78746, align 8                                      ; load; *envptr78746
  %envptr78747 = inttoptr i64 %env77485 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78748 = getelementptr inbounds i64, i64* %envptr78747, i64 6                ; &envptr78747[6]
  %N9Z$_37_62 = load i64, i64* %envptr78748, align 8                                 ; load; *envptr78748
  %envptr78749 = inttoptr i64 %env77485 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78750 = getelementptr inbounds i64, i64* %envptr78749, i64 5                ; &envptr78749[5]
  %B9u$_37drop = load i64, i64* %envptr78750, align 8                                ; load; *envptr78750
  %envptr78751 = inttoptr i64 %env77485 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78752 = getelementptr inbounds i64, i64* %envptr78751, i64 4                ; &envptr78751[4]
  %trS$ly = load i64, i64* %envptr78752, align 8                                     ; load; *envptr78752
  %envptr78753 = inttoptr i64 %env77485 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78754 = getelementptr inbounds i64, i64* %envptr78753, i64 3                ; &envptr78753[3]
  %Gh2$y = load i64, i64* %envptr78754, align 8                                      ; load; *envptr78754
  %envptr78755 = inttoptr i64 %env77485 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78756 = getelementptr inbounds i64, i64* %envptr78755, i64 2                ; &envptr78755[2]
  %cont74456 = load i64, i64* %envptr78756, align 8                                  ; load; *envptr78756
  %envptr78757 = inttoptr i64 %env77485 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78758 = getelementptr inbounds i64, i64* %envptr78757, i64 1                ; &envptr78757[1]
  %fEI$lx = load i64, i64* %envptr78758, align 8                                     ; load; *envptr78758
  %_9574465 = call i64 @prim_car(i64 %rvp76207)                                      ; call prim_car
  %rvp76206 = call i64 @prim_cdr(i64 %rvp76207)                                      ; call prim_cdr
  %a74310 = call i64 @prim_car(i64 %rvp76206)                                        ; call prim_car
  %na76101 = call i64 @prim_cdr(i64 %rvp76206)                                       ; call prim_cdr
  %arg75036 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74466 = call i64 @prim_make_45vector(i64 %arg75036, i64 %a74310)           ; call prim_make_45vector
  %cloptr78759 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr78761 = getelementptr inbounds i64, i64* %cloptr78759, i64 1                  ; &eptr78761[1]
  %eptr78762 = getelementptr inbounds i64, i64* %cloptr78759, i64 2                  ; &eptr78762[2]
  %eptr78763 = getelementptr inbounds i64, i64* %cloptr78759, i64 3                  ; &eptr78763[3]
  %eptr78764 = getelementptr inbounds i64, i64* %cloptr78759, i64 4                  ; &eptr78764[4]
  %eptr78765 = getelementptr inbounds i64, i64* %cloptr78759, i64 5                  ; &eptr78765[5]
  %eptr78766 = getelementptr inbounds i64, i64* %cloptr78759, i64 6                  ; &eptr78766[6]
  %eptr78767 = getelementptr inbounds i64, i64* %cloptr78759, i64 7                  ; &eptr78767[7]
  store i64 %fEI$lx, i64* %eptr78761                                                 ; *eptr78761 = %fEI$lx
  store i64 %cont74456, i64* %eptr78762                                              ; *eptr78762 = %cont74456
  store i64 %Gh2$y, i64* %eptr78763                                                  ; *eptr78763 = %Gh2$y
  store i64 %trS$ly, i64* %eptr78764                                                 ; *eptr78764 = %trS$ly
  store i64 %B9u$_37drop, i64* %eptr78765                                            ; *eptr78765 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78766                                             ; *eptr78766 = %N9Z$_37_62
  store i64 %Op4$x, i64* %eptr78767                                                  ; *eptr78767 = %Op4$x
  %eptr78760 = getelementptr inbounds i64, i64* %cloptr78759, i64 0                  ; &cloptr78759[0]
  %f78768 = ptrtoint void(i64,i64)* @lam77481 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78768, i64* %eptr78760                                                 ; store fptr
  %arg75039 = ptrtoint i64* %cloptr78759 to i64                                      ; closure cast; i64* -> i64
  %arg75038 = add i64 0, 0                                                           ; quoted ()
  %rva76205 = add i64 0, 0                                                           ; quoted ()
  %rva76204 = call i64 @prim_cons(i64 %retprim74466, i64 %rva76205)                  ; call prim_cons
  %rva76203 = call i64 @prim_cons(i64 %arg75038, i64 %rva76204)                      ; call prim_cons
  %cloptr78769 = inttoptr i64 %arg75039 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78770 = getelementptr inbounds i64, i64* %cloptr78769, i64 0                 ; &cloptr78769[0]
  %f78772 = load i64, i64* %i0ptr78770, align 8                                      ; load; *i0ptr78770
  %fptr78771 = inttoptr i64 %f78772 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78771(i64 %arg75039, i64 %rva76203)                 ; tail call
  ret void
}


define void @lam77481(i64 %env77482, i64 %rvp76202) {
  %envptr78773 = inttoptr i64 %env77482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78774 = getelementptr inbounds i64, i64* %envptr78773, i64 7                ; &envptr78773[7]
  %Op4$x = load i64, i64* %envptr78774, align 8                                      ; load; *envptr78774
  %envptr78775 = inttoptr i64 %env77482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78776 = getelementptr inbounds i64, i64* %envptr78775, i64 6                ; &envptr78775[6]
  %N9Z$_37_62 = load i64, i64* %envptr78776, align 8                                 ; load; *envptr78776
  %envptr78777 = inttoptr i64 %env77482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78778 = getelementptr inbounds i64, i64* %envptr78777, i64 5                ; &envptr78777[5]
  %B9u$_37drop = load i64, i64* %envptr78778, align 8                                ; load; *envptr78778
  %envptr78779 = inttoptr i64 %env77482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78780 = getelementptr inbounds i64, i64* %envptr78779, i64 4                ; &envptr78779[4]
  %trS$ly = load i64, i64* %envptr78780, align 8                                     ; load; *envptr78780
  %envptr78781 = inttoptr i64 %env77482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78782 = getelementptr inbounds i64, i64* %envptr78781, i64 3                ; &envptr78781[3]
  %Gh2$y = load i64, i64* %envptr78782, align 8                                      ; load; *envptr78782
  %envptr78783 = inttoptr i64 %env77482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78784 = getelementptr inbounds i64, i64* %envptr78783, i64 2                ; &envptr78783[2]
  %cont74456 = load i64, i64* %envptr78784, align 8                                  ; load; *envptr78784
  %envptr78785 = inttoptr i64 %env77482 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78786 = getelementptr inbounds i64, i64* %envptr78785, i64 1                ; &envptr78785[1]
  %fEI$lx = load i64, i64* %envptr78786, align 8                                     ; load; *envptr78786
  %_9574459 = call i64 @prim_car(i64 %rvp76202)                                      ; call prim_car
  %rvp76201 = call i64 @prim_cdr(i64 %rvp76202)                                      ; call prim_cdr
  %hxW$loop = call i64 @prim_car(i64 %rvp76201)                                      ; call prim_car
  %na76103 = call i64 @prim_cdr(i64 %rvp76201)                                       ; call prim_cdr
  %arg75041 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr78787 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr78789 = getelementptr inbounds i64, i64* %cloptr78787, i64 1                  ; &eptr78789[1]
  store i64 %hxW$loop, i64* %eptr78789                                               ; *eptr78789 = %hxW$loop
  %eptr78788 = getelementptr inbounds i64, i64* %cloptr78787, i64 0                  ; &cloptr78787[0]
  %f78790 = ptrtoint void(i64,i64)* @lam77478 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78790, i64* %eptr78788                                                 ; store fptr
  %arg75040 = ptrtoint i64* %cloptr78787 to i64                                      ; closure cast; i64* -> i64
  %WcE$_9574209 = call i64 @prim_vector_45set_33(i64 %hxW$loop, i64 %arg75041, i64 %arg75040); call prim_vector_45set_33
  %arg75056 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74315 = call i64 @prim_vector_45ref(i64 %hxW$loop, i64 %arg75056)                ; call prim_vector_45ref
  %cloptr78791 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr78793 = getelementptr inbounds i64, i64* %cloptr78791, i64 1                  ; &eptr78793[1]
  %eptr78794 = getelementptr inbounds i64, i64* %cloptr78791, i64 2                  ; &eptr78794[2]
  %eptr78795 = getelementptr inbounds i64, i64* %cloptr78791, i64 3                  ; &eptr78795[3]
  %eptr78796 = getelementptr inbounds i64, i64* %cloptr78791, i64 4                  ; &eptr78796[4]
  %eptr78797 = getelementptr inbounds i64, i64* %cloptr78791, i64 5                  ; &eptr78797[5]
  %eptr78798 = getelementptr inbounds i64, i64* %cloptr78791, i64 6                  ; &eptr78798[6]
  %eptr78799 = getelementptr inbounds i64, i64* %cloptr78791, i64 7                  ; &eptr78799[7]
  %eptr78800 = getelementptr inbounds i64, i64* %cloptr78791, i64 8                  ; &eptr78800[8]
  store i64 %fEI$lx, i64* %eptr78793                                                 ; *eptr78793 = %fEI$lx
  store i64 %cont74456, i64* %eptr78794                                              ; *eptr78794 = %cont74456
  store i64 %Gh2$y, i64* %eptr78795                                                  ; *eptr78795 = %Gh2$y
  store i64 %a74315, i64* %eptr78796                                                 ; *eptr78796 = %a74315
  store i64 %trS$ly, i64* %eptr78797                                                 ; *eptr78797 = %trS$ly
  store i64 %B9u$_37drop, i64* %eptr78798                                            ; *eptr78798 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78799                                             ; *eptr78799 = %N9Z$_37_62
  store i64 %Op4$x, i64* %eptr78800                                                  ; *eptr78800 = %Op4$x
  %eptr78792 = getelementptr inbounds i64, i64* %cloptr78791, i64 0                  ; &cloptr78791[0]
  %f78801 = ptrtoint void(i64,i64)* @lam77471 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78801, i64* %eptr78792                                                 ; store fptr
  %arg75060 = ptrtoint i64* %cloptr78791 to i64                                      ; closure cast; i64* -> i64
  %rva76200 = add i64 0, 0                                                           ; quoted ()
  %rva76199 = call i64 @prim_cons(i64 %trS$ly, i64 %rva76200)                        ; call prim_cons
  %rva76198 = call i64 @prim_cons(i64 %fEI$lx, i64 %rva76199)                        ; call prim_cons
  %rva76197 = call i64 @prim_cons(i64 %arg75060, i64 %rva76198)                      ; call prim_cons
  %cloptr78802 = inttoptr i64 %N9Z$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr78803 = getelementptr inbounds i64, i64* %cloptr78802, i64 0                 ; &cloptr78802[0]
  %f78805 = load i64, i64* %i0ptr78803, align 8                                      ; load; *i0ptr78803
  %fptr78804 = inttoptr i64 %f78805 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78804(i64 %N9Z$_37_62, i64 %rva76197)               ; tail call
  ret void
}


define void @lam77478(i64 %env77479, i64 %rvp76115) {
  %envptr78806 = inttoptr i64 %env77479 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78807 = getelementptr inbounds i64, i64* %envptr78806, i64 1                ; &envptr78806[1]
  %hxW$loop = load i64, i64* %envptr78807, align 8                                   ; load; *envptr78807
  %cont74460 = call i64 @prim_car(i64 %rvp76115)                                     ; call prim_car
  %rvp76114 = call i64 @prim_cdr(i64 %rvp76115)                                      ; call prim_cdr
  %nWR$x = call i64 @prim_car(i64 %rvp76114)                                         ; call prim_car
  %rvp76113 = call i64 @prim_cdr(i64 %rvp76114)                                      ; call prim_cdr
  %noY$y = call i64 @prim_car(i64 %rvp76113)                                         ; call prim_car
  %na76105 = call i64 @prim_cdr(i64 %rvp76113)                                       ; call prim_cdr
  %a74311 = call i64 @prim_eq_63(i64 %nWR$x, i64 %noY$y)                             ; call prim_eq_63
  %cmp78808 = icmp eq i64 %a74311, 15                                                ; false?
  br i1 %cmp78808, label %else78810, label %then78809                                ; if

then78809:
  %arg75046 = add i64 0, 0                                                           ; quoted ()
  %rva76108 = add i64 0, 0                                                           ; quoted ()
  %rva76107 = call i64 @prim_cons(i64 %nWR$x, i64 %rva76108)                         ; call prim_cons
  %rva76106 = call i64 @prim_cons(i64 %arg75046, i64 %rva76107)                      ; call prim_cons
  %cloptr78811 = inttoptr i64 %cont74460 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr78812 = getelementptr inbounds i64, i64* %cloptr78811, i64 0                 ; &cloptr78811[0]
  %f78814 = load i64, i64* %i0ptr78812, align 8                                      ; load; *i0ptr78812
  %fptr78813 = inttoptr i64 %f78814 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78813(i64 %cont74460, i64 %rva76106)                ; tail call
  ret void

else78810:
  %arg75048 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74312 = call i64 @prim_vector_45ref(i64 %hxW$loop, i64 %arg75048)                ; call prim_vector_45ref
  %a74313 = call i64 @prim_cdr(i64 %nWR$x)                                           ; call prim_cdr
  %a74314 = call i64 @prim_cdr(i64 %noY$y)                                           ; call prim_cdr
  %rva76112 = add i64 0, 0                                                           ; quoted ()
  %rva76111 = call i64 @prim_cons(i64 %a74314, i64 %rva76112)                        ; call prim_cons
  %rva76110 = call i64 @prim_cons(i64 %a74313, i64 %rva76111)                        ; call prim_cons
  %rva76109 = call i64 @prim_cons(i64 %cont74460, i64 %rva76110)                     ; call prim_cons
  %cloptr78815 = inttoptr i64 %a74312 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78816 = getelementptr inbounds i64, i64* %cloptr78815, i64 0                 ; &cloptr78815[0]
  %f78818 = load i64, i64* %i0ptr78816, align 8                                      ; load; *i0ptr78816
  %fptr78817 = inttoptr i64 %f78818 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78817(i64 %a74312, i64 %rva76109)                   ; tail call
  ret void
}


define void @lam77471(i64 %env77472, i64 %rvp76196) {
  %envptr78819 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78820 = getelementptr inbounds i64, i64* %envptr78819, i64 8                ; &envptr78819[8]
  %Op4$x = load i64, i64* %envptr78820, align 8                                      ; load; *envptr78820
  %envptr78821 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78822 = getelementptr inbounds i64, i64* %envptr78821, i64 7                ; &envptr78821[7]
  %N9Z$_37_62 = load i64, i64* %envptr78822, align 8                                 ; load; *envptr78822
  %envptr78823 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78824 = getelementptr inbounds i64, i64* %envptr78823, i64 6                ; &envptr78823[6]
  %B9u$_37drop = load i64, i64* %envptr78824, align 8                                ; load; *envptr78824
  %envptr78825 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78826 = getelementptr inbounds i64, i64* %envptr78825, i64 5                ; &envptr78825[5]
  %trS$ly = load i64, i64* %envptr78826, align 8                                     ; load; *envptr78826
  %envptr78827 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78828 = getelementptr inbounds i64, i64* %envptr78827, i64 4                ; &envptr78827[4]
  %a74315 = load i64, i64* %envptr78828, align 8                                     ; load; *envptr78828
  %envptr78829 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78830 = getelementptr inbounds i64, i64* %envptr78829, i64 3                ; &envptr78829[3]
  %Gh2$y = load i64, i64* %envptr78830, align 8                                      ; load; *envptr78830
  %envptr78831 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78832 = getelementptr inbounds i64, i64* %envptr78831, i64 2                ; &envptr78831[2]
  %cont74456 = load i64, i64* %envptr78832, align 8                                  ; load; *envptr78832
  %envptr78833 = inttoptr i64 %env77472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78834 = getelementptr inbounds i64, i64* %envptr78833, i64 1                ; &envptr78833[1]
  %fEI$lx = load i64, i64* %envptr78834, align 8                                     ; load; *envptr78834
  %_9574461 = call i64 @prim_car(i64 %rvp76196)                                      ; call prim_car
  %rvp76195 = call i64 @prim_cdr(i64 %rvp76196)                                      ; call prim_cdr
  %a74316 = call i64 @prim_car(i64 %rvp76195)                                        ; call prim_car
  %na76117 = call i64 @prim_cdr(i64 %rvp76195)                                       ; call prim_cdr
  %cmp78835 = icmp eq i64 %a74316, 15                                                ; false?
  br i1 %cmp78835, label %else78837, label %then78836                                ; if

then78836:
  %a74317 = call i64 @prim__45(i64 %fEI$lx, i64 %trS$ly)                             ; call prim__45
  %cloptr78838 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr78840 = getelementptr inbounds i64, i64* %cloptr78838, i64 1                  ; &eptr78840[1]
  %eptr78841 = getelementptr inbounds i64, i64* %cloptr78838, i64 2                  ; &eptr78841[2]
  %eptr78842 = getelementptr inbounds i64, i64* %cloptr78838, i64 3                  ; &eptr78842[3]
  %eptr78843 = getelementptr inbounds i64, i64* %cloptr78838, i64 4                  ; &eptr78843[4]
  %eptr78844 = getelementptr inbounds i64, i64* %cloptr78838, i64 5                  ; &eptr78844[5]
  %eptr78845 = getelementptr inbounds i64, i64* %cloptr78838, i64 6                  ; &eptr78845[6]
  %eptr78846 = getelementptr inbounds i64, i64* %cloptr78838, i64 7                  ; &eptr78846[7]
  store i64 %fEI$lx, i64* %eptr78840                                                 ; *eptr78840 = %fEI$lx
  store i64 %cont74456, i64* %eptr78841                                              ; *eptr78841 = %cont74456
  store i64 %Gh2$y, i64* %eptr78842                                                  ; *eptr78842 = %Gh2$y
  store i64 %a74315, i64* %eptr78843                                                 ; *eptr78843 = %a74315
  store i64 %trS$ly, i64* %eptr78844                                                 ; *eptr78844 = %trS$ly
  store i64 %B9u$_37drop, i64* %eptr78845                                            ; *eptr78845 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78846                                             ; *eptr78846 = %N9Z$_37_62
  %eptr78839 = getelementptr inbounds i64, i64* %cloptr78838, i64 0                  ; &cloptr78838[0]
  %f78847 = ptrtoint void(i64,i64)* @lam77453 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78847, i64* %eptr78839                                                 ; store fptr
  %arg75066 = ptrtoint i64* %cloptr78838 to i64                                      ; closure cast; i64* -> i64
  %rva76156 = add i64 0, 0                                                           ; quoted ()
  %rva76155 = call i64 @prim_cons(i64 %a74317, i64 %rva76156)                        ; call prim_cons
  %rva76154 = call i64 @prim_cons(i64 %Op4$x, i64 %rva76155)                         ; call prim_cons
  %rva76153 = call i64 @prim_cons(i64 %arg75066, i64 %rva76154)                      ; call prim_cons
  %cloptr78848 = inttoptr i64 %B9u$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr78849 = getelementptr inbounds i64, i64* %cloptr78848, i64 0                 ; &cloptr78848[0]
  %f78851 = load i64, i64* %i0ptr78849, align 8                                      ; load; *i0ptr78849
  %fptr78850 = inttoptr i64 %f78851 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78850(i64 %B9u$_37drop, i64 %rva76153)              ; tail call
  ret void

else78837:
  %cloptr78852 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr78854 = getelementptr inbounds i64, i64* %cloptr78852, i64 1                  ; &eptr78854[1]
  %eptr78855 = getelementptr inbounds i64, i64* %cloptr78852, i64 2                  ; &eptr78855[2]
  %eptr78856 = getelementptr inbounds i64, i64* %cloptr78852, i64 3                  ; &eptr78856[3]
  %eptr78857 = getelementptr inbounds i64, i64* %cloptr78852, i64 4                  ; &eptr78857[4]
  %eptr78858 = getelementptr inbounds i64, i64* %cloptr78852, i64 5                  ; &eptr78858[5]
  %eptr78859 = getelementptr inbounds i64, i64* %cloptr78852, i64 6                  ; &eptr78859[6]
  %eptr78860 = getelementptr inbounds i64, i64* %cloptr78852, i64 7                  ; &eptr78860[7]
  store i64 %fEI$lx, i64* %eptr78854                                                 ; *eptr78854 = %fEI$lx
  store i64 %cont74456, i64* %eptr78855                                              ; *eptr78855 = %cont74456
  store i64 %Gh2$y, i64* %eptr78856                                                  ; *eptr78856 = %Gh2$y
  store i64 %a74315, i64* %eptr78857                                                 ; *eptr78857 = %a74315
  store i64 %trS$ly, i64* %eptr78858                                                 ; *eptr78858 = %trS$ly
  store i64 %B9u$_37drop, i64* %eptr78859                                            ; *eptr78859 = %B9u$_37drop
  store i64 %N9Z$_37_62, i64* %eptr78860                                             ; *eptr78860 = %N9Z$_37_62
  %eptr78853 = getelementptr inbounds i64, i64* %cloptr78852, i64 0                  ; &cloptr78852[0]
  %f78861 = ptrtoint void(i64,i64)* @lam77469 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78861, i64* %eptr78853                                                 ; store fptr
  %arg75091 = ptrtoint i64* %cloptr78852 to i64                                      ; closure cast; i64* -> i64
  %arg75090 = add i64 0, 0                                                           ; quoted ()
  %rva76194 = add i64 0, 0                                                           ; quoted ()
  %rva76193 = call i64 @prim_cons(i64 %Op4$x, i64 %rva76194)                         ; call prim_cons
  %rva76192 = call i64 @prim_cons(i64 %arg75090, i64 %rva76193)                      ; call prim_cons
  %cloptr78862 = inttoptr i64 %arg75091 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78863 = getelementptr inbounds i64, i64* %cloptr78862, i64 0                 ; &cloptr78862[0]
  %f78865 = load i64, i64* %i0ptr78863, align 8                                      ; load; *i0ptr78863
  %fptr78864 = inttoptr i64 %f78865 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78864(i64 %arg75091, i64 %rva76192)                 ; tail call
  ret void
}


define void @lam77469(i64 %env77470, i64 %rvp76191) {
  %envptr78866 = inttoptr i64 %env77470 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78867 = getelementptr inbounds i64, i64* %envptr78866, i64 7                ; &envptr78866[7]
  %N9Z$_37_62 = load i64, i64* %envptr78867, align 8                                 ; load; *envptr78867
  %envptr78868 = inttoptr i64 %env77470 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78869 = getelementptr inbounds i64, i64* %envptr78868, i64 6                ; &envptr78868[6]
  %B9u$_37drop = load i64, i64* %envptr78869, align 8                                ; load; *envptr78869
  %envptr78870 = inttoptr i64 %env77470 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78871 = getelementptr inbounds i64, i64* %envptr78870, i64 5                ; &envptr78870[5]
  %trS$ly = load i64, i64* %envptr78871, align 8                                     ; load; *envptr78871
  %envptr78872 = inttoptr i64 %env77470 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78873 = getelementptr inbounds i64, i64* %envptr78872, i64 4                ; &envptr78872[4]
  %a74315 = load i64, i64* %envptr78873, align 8                                     ; load; *envptr78873
  %envptr78874 = inttoptr i64 %env77470 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78875 = getelementptr inbounds i64, i64* %envptr78874, i64 3                ; &envptr78874[3]
  %Gh2$y = load i64, i64* %envptr78875, align 8                                      ; load; *envptr78875
  %envptr78876 = inttoptr i64 %env77470 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78877 = getelementptr inbounds i64, i64* %envptr78876, i64 2                ; &envptr78876[2]
  %cont74456 = load i64, i64* %envptr78877, align 8                                  ; load; *envptr78877
  %envptr78878 = inttoptr i64 %env77470 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78879 = getelementptr inbounds i64, i64* %envptr78878, i64 1                ; &envptr78878[1]
  %fEI$lx = load i64, i64* %envptr78879, align 8                                     ; load; *envptr78879
  %_9574462 = call i64 @prim_car(i64 %rvp76191)                                      ; call prim_car
  %rvp76190 = call i64 @prim_cdr(i64 %rvp76191)                                      ; call prim_cdr
  %a74318 = call i64 @prim_car(i64 %rvp76190)                                        ; call prim_car
  %na76158 = call i64 @prim_cdr(i64 %rvp76190)                                       ; call prim_cdr
  %cloptr78880 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr78882 = getelementptr inbounds i64, i64* %cloptr78880, i64 1                  ; &eptr78882[1]
  %eptr78883 = getelementptr inbounds i64, i64* %cloptr78880, i64 2                  ; &eptr78883[2]
  %eptr78884 = getelementptr inbounds i64, i64* %cloptr78880, i64 3                  ; &eptr78884[3]
  %eptr78885 = getelementptr inbounds i64, i64* %cloptr78880, i64 4                  ; &eptr78885[4]
  %eptr78886 = getelementptr inbounds i64, i64* %cloptr78880, i64 5                  ; &eptr78886[5]
  %eptr78887 = getelementptr inbounds i64, i64* %cloptr78880, i64 6                  ; &eptr78887[6]
  %eptr78888 = getelementptr inbounds i64, i64* %cloptr78880, i64 7                  ; &eptr78888[7]
  store i64 %fEI$lx, i64* %eptr78882                                                 ; *eptr78882 = %fEI$lx
  store i64 %cont74456, i64* %eptr78883                                              ; *eptr78883 = %cont74456
  store i64 %Gh2$y, i64* %eptr78884                                                  ; *eptr78884 = %Gh2$y
  store i64 %a74315, i64* %eptr78885                                                 ; *eptr78885 = %a74315
  store i64 %trS$ly, i64* %eptr78886                                                 ; *eptr78886 = %trS$ly
  store i64 %B9u$_37drop, i64* %eptr78887                                            ; *eptr78887 = %B9u$_37drop
  store i64 %a74318, i64* %eptr78888                                                 ; *eptr78888 = %a74318
  %eptr78881 = getelementptr inbounds i64, i64* %cloptr78880, i64 0                  ; &cloptr78880[0]
  %f78889 = ptrtoint void(i64,i64)* @lam77467 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78889, i64* %eptr78881                                                 ; store fptr
  %arg75094 = ptrtoint i64* %cloptr78880 to i64                                      ; closure cast; i64* -> i64
  %rva76189 = add i64 0, 0                                                           ; quoted ()
  %rva76188 = call i64 @prim_cons(i64 %fEI$lx, i64 %rva76189)                        ; call prim_cons
  %rva76187 = call i64 @prim_cons(i64 %trS$ly, i64 %rva76188)                        ; call prim_cons
  %rva76186 = call i64 @prim_cons(i64 %arg75094, i64 %rva76187)                      ; call prim_cons
  %cloptr78890 = inttoptr i64 %N9Z$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr78891 = getelementptr inbounds i64, i64* %cloptr78890, i64 0                 ; &cloptr78890[0]
  %f78893 = load i64, i64* %i0ptr78891, align 8                                      ; load; *i0ptr78891
  %fptr78892 = inttoptr i64 %f78893 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78892(i64 %N9Z$_37_62, i64 %rva76186)               ; tail call
  ret void
}


define void @lam77467(i64 %env77468, i64 %rvp76185) {
  %envptr78894 = inttoptr i64 %env77468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78895 = getelementptr inbounds i64, i64* %envptr78894, i64 7                ; &envptr78894[7]
  %a74318 = load i64, i64* %envptr78895, align 8                                     ; load; *envptr78895
  %envptr78896 = inttoptr i64 %env77468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78897 = getelementptr inbounds i64, i64* %envptr78896, i64 6                ; &envptr78896[6]
  %B9u$_37drop = load i64, i64* %envptr78897, align 8                                ; load; *envptr78897
  %envptr78898 = inttoptr i64 %env77468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78899 = getelementptr inbounds i64, i64* %envptr78898, i64 5                ; &envptr78898[5]
  %trS$ly = load i64, i64* %envptr78899, align 8                                     ; load; *envptr78899
  %envptr78900 = inttoptr i64 %env77468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78901 = getelementptr inbounds i64, i64* %envptr78900, i64 4                ; &envptr78900[4]
  %a74315 = load i64, i64* %envptr78901, align 8                                     ; load; *envptr78901
  %envptr78902 = inttoptr i64 %env77468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78903 = getelementptr inbounds i64, i64* %envptr78902, i64 3                ; &envptr78902[3]
  %Gh2$y = load i64, i64* %envptr78903, align 8                                      ; load; *envptr78903
  %envptr78904 = inttoptr i64 %env77468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78905 = getelementptr inbounds i64, i64* %envptr78904, i64 2                ; &envptr78904[2]
  %cont74456 = load i64, i64* %envptr78905, align 8                                  ; load; *envptr78905
  %envptr78906 = inttoptr i64 %env77468 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78907 = getelementptr inbounds i64, i64* %envptr78906, i64 1                ; &envptr78906[1]
  %fEI$lx = load i64, i64* %envptr78907, align 8                                     ; load; *envptr78907
  %_9574463 = call i64 @prim_car(i64 %rvp76185)                                      ; call prim_car
  %rvp76184 = call i64 @prim_cdr(i64 %rvp76185)                                      ; call prim_cdr
  %a74319 = call i64 @prim_car(i64 %rvp76184)                                        ; call prim_car
  %na76160 = call i64 @prim_cdr(i64 %rvp76184)                                       ; call prim_cdr
  %cmp78908 = icmp eq i64 %a74319, 15                                                ; false?
  br i1 %cmp78908, label %else78910, label %then78909                                ; if

then78909:
  %a74320 = call i64 @prim__45(i64 %trS$ly, i64 %fEI$lx)                             ; call prim__45
  %cloptr78911 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78913 = getelementptr inbounds i64, i64* %cloptr78911, i64 1                  ; &eptr78913[1]
  %eptr78914 = getelementptr inbounds i64, i64* %cloptr78911, i64 2                  ; &eptr78914[2]
  %eptr78915 = getelementptr inbounds i64, i64* %cloptr78911, i64 3                  ; &eptr78915[3]
  store i64 %cont74456, i64* %eptr78913                                              ; *eptr78913 = %cont74456
  store i64 %a74315, i64* %eptr78914                                                 ; *eptr78914 = %a74315
  store i64 %a74318, i64* %eptr78915                                                 ; *eptr78915 = %a74318
  %eptr78912 = getelementptr inbounds i64, i64* %cloptr78911, i64 0                  ; &cloptr78911[0]
  %f78916 = ptrtoint void(i64,i64)* @lam77460 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78916, i64* %eptr78912                                                 ; store fptr
  %arg75100 = ptrtoint i64* %cloptr78911 to i64                                      ; closure cast; i64* -> i64
  %rva76172 = add i64 0, 0                                                           ; quoted ()
  %rva76171 = call i64 @prim_cons(i64 %a74320, i64 %rva76172)                        ; call prim_cons
  %rva76170 = call i64 @prim_cons(i64 %Gh2$y, i64 %rva76171)                         ; call prim_cons
  %rva76169 = call i64 @prim_cons(i64 %arg75100, i64 %rva76170)                      ; call prim_cons
  %cloptr78917 = inttoptr i64 %B9u$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr78918 = getelementptr inbounds i64, i64* %cloptr78917, i64 0                 ; &cloptr78917[0]
  %f78920 = load i64, i64* %i0ptr78918, align 8                                      ; load; *i0ptr78918
  %fptr78919 = inttoptr i64 %f78920 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78919(i64 %B9u$_37drop, i64 %rva76169)              ; tail call
  ret void

else78910:
  %cloptr78921 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78923 = getelementptr inbounds i64, i64* %cloptr78921, i64 1                  ; &eptr78923[1]
  %eptr78924 = getelementptr inbounds i64, i64* %cloptr78921, i64 2                  ; &eptr78924[2]
  %eptr78925 = getelementptr inbounds i64, i64* %cloptr78921, i64 3                  ; &eptr78925[3]
  store i64 %cont74456, i64* %eptr78923                                              ; *eptr78923 = %cont74456
  store i64 %a74315, i64* %eptr78924                                                 ; *eptr78924 = %a74315
  store i64 %a74318, i64* %eptr78925                                                 ; *eptr78925 = %a74318
  %eptr78922 = getelementptr inbounds i64, i64* %cloptr78921, i64 0                  ; &cloptr78921[0]
  %f78926 = ptrtoint void(i64,i64)* @lam77465 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78926, i64* %eptr78922                                                 ; store fptr
  %arg75108 = ptrtoint i64* %cloptr78921 to i64                                      ; closure cast; i64* -> i64
  %arg75107 = add i64 0, 0                                                           ; quoted ()
  %rva76183 = add i64 0, 0                                                           ; quoted ()
  %rva76182 = call i64 @prim_cons(i64 %Gh2$y, i64 %rva76183)                         ; call prim_cons
  %rva76181 = call i64 @prim_cons(i64 %arg75107, i64 %rva76182)                      ; call prim_cons
  %cloptr78927 = inttoptr i64 %arg75108 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr78928 = getelementptr inbounds i64, i64* %cloptr78927, i64 0                 ; &cloptr78927[0]
  %f78930 = load i64, i64* %i0ptr78928, align 8                                      ; load; *i0ptr78928
  %fptr78929 = inttoptr i64 %f78930 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78929(i64 %arg75108, i64 %rva76181)                 ; tail call
  ret void
}


define void @lam77465(i64 %env77466, i64 %rvp76180) {
  %envptr78931 = inttoptr i64 %env77466 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78932 = getelementptr inbounds i64, i64* %envptr78931, i64 3                ; &envptr78931[3]
  %a74318 = load i64, i64* %envptr78932, align 8                                     ; load; *envptr78932
  %envptr78933 = inttoptr i64 %env77466 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78934 = getelementptr inbounds i64, i64* %envptr78933, i64 2                ; &envptr78933[2]
  %a74315 = load i64, i64* %envptr78934, align 8                                     ; load; *envptr78934
  %envptr78935 = inttoptr i64 %env77466 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78936 = getelementptr inbounds i64, i64* %envptr78935, i64 1                ; &envptr78935[1]
  %cont74456 = load i64, i64* %envptr78936, align 8                                  ; load; *envptr78936
  %_9574464 = call i64 @prim_car(i64 %rvp76180)                                      ; call prim_car
  %rvp76179 = call i64 @prim_cdr(i64 %rvp76180)                                      ; call prim_cdr
  %a74321 = call i64 @prim_car(i64 %rvp76179)                                        ; call prim_car
  %na76174 = call i64 @prim_cdr(i64 %rvp76179)                                       ; call prim_cdr
  %rva76178 = add i64 0, 0                                                           ; quoted ()
  %rva76177 = call i64 @prim_cons(i64 %a74321, i64 %rva76178)                        ; call prim_cons
  %rva76176 = call i64 @prim_cons(i64 %a74318, i64 %rva76177)                        ; call prim_cons
  %rva76175 = call i64 @prim_cons(i64 %cont74456, i64 %rva76176)                     ; call prim_cons
  %cloptr78937 = inttoptr i64 %a74315 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78938 = getelementptr inbounds i64, i64* %cloptr78937, i64 0                 ; &cloptr78937[0]
  %f78940 = load i64, i64* %i0ptr78938, align 8                                      ; load; *i0ptr78938
  %fptr78939 = inttoptr i64 %f78940 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78939(i64 %a74315, i64 %rva76175)                   ; tail call
  ret void
}


define void @lam77460(i64 %env77461, i64 %rvp76168) {
  %envptr78941 = inttoptr i64 %env77461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78942 = getelementptr inbounds i64, i64* %envptr78941, i64 3                ; &envptr78941[3]
  %a74318 = load i64, i64* %envptr78942, align 8                                     ; load; *envptr78942
  %envptr78943 = inttoptr i64 %env77461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78944 = getelementptr inbounds i64, i64* %envptr78943, i64 2                ; &envptr78943[2]
  %a74315 = load i64, i64* %envptr78944, align 8                                     ; load; *envptr78944
  %envptr78945 = inttoptr i64 %env77461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78946 = getelementptr inbounds i64, i64* %envptr78945, i64 1                ; &envptr78945[1]
  %cont74456 = load i64, i64* %envptr78946, align 8                                  ; load; *envptr78946
  %_9574464 = call i64 @prim_car(i64 %rvp76168)                                      ; call prim_car
  %rvp76167 = call i64 @prim_cdr(i64 %rvp76168)                                      ; call prim_cdr
  %a74321 = call i64 @prim_car(i64 %rvp76167)                                        ; call prim_car
  %na76162 = call i64 @prim_cdr(i64 %rvp76167)                                       ; call prim_cdr
  %rva76166 = add i64 0, 0                                                           ; quoted ()
  %rva76165 = call i64 @prim_cons(i64 %a74321, i64 %rva76166)                        ; call prim_cons
  %rva76164 = call i64 @prim_cons(i64 %a74318, i64 %rva76165)                        ; call prim_cons
  %rva76163 = call i64 @prim_cons(i64 %cont74456, i64 %rva76164)                     ; call prim_cons
  %cloptr78947 = inttoptr i64 %a74315 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr78948 = getelementptr inbounds i64, i64* %cloptr78947, i64 0                 ; &cloptr78947[0]
  %f78950 = load i64, i64* %i0ptr78948, align 8                                      ; load; *i0ptr78948
  %fptr78949 = inttoptr i64 %f78950 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78949(i64 %a74315, i64 %rva76163)                   ; tail call
  ret void
}


define void @lam77453(i64 %env77454, i64 %rvp76152) {
  %envptr78951 = inttoptr i64 %env77454 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78952 = getelementptr inbounds i64, i64* %envptr78951, i64 7                ; &envptr78951[7]
  %N9Z$_37_62 = load i64, i64* %envptr78952, align 8                                 ; load; *envptr78952
  %envptr78953 = inttoptr i64 %env77454 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78954 = getelementptr inbounds i64, i64* %envptr78953, i64 6                ; &envptr78953[6]
  %B9u$_37drop = load i64, i64* %envptr78954, align 8                                ; load; *envptr78954
  %envptr78955 = inttoptr i64 %env77454 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78956 = getelementptr inbounds i64, i64* %envptr78955, i64 5                ; &envptr78955[5]
  %trS$ly = load i64, i64* %envptr78956, align 8                                     ; load; *envptr78956
  %envptr78957 = inttoptr i64 %env77454 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78958 = getelementptr inbounds i64, i64* %envptr78957, i64 4                ; &envptr78957[4]
  %a74315 = load i64, i64* %envptr78958, align 8                                     ; load; *envptr78958
  %envptr78959 = inttoptr i64 %env77454 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78960 = getelementptr inbounds i64, i64* %envptr78959, i64 3                ; &envptr78959[3]
  %Gh2$y = load i64, i64* %envptr78960, align 8                                      ; load; *envptr78960
  %envptr78961 = inttoptr i64 %env77454 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78962 = getelementptr inbounds i64, i64* %envptr78961, i64 2                ; &envptr78961[2]
  %cont74456 = load i64, i64* %envptr78962, align 8                                  ; load; *envptr78962
  %envptr78963 = inttoptr i64 %env77454 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78964 = getelementptr inbounds i64, i64* %envptr78963, i64 1                ; &envptr78963[1]
  %fEI$lx = load i64, i64* %envptr78964, align 8                                     ; load; *envptr78964
  %_9574462 = call i64 @prim_car(i64 %rvp76152)                                      ; call prim_car
  %rvp76151 = call i64 @prim_cdr(i64 %rvp76152)                                      ; call prim_cdr
  %a74318 = call i64 @prim_car(i64 %rvp76151)                                        ; call prim_car
  %na76119 = call i64 @prim_cdr(i64 %rvp76151)                                       ; call prim_cdr
  %cloptr78965 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr78967 = getelementptr inbounds i64, i64* %cloptr78965, i64 1                  ; &eptr78967[1]
  %eptr78968 = getelementptr inbounds i64, i64* %cloptr78965, i64 2                  ; &eptr78968[2]
  %eptr78969 = getelementptr inbounds i64, i64* %cloptr78965, i64 3                  ; &eptr78969[3]
  %eptr78970 = getelementptr inbounds i64, i64* %cloptr78965, i64 4                  ; &eptr78970[4]
  %eptr78971 = getelementptr inbounds i64, i64* %cloptr78965, i64 5                  ; &eptr78971[5]
  %eptr78972 = getelementptr inbounds i64, i64* %cloptr78965, i64 6                  ; &eptr78972[6]
  %eptr78973 = getelementptr inbounds i64, i64* %cloptr78965, i64 7                  ; &eptr78973[7]
  store i64 %fEI$lx, i64* %eptr78967                                                 ; *eptr78967 = %fEI$lx
  store i64 %cont74456, i64* %eptr78968                                              ; *eptr78968 = %cont74456
  store i64 %Gh2$y, i64* %eptr78969                                                  ; *eptr78969 = %Gh2$y
  store i64 %a74315, i64* %eptr78970                                                 ; *eptr78970 = %a74315
  store i64 %trS$ly, i64* %eptr78971                                                 ; *eptr78971 = %trS$ly
  store i64 %B9u$_37drop, i64* %eptr78972                                            ; *eptr78972 = %B9u$_37drop
  store i64 %a74318, i64* %eptr78973                                                 ; *eptr78973 = %a74318
  %eptr78966 = getelementptr inbounds i64, i64* %cloptr78965, i64 0                  ; &cloptr78965[0]
  %f78974 = ptrtoint void(i64,i64)* @lam77451 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f78974, i64* %eptr78966                                                 ; store fptr
  %arg75070 = ptrtoint i64* %cloptr78965 to i64                                      ; closure cast; i64* -> i64
  %rva76150 = add i64 0, 0                                                           ; quoted ()
  %rva76149 = call i64 @prim_cons(i64 %fEI$lx, i64 %rva76150)                        ; call prim_cons
  %rva76148 = call i64 @prim_cons(i64 %trS$ly, i64 %rva76149)                        ; call prim_cons
  %rva76147 = call i64 @prim_cons(i64 %arg75070, i64 %rva76148)                      ; call prim_cons
  %cloptr78975 = inttoptr i64 %N9Z$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr78976 = getelementptr inbounds i64, i64* %cloptr78975, i64 0                 ; &cloptr78975[0]
  %f78978 = load i64, i64* %i0ptr78976, align 8                                      ; load; *i0ptr78976
  %fptr78977 = inttoptr i64 %f78978 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr78977(i64 %N9Z$_37_62, i64 %rva76147)               ; tail call
  ret void
}


define void @lam77451(i64 %env77452, i64 %rvp76146) {
  %envptr78979 = inttoptr i64 %env77452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78980 = getelementptr inbounds i64, i64* %envptr78979, i64 7                ; &envptr78979[7]
  %a74318 = load i64, i64* %envptr78980, align 8                                     ; load; *envptr78980
  %envptr78981 = inttoptr i64 %env77452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78982 = getelementptr inbounds i64, i64* %envptr78981, i64 6                ; &envptr78981[6]
  %B9u$_37drop = load i64, i64* %envptr78982, align 8                                ; load; *envptr78982
  %envptr78983 = inttoptr i64 %env77452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78984 = getelementptr inbounds i64, i64* %envptr78983, i64 5                ; &envptr78983[5]
  %trS$ly = load i64, i64* %envptr78984, align 8                                     ; load; *envptr78984
  %envptr78985 = inttoptr i64 %env77452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78986 = getelementptr inbounds i64, i64* %envptr78985, i64 4                ; &envptr78985[4]
  %a74315 = load i64, i64* %envptr78986, align 8                                     ; load; *envptr78986
  %envptr78987 = inttoptr i64 %env77452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78988 = getelementptr inbounds i64, i64* %envptr78987, i64 3                ; &envptr78987[3]
  %Gh2$y = load i64, i64* %envptr78988, align 8                                      ; load; *envptr78988
  %envptr78989 = inttoptr i64 %env77452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78990 = getelementptr inbounds i64, i64* %envptr78989, i64 2                ; &envptr78989[2]
  %cont74456 = load i64, i64* %envptr78990, align 8                                  ; load; *envptr78990
  %envptr78991 = inttoptr i64 %env77452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr78992 = getelementptr inbounds i64, i64* %envptr78991, i64 1                ; &envptr78991[1]
  %fEI$lx = load i64, i64* %envptr78992, align 8                                     ; load; *envptr78992
  %_9574463 = call i64 @prim_car(i64 %rvp76146)                                      ; call prim_car
  %rvp76145 = call i64 @prim_cdr(i64 %rvp76146)                                      ; call prim_cdr
  %a74319 = call i64 @prim_car(i64 %rvp76145)                                        ; call prim_car
  %na76121 = call i64 @prim_cdr(i64 %rvp76145)                                       ; call prim_cdr
  %cmp78993 = icmp eq i64 %a74319, 15                                                ; false?
  br i1 %cmp78993, label %else78995, label %then78994                                ; if

then78994:
  %a74320 = call i64 @prim__45(i64 %trS$ly, i64 %fEI$lx)                             ; call prim__45
  %cloptr78996 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr78998 = getelementptr inbounds i64, i64* %cloptr78996, i64 1                  ; &eptr78998[1]
  %eptr78999 = getelementptr inbounds i64, i64* %cloptr78996, i64 2                  ; &eptr78999[2]
  %eptr79000 = getelementptr inbounds i64, i64* %cloptr78996, i64 3                  ; &eptr79000[3]
  store i64 %cont74456, i64* %eptr78998                                              ; *eptr78998 = %cont74456
  store i64 %a74315, i64* %eptr78999                                                 ; *eptr78999 = %a74315
  store i64 %a74318, i64* %eptr79000                                                 ; *eptr79000 = %a74318
  %eptr78997 = getelementptr inbounds i64, i64* %cloptr78996, i64 0                  ; &cloptr78996[0]
  %f79001 = ptrtoint void(i64,i64)* @lam77444 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79001, i64* %eptr78997                                                 ; store fptr
  %arg75076 = ptrtoint i64* %cloptr78996 to i64                                      ; closure cast; i64* -> i64
  %rva76133 = add i64 0, 0                                                           ; quoted ()
  %rva76132 = call i64 @prim_cons(i64 %a74320, i64 %rva76133)                        ; call prim_cons
  %rva76131 = call i64 @prim_cons(i64 %Gh2$y, i64 %rva76132)                         ; call prim_cons
  %rva76130 = call i64 @prim_cons(i64 %arg75076, i64 %rva76131)                      ; call prim_cons
  %cloptr79002 = inttoptr i64 %B9u$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr79003 = getelementptr inbounds i64, i64* %cloptr79002, i64 0                 ; &cloptr79002[0]
  %f79005 = load i64, i64* %i0ptr79003, align 8                                      ; load; *i0ptr79003
  %fptr79004 = inttoptr i64 %f79005 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79004(i64 %B9u$_37drop, i64 %rva76130)              ; tail call
  ret void

else78995:
  %cloptr79006 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79008 = getelementptr inbounds i64, i64* %cloptr79006, i64 1                  ; &eptr79008[1]
  %eptr79009 = getelementptr inbounds i64, i64* %cloptr79006, i64 2                  ; &eptr79009[2]
  %eptr79010 = getelementptr inbounds i64, i64* %cloptr79006, i64 3                  ; &eptr79010[3]
  store i64 %cont74456, i64* %eptr79008                                              ; *eptr79008 = %cont74456
  store i64 %a74315, i64* %eptr79009                                                 ; *eptr79009 = %a74315
  store i64 %a74318, i64* %eptr79010                                                 ; *eptr79010 = %a74318
  %eptr79007 = getelementptr inbounds i64, i64* %cloptr79006, i64 0                  ; &cloptr79006[0]
  %f79011 = ptrtoint void(i64,i64)* @lam77449 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79011, i64* %eptr79007                                                 ; store fptr
  %arg75084 = ptrtoint i64* %cloptr79006 to i64                                      ; closure cast; i64* -> i64
  %arg75083 = add i64 0, 0                                                           ; quoted ()
  %rva76144 = add i64 0, 0                                                           ; quoted ()
  %rva76143 = call i64 @prim_cons(i64 %Gh2$y, i64 %rva76144)                         ; call prim_cons
  %rva76142 = call i64 @prim_cons(i64 %arg75083, i64 %rva76143)                      ; call prim_cons
  %cloptr79012 = inttoptr i64 %arg75084 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79013 = getelementptr inbounds i64, i64* %cloptr79012, i64 0                 ; &cloptr79012[0]
  %f79015 = load i64, i64* %i0ptr79013, align 8                                      ; load; *i0ptr79013
  %fptr79014 = inttoptr i64 %f79015 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79014(i64 %arg75084, i64 %rva76142)                 ; tail call
  ret void
}


define void @lam77449(i64 %env77450, i64 %rvp76141) {
  %envptr79016 = inttoptr i64 %env77450 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79017 = getelementptr inbounds i64, i64* %envptr79016, i64 3                ; &envptr79016[3]
  %a74318 = load i64, i64* %envptr79017, align 8                                     ; load; *envptr79017
  %envptr79018 = inttoptr i64 %env77450 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79019 = getelementptr inbounds i64, i64* %envptr79018, i64 2                ; &envptr79018[2]
  %a74315 = load i64, i64* %envptr79019, align 8                                     ; load; *envptr79019
  %envptr79020 = inttoptr i64 %env77450 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79021 = getelementptr inbounds i64, i64* %envptr79020, i64 1                ; &envptr79020[1]
  %cont74456 = load i64, i64* %envptr79021, align 8                                  ; load; *envptr79021
  %_9574464 = call i64 @prim_car(i64 %rvp76141)                                      ; call prim_car
  %rvp76140 = call i64 @prim_cdr(i64 %rvp76141)                                      ; call prim_cdr
  %a74321 = call i64 @prim_car(i64 %rvp76140)                                        ; call prim_car
  %na76135 = call i64 @prim_cdr(i64 %rvp76140)                                       ; call prim_cdr
  %rva76139 = add i64 0, 0                                                           ; quoted ()
  %rva76138 = call i64 @prim_cons(i64 %a74321, i64 %rva76139)                        ; call prim_cons
  %rva76137 = call i64 @prim_cons(i64 %a74318, i64 %rva76138)                        ; call prim_cons
  %rva76136 = call i64 @prim_cons(i64 %cont74456, i64 %rva76137)                     ; call prim_cons
  %cloptr79022 = inttoptr i64 %a74315 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79023 = getelementptr inbounds i64, i64* %cloptr79022, i64 0                 ; &cloptr79022[0]
  %f79025 = load i64, i64* %i0ptr79023, align 8                                      ; load; *i0ptr79023
  %fptr79024 = inttoptr i64 %f79025 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79024(i64 %a74315, i64 %rva76136)                   ; tail call
  ret void
}


define void @lam77444(i64 %env77445, i64 %rvp76129) {
  %envptr79026 = inttoptr i64 %env77445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79027 = getelementptr inbounds i64, i64* %envptr79026, i64 3                ; &envptr79026[3]
  %a74318 = load i64, i64* %envptr79027, align 8                                     ; load; *envptr79027
  %envptr79028 = inttoptr i64 %env77445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79029 = getelementptr inbounds i64, i64* %envptr79028, i64 2                ; &envptr79028[2]
  %a74315 = load i64, i64* %envptr79029, align 8                                     ; load; *envptr79029
  %envptr79030 = inttoptr i64 %env77445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79031 = getelementptr inbounds i64, i64* %envptr79030, i64 1                ; &envptr79030[1]
  %cont74456 = load i64, i64* %envptr79031, align 8                                  ; load; *envptr79031
  %_9574464 = call i64 @prim_car(i64 %rvp76129)                                      ; call prim_car
  %rvp76128 = call i64 @prim_cdr(i64 %rvp76129)                                      ; call prim_cdr
  %a74321 = call i64 @prim_car(i64 %rvp76128)                                        ; call prim_car
  %na76123 = call i64 @prim_cdr(i64 %rvp76128)                                       ; call prim_cdr
  %rva76127 = add i64 0, 0                                                           ; quoted ()
  %rva76126 = call i64 @prim_cons(i64 %a74321, i64 %rva76127)                        ; call prim_cons
  %rva76125 = call i64 @prim_cons(i64 %a74318, i64 %rva76126)                        ; call prim_cons
  %rva76124 = call i64 @prim_cons(i64 %cont74456, i64 %rva76125)                     ; call prim_cons
  %cloptr79032 = inttoptr i64 %a74315 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79033 = getelementptr inbounds i64, i64* %cloptr79032, i64 0                 ; &cloptr79032[0]
  %f79035 = load i64, i64* %i0ptr79033, align 8                                      ; load; *i0ptr79033
  %fptr79034 = inttoptr i64 %f79035 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79034(i64 %a74315, i64 %rva76124)                   ; tail call
  ret void
}


define void @lam77432(i64 %env77433, i64 %rvp76322) {
  %envptr79036 = inttoptr i64 %env77433 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79037 = getelementptr inbounds i64, i64* %envptr79036, i64 2                ; &envptr79036[2]
  %otK$_37common_45tail = load i64, i64* %envptr79037, align 8                       ; load; *envptr79037
  %envptr79038 = inttoptr i64 %env77433 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79039 = getelementptr inbounds i64, i64* %envptr79038, i64 1                ; &envptr79038[1]
  %dQg$_37wind_45stack = load i64, i64* %envptr79039, align 8                        ; load; *envptr79039
  %cont74469 = call i64 @prim_car(i64 %rvp76322)                                     ; call prim_car
  %rvp76321 = call i64 @prim_cdr(i64 %rvp76322)                                      ; call prim_cdr
  %c8Q$new = call i64 @prim_car(i64 %rvp76321)                                       ; call prim_car
  %na76224 = call i64 @prim_cdr(i64 %rvp76321)                                       ; call prim_cdr
  %arg75113 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74322 = call i64 @prim_vector_45ref(i64 %dQg$_37wind_45stack, i64 %arg75113)     ; call prim_vector_45ref
  %cloptr79040 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79042 = getelementptr inbounds i64, i64* %cloptr79040, i64 1                  ; &eptr79042[1]
  %eptr79043 = getelementptr inbounds i64, i64* %cloptr79040, i64 2                  ; &eptr79043[2]
  %eptr79044 = getelementptr inbounds i64, i64* %cloptr79040, i64 3                  ; &eptr79044[3]
  store i64 %dQg$_37wind_45stack, i64* %eptr79042                                    ; *eptr79042 = %dQg$_37wind_45stack
  store i64 %cont74469, i64* %eptr79043                                              ; *eptr79043 = %cont74469
  store i64 %c8Q$new, i64* %eptr79044                                                ; *eptr79044 = %c8Q$new
  %eptr79041 = getelementptr inbounds i64, i64* %cloptr79040, i64 0                  ; &cloptr79040[0]
  %f79045 = ptrtoint void(i64,i64)* @lam77429 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79045, i64* %eptr79041                                                 ; store fptr
  %arg75117 = ptrtoint i64* %cloptr79040 to i64                                      ; closure cast; i64* -> i64
  %rva76320 = add i64 0, 0                                                           ; quoted ()
  %rva76319 = call i64 @prim_cons(i64 %a74322, i64 %rva76320)                        ; call prim_cons
  %rva76318 = call i64 @prim_cons(i64 %c8Q$new, i64 %rva76319)                       ; call prim_cons
  %rva76317 = call i64 @prim_cons(i64 %arg75117, i64 %rva76318)                      ; call prim_cons
  %cloptr79046 = inttoptr i64 %otK$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr79047 = getelementptr inbounds i64, i64* %cloptr79046, i64 0                 ; &cloptr79046[0]
  %f79049 = load i64, i64* %i0ptr79047, align 8                                      ; load; *i0ptr79047
  %fptr79048 = inttoptr i64 %f79049 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79048(i64 %otK$_37common_45tail, i64 %rva76317)     ; tail call
  ret void
}


define void @lam77429(i64 %env77430, i64 %rvp76316) {
  %envptr79050 = inttoptr i64 %env77430 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79051 = getelementptr inbounds i64, i64* %envptr79050, i64 3                ; &envptr79050[3]
  %c8Q$new = load i64, i64* %envptr79051, align 8                                    ; load; *envptr79051
  %envptr79052 = inttoptr i64 %env77430 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79053 = getelementptr inbounds i64, i64* %envptr79052, i64 2                ; &envptr79052[2]
  %cont74469 = load i64, i64* %envptr79053, align 8                                  ; load; *envptr79053
  %envptr79054 = inttoptr i64 %env77430 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79055 = getelementptr inbounds i64, i64* %envptr79054, i64 1                ; &envptr79054[1]
  %dQg$_37wind_45stack = load i64, i64* %envptr79055, align 8                        ; load; *envptr79055
  %_9574470 = call i64 @prim_car(i64 %rvp76316)                                      ; call prim_car
  %rvp76315 = call i64 @prim_cdr(i64 %rvp76316)                                      ; call prim_cdr
  %pu0$tail = call i64 @prim_car(i64 %rvp76315)                                      ; call prim_car
  %na76226 = call i64 @prim_cdr(i64 %rvp76315)                                       ; call prim_cdr
  %cloptr79056 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79057 = getelementptr inbounds i64, i64* %cloptr79056, i64 0                  ; &cloptr79056[0]
  %f79058 = ptrtoint void(i64,i64)* @lam77427 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79058, i64* %eptr79057                                                 ; store fptr
  %arg75120 = ptrtoint i64* %cloptr79056 to i64                                      ; closure cast; i64* -> i64
  %cloptr79059 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79061 = getelementptr inbounds i64, i64* %cloptr79059, i64 1                  ; &eptr79061[1]
  %eptr79062 = getelementptr inbounds i64, i64* %cloptr79059, i64 2                  ; &eptr79062[2]
  %eptr79063 = getelementptr inbounds i64, i64* %cloptr79059, i64 3                  ; &eptr79063[3]
  %eptr79064 = getelementptr inbounds i64, i64* %cloptr79059, i64 4                  ; &eptr79064[4]
  store i64 %pu0$tail, i64* %eptr79061                                               ; *eptr79061 = %pu0$tail
  store i64 %dQg$_37wind_45stack, i64* %eptr79062                                    ; *eptr79062 = %dQg$_37wind_45stack
  store i64 %cont74469, i64* %eptr79063                                              ; *eptr79063 = %cont74469
  store i64 %c8Q$new, i64* %eptr79064                                                ; *eptr79064 = %c8Q$new
  %eptr79060 = getelementptr inbounds i64, i64* %cloptr79059, i64 0                  ; &cloptr79059[0]
  %f79065 = ptrtoint void(i64,i64)* @lam77423 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79065, i64* %eptr79060                                                 ; store fptr
  %arg75119 = ptrtoint i64* %cloptr79059 to i64                                      ; closure cast; i64* -> i64
  %rva76314 = add i64 0, 0                                                           ; quoted ()
  %rva76313 = call i64 @prim_cons(i64 %arg75119, i64 %rva76314)                      ; call prim_cons
  %cloptr79066 = inttoptr i64 %arg75120 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79067 = getelementptr inbounds i64, i64* %cloptr79066, i64 0                 ; &cloptr79066[0]
  %f79069 = load i64, i64* %i0ptr79067, align 8                                      ; load; *i0ptr79067
  %fptr79068 = inttoptr i64 %f79069 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79068(i64 %arg75120, i64 %rva76313)                 ; tail call
  ret void
}


define void @lam77427(i64 %env77428, i64 %t2X$lst74491) {
  %cont74490 = call i64 @prim_car(i64 %t2X$lst74491)                                 ; call prim_car
  %t2X$lst = call i64 @prim_cdr(i64 %t2X$lst74491)                                   ; call prim_cdr
  %arg75124 = add i64 0, 0                                                           ; quoted ()
  %rva76229 = add i64 0, 0                                                           ; quoted ()
  %rva76228 = call i64 @prim_cons(i64 %t2X$lst, i64 %rva76229)                       ; call prim_cons
  %rva76227 = call i64 @prim_cons(i64 %arg75124, i64 %rva76228)                      ; call prim_cons
  %cloptr79070 = inttoptr i64 %cont74490 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79071 = getelementptr inbounds i64, i64* %cloptr79070, i64 0                 ; &cloptr79070[0]
  %f79073 = load i64, i64* %i0ptr79071, align 8                                      ; load; *i0ptr79071
  %fptr79072 = inttoptr i64 %f79073 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79072(i64 %cont74490, i64 %rva76227)                ; tail call
  ret void
}


define void @lam77423(i64 %env77424, i64 %rvp76312) {
  %envptr79074 = inttoptr i64 %env77424 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79075 = getelementptr inbounds i64, i64* %envptr79074, i64 4                ; &envptr79074[4]
  %c8Q$new = load i64, i64* %envptr79075, align 8                                    ; load; *envptr79075
  %envptr79076 = inttoptr i64 %env77424 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79077 = getelementptr inbounds i64, i64* %envptr79076, i64 3                ; &envptr79076[3]
  %cont74469 = load i64, i64* %envptr79077, align 8                                  ; load; *envptr79077
  %envptr79078 = inttoptr i64 %env77424 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79079 = getelementptr inbounds i64, i64* %envptr79078, i64 2                ; &envptr79078[2]
  %dQg$_37wind_45stack = load i64, i64* %envptr79079, align 8                        ; load; *envptr79079
  %envptr79080 = inttoptr i64 %env77424 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79081 = getelementptr inbounds i64, i64* %envptr79080, i64 1                ; &envptr79080[1]
  %pu0$tail = load i64, i64* %envptr79081, align 8                                   ; load; *envptr79081
  %_9574488 = call i64 @prim_car(i64 %rvp76312)                                      ; call prim_car
  %rvp76311 = call i64 @prim_cdr(i64 %rvp76312)                                      ; call prim_cdr
  %a74323 = call i64 @prim_car(i64 %rvp76311)                                        ; call prim_car
  %na76231 = call i64 @prim_cdr(i64 %rvp76311)                                       ; call prim_cdr
  %arg75127 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74489 = call i64 @prim_make_45vector(i64 %arg75127, i64 %a74323)           ; call prim_make_45vector
  %cloptr79082 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79084 = getelementptr inbounds i64, i64* %cloptr79082, i64 1                  ; &eptr79084[1]
  %eptr79085 = getelementptr inbounds i64, i64* %cloptr79082, i64 2                  ; &eptr79085[2]
  %eptr79086 = getelementptr inbounds i64, i64* %cloptr79082, i64 3                  ; &eptr79086[3]
  %eptr79087 = getelementptr inbounds i64, i64* %cloptr79082, i64 4                  ; &eptr79087[4]
  store i64 %pu0$tail, i64* %eptr79084                                               ; *eptr79084 = %pu0$tail
  store i64 %dQg$_37wind_45stack, i64* %eptr79085                                    ; *eptr79085 = %dQg$_37wind_45stack
  store i64 %cont74469, i64* %eptr79086                                              ; *eptr79086 = %cont74469
  store i64 %c8Q$new, i64* %eptr79087                                                ; *eptr79087 = %c8Q$new
  %eptr79083 = getelementptr inbounds i64, i64* %cloptr79082, i64 0                  ; &cloptr79082[0]
  %f79088 = ptrtoint void(i64,i64)* @lam77420 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79088, i64* %eptr79083                                                 ; store fptr
  %arg75130 = ptrtoint i64* %cloptr79082 to i64                                      ; closure cast; i64* -> i64
  %arg75129 = add i64 0, 0                                                           ; quoted ()
  %rva76310 = add i64 0, 0                                                           ; quoted ()
  %rva76309 = call i64 @prim_cons(i64 %retprim74489, i64 %rva76310)                  ; call prim_cons
  %rva76308 = call i64 @prim_cons(i64 %arg75129, i64 %rva76309)                      ; call prim_cons
  %cloptr79089 = inttoptr i64 %arg75130 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79090 = getelementptr inbounds i64, i64* %cloptr79089, i64 0                 ; &cloptr79089[0]
  %f79092 = load i64, i64* %i0ptr79090, align 8                                      ; load; *i0ptr79090
  %fptr79091 = inttoptr i64 %f79092 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79091(i64 %arg75130, i64 %rva76308)                 ; tail call
  ret void
}


define void @lam77420(i64 %env77421, i64 %rvp76307) {
  %envptr79093 = inttoptr i64 %env77421 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79094 = getelementptr inbounds i64, i64* %envptr79093, i64 4                ; &envptr79093[4]
  %c8Q$new = load i64, i64* %envptr79094, align 8                                    ; load; *envptr79094
  %envptr79095 = inttoptr i64 %env77421 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79096 = getelementptr inbounds i64, i64* %envptr79095, i64 3                ; &envptr79095[3]
  %cont74469 = load i64, i64* %envptr79096, align 8                                  ; load; *envptr79096
  %envptr79097 = inttoptr i64 %env77421 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79098 = getelementptr inbounds i64, i64* %envptr79097, i64 2                ; &envptr79097[2]
  %dQg$_37wind_45stack = load i64, i64* %envptr79098, align 8                        ; load; *envptr79098
  %envptr79099 = inttoptr i64 %env77421 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79100 = getelementptr inbounds i64, i64* %envptr79099, i64 1                ; &envptr79099[1]
  %pu0$tail = load i64, i64* %envptr79100, align 8                                   ; load; *envptr79100
  %_9574482 = call i64 @prim_car(i64 %rvp76307)                                      ; call prim_car
  %rvp76306 = call i64 @prim_cdr(i64 %rvp76307)                                      ; call prim_cdr
  %yTz$f = call i64 @prim_car(i64 %rvp76306)                                         ; call prim_car
  %na76233 = call i64 @prim_cdr(i64 %rvp76306)                                       ; call prim_cdr
  %arg75132 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr79101 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79103 = getelementptr inbounds i64, i64* %cloptr79101, i64 1                  ; &eptr79103[1]
  %eptr79104 = getelementptr inbounds i64, i64* %cloptr79101, i64 2                  ; &eptr79104[2]
  %eptr79105 = getelementptr inbounds i64, i64* %cloptr79101, i64 3                  ; &eptr79105[3]
  store i64 %pu0$tail, i64* %eptr79103                                               ; *eptr79103 = %pu0$tail
  store i64 %dQg$_37wind_45stack, i64* %eptr79104                                    ; *eptr79104 = %dQg$_37wind_45stack
  store i64 %yTz$f, i64* %eptr79105                                                  ; *eptr79105 = %yTz$f
  %eptr79102 = getelementptr inbounds i64, i64* %cloptr79101, i64 0                  ; &cloptr79101[0]
  %f79106 = ptrtoint void(i64,i64)* @lam77417 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79106, i64* %eptr79102                                                 ; store fptr
  %arg75131 = ptrtoint i64* %cloptr79101 to i64                                      ; closure cast; i64* -> i64
  %eUu$_9574211 = call i64 @prim_vector_45set_33(i64 %yTz$f, i64 %arg75132, i64 %arg75131); call prim_vector_45set_33
  %arg75157 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74331 = call i64 @prim_vector_45ref(i64 %yTz$f, i64 %arg75157)                   ; call prim_vector_45ref
  %arg75159 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74332 = call i64 @prim_vector_45ref(i64 %dQg$_37wind_45stack, i64 %arg75159)     ; call prim_vector_45ref
  %cloptr79107 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79109 = getelementptr inbounds i64, i64* %cloptr79107, i64 1                  ; &eptr79109[1]
  %eptr79110 = getelementptr inbounds i64, i64* %cloptr79107, i64 2                  ; &eptr79110[2]
  %eptr79111 = getelementptr inbounds i64, i64* %cloptr79107, i64 3                  ; &eptr79111[3]
  %eptr79112 = getelementptr inbounds i64, i64* %cloptr79107, i64 4                  ; &eptr79112[4]
  store i64 %pu0$tail, i64* %eptr79109                                               ; *eptr79109 = %pu0$tail
  store i64 %dQg$_37wind_45stack, i64* %eptr79110                                    ; *eptr79110 = %dQg$_37wind_45stack
  store i64 %cont74469, i64* %eptr79111                                              ; *eptr79111 = %cont74469
  store i64 %c8Q$new, i64* %eptr79112                                                ; *eptr79112 = %c8Q$new
  %eptr79108 = getelementptr inbounds i64, i64* %cloptr79107, i64 0                  ; &cloptr79107[0]
  %f79113 = ptrtoint void(i64,i64)* @lam77401 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79113, i64* %eptr79108                                                 ; store fptr
  %arg75162 = ptrtoint i64* %cloptr79107 to i64                                      ; closure cast; i64* -> i64
  %rva76305 = add i64 0, 0                                                           ; quoted ()
  %rva76304 = call i64 @prim_cons(i64 %a74332, i64 %rva76305)                        ; call prim_cons
  %rva76303 = call i64 @prim_cons(i64 %arg75162, i64 %rva76304)                      ; call prim_cons
  %cloptr79114 = inttoptr i64 %a74331 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79115 = getelementptr inbounds i64, i64* %cloptr79114, i64 0                 ; &cloptr79114[0]
  %f79117 = load i64, i64* %i0ptr79115, align 8                                      ; load; *i0ptr79115
  %fptr79116 = inttoptr i64 %f79117 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79116(i64 %a74331, i64 %rva76303)                   ; tail call
  ret void
}


define void @lam77417(i64 %env77418, i64 %rvp76256) {
  %envptr79118 = inttoptr i64 %env77418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79119 = getelementptr inbounds i64, i64* %envptr79118, i64 3                ; &envptr79118[3]
  %yTz$f = load i64, i64* %envptr79119, align 8                                      ; load; *envptr79119
  %envptr79120 = inttoptr i64 %env77418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79121 = getelementptr inbounds i64, i64* %envptr79120, i64 2                ; &envptr79120[2]
  %dQg$_37wind_45stack = load i64, i64* %envptr79121, align 8                        ; load; *envptr79121
  %envptr79122 = inttoptr i64 %env77418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79123 = getelementptr inbounds i64, i64* %envptr79122, i64 1                ; &envptr79122[1]
  %pu0$tail = load i64, i64* %envptr79123, align 8                                   ; load; *envptr79123
  %cont74483 = call i64 @prim_car(i64 %rvp76256)                                     ; call prim_car
  %rvp76255 = call i64 @prim_cdr(i64 %rvp76256)                                      ; call prim_cdr
  %dZf$l = call i64 @prim_car(i64 %rvp76255)                                         ; call prim_car
  %na76235 = call i64 @prim_cdr(i64 %rvp76255)                                       ; call prim_cdr
  %a74324 = call i64 @prim_eq_63(i64 %dZf$l, i64 %pu0$tail)                          ; call prim_eq_63
  %a74325 = call i64 @prim_not(i64 %a74324)                                          ; call prim_not
  %cmp79124 = icmp eq i64 %a74325, 15                                                ; false?
  br i1 %cmp79124, label %else79126, label %then79125                                ; if

then79125:
  %a74326 = call i64 @prim_cdr(i64 %dZf$l)                                           ; call prim_cdr
  %arg75139 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74486 = call i64 @prim_vector_45set_33(i64 %dQg$_37wind_45stack, i64 %arg75139, i64 %a74326); call prim_vector_45set_33
  %cloptr79127 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79129 = getelementptr inbounds i64, i64* %cloptr79127, i64 1                  ; &eptr79129[1]
  %eptr79130 = getelementptr inbounds i64, i64* %cloptr79127, i64 2                  ; &eptr79130[2]
  %eptr79131 = getelementptr inbounds i64, i64* %cloptr79127, i64 3                  ; &eptr79131[3]
  store i64 %dZf$l, i64* %eptr79129                                                  ; *eptr79129 = %dZf$l
  store i64 %yTz$f, i64* %eptr79130                                                  ; *eptr79130 = %yTz$f
  store i64 %cont74483, i64* %eptr79131                                              ; *eptr79131 = %cont74483
  %eptr79128 = getelementptr inbounds i64, i64* %cloptr79127, i64 0                  ; &cloptr79127[0]
  %f79132 = ptrtoint void(i64,i64)* @lam77412 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79132, i64* %eptr79128                                                 ; store fptr
  %arg75143 = ptrtoint i64* %cloptr79127 to i64                                      ; closure cast; i64* -> i64
  %arg75142 = add i64 0, 0                                                           ; quoted ()
  %rva76251 = add i64 0, 0                                                           ; quoted ()
  %rva76250 = call i64 @prim_cons(i64 %retprim74486, i64 %rva76251)                  ; call prim_cons
  %rva76249 = call i64 @prim_cons(i64 %arg75142, i64 %rva76250)                      ; call prim_cons
  %cloptr79133 = inttoptr i64 %arg75143 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79134 = getelementptr inbounds i64, i64* %cloptr79133, i64 0                 ; &cloptr79133[0]
  %f79136 = load i64, i64* %i0ptr79134, align 8                                      ; load; *i0ptr79134
  %fptr79135 = inttoptr i64 %f79136 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79135(i64 %arg75143, i64 %rva76249)                 ; tail call
  ret void

else79126:
  %retprim74487 = call i64 @prim_void()                                              ; call prim_void
  %arg75155 = add i64 0, 0                                                           ; quoted ()
  %rva76254 = add i64 0, 0                                                           ; quoted ()
  %rva76253 = call i64 @prim_cons(i64 %retprim74487, i64 %rva76254)                  ; call prim_cons
  %rva76252 = call i64 @prim_cons(i64 %arg75155, i64 %rva76253)                      ; call prim_cons
  %cloptr79137 = inttoptr i64 %cont74483 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79138 = getelementptr inbounds i64, i64* %cloptr79137, i64 0                 ; &cloptr79137[0]
  %f79140 = load i64, i64* %i0ptr79138, align 8                                      ; load; *i0ptr79138
  %fptr79139 = inttoptr i64 %f79140 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79139(i64 %cont74483, i64 %rva76252)                ; tail call
  ret void
}


define void @lam77412(i64 %env77413, i64 %rvp76248) {
  %envptr79141 = inttoptr i64 %env77413 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79142 = getelementptr inbounds i64, i64* %envptr79141, i64 3                ; &envptr79141[3]
  %cont74483 = load i64, i64* %envptr79142, align 8                                  ; load; *envptr79142
  %envptr79143 = inttoptr i64 %env77413 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79144 = getelementptr inbounds i64, i64* %envptr79143, i64 2                ; &envptr79143[2]
  %yTz$f = load i64, i64* %envptr79144, align 8                                      ; load; *envptr79144
  %envptr79145 = inttoptr i64 %env77413 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79146 = getelementptr inbounds i64, i64* %envptr79145, i64 1                ; &envptr79145[1]
  %dZf$l = load i64, i64* %envptr79146, align 8                                      ; load; *envptr79146
  %_9574484 = call i64 @prim_car(i64 %rvp76248)                                      ; call prim_car
  %rvp76247 = call i64 @prim_cdr(i64 %rvp76248)                                      ; call prim_cdr
  %hXr$_9574212 = call i64 @prim_car(i64 %rvp76247)                                  ; call prim_car
  %na76237 = call i64 @prim_cdr(i64 %rvp76247)                                       ; call prim_cdr
  %a74327 = call i64 @prim_car(i64 %dZf$l)                                           ; call prim_car
  %a74328 = call i64 @prim_cdr(i64 %a74327)                                          ; call prim_cdr
  %cloptr79147 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79149 = getelementptr inbounds i64, i64* %cloptr79147, i64 1                  ; &eptr79149[1]
  %eptr79150 = getelementptr inbounds i64, i64* %cloptr79147, i64 2                  ; &eptr79150[2]
  %eptr79151 = getelementptr inbounds i64, i64* %cloptr79147, i64 3                  ; &eptr79151[3]
  store i64 %dZf$l, i64* %eptr79149                                                  ; *eptr79149 = %dZf$l
  store i64 %yTz$f, i64* %eptr79150                                                  ; *eptr79150 = %yTz$f
  store i64 %cont74483, i64* %eptr79151                                              ; *eptr79151 = %cont74483
  %eptr79148 = getelementptr inbounds i64, i64* %cloptr79147, i64 0                  ; &cloptr79147[0]
  %f79152 = ptrtoint void(i64,i64)* @lam77410 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79152, i64* %eptr79148                                                 ; store fptr
  %arg75146 = ptrtoint i64* %cloptr79147 to i64                                      ; closure cast; i64* -> i64
  %rva76246 = add i64 0, 0                                                           ; quoted ()
  %rva76245 = call i64 @prim_cons(i64 %arg75146, i64 %rva76246)                      ; call prim_cons
  %cloptr79153 = inttoptr i64 %a74328 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79154 = getelementptr inbounds i64, i64* %cloptr79153, i64 0                 ; &cloptr79153[0]
  %f79156 = load i64, i64* %i0ptr79154, align 8                                      ; load; *i0ptr79154
  %fptr79155 = inttoptr i64 %f79156 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79155(i64 %a74328, i64 %rva76245)                   ; tail call
  ret void
}


define void @lam77410(i64 %env77411, i64 %rvp76244) {
  %envptr79157 = inttoptr i64 %env77411 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79158 = getelementptr inbounds i64, i64* %envptr79157, i64 3                ; &envptr79157[3]
  %cont74483 = load i64, i64* %envptr79158, align 8                                  ; load; *envptr79158
  %envptr79159 = inttoptr i64 %env77411 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79160 = getelementptr inbounds i64, i64* %envptr79159, i64 2                ; &envptr79159[2]
  %yTz$f = load i64, i64* %envptr79160, align 8                                      ; load; *envptr79160
  %envptr79161 = inttoptr i64 %env77411 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79162 = getelementptr inbounds i64, i64* %envptr79161, i64 1                ; &envptr79161[1]
  %dZf$l = load i64, i64* %envptr79162, align 8                                      ; load; *envptr79162
  %_9574485 = call i64 @prim_car(i64 %rvp76244)                                      ; call prim_car
  %rvp76243 = call i64 @prim_cdr(i64 %rvp76244)                                      ; call prim_cdr
  %PKA$_9574213 = call i64 @prim_car(i64 %rvp76243)                                  ; call prim_car
  %na76239 = call i64 @prim_cdr(i64 %rvp76243)                                       ; call prim_cdr
  %arg75148 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74329 = call i64 @prim_vector_45ref(i64 %yTz$f, i64 %arg75148)                   ; call prim_vector_45ref
  %a74330 = call i64 @prim_cdr(i64 %dZf$l)                                           ; call prim_cdr
  %rva76242 = add i64 0, 0                                                           ; quoted ()
  %rva76241 = call i64 @prim_cons(i64 %a74330, i64 %rva76242)                        ; call prim_cons
  %rva76240 = call i64 @prim_cons(i64 %cont74483, i64 %rva76241)                     ; call prim_cons
  %cloptr79163 = inttoptr i64 %a74329 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79164 = getelementptr inbounds i64, i64* %cloptr79163, i64 0                 ; &cloptr79163[0]
  %f79166 = load i64, i64* %i0ptr79164, align 8                                      ; load; *i0ptr79164
  %fptr79165 = inttoptr i64 %f79166 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79165(i64 %a74329, i64 %rva76240)                   ; tail call
  ret void
}


define void @lam77401(i64 %env77402, i64 %rvp76302) {
  %envptr79167 = inttoptr i64 %env77402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79168 = getelementptr inbounds i64, i64* %envptr79167, i64 4                ; &envptr79167[4]
  %c8Q$new = load i64, i64* %envptr79168, align 8                                    ; load; *envptr79168
  %envptr79169 = inttoptr i64 %env77402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79170 = getelementptr inbounds i64, i64* %envptr79169, i64 3                ; &envptr79169[3]
  %cont74469 = load i64, i64* %envptr79170, align 8                                  ; load; *envptr79170
  %envptr79171 = inttoptr i64 %env77402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79172 = getelementptr inbounds i64, i64* %envptr79171, i64 2                ; &envptr79171[2]
  %dQg$_37wind_45stack = load i64, i64* %envptr79172, align 8                        ; load; *envptr79172
  %envptr79173 = inttoptr i64 %env77402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79174 = getelementptr inbounds i64, i64* %envptr79173, i64 1                ; &envptr79173[1]
  %pu0$tail = load i64, i64* %envptr79174, align 8                                   ; load; *envptr79174
  %_9574471 = call i64 @prim_car(i64 %rvp76302)                                      ; call prim_car
  %rvp76301 = call i64 @prim_cdr(i64 %rvp76302)                                      ; call prim_cdr
  %ydq$_9574210 = call i64 @prim_car(i64 %rvp76301)                                  ; call prim_car
  %na76258 = call i64 @prim_cdr(i64 %rvp76301)                                       ; call prim_cdr
  %cloptr79175 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79176 = getelementptr inbounds i64, i64* %cloptr79175, i64 0                  ; &cloptr79175[0]
  %f79177 = ptrtoint void(i64,i64)* @lam77399 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79177, i64* %eptr79176                                                 ; store fptr
  %arg75165 = ptrtoint i64* %cloptr79175 to i64                                      ; closure cast; i64* -> i64
  %cloptr79178 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79180 = getelementptr inbounds i64, i64* %cloptr79178, i64 1                  ; &eptr79180[1]
  %eptr79181 = getelementptr inbounds i64, i64* %cloptr79178, i64 2                  ; &eptr79181[2]
  %eptr79182 = getelementptr inbounds i64, i64* %cloptr79178, i64 3                  ; &eptr79182[3]
  %eptr79183 = getelementptr inbounds i64, i64* %cloptr79178, i64 4                  ; &eptr79183[4]
  store i64 %pu0$tail, i64* %eptr79180                                               ; *eptr79180 = %pu0$tail
  store i64 %dQg$_37wind_45stack, i64* %eptr79181                                    ; *eptr79181 = %dQg$_37wind_45stack
  store i64 %cont74469, i64* %eptr79182                                              ; *eptr79182 = %cont74469
  store i64 %c8Q$new, i64* %eptr79183                                                ; *eptr79183 = %c8Q$new
  %eptr79179 = getelementptr inbounds i64, i64* %cloptr79178, i64 0                  ; &cloptr79178[0]
  %f79184 = ptrtoint void(i64,i64)* @lam77395 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79184, i64* %eptr79179                                                 ; store fptr
  %arg75164 = ptrtoint i64* %cloptr79178 to i64                                      ; closure cast; i64* -> i64
  %rva76300 = add i64 0, 0                                                           ; quoted ()
  %rva76299 = call i64 @prim_cons(i64 %arg75164, i64 %rva76300)                      ; call prim_cons
  %cloptr79185 = inttoptr i64 %arg75165 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79186 = getelementptr inbounds i64, i64* %cloptr79185, i64 0                 ; &cloptr79185[0]
  %f79188 = load i64, i64* %i0ptr79186, align 8                                      ; load; *i0ptr79186
  %fptr79187 = inttoptr i64 %f79188 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79187(i64 %arg75165, i64 %rva76299)                 ; tail call
  ret void
}


define void @lam77399(i64 %env77400, i64 %F4z$lst74481) {
  %cont74480 = call i64 @prim_car(i64 %F4z$lst74481)                                 ; call prim_car
  %F4z$lst = call i64 @prim_cdr(i64 %F4z$lst74481)                                   ; call prim_cdr
  %arg75169 = add i64 0, 0                                                           ; quoted ()
  %rva76261 = add i64 0, 0                                                           ; quoted ()
  %rva76260 = call i64 @prim_cons(i64 %F4z$lst, i64 %rva76261)                       ; call prim_cons
  %rva76259 = call i64 @prim_cons(i64 %arg75169, i64 %rva76260)                      ; call prim_cons
  %cloptr79189 = inttoptr i64 %cont74480 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79190 = getelementptr inbounds i64, i64* %cloptr79189, i64 0                 ; &cloptr79189[0]
  %f79192 = load i64, i64* %i0ptr79190, align 8                                      ; load; *i0ptr79190
  %fptr79191 = inttoptr i64 %f79192 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79191(i64 %cont74480, i64 %rva76259)                ; tail call
  ret void
}


define void @lam77395(i64 %env77396, i64 %rvp76298) {
  %envptr79193 = inttoptr i64 %env77396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79194 = getelementptr inbounds i64, i64* %envptr79193, i64 4                ; &envptr79193[4]
  %c8Q$new = load i64, i64* %envptr79194, align 8                                    ; load; *envptr79194
  %envptr79195 = inttoptr i64 %env77396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79196 = getelementptr inbounds i64, i64* %envptr79195, i64 3                ; &envptr79195[3]
  %cont74469 = load i64, i64* %envptr79196, align 8                                  ; load; *envptr79196
  %envptr79197 = inttoptr i64 %env77396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79198 = getelementptr inbounds i64, i64* %envptr79197, i64 2                ; &envptr79197[2]
  %dQg$_37wind_45stack = load i64, i64* %envptr79198, align 8                        ; load; *envptr79198
  %envptr79199 = inttoptr i64 %env77396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79200 = getelementptr inbounds i64, i64* %envptr79199, i64 1                ; &envptr79199[1]
  %pu0$tail = load i64, i64* %envptr79200, align 8                                   ; load; *envptr79200
  %_9574478 = call i64 @prim_car(i64 %rvp76298)                                      ; call prim_car
  %rvp76297 = call i64 @prim_cdr(i64 %rvp76298)                                      ; call prim_cdr
  %a74333 = call i64 @prim_car(i64 %rvp76297)                                        ; call prim_car
  %na76263 = call i64 @prim_cdr(i64 %rvp76297)                                       ; call prim_cdr
  %arg75172 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74479 = call i64 @prim_make_45vector(i64 %arg75172, i64 %a74333)           ; call prim_make_45vector
  %cloptr79201 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79203 = getelementptr inbounds i64, i64* %cloptr79201, i64 1                  ; &eptr79203[1]
  %eptr79204 = getelementptr inbounds i64, i64* %cloptr79201, i64 2                  ; &eptr79204[2]
  %eptr79205 = getelementptr inbounds i64, i64* %cloptr79201, i64 3                  ; &eptr79205[3]
  %eptr79206 = getelementptr inbounds i64, i64* %cloptr79201, i64 4                  ; &eptr79206[4]
  store i64 %pu0$tail, i64* %eptr79203                                               ; *eptr79203 = %pu0$tail
  store i64 %dQg$_37wind_45stack, i64* %eptr79204                                    ; *eptr79204 = %dQg$_37wind_45stack
  store i64 %cont74469, i64* %eptr79205                                              ; *eptr79205 = %cont74469
  store i64 %c8Q$new, i64* %eptr79206                                                ; *eptr79206 = %c8Q$new
  %eptr79202 = getelementptr inbounds i64, i64* %cloptr79201, i64 0                  ; &cloptr79201[0]
  %f79207 = ptrtoint void(i64,i64)* @lam77392 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79207, i64* %eptr79202                                                 ; store fptr
  %arg75175 = ptrtoint i64* %cloptr79201 to i64                                      ; closure cast; i64* -> i64
  %arg75174 = add i64 0, 0                                                           ; quoted ()
  %rva76296 = add i64 0, 0                                                           ; quoted ()
  %rva76295 = call i64 @prim_cons(i64 %retprim74479, i64 %rva76296)                  ; call prim_cons
  %rva76294 = call i64 @prim_cons(i64 %arg75174, i64 %rva76295)                      ; call prim_cons
  %cloptr79208 = inttoptr i64 %arg75175 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79209 = getelementptr inbounds i64, i64* %cloptr79208, i64 0                 ; &cloptr79208[0]
  %f79211 = load i64, i64* %i0ptr79209, align 8                                      ; load; *i0ptr79209
  %fptr79210 = inttoptr i64 %f79211 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79210(i64 %arg75175, i64 %rva76294)                 ; tail call
  ret void
}


define void @lam77392(i64 %env77393, i64 %rvp76293) {
  %envptr79212 = inttoptr i64 %env77393 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79213 = getelementptr inbounds i64, i64* %envptr79212, i64 4                ; &envptr79212[4]
  %c8Q$new = load i64, i64* %envptr79213, align 8                                    ; load; *envptr79213
  %envptr79214 = inttoptr i64 %env77393 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79215 = getelementptr inbounds i64, i64* %envptr79214, i64 3                ; &envptr79214[3]
  %cont74469 = load i64, i64* %envptr79215, align 8                                  ; load; *envptr79215
  %envptr79216 = inttoptr i64 %env77393 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79217 = getelementptr inbounds i64, i64* %envptr79216, i64 2                ; &envptr79216[2]
  %dQg$_37wind_45stack = load i64, i64* %envptr79217, align 8                        ; load; *envptr79217
  %envptr79218 = inttoptr i64 %env77393 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79219 = getelementptr inbounds i64, i64* %envptr79218, i64 1                ; &envptr79218[1]
  %pu0$tail = load i64, i64* %envptr79219, align 8                                   ; load; *envptr79219
  %_9574472 = call i64 @prim_car(i64 %rvp76293)                                      ; call prim_car
  %rvp76292 = call i64 @prim_cdr(i64 %rvp76293)                                      ; call prim_cdr
  %bzV$f = call i64 @prim_car(i64 %rvp76292)                                         ; call prim_car
  %na76265 = call i64 @prim_cdr(i64 %rvp76292)                                       ; call prim_cdr
  %arg75177 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr79220 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79222 = getelementptr inbounds i64, i64* %cloptr79220, i64 1                  ; &eptr79222[1]
  %eptr79223 = getelementptr inbounds i64, i64* %cloptr79220, i64 2                  ; &eptr79223[2]
  %eptr79224 = getelementptr inbounds i64, i64* %cloptr79220, i64 3                  ; &eptr79224[3]
  store i64 %pu0$tail, i64* %eptr79222                                               ; *eptr79222 = %pu0$tail
  store i64 %dQg$_37wind_45stack, i64* %eptr79223                                    ; *eptr79223 = %dQg$_37wind_45stack
  store i64 %bzV$f, i64* %eptr79224                                                  ; *eptr79224 = %bzV$f
  %eptr79221 = getelementptr inbounds i64, i64* %cloptr79220, i64 0                  ; &cloptr79220[0]
  %f79225 = ptrtoint void(i64,i64)* @lam77389 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79225, i64* %eptr79221                                                 ; store fptr
  %arg75176 = ptrtoint i64* %cloptr79220 to i64                                      ; closure cast; i64* -> i64
  %oIM$_9574214 = call i64 @prim_vector_45set_33(i64 %bzV$f, i64 %arg75177, i64 %arg75176); call prim_vector_45set_33
  %arg75201 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74340 = call i64 @prim_vector_45ref(i64 %bzV$f, i64 %arg75201)                   ; call prim_vector_45ref
  %rva76291 = add i64 0, 0                                                           ; quoted ()
  %rva76290 = call i64 @prim_cons(i64 %c8Q$new, i64 %rva76291)                       ; call prim_cons
  %rva76289 = call i64 @prim_cons(i64 %cont74469, i64 %rva76290)                     ; call prim_cons
  %cloptr79226 = inttoptr i64 %a74340 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79227 = getelementptr inbounds i64, i64* %cloptr79226, i64 0                 ; &cloptr79226[0]
  %f79229 = load i64, i64* %i0ptr79227, align 8                                      ; load; *i0ptr79227
  %fptr79228 = inttoptr i64 %f79229 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79228(i64 %a74340, i64 %rva76289)                   ; tail call
  ret void
}


define void @lam77389(i64 %env77390, i64 %rvp76288) {
  %envptr79230 = inttoptr i64 %env77390 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79231 = getelementptr inbounds i64, i64* %envptr79230, i64 3                ; &envptr79230[3]
  %bzV$f = load i64, i64* %envptr79231, align 8                                      ; load; *envptr79231
  %envptr79232 = inttoptr i64 %env77390 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79233 = getelementptr inbounds i64, i64* %envptr79232, i64 2                ; &envptr79232[2]
  %dQg$_37wind_45stack = load i64, i64* %envptr79233, align 8                        ; load; *envptr79233
  %envptr79234 = inttoptr i64 %env77390 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79235 = getelementptr inbounds i64, i64* %envptr79234, i64 1                ; &envptr79234[1]
  %pu0$tail = load i64, i64* %envptr79235, align 8                                   ; load; *envptr79235
  %cont74473 = call i64 @prim_car(i64 %rvp76288)                                     ; call prim_car
  %rvp76287 = call i64 @prim_cdr(i64 %rvp76288)                                      ; call prim_cdr
  %JGK$l = call i64 @prim_car(i64 %rvp76287)                                         ; call prim_car
  %na76267 = call i64 @prim_cdr(i64 %rvp76287)                                       ; call prim_cdr
  %a74334 = call i64 @prim_eq_63(i64 %JGK$l, i64 %pu0$tail)                          ; call prim_eq_63
  %a74335 = call i64 @prim_not(i64 %a74334)                                          ; call prim_not
  %cmp79236 = icmp eq i64 %a74335, 15                                                ; false?
  br i1 %cmp79236, label %else79238, label %then79237                                ; if

then79237:
  %arg75182 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74336 = call i64 @prim_vector_45ref(i64 %bzV$f, i64 %arg75182)                   ; call prim_vector_45ref
  %a74337 = call i64 @prim_cdr(i64 %JGK$l)                                           ; call prim_cdr
  %cloptr79239 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79241 = getelementptr inbounds i64, i64* %cloptr79239, i64 1                  ; &eptr79241[1]
  %eptr79242 = getelementptr inbounds i64, i64* %cloptr79239, i64 2                  ; &eptr79242[2]
  %eptr79243 = getelementptr inbounds i64, i64* %cloptr79239, i64 3                  ; &eptr79243[3]
  store i64 %dQg$_37wind_45stack, i64* %eptr79241                                    ; *eptr79241 = %dQg$_37wind_45stack
  store i64 %JGK$l, i64* %eptr79242                                                  ; *eptr79242 = %JGK$l
  store i64 %cont74473, i64* %eptr79243                                              ; *eptr79243 = %cont74473
  %eptr79240 = getelementptr inbounds i64, i64* %cloptr79239, i64 0                  ; &cloptr79239[0]
  %f79244 = ptrtoint void(i64,i64)* @lam77384 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79244, i64* %eptr79240                                                 ; store fptr
  %arg75186 = ptrtoint i64* %cloptr79239 to i64                                      ; closure cast; i64* -> i64
  %rva76283 = add i64 0, 0                                                           ; quoted ()
  %rva76282 = call i64 @prim_cons(i64 %a74337, i64 %rva76283)                        ; call prim_cons
  %rva76281 = call i64 @prim_cons(i64 %arg75186, i64 %rva76282)                      ; call prim_cons
  %cloptr79245 = inttoptr i64 %a74336 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79246 = getelementptr inbounds i64, i64* %cloptr79245, i64 0                 ; &cloptr79245[0]
  %f79248 = load i64, i64* %i0ptr79246, align 8                                      ; load; *i0ptr79246
  %fptr79247 = inttoptr i64 %f79248 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79247(i64 %a74336, i64 %rva76281)                   ; tail call
  ret void

else79238:
  %retprim74477 = call i64 @prim_void()                                              ; call prim_void
  %arg75199 = add i64 0, 0                                                           ; quoted ()
  %rva76286 = add i64 0, 0                                                           ; quoted ()
  %rva76285 = call i64 @prim_cons(i64 %retprim74477, i64 %rva76286)                  ; call prim_cons
  %rva76284 = call i64 @prim_cons(i64 %arg75199, i64 %rva76285)                      ; call prim_cons
  %cloptr79249 = inttoptr i64 %cont74473 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79250 = getelementptr inbounds i64, i64* %cloptr79249, i64 0                 ; &cloptr79249[0]
  %f79252 = load i64, i64* %i0ptr79250, align 8                                      ; load; *i0ptr79250
  %fptr79251 = inttoptr i64 %f79252 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79251(i64 %cont74473, i64 %rva76284)                ; tail call
  ret void
}


define void @lam77384(i64 %env77385, i64 %rvp76280) {
  %envptr79253 = inttoptr i64 %env77385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79254 = getelementptr inbounds i64, i64* %envptr79253, i64 3                ; &envptr79253[3]
  %cont74473 = load i64, i64* %envptr79254, align 8                                  ; load; *envptr79254
  %envptr79255 = inttoptr i64 %env77385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79256 = getelementptr inbounds i64, i64* %envptr79255, i64 2                ; &envptr79255[2]
  %JGK$l = load i64, i64* %envptr79256, align 8                                      ; load; *envptr79256
  %envptr79257 = inttoptr i64 %env77385 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79258 = getelementptr inbounds i64, i64* %envptr79257, i64 1                ; &envptr79257[1]
  %dQg$_37wind_45stack = load i64, i64* %envptr79258, align 8                        ; load; *envptr79258
  %_9574474 = call i64 @prim_car(i64 %rvp76280)                                      ; call prim_car
  %rvp76279 = call i64 @prim_cdr(i64 %rvp76280)                                      ; call prim_cdr
  %Nbt$_9574215 = call i64 @prim_car(i64 %rvp76279)                                  ; call prim_car
  %na76269 = call i64 @prim_cdr(i64 %rvp76279)                                       ; call prim_cdr
  %a74338 = call i64 @prim_car(i64 %JGK$l)                                           ; call prim_car
  %a74339 = call i64 @prim_car(i64 %a74338)                                          ; call prim_car
  %cloptr79259 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79261 = getelementptr inbounds i64, i64* %cloptr79259, i64 1                  ; &eptr79261[1]
  %eptr79262 = getelementptr inbounds i64, i64* %cloptr79259, i64 2                  ; &eptr79262[2]
  %eptr79263 = getelementptr inbounds i64, i64* %cloptr79259, i64 3                  ; &eptr79263[3]
  store i64 %dQg$_37wind_45stack, i64* %eptr79261                                    ; *eptr79261 = %dQg$_37wind_45stack
  store i64 %JGK$l, i64* %eptr79262                                                  ; *eptr79262 = %JGK$l
  store i64 %cont74473, i64* %eptr79263                                              ; *eptr79263 = %cont74473
  %eptr79260 = getelementptr inbounds i64, i64* %cloptr79259, i64 0                  ; &cloptr79259[0]
  %f79264 = ptrtoint void(i64,i64)* @lam77382 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79264, i64* %eptr79260                                                 ; store fptr
  %arg75190 = ptrtoint i64* %cloptr79259 to i64                                      ; closure cast; i64* -> i64
  %rva76278 = add i64 0, 0                                                           ; quoted ()
  %rva76277 = call i64 @prim_cons(i64 %arg75190, i64 %rva76278)                      ; call prim_cons
  %cloptr79265 = inttoptr i64 %a74339 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79266 = getelementptr inbounds i64, i64* %cloptr79265, i64 0                 ; &cloptr79265[0]
  %f79268 = load i64, i64* %i0ptr79266, align 8                                      ; load; *i0ptr79266
  %fptr79267 = inttoptr i64 %f79268 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79267(i64 %a74339, i64 %rva76277)                   ; tail call
  ret void
}


define void @lam77382(i64 %env77383, i64 %rvp76276) {
  %envptr79269 = inttoptr i64 %env77383 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79270 = getelementptr inbounds i64, i64* %envptr79269, i64 3                ; &envptr79269[3]
  %cont74473 = load i64, i64* %envptr79270, align 8                                  ; load; *envptr79270
  %envptr79271 = inttoptr i64 %env77383 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79272 = getelementptr inbounds i64, i64* %envptr79271, i64 2                ; &envptr79271[2]
  %JGK$l = load i64, i64* %envptr79272, align 8                                      ; load; *envptr79272
  %envptr79273 = inttoptr i64 %env77383 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79274 = getelementptr inbounds i64, i64* %envptr79273, i64 1                ; &envptr79273[1]
  %dQg$_37wind_45stack = load i64, i64* %envptr79274, align 8                        ; load; *envptr79274
  %_9574475 = call i64 @prim_car(i64 %rvp76276)                                      ; call prim_car
  %rvp76275 = call i64 @prim_cdr(i64 %rvp76276)                                      ; call prim_cdr
  %cZE$_9574216 = call i64 @prim_car(i64 %rvp76275)                                  ; call prim_car
  %na76271 = call i64 @prim_cdr(i64 %rvp76275)                                       ; call prim_cdr
  %arg75193 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim74476 = call i64 @prim_vector_45set_33(i64 %dQg$_37wind_45stack, i64 %arg75193, i64 %JGK$l); call prim_vector_45set_33
  %arg75196 = add i64 0, 0                                                           ; quoted ()
  %rva76274 = add i64 0, 0                                                           ; quoted ()
  %rva76273 = call i64 @prim_cons(i64 %retprim74476, i64 %rva76274)                  ; call prim_cons
  %rva76272 = call i64 @prim_cons(i64 %arg75196, i64 %rva76273)                      ; call prim_cons
  %cloptr79275 = inttoptr i64 %cont74473 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79276 = getelementptr inbounds i64, i64* %cloptr79275, i64 0                 ; &cloptr79275[0]
  %f79278 = load i64, i64* %i0ptr79276, align 8                                      ; load; *i0ptr79276
  %fptr79277 = inttoptr i64 %f79278 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79277(i64 %cont74473, i64 %rva76272)                ; tail call
  ret void
}


define void @lam77365(i64 %env77366, i64 %Ujv$lst74539) {
  %cont74538 = call i64 @prim_car(i64 %Ujv$lst74539)                                 ; call prim_car
  %Ujv$lst = call i64 @prim_cdr(i64 %Ujv$lst74539)                                   ; call prim_cdr
  %arg75211 = add i64 0, 0                                                           ; quoted ()
  %rva76325 = add i64 0, 0                                                           ; quoted ()
  %rva76324 = call i64 @prim_cons(i64 %Ujv$lst, i64 %rva76325)                       ; call prim_cons
  %rva76323 = call i64 @prim_cons(i64 %arg75211, i64 %rva76324)                      ; call prim_cons
  %cloptr79279 = inttoptr i64 %cont74538 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79280 = getelementptr inbounds i64, i64* %cloptr79279, i64 0                 ; &cloptr79279[0]
  %f79282 = load i64, i64* %i0ptr79280, align 8                                      ; load; *i0ptr79280
  %fptr79281 = inttoptr i64 %f79282 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79281(i64 %cont74538, i64 %rva76323)                ; tail call
  ret void
}


define void @lam77361(i64 %env77362, i64 %rvp76570) {
  %envptr79283 = inttoptr i64 %env77362 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79284 = getelementptr inbounds i64, i64* %envptr79283, i64 1                ; &envptr79283[1]
  %M2K$_37append = load i64, i64* %envptr79284, align 8                              ; load; *envptr79284
  %_9574536 = call i64 @prim_car(i64 %rvp76570)                                      ; call prim_car
  %rvp76569 = call i64 @prim_cdr(i64 %rvp76570)                                      ; call prim_cdr
  %a74341 = call i64 @prim_car(i64 %rvp76569)                                        ; call prim_car
  %na76327 = call i64 @prim_cdr(i64 %rvp76569)                                       ; call prim_cdr
  %arg75214 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74537 = call i64 @prim_make_45vector(i64 %arg75214, i64 %a74341)           ; call prim_make_45vector
  %cloptr79285 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr79287 = getelementptr inbounds i64, i64* %cloptr79285, i64 1                  ; &eptr79287[1]
  store i64 %M2K$_37append, i64* %eptr79287                                          ; *eptr79287 = %M2K$_37append
  %eptr79286 = getelementptr inbounds i64, i64* %cloptr79285, i64 0                  ; &cloptr79285[0]
  %f79288 = ptrtoint void(i64,i64)* @lam77358 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79288, i64* %eptr79286                                                 ; store fptr
  %arg75217 = ptrtoint i64* %cloptr79285 to i64                                      ; closure cast; i64* -> i64
  %arg75216 = add i64 0, 0                                                           ; quoted ()
  %rva76568 = add i64 0, 0                                                           ; quoted ()
  %rva76567 = call i64 @prim_cons(i64 %retprim74537, i64 %rva76568)                  ; call prim_cons
  %rva76566 = call i64 @prim_cons(i64 %arg75216, i64 %rva76567)                      ; call prim_cons
  %cloptr79289 = inttoptr i64 %arg75217 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79290 = getelementptr inbounds i64, i64* %cloptr79289, i64 0                 ; &cloptr79289[0]
  %f79292 = load i64, i64* %i0ptr79290, align 8                                      ; load; *i0ptr79290
  %fptr79291 = inttoptr i64 %f79292 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79291(i64 %arg75217, i64 %rva76566)                 ; tail call
  ret void
}


define void @lam77358(i64 %env77359, i64 %rvp76565) {
  %envptr79293 = inttoptr i64 %env77359 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79294 = getelementptr inbounds i64, i64* %envptr79293, i64 1                ; &envptr79293[1]
  %M2K$_37append = load i64, i64* %envptr79294, align 8                              ; load; *envptr79294
  %_9574492 = call i64 @prim_car(i64 %rvp76565)                                      ; call prim_car
  %rvp76564 = call i64 @prim_cdr(i64 %rvp76565)                                      ; call prim_cdr
  %J2c$nqueens = call i64 @prim_car(i64 %rvp76564)                                   ; call prim_car
  %na76329 = call i64 @prim_cdr(i64 %rvp76564)                                       ; call prim_cdr
  %arg75219 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr79295 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr79297 = getelementptr inbounds i64, i64* %cloptr79295, i64 1                  ; &eptr79297[1]
  store i64 %M2K$_37append, i64* %eptr79297                                          ; *eptr79297 = %M2K$_37append
  %eptr79296 = getelementptr inbounds i64, i64* %cloptr79295, i64 0                  ; &cloptr79295[0]
  %f79298 = ptrtoint void(i64,i64)* @lam77355 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79298, i64* %eptr79296                                                 ; store fptr
  %arg75218 = ptrtoint i64* %cloptr79295 to i64                                      ; closure cast; i64* -> i64
  %T6t$_9574217 = call i64 @prim_vector_45set_33(i64 %J2c$nqueens, i64 %arg75219, i64 %arg75218); call prim_vector_45set_33
  %arg75440 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74386 = call i64 @prim_vector_45ref(i64 %J2c$nqueens, i64 %arg75440)             ; call prim_vector_45ref
  %cloptr79299 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79300 = getelementptr inbounds i64, i64* %cloptr79299, i64 0                  ; &cloptr79299[0]
  %f79301 = ptrtoint void(i64,i64)* @lam77203 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79301, i64* %eptr79300                                                 ; store fptr
  %arg75443 = ptrtoint i64* %cloptr79299 to i64                                      ; closure cast; i64* -> i64
  %arg75442 = call i64 @const_init_int(i64 8)                                        ; quoted int
  %rva76563 = add i64 0, 0                                                           ; quoted ()
  %rva76562 = call i64 @prim_cons(i64 %arg75442, i64 %rva76563)                      ; call prim_cons
  %rva76561 = call i64 @prim_cons(i64 %arg75443, i64 %rva76562)                      ; call prim_cons
  %cloptr79302 = inttoptr i64 %a74386 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79303 = getelementptr inbounds i64, i64* %cloptr79302, i64 0                 ; &cloptr79302[0]
  %f79305 = load i64, i64* %i0ptr79303, align 8                                      ; load; *i0ptr79303
  %fptr79304 = inttoptr i64 %f79305 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79304(i64 %a74386, i64 %rva76561)                   ; tail call
  ret void
}


define void @lam77355(i64 %env77356, i64 %rvp76554) {
  %envptr79306 = inttoptr i64 %env77356 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79307 = getelementptr inbounds i64, i64* %envptr79306, i64 1                ; &envptr79306[1]
  %M2K$_37append = load i64, i64* %envptr79307, align 8                              ; load; *envptr79307
  %cont74493 = call i64 @prim_car(i64 %rvp76554)                                     ; call prim_car
  %rvp76553 = call i64 @prim_cdr(i64 %rvp76554)                                      ; call prim_cdr
  %Lbr$n = call i64 @prim_car(i64 %rvp76553)                                         ; call prim_car
  %na76331 = call i64 @prim_cdr(i64 %rvp76553)                                       ; call prim_cdr
  %cloptr79308 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79309 = getelementptr inbounds i64, i64* %cloptr79308, i64 0                  ; &cloptr79308[0]
  %f79310 = ptrtoint void(i64,i64)* @lam77353 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79310, i64* %eptr79309                                                 ; store fptr
  %arg75222 = ptrtoint i64* %cloptr79308 to i64                                      ; closure cast; i64* -> i64
  %cloptr79311 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79313 = getelementptr inbounds i64, i64* %cloptr79311, i64 1                  ; &eptr79313[1]
  %eptr79314 = getelementptr inbounds i64, i64* %cloptr79311, i64 2                  ; &eptr79314[2]
  %eptr79315 = getelementptr inbounds i64, i64* %cloptr79311, i64 3                  ; &eptr79315[3]
  store i64 %cont74493, i64* %eptr79313                                              ; *eptr79313 = %cont74493
  store i64 %Lbr$n, i64* %eptr79314                                                  ; *eptr79314 = %Lbr$n
  store i64 %M2K$_37append, i64* %eptr79315                                          ; *eptr79315 = %M2K$_37append
  %eptr79312 = getelementptr inbounds i64, i64* %cloptr79311, i64 0                  ; &cloptr79311[0]
  %f79316 = ptrtoint void(i64,i64)* @lam77349 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79316, i64* %eptr79312                                                 ; store fptr
  %arg75221 = ptrtoint i64* %cloptr79311 to i64                                      ; closure cast; i64* -> i64
  %rva76552 = add i64 0, 0                                                           ; quoted ()
  %rva76551 = call i64 @prim_cons(i64 %arg75221, i64 %rva76552)                      ; call prim_cons
  %cloptr79317 = inttoptr i64 %arg75222 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79318 = getelementptr inbounds i64, i64* %cloptr79317, i64 0                 ; &cloptr79317[0]
  %f79320 = load i64, i64* %i0ptr79318, align 8                                      ; load; *i0ptr79318
  %fptr79319 = inttoptr i64 %f79320 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79319(i64 %arg75222, i64 %rva76551)                 ; tail call
  ret void
}


define void @lam77353(i64 %env77354, i64 %N4k$lst74535) {
  %cont74534 = call i64 @prim_car(i64 %N4k$lst74535)                                 ; call prim_car
  %N4k$lst = call i64 @prim_cdr(i64 %N4k$lst74535)                                   ; call prim_cdr
  %arg75226 = add i64 0, 0                                                           ; quoted ()
  %rva76334 = add i64 0, 0                                                           ; quoted ()
  %rva76333 = call i64 @prim_cons(i64 %N4k$lst, i64 %rva76334)                       ; call prim_cons
  %rva76332 = call i64 @prim_cons(i64 %arg75226, i64 %rva76333)                      ; call prim_cons
  %cloptr79321 = inttoptr i64 %cont74534 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79322 = getelementptr inbounds i64, i64* %cloptr79321, i64 0                 ; &cloptr79321[0]
  %f79324 = load i64, i64* %i0ptr79322, align 8                                      ; load; *i0ptr79322
  %fptr79323 = inttoptr i64 %f79324 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79323(i64 %cont74534, i64 %rva76332)                ; tail call
  ret void
}


define void @lam77349(i64 %env77350, i64 %rvp76550) {
  %envptr79325 = inttoptr i64 %env77350 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79326 = getelementptr inbounds i64, i64* %envptr79325, i64 3                ; &envptr79325[3]
  %M2K$_37append = load i64, i64* %envptr79326, align 8                              ; load; *envptr79326
  %envptr79327 = inttoptr i64 %env77350 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79328 = getelementptr inbounds i64, i64* %envptr79327, i64 2                ; &envptr79327[2]
  %Lbr$n = load i64, i64* %envptr79328, align 8                                      ; load; *envptr79328
  %envptr79329 = inttoptr i64 %env77350 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79330 = getelementptr inbounds i64, i64* %envptr79329, i64 1                ; &envptr79329[1]
  %cont74493 = load i64, i64* %envptr79330, align 8                                  ; load; *envptr79330
  %_9574532 = call i64 @prim_car(i64 %rvp76550)                                      ; call prim_car
  %rvp76549 = call i64 @prim_cdr(i64 %rvp76550)                                      ; call prim_cdr
  %a74342 = call i64 @prim_car(i64 %rvp76549)                                        ; call prim_car
  %na76336 = call i64 @prim_cdr(i64 %rvp76549)                                       ; call prim_cdr
  %arg75229 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74533 = call i64 @prim_make_45vector(i64 %arg75229, i64 %a74342)           ; call prim_make_45vector
  %cloptr79331 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79333 = getelementptr inbounds i64, i64* %cloptr79331, i64 1                  ; &eptr79333[1]
  %eptr79334 = getelementptr inbounds i64, i64* %cloptr79331, i64 2                  ; &eptr79334[2]
  %eptr79335 = getelementptr inbounds i64, i64* %cloptr79331, i64 3                  ; &eptr79335[3]
  store i64 %cont74493, i64* %eptr79333                                              ; *eptr79333 = %cont74493
  store i64 %Lbr$n, i64* %eptr79334                                                  ; *eptr79334 = %Lbr$n
  store i64 %M2K$_37append, i64* %eptr79335                                          ; *eptr79335 = %M2K$_37append
  %eptr79332 = getelementptr inbounds i64, i64* %cloptr79331, i64 0                  ; &cloptr79331[0]
  %f79336 = ptrtoint void(i64,i64)* @lam77346 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79336, i64* %eptr79332                                                 ; store fptr
  %arg75232 = ptrtoint i64* %cloptr79331 to i64                                      ; closure cast; i64* -> i64
  %arg75231 = add i64 0, 0                                                           ; quoted ()
  %rva76548 = add i64 0, 0                                                           ; quoted ()
  %rva76547 = call i64 @prim_cons(i64 %retprim74533, i64 %rva76548)                  ; call prim_cons
  %rva76546 = call i64 @prim_cons(i64 %arg75231, i64 %rva76547)                      ; call prim_cons
  %cloptr79337 = inttoptr i64 %arg75232 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79338 = getelementptr inbounds i64, i64* %cloptr79337, i64 0                 ; &cloptr79337[0]
  %f79340 = load i64, i64* %i0ptr79338, align 8                                      ; load; *i0ptr79338
  %fptr79339 = inttoptr i64 %f79340 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79339(i64 %arg75232, i64 %rva76546)                 ; tail call
  ret void
}


define void @lam77346(i64 %env77347, i64 %rvp76545) {
  %envptr79341 = inttoptr i64 %env77347 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79342 = getelementptr inbounds i64, i64* %envptr79341, i64 3                ; &envptr79341[3]
  %M2K$_37append = load i64, i64* %envptr79342, align 8                              ; load; *envptr79342
  %envptr79343 = inttoptr i64 %env77347 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79344 = getelementptr inbounds i64, i64* %envptr79343, i64 2                ; &envptr79343[2]
  %Lbr$n = load i64, i64* %envptr79344, align 8                                      ; load; *envptr79344
  %envptr79345 = inttoptr i64 %env77347 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79346 = getelementptr inbounds i64, i64* %envptr79345, i64 1                ; &envptr79345[1]
  %cont74493 = load i64, i64* %envptr79346, align 8                                  ; load; *envptr79346
  %_9574494 = call i64 @prim_car(i64 %rvp76545)                                      ; call prim_car
  %rvp76544 = call i64 @prim_cdr(i64 %rvp76545)                                      ; call prim_cdr
  %vHh$one_45to = call i64 @prim_car(i64 %rvp76544)                                  ; call prim_car
  %na76338 = call i64 @prim_cdr(i64 %rvp76544)                                       ; call prim_cdr
  %cloptr79347 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79348 = getelementptr inbounds i64, i64* %cloptr79347, i64 0                  ; &cloptr79347[0]
  %f79349 = ptrtoint void(i64,i64)* @lam77344 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79349, i64* %eptr79348                                                 ; store fptr
  %arg75234 = ptrtoint i64* %cloptr79347 to i64                                      ; closure cast; i64* -> i64
  %cloptr79350 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79352 = getelementptr inbounds i64, i64* %cloptr79350, i64 1                  ; &eptr79352[1]
  %eptr79353 = getelementptr inbounds i64, i64* %cloptr79350, i64 2                  ; &eptr79353[2]
  %eptr79354 = getelementptr inbounds i64, i64* %cloptr79350, i64 3                  ; &eptr79354[3]
  %eptr79355 = getelementptr inbounds i64, i64* %cloptr79350, i64 4                  ; &eptr79355[4]
  store i64 %cont74493, i64* %eptr79352                                              ; *eptr79352 = %cont74493
  store i64 %Lbr$n, i64* %eptr79353                                                  ; *eptr79353 = %Lbr$n
  store i64 %M2K$_37append, i64* %eptr79354                                          ; *eptr79354 = %M2K$_37append
  store i64 %vHh$one_45to, i64* %eptr79355                                           ; *eptr79355 = %vHh$one_45to
  %eptr79351 = getelementptr inbounds i64, i64* %cloptr79350, i64 0                  ; &cloptr79350[0]
  %f79356 = ptrtoint void(i64,i64)* @lam77340 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79356, i64* %eptr79351                                                 ; store fptr
  %arg75233 = ptrtoint i64* %cloptr79350 to i64                                      ; closure cast; i64* -> i64
  %rva76543 = add i64 0, 0                                                           ; quoted ()
  %rva76542 = call i64 @prim_cons(i64 %arg75233, i64 %rva76543)                      ; call prim_cons
  %cloptr79357 = inttoptr i64 %arg75234 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79358 = getelementptr inbounds i64, i64* %cloptr79357, i64 0                 ; &cloptr79357[0]
  %f79360 = load i64, i64* %i0ptr79358, align 8                                      ; load; *i0ptr79358
  %fptr79359 = inttoptr i64 %f79360 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79359(i64 %arg75234, i64 %rva76542)                 ; tail call
  ret void
}


define void @lam77344(i64 %env77345, i64 %EnZ$lst74531) {
  %cont74530 = call i64 @prim_car(i64 %EnZ$lst74531)                                 ; call prim_car
  %EnZ$lst = call i64 @prim_cdr(i64 %EnZ$lst74531)                                   ; call prim_cdr
  %arg75238 = add i64 0, 0                                                           ; quoted ()
  %rva76341 = add i64 0, 0                                                           ; quoted ()
  %rva76340 = call i64 @prim_cons(i64 %EnZ$lst, i64 %rva76341)                       ; call prim_cons
  %rva76339 = call i64 @prim_cons(i64 %arg75238, i64 %rva76340)                      ; call prim_cons
  %cloptr79361 = inttoptr i64 %cont74530 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79362 = getelementptr inbounds i64, i64* %cloptr79361, i64 0                 ; &cloptr79361[0]
  %f79364 = load i64, i64* %i0ptr79362, align 8                                      ; load; *i0ptr79362
  %fptr79363 = inttoptr i64 %f79364 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79363(i64 %cont74530, i64 %rva76339)                ; tail call
  ret void
}


define void @lam77340(i64 %env77341, i64 %rvp76541) {
  %envptr79365 = inttoptr i64 %env77341 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79366 = getelementptr inbounds i64, i64* %envptr79365, i64 4                ; &envptr79365[4]
  %vHh$one_45to = load i64, i64* %envptr79366, align 8                               ; load; *envptr79366
  %envptr79367 = inttoptr i64 %env77341 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79368 = getelementptr inbounds i64, i64* %envptr79367, i64 3                ; &envptr79367[3]
  %M2K$_37append = load i64, i64* %envptr79368, align 8                              ; load; *envptr79368
  %envptr79369 = inttoptr i64 %env77341 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79370 = getelementptr inbounds i64, i64* %envptr79369, i64 2                ; &envptr79369[2]
  %Lbr$n = load i64, i64* %envptr79370, align 8                                      ; load; *envptr79370
  %envptr79371 = inttoptr i64 %env77341 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79372 = getelementptr inbounds i64, i64* %envptr79371, i64 1                ; &envptr79371[1]
  %cont74493 = load i64, i64* %envptr79372, align 8                                  ; load; *envptr79372
  %_9574528 = call i64 @prim_car(i64 %rvp76541)                                      ; call prim_car
  %rvp76540 = call i64 @prim_cdr(i64 %rvp76541)                                      ; call prim_cdr
  %a74343 = call i64 @prim_car(i64 %rvp76540)                                        ; call prim_car
  %na76343 = call i64 @prim_cdr(i64 %rvp76540)                                       ; call prim_cdr
  %arg75241 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74529 = call i64 @prim_make_45vector(i64 %arg75241, i64 %a74343)           ; call prim_make_45vector
  %cloptr79373 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79375 = getelementptr inbounds i64, i64* %cloptr79373, i64 1                  ; &eptr79375[1]
  %eptr79376 = getelementptr inbounds i64, i64* %cloptr79373, i64 2                  ; &eptr79376[2]
  %eptr79377 = getelementptr inbounds i64, i64* %cloptr79373, i64 3                  ; &eptr79377[3]
  %eptr79378 = getelementptr inbounds i64, i64* %cloptr79373, i64 4                  ; &eptr79378[4]
  store i64 %cont74493, i64* %eptr79375                                              ; *eptr79375 = %cont74493
  store i64 %Lbr$n, i64* %eptr79376                                                  ; *eptr79376 = %Lbr$n
  store i64 %M2K$_37append, i64* %eptr79377                                          ; *eptr79377 = %M2K$_37append
  store i64 %vHh$one_45to, i64* %eptr79378                                           ; *eptr79378 = %vHh$one_45to
  %eptr79374 = getelementptr inbounds i64, i64* %cloptr79373, i64 0                  ; &cloptr79373[0]
  %f79379 = ptrtoint void(i64,i64)* @lam77337 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79379, i64* %eptr79374                                                 ; store fptr
  %arg75244 = ptrtoint i64* %cloptr79373 to i64                                      ; closure cast; i64* -> i64
  %arg75243 = add i64 0, 0                                                           ; quoted ()
  %rva76539 = add i64 0, 0                                                           ; quoted ()
  %rva76538 = call i64 @prim_cons(i64 %retprim74529, i64 %rva76539)                  ; call prim_cons
  %rva76537 = call i64 @prim_cons(i64 %arg75243, i64 %rva76538)                      ; call prim_cons
  %cloptr79380 = inttoptr i64 %arg75244 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79381 = getelementptr inbounds i64, i64* %cloptr79380, i64 0                 ; &cloptr79380[0]
  %f79383 = load i64, i64* %i0ptr79381, align 8                                      ; load; *i0ptr79381
  %fptr79382 = inttoptr i64 %f79383 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79382(i64 %arg75244, i64 %rva76537)                 ; tail call
  ret void
}


define void @lam77337(i64 %env77338, i64 %rvp76536) {
  %envptr79384 = inttoptr i64 %env77338 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79385 = getelementptr inbounds i64, i64* %envptr79384, i64 4                ; &envptr79384[4]
  %vHh$one_45to = load i64, i64* %envptr79385, align 8                               ; load; *envptr79385
  %envptr79386 = inttoptr i64 %env77338 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79387 = getelementptr inbounds i64, i64* %envptr79386, i64 3                ; &envptr79386[3]
  %M2K$_37append = load i64, i64* %envptr79387, align 8                              ; load; *envptr79387
  %envptr79388 = inttoptr i64 %env77338 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79389 = getelementptr inbounds i64, i64* %envptr79388, i64 2                ; &envptr79388[2]
  %Lbr$n = load i64, i64* %envptr79389, align 8                                      ; load; *envptr79389
  %envptr79390 = inttoptr i64 %env77338 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79391 = getelementptr inbounds i64, i64* %envptr79390, i64 1                ; &envptr79390[1]
  %cont74493 = load i64, i64* %envptr79391, align 8                                  ; load; *envptr79391
  %_9574495 = call i64 @prim_car(i64 %rvp76536)                                      ; call prim_car
  %rvp76535 = call i64 @prim_cdr(i64 %rvp76536)                                      ; call prim_cdr
  %c7e$my_45try = call i64 @prim_car(i64 %rvp76535)                                  ; call prim_car
  %na76345 = call i64 @prim_cdr(i64 %rvp76535)                                       ; call prim_cdr
  %cloptr79392 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79393 = getelementptr inbounds i64, i64* %cloptr79392, i64 0                  ; &cloptr79392[0]
  %f79394 = ptrtoint void(i64,i64)* @lam77335 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79394, i64* %eptr79393                                                 ; store fptr
  %arg75246 = ptrtoint i64* %cloptr79392 to i64                                      ; closure cast; i64* -> i64
  %cloptr79395 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr79397 = getelementptr inbounds i64, i64* %cloptr79395, i64 1                  ; &eptr79397[1]
  %eptr79398 = getelementptr inbounds i64, i64* %cloptr79395, i64 2                  ; &eptr79398[2]
  %eptr79399 = getelementptr inbounds i64, i64* %cloptr79395, i64 3                  ; &eptr79399[3]
  %eptr79400 = getelementptr inbounds i64, i64* %cloptr79395, i64 4                  ; &eptr79400[4]
  %eptr79401 = getelementptr inbounds i64, i64* %cloptr79395, i64 5                  ; &eptr79401[5]
  store i64 %cont74493, i64* %eptr79397                                              ; *eptr79397 = %cont74493
  store i64 %Lbr$n, i64* %eptr79398                                                  ; *eptr79398 = %Lbr$n
  store i64 %M2K$_37append, i64* %eptr79399                                          ; *eptr79399 = %M2K$_37append
  store i64 %c7e$my_45try, i64* %eptr79400                                           ; *eptr79400 = %c7e$my_45try
  store i64 %vHh$one_45to, i64* %eptr79401                                           ; *eptr79401 = %vHh$one_45to
  %eptr79396 = getelementptr inbounds i64, i64* %cloptr79395, i64 0                  ; &cloptr79395[0]
  %f79402 = ptrtoint void(i64,i64)* @lam77331 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79402, i64* %eptr79396                                                 ; store fptr
  %arg75245 = ptrtoint i64* %cloptr79395 to i64                                      ; closure cast; i64* -> i64
  %rva76534 = add i64 0, 0                                                           ; quoted ()
  %rva76533 = call i64 @prim_cons(i64 %arg75245, i64 %rva76534)                      ; call prim_cons
  %cloptr79403 = inttoptr i64 %arg75246 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79404 = getelementptr inbounds i64, i64* %cloptr79403, i64 0                 ; &cloptr79403[0]
  %f79406 = load i64, i64* %i0ptr79404, align 8                                      ; load; *i0ptr79404
  %fptr79405 = inttoptr i64 %f79406 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79405(i64 %arg75246, i64 %rva76533)                 ; tail call
  ret void
}


define void @lam77335(i64 %env77336, i64 %owf$lst74527) {
  %cont74526 = call i64 @prim_car(i64 %owf$lst74527)                                 ; call prim_car
  %owf$lst = call i64 @prim_cdr(i64 %owf$lst74527)                                   ; call prim_cdr
  %arg75250 = add i64 0, 0                                                           ; quoted ()
  %rva76348 = add i64 0, 0                                                           ; quoted ()
  %rva76347 = call i64 @prim_cons(i64 %owf$lst, i64 %rva76348)                       ; call prim_cons
  %rva76346 = call i64 @prim_cons(i64 %arg75250, i64 %rva76347)                      ; call prim_cons
  %cloptr79407 = inttoptr i64 %cont74526 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79408 = getelementptr inbounds i64, i64* %cloptr79407, i64 0                 ; &cloptr79407[0]
  %f79410 = load i64, i64* %i0ptr79408, align 8                                      ; load; *i0ptr79408
  %fptr79409 = inttoptr i64 %f79410 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79409(i64 %cont74526, i64 %rva76346)                ; tail call
  ret void
}


define void @lam77331(i64 %env77332, i64 %rvp76532) {
  %envptr79411 = inttoptr i64 %env77332 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79412 = getelementptr inbounds i64, i64* %envptr79411, i64 5                ; &envptr79411[5]
  %vHh$one_45to = load i64, i64* %envptr79412, align 8                               ; load; *envptr79412
  %envptr79413 = inttoptr i64 %env77332 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79414 = getelementptr inbounds i64, i64* %envptr79413, i64 4                ; &envptr79413[4]
  %c7e$my_45try = load i64, i64* %envptr79414, align 8                               ; load; *envptr79414
  %envptr79415 = inttoptr i64 %env77332 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79416 = getelementptr inbounds i64, i64* %envptr79415, i64 3                ; &envptr79415[3]
  %M2K$_37append = load i64, i64* %envptr79416, align 8                              ; load; *envptr79416
  %envptr79417 = inttoptr i64 %env77332 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79418 = getelementptr inbounds i64, i64* %envptr79417, i64 2                ; &envptr79417[2]
  %Lbr$n = load i64, i64* %envptr79418, align 8                                      ; load; *envptr79418
  %envptr79419 = inttoptr i64 %env77332 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79420 = getelementptr inbounds i64, i64* %envptr79419, i64 1                ; &envptr79419[1]
  %cont74493 = load i64, i64* %envptr79420, align 8                                  ; load; *envptr79420
  %_9574524 = call i64 @prim_car(i64 %rvp76532)                                      ; call prim_car
  %rvp76531 = call i64 @prim_cdr(i64 %rvp76532)                                      ; call prim_cdr
  %a74344 = call i64 @prim_car(i64 %rvp76531)                                        ; call prim_car
  %na76350 = call i64 @prim_cdr(i64 %rvp76531)                                       ; call prim_cdr
  %arg75253 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74525 = call i64 @prim_make_45vector(i64 %arg75253, i64 %a74344)           ; call prim_make_45vector
  %cloptr79421 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr79423 = getelementptr inbounds i64, i64* %cloptr79421, i64 1                  ; &eptr79423[1]
  %eptr79424 = getelementptr inbounds i64, i64* %cloptr79421, i64 2                  ; &eptr79424[2]
  %eptr79425 = getelementptr inbounds i64, i64* %cloptr79421, i64 3                  ; &eptr79425[3]
  %eptr79426 = getelementptr inbounds i64, i64* %cloptr79421, i64 4                  ; &eptr79426[4]
  %eptr79427 = getelementptr inbounds i64, i64* %cloptr79421, i64 5                  ; &eptr79427[5]
  store i64 %cont74493, i64* %eptr79423                                              ; *eptr79423 = %cont74493
  store i64 %Lbr$n, i64* %eptr79424                                                  ; *eptr79424 = %Lbr$n
  store i64 %M2K$_37append, i64* %eptr79425                                          ; *eptr79425 = %M2K$_37append
  store i64 %c7e$my_45try, i64* %eptr79426                                           ; *eptr79426 = %c7e$my_45try
  store i64 %vHh$one_45to, i64* %eptr79427                                           ; *eptr79427 = %vHh$one_45to
  %eptr79422 = getelementptr inbounds i64, i64* %cloptr79421, i64 0                  ; &cloptr79421[0]
  %f79428 = ptrtoint void(i64,i64)* @lam77328 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79428, i64* %eptr79422                                                 ; store fptr
  %arg75256 = ptrtoint i64* %cloptr79421 to i64                                      ; closure cast; i64* -> i64
  %arg75255 = add i64 0, 0                                                           ; quoted ()
  %rva76530 = add i64 0, 0                                                           ; quoted ()
  %rva76529 = call i64 @prim_cons(i64 %retprim74525, i64 %rva76530)                  ; call prim_cons
  %rva76528 = call i64 @prim_cons(i64 %arg75255, i64 %rva76529)                      ; call prim_cons
  %cloptr79429 = inttoptr i64 %arg75256 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79430 = getelementptr inbounds i64, i64* %cloptr79429, i64 0                 ; &cloptr79429[0]
  %f79432 = load i64, i64* %i0ptr79430, align 8                                      ; load; *i0ptr79430
  %fptr79431 = inttoptr i64 %f79432 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79431(i64 %arg75256, i64 %rva76528)                 ; tail call
  ret void
}


define void @lam77328(i64 %env77329, i64 %rvp76527) {
  %envptr79433 = inttoptr i64 %env77329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79434 = getelementptr inbounds i64, i64* %envptr79433, i64 5                ; &envptr79433[5]
  %vHh$one_45to = load i64, i64* %envptr79434, align 8                               ; load; *envptr79434
  %envptr79435 = inttoptr i64 %env77329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79436 = getelementptr inbounds i64, i64* %envptr79435, i64 4                ; &envptr79435[4]
  %c7e$my_45try = load i64, i64* %envptr79436, align 8                               ; load; *envptr79436
  %envptr79437 = inttoptr i64 %env77329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79438 = getelementptr inbounds i64, i64* %envptr79437, i64 3                ; &envptr79437[3]
  %M2K$_37append = load i64, i64* %envptr79438, align 8                              ; load; *envptr79438
  %envptr79439 = inttoptr i64 %env77329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79440 = getelementptr inbounds i64, i64* %envptr79439, i64 2                ; &envptr79439[2]
  %Lbr$n = load i64, i64* %envptr79440, align 8                                      ; load; *envptr79440
  %envptr79441 = inttoptr i64 %env77329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79442 = getelementptr inbounds i64, i64* %envptr79441, i64 1                ; &envptr79441[1]
  %cont74493 = load i64, i64* %envptr79442, align 8                                  ; load; *envptr79442
  %_9574496 = call i64 @prim_car(i64 %rvp76527)                                      ; call prim_car
  %rvp76526 = call i64 @prim_cdr(i64 %rvp76527)                                      ; call prim_cdr
  %dzI$ok_63 = call i64 @prim_car(i64 %rvp76526)                                     ; call prim_car
  %na76352 = call i64 @prim_cdr(i64 %rvp76526)                                       ; call prim_cdr
  %arg75258 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr79443 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79444 = getelementptr inbounds i64, i64* %cloptr79443, i64 0                  ; &cloptr79443[0]
  %f79445 = ptrtoint void(i64,i64)* @lam77325 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79445, i64* %eptr79444                                                 ; store fptr
  %arg75257 = ptrtoint i64* %cloptr79443 to i64                                      ; closure cast; i64* -> i64
  %Y98$_9574218 = call i64 @prim_vector_45set_33(i64 %vHh$one_45to, i64 %arg75258, i64 %arg75257); call prim_vector_45set_33
  %arg75304 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr79446 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79448 = getelementptr inbounds i64, i64* %cloptr79446, i64 1                  ; &eptr79448[1]
  %eptr79449 = getelementptr inbounds i64, i64* %cloptr79446, i64 2                  ; &eptr79449[2]
  %eptr79450 = getelementptr inbounds i64, i64* %cloptr79446, i64 3                  ; &eptr79450[3]
  store i64 %dzI$ok_63, i64* %eptr79448                                              ; *eptr79448 = %dzI$ok_63
  store i64 %M2K$_37append, i64* %eptr79449                                          ; *eptr79449 = %M2K$_37append
  store i64 %c7e$my_45try, i64* %eptr79450                                           ; *eptr79450 = %c7e$my_45try
  %eptr79447 = getelementptr inbounds i64, i64* %cloptr79446, i64 0                  ; &cloptr79446[0]
  %f79451 = ptrtoint void(i64,i64)* @lam77292 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79451, i64* %eptr79447                                                 ; store fptr
  %arg75303 = ptrtoint i64* %cloptr79446 to i64                                      ; closure cast; i64* -> i64
  %btz$_9574220 = call i64 @prim_vector_45set_33(i64 %c7e$my_45try, i64 %arg75304, i64 %arg75303); call prim_vector_45set_33
  %arg75380 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr79452 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr79454 = getelementptr inbounds i64, i64* %cloptr79452, i64 1                  ; &eptr79454[1]
  store i64 %dzI$ok_63, i64* %eptr79454                                              ; *eptr79454 = %dzI$ok_63
  %eptr79453 = getelementptr inbounds i64, i64* %cloptr79452, i64 0                  ; &cloptr79452[0]
  %f79455 = ptrtoint void(i64,i64)* @lam77247 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79455, i64* %eptr79453                                                 ; store fptr
  %arg75379 = ptrtoint i64* %cloptr79452 to i64                                      ; closure cast; i64* -> i64
  %AAE$_9574221 = call i64 @prim_vector_45set_33(i64 %dzI$ok_63, i64 %arg75380, i64 %arg75379); call prim_vector_45set_33
  %arg75414 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74381 = call i64 @prim_vector_45ref(i64 %c7e$my_45try, i64 %arg75414)            ; call prim_vector_45ref
  %arg75416 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74382 = call i64 @prim_vector_45ref(i64 %vHh$one_45to, i64 %arg75416)            ; call prim_vector_45ref
  %cloptr79456 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr79458 = getelementptr inbounds i64, i64* %cloptr79456, i64 1                  ; &eptr79458[1]
  %eptr79459 = getelementptr inbounds i64, i64* %cloptr79456, i64 2                  ; &eptr79459[2]
  store i64 %cont74493, i64* %eptr79458                                              ; *eptr79458 = %cont74493
  store i64 %a74381, i64* %eptr79459                                                 ; *eptr79459 = %a74381
  %eptr79457 = getelementptr inbounds i64, i64* %cloptr79456, i64 0                  ; &cloptr79456[0]
  %f79460 = ptrtoint void(i64,i64)* @lam77231 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79460, i64* %eptr79457                                                 ; store fptr
  %arg75419 = ptrtoint i64* %cloptr79456 to i64                                      ; closure cast; i64* -> i64
  %rva76525 = add i64 0, 0                                                           ; quoted ()
  %rva76524 = call i64 @prim_cons(i64 %Lbr$n, i64 %rva76525)                         ; call prim_cons
  %rva76523 = call i64 @prim_cons(i64 %arg75419, i64 %rva76524)                      ; call prim_cons
  %cloptr79461 = inttoptr i64 %a74382 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79462 = getelementptr inbounds i64, i64* %cloptr79461, i64 0                 ; &cloptr79461[0]
  %f79464 = load i64, i64* %i0ptr79462, align 8                                      ; load; *i0ptr79462
  %fptr79463 = inttoptr i64 %f79464 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79463(i64 %a74382, i64 %rva76523)                   ; tail call
  ret void
}


define void @lam77325(i64 %env77326, i64 %rvp76397) {
  %cont74497 = call i64 @prim_car(i64 %rvp76397)                                     ; call prim_car
  %rvp76396 = call i64 @prim_cdr(i64 %rvp76397)                                      ; call prim_cdr
  %TuP$n = call i64 @prim_car(i64 %rvp76396)                                         ; call prim_car
  %na76354 = call i64 @prim_cdr(i64 %rvp76396)                                       ; call prim_cdr
  %cloptr79465 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79466 = getelementptr inbounds i64, i64* %cloptr79465, i64 0                  ; &cloptr79465[0]
  %f79467 = ptrtoint void(i64,i64)* @lam77323 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79467, i64* %eptr79466                                                 ; store fptr
  %arg75261 = ptrtoint i64* %cloptr79465 to i64                                      ; closure cast; i64* -> i64
  %cloptr79468 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr79470 = getelementptr inbounds i64, i64* %cloptr79468, i64 1                  ; &eptr79470[1]
  %eptr79471 = getelementptr inbounds i64, i64* %cloptr79468, i64 2                  ; &eptr79471[2]
  store i64 %TuP$n, i64* %eptr79470                                                  ; *eptr79470 = %TuP$n
  store i64 %cont74497, i64* %eptr79471                                              ; *eptr79471 = %cont74497
  %eptr79469 = getelementptr inbounds i64, i64* %cloptr79468, i64 0                  ; &cloptr79468[0]
  %f79472 = ptrtoint void(i64,i64)* @lam77319 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79472, i64* %eptr79469                                                 ; store fptr
  %arg75260 = ptrtoint i64* %cloptr79468 to i64                                      ; closure cast; i64* -> i64
  %rva76395 = add i64 0, 0                                                           ; quoted ()
  %rva76394 = call i64 @prim_cons(i64 %arg75260, i64 %rva76395)                      ; call prim_cons
  %cloptr79473 = inttoptr i64 %arg75261 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79474 = getelementptr inbounds i64, i64* %cloptr79473, i64 0                 ; &cloptr79473[0]
  %f79476 = load i64, i64* %i0ptr79474, align 8                                      ; load; *i0ptr79474
  %fptr79475 = inttoptr i64 %f79476 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79475(i64 %arg75261, i64 %rva76394)                 ; tail call
  ret void
}


define void @lam77323(i64 %env77324, i64 %nY0$lst74506) {
  %cont74505 = call i64 @prim_car(i64 %nY0$lst74506)                                 ; call prim_car
  %nY0$lst = call i64 @prim_cdr(i64 %nY0$lst74506)                                   ; call prim_cdr
  %arg75265 = add i64 0, 0                                                           ; quoted ()
  %rva76357 = add i64 0, 0                                                           ; quoted ()
  %rva76356 = call i64 @prim_cons(i64 %nY0$lst, i64 %rva76357)                       ; call prim_cons
  %rva76355 = call i64 @prim_cons(i64 %arg75265, i64 %rva76356)                      ; call prim_cons
  %cloptr79477 = inttoptr i64 %cont74505 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79478 = getelementptr inbounds i64, i64* %cloptr79477, i64 0                 ; &cloptr79477[0]
  %f79480 = load i64, i64* %i0ptr79478, align 8                                      ; load; *i0ptr79478
  %fptr79479 = inttoptr i64 %f79480 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79479(i64 %cont74505, i64 %rva76355)                ; tail call
  ret void
}


define void @lam77319(i64 %env77320, i64 %rvp76393) {
  %envptr79481 = inttoptr i64 %env77320 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79482 = getelementptr inbounds i64, i64* %envptr79481, i64 2                ; &envptr79481[2]
  %cont74497 = load i64, i64* %envptr79482, align 8                                  ; load; *envptr79482
  %envptr79483 = inttoptr i64 %env77320 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79484 = getelementptr inbounds i64, i64* %envptr79483, i64 1                ; &envptr79483[1]
  %TuP$n = load i64, i64* %envptr79484, align 8                                      ; load; *envptr79484
  %_9574503 = call i64 @prim_car(i64 %rvp76393)                                      ; call prim_car
  %rvp76392 = call i64 @prim_cdr(i64 %rvp76393)                                      ; call prim_cdr
  %a74345 = call i64 @prim_car(i64 %rvp76392)                                        ; call prim_car
  %na76359 = call i64 @prim_cdr(i64 %rvp76392)                                       ; call prim_cdr
  %arg75268 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74504 = call i64 @prim_make_45vector(i64 %arg75268, i64 %a74345)           ; call prim_make_45vector
  %cloptr79485 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr79487 = getelementptr inbounds i64, i64* %cloptr79485, i64 1                  ; &eptr79487[1]
  %eptr79488 = getelementptr inbounds i64, i64* %cloptr79485, i64 2                  ; &eptr79488[2]
  store i64 %TuP$n, i64* %eptr79487                                                  ; *eptr79487 = %TuP$n
  store i64 %cont74497, i64* %eptr79488                                              ; *eptr79488 = %cont74497
  %eptr79486 = getelementptr inbounds i64, i64* %cloptr79485, i64 0                  ; &cloptr79485[0]
  %f79489 = ptrtoint void(i64,i64)* @lam77316 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79489, i64* %eptr79486                                                 ; store fptr
  %arg75271 = ptrtoint i64* %cloptr79485 to i64                                      ; closure cast; i64* -> i64
  %arg75270 = add i64 0, 0                                                           ; quoted ()
  %rva76391 = add i64 0, 0                                                           ; quoted ()
  %rva76390 = call i64 @prim_cons(i64 %retprim74504, i64 %rva76391)                  ; call prim_cons
  %rva76389 = call i64 @prim_cons(i64 %arg75270, i64 %rva76390)                      ; call prim_cons
  %cloptr79490 = inttoptr i64 %arg75271 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79491 = getelementptr inbounds i64, i64* %cloptr79490, i64 0                 ; &cloptr79490[0]
  %f79493 = load i64, i64* %i0ptr79491, align 8                                      ; load; *i0ptr79491
  %fptr79492 = inttoptr i64 %f79493 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79492(i64 %arg75271, i64 %rva76389)                 ; tail call
  ret void
}


define void @lam77316(i64 %env77317, i64 %rvp76388) {
  %envptr79494 = inttoptr i64 %env77317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79495 = getelementptr inbounds i64, i64* %envptr79494, i64 2                ; &envptr79494[2]
  %cont74497 = load i64, i64* %envptr79495, align 8                                  ; load; *envptr79495
  %envptr79496 = inttoptr i64 %env77317 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79497 = getelementptr inbounds i64, i64* %envptr79496, i64 1                ; &envptr79496[1]
  %TuP$n = load i64, i64* %envptr79497, align 8                                      ; load; *envptr79497
  %_9574498 = call i64 @prim_car(i64 %rvp76388)                                      ; call prim_car
  %rvp76387 = call i64 @prim_cdr(i64 %rvp76388)                                      ; call prim_cdr
  %YKw$loop = call i64 @prim_car(i64 %rvp76387)                                      ; call prim_car
  %na76361 = call i64 @prim_cdr(i64 %rvp76387)                                       ; call prim_cdr
  %arg75273 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr79498 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr79500 = getelementptr inbounds i64, i64* %cloptr79498, i64 1                  ; &eptr79500[1]
  store i64 %YKw$loop, i64* %eptr79500                                               ; *eptr79500 = %YKw$loop
  %eptr79499 = getelementptr inbounds i64, i64* %cloptr79498, i64 0                  ; &cloptr79498[0]
  %f79501 = ptrtoint void(i64,i64)* @lam77313 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79501, i64* %eptr79499                                                 ; store fptr
  %arg75272 = ptrtoint i64* %cloptr79498 to i64                                      ; closure cast; i64* -> i64
  %eWS$_9574219 = call i64 @prim_vector_45set_33(i64 %YKw$loop, i64 %arg75273, i64 %arg75272); call prim_vector_45set_33
  %arg75290 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74350 = call i64 @prim_vector_45ref(i64 %YKw$loop, i64 %arg75290)                ; call prim_vector_45ref
  %cloptr79502 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79503 = getelementptr inbounds i64, i64* %cloptr79502, i64 0                  ; &cloptr79502[0]
  %f79504 = ptrtoint void(i64,i64)* @lam77304 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79504, i64* %eptr79503                                                 ; store fptr
  %arg75293 = ptrtoint i64* %cloptr79502 to i64                                      ; closure cast; i64* -> i64
  %cloptr79505 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79507 = getelementptr inbounds i64, i64* %cloptr79505, i64 1                  ; &eptr79507[1]
  %eptr79508 = getelementptr inbounds i64, i64* %cloptr79505, i64 2                  ; &eptr79508[2]
  %eptr79509 = getelementptr inbounds i64, i64* %cloptr79505, i64 3                  ; &eptr79509[3]
  store i64 %TuP$n, i64* %eptr79507                                                  ; *eptr79507 = %TuP$n
  store i64 %a74350, i64* %eptr79508                                                 ; *eptr79508 = %a74350
  store i64 %cont74497, i64* %eptr79509                                              ; *eptr79509 = %cont74497
  %eptr79506 = getelementptr inbounds i64, i64* %cloptr79505, i64 0                  ; &cloptr79505[0]
  %f79510 = ptrtoint void(i64,i64)* @lam77300 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79510, i64* %eptr79506                                                 ; store fptr
  %arg75292 = ptrtoint i64* %cloptr79505 to i64                                      ; closure cast; i64* -> i64
  %rva76386 = add i64 0, 0                                                           ; quoted ()
  %rva76385 = call i64 @prim_cons(i64 %arg75292, i64 %rva76386)                      ; call prim_cons
  %cloptr79511 = inttoptr i64 %arg75293 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79512 = getelementptr inbounds i64, i64* %cloptr79511, i64 0                 ; &cloptr79511[0]
  %f79514 = load i64, i64* %i0ptr79512, align 8                                      ; load; *i0ptr79512
  %fptr79513 = inttoptr i64 %f79514 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79513(i64 %arg75293, i64 %rva76385)                 ; tail call
  ret void
}


define void @lam77313(i64 %env77314, i64 %rvp76373) {
  %envptr79515 = inttoptr i64 %env77314 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79516 = getelementptr inbounds i64, i64* %envptr79515, i64 1                ; &envptr79515[1]
  %YKw$loop = load i64, i64* %envptr79516, align 8                                   ; load; *envptr79516
  %cont74499 = call i64 @prim_car(i64 %rvp76373)                                     ; call prim_car
  %rvp76372 = call i64 @prim_cdr(i64 %rvp76373)                                      ; call prim_cdr
  %oqw$i = call i64 @prim_car(i64 %rvp76372)                                         ; call prim_car
  %rvp76371 = call i64 @prim_cdr(i64 %rvp76372)                                      ; call prim_cdr
  %ahT$l = call i64 @prim_car(i64 %rvp76371)                                         ; call prim_car
  %na76363 = call i64 @prim_cdr(i64 %rvp76371)                                       ; call prim_cdr
  %arg75275 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74346 = call i64 @prim__61(i64 %oqw$i, i64 %arg75275)                            ; call prim__61
  %cmp79517 = icmp eq i64 %a74346, 15                                                ; false?
  br i1 %cmp79517, label %else79519, label %then79518                                ; if

then79518:
  %arg75278 = add i64 0, 0                                                           ; quoted ()
  %rva76366 = add i64 0, 0                                                           ; quoted ()
  %rva76365 = call i64 @prim_cons(i64 %ahT$l, i64 %rva76366)                         ; call prim_cons
  %rva76364 = call i64 @prim_cons(i64 %arg75278, i64 %rva76365)                      ; call prim_cons
  %cloptr79520 = inttoptr i64 %cont74499 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79521 = getelementptr inbounds i64, i64* %cloptr79520, i64 0                 ; &cloptr79520[0]
  %f79523 = load i64, i64* %i0ptr79521, align 8                                      ; load; *i0ptr79521
  %fptr79522 = inttoptr i64 %f79523 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79522(i64 %cont74499, i64 %rva76364)                ; tail call
  ret void

else79519:
  %arg75280 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74347 = call i64 @prim_vector_45ref(i64 %YKw$loop, i64 %arg75280)                ; call prim_vector_45ref
  %arg75282 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a74348 = call i64 @prim__45(i64 %oqw$i, i64 %arg75282)                            ; call prim__45
  %a74349 = call i64 @prim_cons(i64 %oqw$i, i64 %ahT$l)                              ; call prim_cons
  %rva76370 = add i64 0, 0                                                           ; quoted ()
  %rva76369 = call i64 @prim_cons(i64 %a74349, i64 %rva76370)                        ; call prim_cons
  %rva76368 = call i64 @prim_cons(i64 %a74348, i64 %rva76369)                        ; call prim_cons
  %rva76367 = call i64 @prim_cons(i64 %cont74499, i64 %rva76368)                     ; call prim_cons
  %cloptr79524 = inttoptr i64 %a74347 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79525 = getelementptr inbounds i64, i64* %cloptr79524, i64 0                 ; &cloptr79524[0]
  %f79527 = load i64, i64* %i0ptr79525, align 8                                      ; load; *i0ptr79525
  %fptr79526 = inttoptr i64 %f79527 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79526(i64 %a74347, i64 %rva76367)                   ; tail call
  ret void
}


define void @lam77304(i64 %env77305, i64 %Qkv$lst74502) {
  %cont74501 = call i64 @prim_car(i64 %Qkv$lst74502)                                 ; call prim_car
  %Qkv$lst = call i64 @prim_cdr(i64 %Qkv$lst74502)                                   ; call prim_cdr
  %arg75297 = add i64 0, 0                                                           ; quoted ()
  %rva76376 = add i64 0, 0                                                           ; quoted ()
  %rva76375 = call i64 @prim_cons(i64 %Qkv$lst, i64 %rva76376)                       ; call prim_cons
  %rva76374 = call i64 @prim_cons(i64 %arg75297, i64 %rva76375)                      ; call prim_cons
  %cloptr79528 = inttoptr i64 %cont74501 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79529 = getelementptr inbounds i64, i64* %cloptr79528, i64 0                 ; &cloptr79528[0]
  %f79531 = load i64, i64* %i0ptr79529, align 8                                      ; load; *i0ptr79529
  %fptr79530 = inttoptr i64 %f79531 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79530(i64 %cont74501, i64 %rva76374)                ; tail call
  ret void
}


define void @lam77300(i64 %env77301, i64 %rvp76384) {
  %envptr79532 = inttoptr i64 %env77301 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79533 = getelementptr inbounds i64, i64* %envptr79532, i64 3                ; &envptr79532[3]
  %cont74497 = load i64, i64* %envptr79533, align 8                                  ; load; *envptr79533
  %envptr79534 = inttoptr i64 %env77301 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79535 = getelementptr inbounds i64, i64* %envptr79534, i64 2                ; &envptr79534[2]
  %a74350 = load i64, i64* %envptr79535, align 8                                     ; load; *envptr79535
  %envptr79536 = inttoptr i64 %env77301 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79537 = getelementptr inbounds i64, i64* %envptr79536, i64 1                ; &envptr79536[1]
  %TuP$n = load i64, i64* %envptr79537, align 8                                      ; load; *envptr79537
  %_9574500 = call i64 @prim_car(i64 %rvp76384)                                      ; call prim_car
  %rvp76383 = call i64 @prim_cdr(i64 %rvp76384)                                      ; call prim_cdr
  %a74351 = call i64 @prim_car(i64 %rvp76383)                                        ; call prim_car
  %na76378 = call i64 @prim_cdr(i64 %rvp76383)                                       ; call prim_cdr
  %rva76382 = add i64 0, 0                                                           ; quoted ()
  %rva76381 = call i64 @prim_cons(i64 %a74351, i64 %rva76382)                        ; call prim_cons
  %rva76380 = call i64 @prim_cons(i64 %TuP$n, i64 %rva76381)                         ; call prim_cons
  %rva76379 = call i64 @prim_cons(i64 %cont74497, i64 %rva76380)                     ; call prim_cons
  %cloptr79538 = inttoptr i64 %a74350 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79539 = getelementptr inbounds i64, i64* %cloptr79538, i64 0                 ; &cloptr79538[0]
  %f79541 = load i64, i64* %i0ptr79539, align 8                                      ; load; *i0ptr79539
  %fptr79540 = inttoptr i64 %f79541 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79540(i64 %a74350, i64 %rva76379)                   ; tail call
  ret void
}


define void @lam77292(i64 %env77293, i64 %rvp76475) {
  %envptr79542 = inttoptr i64 %env77293 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79543 = getelementptr inbounds i64, i64* %envptr79542, i64 3                ; &envptr79542[3]
  %c7e$my_45try = load i64, i64* %envptr79543, align 8                               ; load; *envptr79543
  %envptr79544 = inttoptr i64 %env77293 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79545 = getelementptr inbounds i64, i64* %envptr79544, i64 2                ; &envptr79544[2]
  %M2K$_37append = load i64, i64* %envptr79545, align 8                              ; load; *envptr79545
  %envptr79546 = inttoptr i64 %env77293 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79547 = getelementptr inbounds i64, i64* %envptr79546, i64 1                ; &envptr79546[1]
  %dzI$ok_63 = load i64, i64* %envptr79547, align 8                                  ; load; *envptr79547
  %cont74507 = call i64 @prim_car(i64 %rvp76475)                                     ; call prim_car
  %rvp76474 = call i64 @prim_cdr(i64 %rvp76475)                                      ; call prim_cdr
  %eSO$x = call i64 @prim_car(i64 %rvp76474)                                         ; call prim_car
  %rvp76473 = call i64 @prim_cdr(i64 %rvp76474)                                      ; call prim_cdr
  %ytk$y = call i64 @prim_car(i64 %rvp76473)                                         ; call prim_car
  %rvp76472 = call i64 @prim_cdr(i64 %rvp76473)                                      ; call prim_cdr
  %lAR$z = call i64 @prim_car(i64 %rvp76472)                                         ; call prim_car
  %na76399 = call i64 @prim_cdr(i64 %rvp76472)                                       ; call prim_cdr
  %a74352 = call i64 @prim_null_63(i64 %eSO$x)                                       ; call prim_null_63
  %cmp79548 = icmp eq i64 %a74352, 15                                                ; false?
  br i1 %cmp79548, label %else79550, label %then79549                                ; if

then79549:
  %a74353 = call i64 @prim_null_63(i64 %ytk$y)                                       ; call prim_null_63
  %cmp79551 = icmp eq i64 %a74353, 15                                                ; false?
  br i1 %cmp79551, label %else79553, label %then79552                                ; if

then79552:
  %arg75309 = add i64 0, 0                                                           ; quoted ()
  %arg75308 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva76402 = add i64 0, 0                                                           ; quoted ()
  %rva76401 = call i64 @prim_cons(i64 %arg75308, i64 %rva76402)                      ; call prim_cons
  %rva76400 = call i64 @prim_cons(i64 %arg75309, i64 %rva76401)                      ; call prim_cons
  %cloptr79554 = inttoptr i64 %cont74507 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79555 = getelementptr inbounds i64, i64* %cloptr79554, i64 0                 ; &cloptr79554[0]
  %f79557 = load i64, i64* %i0ptr79555, align 8                                      ; load; *i0ptr79555
  %fptr79556 = inttoptr i64 %f79557 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79556(i64 %cont74507, i64 %rva76400)                ; tail call
  ret void

else79553:
  %arg75312 = add i64 0, 0                                                           ; quoted ()
  %arg75311 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva76405 = add i64 0, 0                                                           ; quoted ()
  %rva76404 = call i64 @prim_cons(i64 %arg75311, i64 %rva76405)                      ; call prim_cons
  %rva76403 = call i64 @prim_cons(i64 %arg75312, i64 %rva76404)                      ; call prim_cons
  %cloptr79558 = inttoptr i64 %cont74507 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79559 = getelementptr inbounds i64, i64* %cloptr79558, i64 0                 ; &cloptr79558[0]
  %f79561 = load i64, i64* %i0ptr79559, align 8                                      ; load; *i0ptr79559
  %fptr79560 = inttoptr i64 %f79561 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79560(i64 %cont74507, i64 %rva76403)                ; tail call
  ret void

else79550:
  %arg75314 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74354 = call i64 @prim_vector_45ref(i64 %dzI$ok_63, i64 %arg75314)               ; call prim_vector_45ref
  %a74355 = call i64 @prim_car(i64 %eSO$x)                                           ; call prim_car
  %cloptr79562 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr79564 = getelementptr inbounds i64, i64* %cloptr79562, i64 1                  ; &eptr79564[1]
  %eptr79565 = getelementptr inbounds i64, i64* %cloptr79562, i64 2                  ; &eptr79565[2]
  %eptr79566 = getelementptr inbounds i64, i64* %cloptr79562, i64 3                  ; &eptr79566[3]
  %eptr79567 = getelementptr inbounds i64, i64* %cloptr79562, i64 4                  ; &eptr79567[4]
  %eptr79568 = getelementptr inbounds i64, i64* %cloptr79562, i64 5                  ; &eptr79568[5]
  %eptr79569 = getelementptr inbounds i64, i64* %cloptr79562, i64 6                  ; &eptr79569[6]
  store i64 %lAR$z, i64* %eptr79564                                                  ; *eptr79564 = %lAR$z
  store i64 %eSO$x, i64* %eptr79565                                                  ; *eptr79565 = %eSO$x
  store i64 %cont74507, i64* %eptr79566                                              ; *eptr79566 = %cont74507
  store i64 %M2K$_37append, i64* %eptr79567                                          ; *eptr79567 = %M2K$_37append
  store i64 %c7e$my_45try, i64* %eptr79568                                           ; *eptr79568 = %c7e$my_45try
  store i64 %ytk$y, i64* %eptr79569                                                  ; *eptr79569 = %ytk$y
  %eptr79563 = getelementptr inbounds i64, i64* %cloptr79562, i64 0                  ; &cloptr79562[0]
  %f79570 = ptrtoint void(i64,i64)* @lam77289 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79570, i64* %eptr79563                                                 ; store fptr
  %arg75320 = ptrtoint i64* %cloptr79562 to i64                                      ; closure cast; i64* -> i64
  %arg75318 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %rva76471 = add i64 0, 0                                                           ; quoted ()
  %rva76470 = call i64 @prim_cons(i64 %lAR$z, i64 %rva76471)                         ; call prim_cons
  %rva76469 = call i64 @prim_cons(i64 %arg75318, i64 %rva76470)                      ; call prim_cons
  %rva76468 = call i64 @prim_cons(i64 %a74355, i64 %rva76469)                        ; call prim_cons
  %rva76467 = call i64 @prim_cons(i64 %arg75320, i64 %rva76468)                      ; call prim_cons
  %cloptr79571 = inttoptr i64 %a74354 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79572 = getelementptr inbounds i64, i64* %cloptr79571, i64 0                 ; &cloptr79571[0]
  %f79574 = load i64, i64* %i0ptr79572, align 8                                      ; load; *i0ptr79572
  %fptr79573 = inttoptr i64 %f79574 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79573(i64 %a74354, i64 %rva76467)                   ; tail call
  ret void
}


define void @lam77289(i64 %env77290, i64 %rvp76466) {
  %envptr79575 = inttoptr i64 %env77290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79576 = getelementptr inbounds i64, i64* %envptr79575, i64 6                ; &envptr79575[6]
  %ytk$y = load i64, i64* %envptr79576, align 8                                      ; load; *envptr79576
  %envptr79577 = inttoptr i64 %env77290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79578 = getelementptr inbounds i64, i64* %envptr79577, i64 5                ; &envptr79577[5]
  %c7e$my_45try = load i64, i64* %envptr79578, align 8                               ; load; *envptr79578
  %envptr79579 = inttoptr i64 %env77290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79580 = getelementptr inbounds i64, i64* %envptr79579, i64 4                ; &envptr79579[4]
  %M2K$_37append = load i64, i64* %envptr79580, align 8                              ; load; *envptr79580
  %envptr79581 = inttoptr i64 %env77290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79582 = getelementptr inbounds i64, i64* %envptr79581, i64 3                ; &envptr79581[3]
  %cont74507 = load i64, i64* %envptr79582, align 8                                  ; load; *envptr79582
  %envptr79583 = inttoptr i64 %env77290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79584 = getelementptr inbounds i64, i64* %envptr79583, i64 2                ; &envptr79583[2]
  %eSO$x = load i64, i64* %envptr79584, align 8                                      ; load; *envptr79584
  %envptr79585 = inttoptr i64 %env77290 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79586 = getelementptr inbounds i64, i64* %envptr79585, i64 1                ; &envptr79585[1]
  %lAR$z = load i64, i64* %envptr79586, align 8                                      ; load; *envptr79586
  %_9574508 = call i64 @prim_car(i64 %rvp76466)                                      ; call prim_car
  %rvp76465 = call i64 @prim_cdr(i64 %rvp76466)                                      ; call prim_cdr
  %a74356 = call i64 @prim_car(i64 %rvp76465)                                        ; call prim_car
  %na76407 = call i64 @prim_cdr(i64 %rvp76465)                                       ; call prim_cdr
  %cmp79587 = icmp eq i64 %a74356, 15                                                ; false?
  br i1 %cmp79587, label %else79589, label %then79588                                ; if

then79588:
  %arg75322 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74357 = call i64 @prim_vector_45ref(i64 %c7e$my_45try, i64 %arg75322)            ; call prim_vector_45ref
  %a74358 = call i64 @prim_cdr(i64 %eSO$x)                                           ; call prim_cdr
  %cloptr79590 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr79592 = getelementptr inbounds i64, i64* %cloptr79590, i64 1                  ; &eptr79592[1]
  %eptr79593 = getelementptr inbounds i64, i64* %cloptr79590, i64 2                  ; &eptr79593[2]
  %eptr79594 = getelementptr inbounds i64, i64* %cloptr79590, i64 3                  ; &eptr79594[3]
  %eptr79595 = getelementptr inbounds i64, i64* %cloptr79590, i64 4                  ; &eptr79595[4]
  %eptr79596 = getelementptr inbounds i64, i64* %cloptr79590, i64 5                  ; &eptr79596[5]
  %eptr79597 = getelementptr inbounds i64, i64* %cloptr79590, i64 6                  ; &eptr79597[6]
  store i64 %lAR$z, i64* %eptr79592                                                  ; *eptr79592 = %lAR$z
  store i64 %eSO$x, i64* %eptr79593                                                  ; *eptr79593 = %eSO$x
  store i64 %cont74507, i64* %eptr79594                                              ; *eptr79594 = %cont74507
  store i64 %a74357, i64* %eptr79595                                                 ; *eptr79595 = %a74357
  store i64 %c7e$my_45try, i64* %eptr79596                                           ; *eptr79596 = %c7e$my_45try
  store i64 %ytk$y, i64* %eptr79597                                                  ; *eptr79597 = %ytk$y
  %eptr79591 = getelementptr inbounds i64, i64* %cloptr79590, i64 0                  ; &cloptr79590[0]
  %f79598 = ptrtoint void(i64,i64)* @lam77275 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79598, i64* %eptr79591                                                 ; store fptr
  %arg75327 = ptrtoint i64* %cloptr79590 to i64                                      ; closure cast; i64* -> i64
  %rva76445 = add i64 0, 0                                                           ; quoted ()
  %rva76444 = call i64 @prim_cons(i64 %ytk$y, i64 %rva76445)                         ; call prim_cons
  %rva76443 = call i64 @prim_cons(i64 %a74358, i64 %rva76444)                        ; call prim_cons
  %rva76442 = call i64 @prim_cons(i64 %arg75327, i64 %rva76443)                      ; call prim_cons
  %cloptr79599 = inttoptr i64 %M2K$_37append to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr79600 = getelementptr inbounds i64, i64* %cloptr79599, i64 0                 ; &cloptr79599[0]
  %f79602 = load i64, i64* %i0ptr79600, align 8                                      ; load; *i0ptr79600
  %fptr79601 = inttoptr i64 %f79602 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79601(i64 %M2K$_37append, i64 %rva76442)            ; tail call
  ret void

else79589:
  %cloptr79603 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr79605 = getelementptr inbounds i64, i64* %cloptr79603, i64 1                  ; &eptr79605[1]
  %eptr79606 = getelementptr inbounds i64, i64* %cloptr79603, i64 2                  ; &eptr79606[2]
  %eptr79607 = getelementptr inbounds i64, i64* %cloptr79603, i64 3                  ; &eptr79607[3]
  %eptr79608 = getelementptr inbounds i64, i64* %cloptr79603, i64 4                  ; &eptr79608[4]
  %eptr79609 = getelementptr inbounds i64, i64* %cloptr79603, i64 5                  ; &eptr79609[5]
  store i64 %lAR$z, i64* %eptr79605                                                  ; *eptr79605 = %lAR$z
  store i64 %eSO$x, i64* %eptr79606                                                  ; *eptr79606 = %eSO$x
  store i64 %cont74507, i64* %eptr79607                                              ; *eptr79607 = %cont74507
  store i64 %c7e$my_45try, i64* %eptr79608                                           ; *eptr79608 = %c7e$my_45try
  store i64 %ytk$y, i64* %eptr79609                                                  ; *eptr79609 = %ytk$y
  %eptr79604 = getelementptr inbounds i64, i64* %cloptr79603, i64 0                  ; &cloptr79603[0]
  %f79610 = ptrtoint void(i64,i64)* @lam77287 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79610, i64* %eptr79604                                                 ; store fptr
  %arg75362 = ptrtoint i64* %cloptr79603 to i64                                      ; closure cast; i64* -> i64
  %arg75361 = add i64 0, 0                                                           ; quoted ()
  %arg75360 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva76464 = add i64 0, 0                                                           ; quoted ()
  %rva76463 = call i64 @prim_cons(i64 %arg75360, i64 %rva76464)                      ; call prim_cons
  %rva76462 = call i64 @prim_cons(i64 %arg75361, i64 %rva76463)                      ; call prim_cons
  %cloptr79611 = inttoptr i64 %arg75362 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79612 = getelementptr inbounds i64, i64* %cloptr79611, i64 0                 ; &cloptr79611[0]
  %f79614 = load i64, i64* %i0ptr79612, align 8                                      ; load; *i0ptr79612
  %fptr79613 = inttoptr i64 %f79614 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79613(i64 %arg75362, i64 %rva76462)                 ; tail call
  ret void
}


define void @lam77287(i64 %env77288, i64 %rvp76461) {
  %envptr79615 = inttoptr i64 %env77288 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79616 = getelementptr inbounds i64, i64* %envptr79615, i64 5                ; &envptr79615[5]
  %ytk$y = load i64, i64* %envptr79616, align 8                                      ; load; *envptr79616
  %envptr79617 = inttoptr i64 %env77288 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79618 = getelementptr inbounds i64, i64* %envptr79617, i64 4                ; &envptr79617[4]
  %c7e$my_45try = load i64, i64* %envptr79618, align 8                               ; load; *envptr79618
  %envptr79619 = inttoptr i64 %env77288 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79620 = getelementptr inbounds i64, i64* %envptr79619, i64 3                ; &envptr79619[3]
  %cont74507 = load i64, i64* %envptr79620, align 8                                  ; load; *envptr79620
  %envptr79621 = inttoptr i64 %env77288 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79622 = getelementptr inbounds i64, i64* %envptr79621, i64 2                ; &envptr79621[2]
  %eSO$x = load i64, i64* %envptr79622, align 8                                      ; load; *envptr79622
  %envptr79623 = inttoptr i64 %env77288 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79624 = getelementptr inbounds i64, i64* %envptr79623, i64 1                ; &envptr79623[1]
  %lAR$z = load i64, i64* %envptr79624, align 8                                      ; load; *envptr79624
  %_9574509 = call i64 @prim_car(i64 %rvp76461)                                      ; call prim_car
  %rvp76460 = call i64 @prim_cdr(i64 %rvp76461)                                      ; call prim_cdr
  %a74363 = call i64 @prim_car(i64 %rvp76460)                                        ; call prim_car
  %na76447 = call i64 @prim_cdr(i64 %rvp76460)                                       ; call prim_cdr
  %arg75363 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74364 = call i64 @prim_vector_45ref(i64 %c7e$my_45try, i64 %arg75363)            ; call prim_vector_45ref
  %a74365 = call i64 @prim_cdr(i64 %eSO$x)                                           ; call prim_cdr
  %a74366 = call i64 @prim_car(i64 %eSO$x)                                           ; call prim_car
  %a74367 = call i64 @prim_cons(i64 %a74366, i64 %ytk$y)                             ; call prim_cons
  %cloptr79625 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr79627 = getelementptr inbounds i64, i64* %cloptr79625, i64 1                  ; &eptr79627[1]
  %eptr79628 = getelementptr inbounds i64, i64* %cloptr79625, i64 2                  ; &eptr79628[2]
  store i64 %cont74507, i64* %eptr79627                                              ; *eptr79627 = %cont74507
  store i64 %a74363, i64* %eptr79628                                                 ; *eptr79628 = %a74363
  %eptr79626 = getelementptr inbounds i64, i64* %cloptr79625, i64 0                  ; &cloptr79625[0]
  %f79629 = ptrtoint void(i64,i64)* @lam77284 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79629, i64* %eptr79626                                                 ; store fptr
  %arg75372 = ptrtoint i64* %cloptr79625 to i64                                      ; closure cast; i64* -> i64
  %rva76459 = add i64 0, 0                                                           ; quoted ()
  %rva76458 = call i64 @prim_cons(i64 %lAR$z, i64 %rva76459)                         ; call prim_cons
  %rva76457 = call i64 @prim_cons(i64 %a74367, i64 %rva76458)                        ; call prim_cons
  %rva76456 = call i64 @prim_cons(i64 %a74365, i64 %rva76457)                        ; call prim_cons
  %rva76455 = call i64 @prim_cons(i64 %arg75372, i64 %rva76456)                      ; call prim_cons
  %cloptr79630 = inttoptr i64 %a74364 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79631 = getelementptr inbounds i64, i64* %cloptr79630, i64 0                 ; &cloptr79630[0]
  %f79633 = load i64, i64* %i0ptr79631, align 8                                      ; load; *i0ptr79631
  %fptr79632 = inttoptr i64 %f79633 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79632(i64 %a74364, i64 %rva76455)                   ; tail call
  ret void
}


define void @lam77284(i64 %env77285, i64 %rvp76454) {
  %envptr79634 = inttoptr i64 %env77285 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79635 = getelementptr inbounds i64, i64* %envptr79634, i64 2                ; &envptr79634[2]
  %a74363 = load i64, i64* %envptr79635, align 8                                     ; load; *envptr79635
  %envptr79636 = inttoptr i64 %env77285 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79637 = getelementptr inbounds i64, i64* %envptr79636, i64 1                ; &envptr79636[1]
  %cont74507 = load i64, i64* %envptr79637, align 8                                  ; load; *envptr79637
  %_9574510 = call i64 @prim_car(i64 %rvp76454)                                      ; call prim_car
  %rvp76453 = call i64 @prim_cdr(i64 %rvp76454)                                      ; call prim_cdr
  %a74368 = call i64 @prim_car(i64 %rvp76453)                                        ; call prim_car
  %na76449 = call i64 @prim_cdr(i64 %rvp76453)                                       ; call prim_cdr
  %retprim74511 = call i64 @prim__43(i64 %a74363, i64 %a74368)                       ; call prim__43
  %arg75377 = add i64 0, 0                                                           ; quoted ()
  %rva76452 = add i64 0, 0                                                           ; quoted ()
  %rva76451 = call i64 @prim_cons(i64 %retprim74511, i64 %rva76452)                  ; call prim_cons
  %rva76450 = call i64 @prim_cons(i64 %arg75377, i64 %rva76451)                      ; call prim_cons
  %cloptr79638 = inttoptr i64 %cont74507 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79639 = getelementptr inbounds i64, i64* %cloptr79638, i64 0                 ; &cloptr79638[0]
  %f79641 = load i64, i64* %i0ptr79639, align 8                                      ; load; *i0ptr79639
  %fptr79640 = inttoptr i64 %f79641 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79640(i64 %cont74507, i64 %rva76450)                ; tail call
  ret void
}


define void @lam77275(i64 %env77276, i64 %rvp76441) {
  %envptr79642 = inttoptr i64 %env77276 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79643 = getelementptr inbounds i64, i64* %envptr79642, i64 6                ; &envptr79642[6]
  %ytk$y = load i64, i64* %envptr79643, align 8                                      ; load; *envptr79643
  %envptr79644 = inttoptr i64 %env77276 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79645 = getelementptr inbounds i64, i64* %envptr79644, i64 5                ; &envptr79644[5]
  %c7e$my_45try = load i64, i64* %envptr79645, align 8                               ; load; *envptr79645
  %envptr79646 = inttoptr i64 %env77276 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79647 = getelementptr inbounds i64, i64* %envptr79646, i64 4                ; &envptr79646[4]
  %a74357 = load i64, i64* %envptr79647, align 8                                     ; load; *envptr79647
  %envptr79648 = inttoptr i64 %env77276 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79649 = getelementptr inbounds i64, i64* %envptr79648, i64 3                ; &envptr79648[3]
  %cont74507 = load i64, i64* %envptr79649, align 8                                  ; load; *envptr79649
  %envptr79650 = inttoptr i64 %env77276 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79651 = getelementptr inbounds i64, i64* %envptr79650, i64 2                ; &envptr79650[2]
  %eSO$x = load i64, i64* %envptr79651, align 8                                      ; load; *envptr79651
  %envptr79652 = inttoptr i64 %env77276 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79653 = getelementptr inbounds i64, i64* %envptr79652, i64 1                ; &envptr79652[1]
  %lAR$z = load i64, i64* %envptr79653, align 8                                      ; load; *envptr79653
  %_9574512 = call i64 @prim_car(i64 %rvp76441)                                      ; call prim_car
  %rvp76440 = call i64 @prim_cdr(i64 %rvp76441)                                      ; call prim_cdr
  %a74359 = call i64 @prim_car(i64 %rvp76440)                                        ; call prim_car
  %na76409 = call i64 @prim_cdr(i64 %rvp76440)                                       ; call prim_cdr
  %cloptr79654 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79655 = getelementptr inbounds i64, i64* %cloptr79654, i64 0                  ; &cloptr79654[0]
  %f79656 = ptrtoint void(i64,i64)* @lam77273 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79656, i64* %eptr79655                                                 ; store fptr
  %arg75330 = ptrtoint i64* %cloptr79654 to i64                                      ; closure cast; i64* -> i64
  %cloptr79657 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr79659 = getelementptr inbounds i64, i64* %cloptr79657, i64 1                  ; &eptr79659[1]
  %eptr79660 = getelementptr inbounds i64, i64* %cloptr79657, i64 2                  ; &eptr79660[2]
  %eptr79661 = getelementptr inbounds i64, i64* %cloptr79657, i64 3                  ; &eptr79661[3]
  %eptr79662 = getelementptr inbounds i64, i64* %cloptr79657, i64 4                  ; &eptr79662[4]
  %eptr79663 = getelementptr inbounds i64, i64* %cloptr79657, i64 5                  ; &eptr79663[5]
  %eptr79664 = getelementptr inbounds i64, i64* %cloptr79657, i64 6                  ; &eptr79664[6]
  %eptr79665 = getelementptr inbounds i64, i64* %cloptr79657, i64 7                  ; &eptr79665[7]
  store i64 %lAR$z, i64* %eptr79659                                                  ; *eptr79659 = %lAR$z
  store i64 %eSO$x, i64* %eptr79660                                                  ; *eptr79660 = %eSO$x
  store i64 %cont74507, i64* %eptr79661                                              ; *eptr79661 = %cont74507
  store i64 %a74357, i64* %eptr79662                                                 ; *eptr79662 = %a74357
  store i64 %c7e$my_45try, i64* %eptr79663                                           ; *eptr79663 = %c7e$my_45try
  store i64 %a74359, i64* %eptr79664                                                 ; *eptr79664 = %a74359
  store i64 %ytk$y, i64* %eptr79665                                                  ; *eptr79665 = %ytk$y
  %eptr79658 = getelementptr inbounds i64, i64* %cloptr79657, i64 0                  ; &cloptr79657[0]
  %f79666 = ptrtoint void(i64,i64)* @lam77269 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79666, i64* %eptr79658                                                 ; store fptr
  %arg75329 = ptrtoint i64* %cloptr79657 to i64                                      ; closure cast; i64* -> i64
  %rva76439 = add i64 0, 0                                                           ; quoted ()
  %rva76438 = call i64 @prim_cons(i64 %arg75329, i64 %rva76439)                      ; call prim_cons
  %cloptr79667 = inttoptr i64 %arg75330 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79668 = getelementptr inbounds i64, i64* %cloptr79667, i64 0                 ; &cloptr79667[0]
  %f79670 = load i64, i64* %i0ptr79668, align 8                                      ; load; *i0ptr79668
  %fptr79669 = inttoptr i64 %f79670 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79669(i64 %arg75330, i64 %rva76438)                 ; tail call
  ret void
}


define void @lam77273(i64 %env77274, i64 %BpI$lst74515) {
  %cont74514 = call i64 @prim_car(i64 %BpI$lst74515)                                 ; call prim_car
  %BpI$lst = call i64 @prim_cdr(i64 %BpI$lst74515)                                   ; call prim_cdr
  %arg75334 = add i64 0, 0                                                           ; quoted ()
  %rva76412 = add i64 0, 0                                                           ; quoted ()
  %rva76411 = call i64 @prim_cons(i64 %BpI$lst, i64 %rva76412)                       ; call prim_cons
  %rva76410 = call i64 @prim_cons(i64 %arg75334, i64 %rva76411)                      ; call prim_cons
  %cloptr79671 = inttoptr i64 %cont74514 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79672 = getelementptr inbounds i64, i64* %cloptr79671, i64 0                 ; &cloptr79671[0]
  %f79674 = load i64, i64* %i0ptr79672, align 8                                      ; load; *i0ptr79672
  %fptr79673 = inttoptr i64 %f79674 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79673(i64 %cont74514, i64 %rva76410)                ; tail call
  ret void
}


define void @lam77269(i64 %env77270, i64 %rvp76437) {
  %envptr79675 = inttoptr i64 %env77270 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79676 = getelementptr inbounds i64, i64* %envptr79675, i64 7                ; &envptr79675[7]
  %ytk$y = load i64, i64* %envptr79676, align 8                                      ; load; *envptr79676
  %envptr79677 = inttoptr i64 %env77270 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79678 = getelementptr inbounds i64, i64* %envptr79677, i64 6                ; &envptr79677[6]
  %a74359 = load i64, i64* %envptr79678, align 8                                     ; load; *envptr79678
  %envptr79679 = inttoptr i64 %env77270 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79680 = getelementptr inbounds i64, i64* %envptr79679, i64 5                ; &envptr79679[5]
  %c7e$my_45try = load i64, i64* %envptr79680, align 8                               ; load; *envptr79680
  %envptr79681 = inttoptr i64 %env77270 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79682 = getelementptr inbounds i64, i64* %envptr79681, i64 4                ; &envptr79681[4]
  %a74357 = load i64, i64* %envptr79682, align 8                                     ; load; *envptr79682
  %envptr79683 = inttoptr i64 %env77270 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79684 = getelementptr inbounds i64, i64* %envptr79683, i64 3                ; &envptr79683[3]
  %cont74507 = load i64, i64* %envptr79684, align 8                                  ; load; *envptr79684
  %envptr79685 = inttoptr i64 %env77270 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79686 = getelementptr inbounds i64, i64* %envptr79685, i64 2                ; &envptr79685[2]
  %eSO$x = load i64, i64* %envptr79686, align 8                                      ; load; *envptr79686
  %envptr79687 = inttoptr i64 %env77270 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79688 = getelementptr inbounds i64, i64* %envptr79687, i64 1                ; &envptr79687[1]
  %lAR$z = load i64, i64* %envptr79688, align 8                                      ; load; *envptr79688
  %_9574513 = call i64 @prim_car(i64 %rvp76437)                                      ; call prim_car
  %rvp76436 = call i64 @prim_cdr(i64 %rvp76437)                                      ; call prim_cdr
  %a74360 = call i64 @prim_car(i64 %rvp76436)                                        ; call prim_car
  %na76414 = call i64 @prim_cdr(i64 %rvp76436)                                       ; call prim_cdr
  %a74361 = call i64 @prim_car(i64 %eSO$x)                                           ; call prim_car
  %a74362 = call i64 @prim_cons(i64 %a74361, i64 %lAR$z)                             ; call prim_cons
  %cloptr79689 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr79691 = getelementptr inbounds i64, i64* %cloptr79689, i64 1                  ; &eptr79691[1]
  %eptr79692 = getelementptr inbounds i64, i64* %cloptr79689, i64 2                  ; &eptr79692[2]
  %eptr79693 = getelementptr inbounds i64, i64* %cloptr79689, i64 3                  ; &eptr79693[3]
  %eptr79694 = getelementptr inbounds i64, i64* %cloptr79689, i64 4                  ; &eptr79694[4]
  %eptr79695 = getelementptr inbounds i64, i64* %cloptr79689, i64 5                  ; &eptr79695[5]
  store i64 %lAR$z, i64* %eptr79691                                                  ; *eptr79691 = %lAR$z
  store i64 %eSO$x, i64* %eptr79692                                                  ; *eptr79692 = %eSO$x
  store i64 %cont74507, i64* %eptr79693                                              ; *eptr79693 = %cont74507
  store i64 %c7e$my_45try, i64* %eptr79694                                           ; *eptr79694 = %c7e$my_45try
  store i64 %ytk$y, i64* %eptr79695                                                  ; *eptr79695 = %ytk$y
  %eptr79690 = getelementptr inbounds i64, i64* %cloptr79689, i64 0                  ; &cloptr79689[0]
  %f79696 = ptrtoint void(i64,i64)* @lam77267 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79696, i64* %eptr79690                                                 ; store fptr
  %arg75342 = ptrtoint i64* %cloptr79689 to i64                                      ; closure cast; i64* -> i64
  %rva76435 = add i64 0, 0                                                           ; quoted ()
  %rva76434 = call i64 @prim_cons(i64 %a74362, i64 %rva76435)                        ; call prim_cons
  %rva76433 = call i64 @prim_cons(i64 %a74360, i64 %rva76434)                        ; call prim_cons
  %rva76432 = call i64 @prim_cons(i64 %a74359, i64 %rva76433)                        ; call prim_cons
  %rva76431 = call i64 @prim_cons(i64 %arg75342, i64 %rva76432)                      ; call prim_cons
  %cloptr79697 = inttoptr i64 %a74357 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79698 = getelementptr inbounds i64, i64* %cloptr79697, i64 0                 ; &cloptr79697[0]
  %f79700 = load i64, i64* %i0ptr79698, align 8                                      ; load; *i0ptr79698
  %fptr79699 = inttoptr i64 %f79700 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79699(i64 %a74357, i64 %rva76431)                   ; tail call
  ret void
}


define void @lam77267(i64 %env77268, i64 %rvp76430) {
  %envptr79701 = inttoptr i64 %env77268 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79702 = getelementptr inbounds i64, i64* %envptr79701, i64 5                ; &envptr79701[5]
  %ytk$y = load i64, i64* %envptr79702, align 8                                      ; load; *envptr79702
  %envptr79703 = inttoptr i64 %env77268 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79704 = getelementptr inbounds i64, i64* %envptr79703, i64 4                ; &envptr79703[4]
  %c7e$my_45try = load i64, i64* %envptr79704, align 8                               ; load; *envptr79704
  %envptr79705 = inttoptr i64 %env77268 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79706 = getelementptr inbounds i64, i64* %envptr79705, i64 3                ; &envptr79705[3]
  %cont74507 = load i64, i64* %envptr79706, align 8                                  ; load; *envptr79706
  %envptr79707 = inttoptr i64 %env77268 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79708 = getelementptr inbounds i64, i64* %envptr79707, i64 2                ; &envptr79707[2]
  %eSO$x = load i64, i64* %envptr79708, align 8                                      ; load; *envptr79708
  %envptr79709 = inttoptr i64 %env77268 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79710 = getelementptr inbounds i64, i64* %envptr79709, i64 1                ; &envptr79709[1]
  %lAR$z = load i64, i64* %envptr79710, align 8                                      ; load; *envptr79710
  %_9574509 = call i64 @prim_car(i64 %rvp76430)                                      ; call prim_car
  %rvp76429 = call i64 @prim_cdr(i64 %rvp76430)                                      ; call prim_cdr
  %a74363 = call i64 @prim_car(i64 %rvp76429)                                        ; call prim_car
  %na76416 = call i64 @prim_cdr(i64 %rvp76429)                                       ; call prim_cdr
  %arg75344 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74364 = call i64 @prim_vector_45ref(i64 %c7e$my_45try, i64 %arg75344)            ; call prim_vector_45ref
  %a74365 = call i64 @prim_cdr(i64 %eSO$x)                                           ; call prim_cdr
  %a74366 = call i64 @prim_car(i64 %eSO$x)                                           ; call prim_car
  %a74367 = call i64 @prim_cons(i64 %a74366, i64 %ytk$y)                             ; call prim_cons
  %cloptr79711 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr79713 = getelementptr inbounds i64, i64* %cloptr79711, i64 1                  ; &eptr79713[1]
  %eptr79714 = getelementptr inbounds i64, i64* %cloptr79711, i64 2                  ; &eptr79714[2]
  store i64 %cont74507, i64* %eptr79713                                              ; *eptr79713 = %cont74507
  store i64 %a74363, i64* %eptr79714                                                 ; *eptr79714 = %a74363
  %eptr79712 = getelementptr inbounds i64, i64* %cloptr79711, i64 0                  ; &cloptr79711[0]
  %f79715 = ptrtoint void(i64,i64)* @lam77264 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79715, i64* %eptr79712                                                 ; store fptr
  %arg75353 = ptrtoint i64* %cloptr79711 to i64                                      ; closure cast; i64* -> i64
  %rva76428 = add i64 0, 0                                                           ; quoted ()
  %rva76427 = call i64 @prim_cons(i64 %lAR$z, i64 %rva76428)                         ; call prim_cons
  %rva76426 = call i64 @prim_cons(i64 %a74367, i64 %rva76427)                        ; call prim_cons
  %rva76425 = call i64 @prim_cons(i64 %a74365, i64 %rva76426)                        ; call prim_cons
  %rva76424 = call i64 @prim_cons(i64 %arg75353, i64 %rva76425)                      ; call prim_cons
  %cloptr79716 = inttoptr i64 %a74364 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79717 = getelementptr inbounds i64, i64* %cloptr79716, i64 0                 ; &cloptr79716[0]
  %f79719 = load i64, i64* %i0ptr79717, align 8                                      ; load; *i0ptr79717
  %fptr79718 = inttoptr i64 %f79719 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79718(i64 %a74364, i64 %rva76424)                   ; tail call
  ret void
}


define void @lam77264(i64 %env77265, i64 %rvp76423) {
  %envptr79720 = inttoptr i64 %env77265 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79721 = getelementptr inbounds i64, i64* %envptr79720, i64 2                ; &envptr79720[2]
  %a74363 = load i64, i64* %envptr79721, align 8                                     ; load; *envptr79721
  %envptr79722 = inttoptr i64 %env77265 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79723 = getelementptr inbounds i64, i64* %envptr79722, i64 1                ; &envptr79722[1]
  %cont74507 = load i64, i64* %envptr79723, align 8                                  ; load; *envptr79723
  %_9574510 = call i64 @prim_car(i64 %rvp76423)                                      ; call prim_car
  %rvp76422 = call i64 @prim_cdr(i64 %rvp76423)                                      ; call prim_cdr
  %a74368 = call i64 @prim_car(i64 %rvp76422)                                        ; call prim_car
  %na76418 = call i64 @prim_cdr(i64 %rvp76422)                                       ; call prim_cdr
  %retprim74511 = call i64 @prim__43(i64 %a74363, i64 %a74368)                       ; call prim__43
  %arg75358 = add i64 0, 0                                                           ; quoted ()
  %rva76421 = add i64 0, 0                                                           ; quoted ()
  %rva76420 = call i64 @prim_cons(i64 %retprim74511, i64 %rva76421)                  ; call prim_cons
  %rva76419 = call i64 @prim_cons(i64 %arg75358, i64 %rva76420)                      ; call prim_cons
  %cloptr79724 = inttoptr i64 %cont74507 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79725 = getelementptr inbounds i64, i64* %cloptr79724, i64 0                 ; &cloptr79724[0]
  %f79727 = load i64, i64* %i0ptr79725, align 8                                      ; load; *i0ptr79725
  %fptr79726 = inttoptr i64 %f79727 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79726(i64 %cont74507, i64 %rva76419)                ; tail call
  ret void
}


define void @lam77247(i64 %env77248, i64 %rvp76495) {
  %envptr79728 = inttoptr i64 %env77248 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79729 = getelementptr inbounds i64, i64* %envptr79728, i64 1                ; &envptr79728[1]
  %dzI$ok_63 = load i64, i64* %envptr79729, align 8                                  ; load; *envptr79729
  %cont74516 = call i64 @prim_car(i64 %rvp76495)                                     ; call prim_car
  %rvp76494 = call i64 @prim_cdr(i64 %rvp76495)                                      ; call prim_cdr
  %z0U$row = call i64 @prim_car(i64 %rvp76494)                                       ; call prim_car
  %rvp76493 = call i64 @prim_cdr(i64 %rvp76494)                                      ; call prim_cdr
  %M67$dist = call i64 @prim_car(i64 %rvp76493)                                      ; call prim_car
  %rvp76492 = call i64 @prim_cdr(i64 %rvp76493)                                      ; call prim_cdr
  %mZh$placed = call i64 @prim_car(i64 %rvp76492)                                    ; call prim_car
  %na76477 = call i64 @prim_cdr(i64 %rvp76492)                                       ; call prim_cdr
  %a74369 = call i64 @prim_null_63(i64 %mZh$placed)                                  ; call prim_null_63
  %cmp79730 = icmp eq i64 %a74369, 15                                                ; false?
  br i1 %cmp79730, label %else79732, label %then79731                                ; if

then79731:
  %arg75384 = add i64 0, 0                                                           ; quoted ()
  %arg75383 = call i64 @const_init_true()                                            ; quoted #t
  %rva76480 = add i64 0, 0                                                           ; quoted ()
  %rva76479 = call i64 @prim_cons(i64 %arg75383, i64 %rva76480)                      ; call prim_cons
  %rva76478 = call i64 @prim_cons(i64 %arg75384, i64 %rva76479)                      ; call prim_cons
  %cloptr79733 = inttoptr i64 %cont74516 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79734 = getelementptr inbounds i64, i64* %cloptr79733, i64 0                 ; &cloptr79733[0]
  %f79736 = load i64, i64* %i0ptr79734, align 8                                      ; load; *i0ptr79734
  %fptr79735 = inttoptr i64 %f79736 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79735(i64 %cont74516, i64 %rva76478)                ; tail call
  ret void

else79732:
  %a74370 = call i64 @prim_car(i64 %mZh$placed)                                      ; call prim_car
  %a74371 = call i64 @prim__43(i64 %z0U$row, i64 %M67$dist)                          ; call prim__43
  %a74372 = call i64 @prim__61(i64 %a74370, i64 %a74371)                             ; call prim__61
  %a74373 = call i64 @prim_not(i64 %a74372)                                          ; call prim_not
  %cmp79737 = icmp eq i64 %a74373, 15                                                ; false?
  br i1 %cmp79737, label %else79739, label %then79738                                ; if

then79738:
  %a74374 = call i64 @prim_car(i64 %mZh$placed)                                      ; call prim_car
  %a74375 = call i64 @prim__45(i64 %z0U$row, i64 %M67$dist)                          ; call prim__45
  %a74376 = call i64 @prim__61(i64 %a74374, i64 %a74375)                             ; call prim__61
  %a74377 = call i64 @prim_not(i64 %a74376)                                          ; call prim_not
  %cmp79740 = icmp eq i64 %a74377, 15                                                ; false?
  br i1 %cmp79740, label %else79742, label %then79741                                ; if

then79741:
  %arg75398 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74378 = call i64 @prim_vector_45ref(i64 %dzI$ok_63, i64 %arg75398)               ; call prim_vector_45ref
  %arg75400 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a74379 = call i64 @prim__43(i64 %M67$dist, i64 %arg75400)                         ; call prim__43
  %a74380 = call i64 @prim_cdr(i64 %mZh$placed)                                      ; call prim_cdr
  %rva76485 = add i64 0, 0                                                           ; quoted ()
  %rva76484 = call i64 @prim_cons(i64 %a74380, i64 %rva76485)                        ; call prim_cons
  %rva76483 = call i64 @prim_cons(i64 %a74379, i64 %rva76484)                        ; call prim_cons
  %rva76482 = call i64 @prim_cons(i64 %z0U$row, i64 %rva76483)                       ; call prim_cons
  %rva76481 = call i64 @prim_cons(i64 %cont74516, i64 %rva76482)                     ; call prim_cons
  %cloptr79743 = inttoptr i64 %a74378 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79744 = getelementptr inbounds i64, i64* %cloptr79743, i64 0                 ; &cloptr79743[0]
  %f79746 = load i64, i64* %i0ptr79744, align 8                                      ; load; *i0ptr79744
  %fptr79745 = inttoptr i64 %f79746 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79745(i64 %a74378, i64 %rva76481)                   ; tail call
  ret void

else79742:
  %arg75409 = add i64 0, 0                                                           ; quoted ()
  %arg75408 = call i64 @const_init_false()                                           ; quoted #f
  %rva76488 = add i64 0, 0                                                           ; quoted ()
  %rva76487 = call i64 @prim_cons(i64 %arg75408, i64 %rva76488)                      ; call prim_cons
  %rva76486 = call i64 @prim_cons(i64 %arg75409, i64 %rva76487)                      ; call prim_cons
  %cloptr79747 = inttoptr i64 %cont74516 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79748 = getelementptr inbounds i64, i64* %cloptr79747, i64 0                 ; &cloptr79747[0]
  %f79750 = load i64, i64* %i0ptr79748, align 8                                      ; load; *i0ptr79748
  %fptr79749 = inttoptr i64 %f79750 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79749(i64 %cont74516, i64 %rva76486)                ; tail call
  ret void

else79739:
  %arg75412 = add i64 0, 0                                                           ; quoted ()
  %arg75411 = call i64 @const_init_false()                                           ; quoted #f
  %rva76491 = add i64 0, 0                                                           ; quoted ()
  %rva76490 = call i64 @prim_cons(i64 %arg75411, i64 %rva76491)                      ; call prim_cons
  %rva76489 = call i64 @prim_cons(i64 %arg75412, i64 %rva76490)                      ; call prim_cons
  %cloptr79751 = inttoptr i64 %cont74516 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79752 = getelementptr inbounds i64, i64* %cloptr79751, i64 0                 ; &cloptr79751[0]
  %f79754 = load i64, i64* %i0ptr79752, align 8                                      ; load; *i0ptr79752
  %fptr79753 = inttoptr i64 %f79754 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79753(i64 %cont74516, i64 %rva76489)                ; tail call
  ret void
}


define void @lam77231(i64 %env77232, i64 %rvp76522) {
  %envptr79755 = inttoptr i64 %env77232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79756 = getelementptr inbounds i64, i64* %envptr79755, i64 2                ; &envptr79755[2]
  %a74381 = load i64, i64* %envptr79756, align 8                                     ; load; *envptr79756
  %envptr79757 = inttoptr i64 %env77232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79758 = getelementptr inbounds i64, i64* %envptr79757, i64 1                ; &envptr79757[1]
  %cont74493 = load i64, i64* %envptr79758, align 8                                  ; load; *envptr79758
  %_9574517 = call i64 @prim_car(i64 %rvp76522)                                      ; call prim_car
  %rvp76521 = call i64 @prim_cdr(i64 %rvp76522)                                      ; call prim_cdr
  %a74383 = call i64 @prim_car(i64 %rvp76521)                                        ; call prim_car
  %na76497 = call i64 @prim_cdr(i64 %rvp76521)                                       ; call prim_cdr
  %cloptr79759 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79760 = getelementptr inbounds i64, i64* %cloptr79759, i64 0                  ; &cloptr79759[0]
  %f79761 = ptrtoint void(i64,i64)* @lam77229 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79761, i64* %eptr79760                                                 ; store fptr
  %arg75422 = ptrtoint i64* %cloptr79759 to i64                                      ; closure cast; i64* -> i64
  %cloptr79762 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr79764 = getelementptr inbounds i64, i64* %cloptr79762, i64 1                  ; &eptr79764[1]
  %eptr79765 = getelementptr inbounds i64, i64* %cloptr79762, i64 2                  ; &eptr79765[2]
  %eptr79766 = getelementptr inbounds i64, i64* %cloptr79762, i64 3                  ; &eptr79766[3]
  store i64 %cont74493, i64* %eptr79764                                              ; *eptr79764 = %cont74493
  store i64 %a74381, i64* %eptr79765                                                 ; *eptr79765 = %a74381
  store i64 %a74383, i64* %eptr79766                                                 ; *eptr79766 = %a74383
  %eptr79763 = getelementptr inbounds i64, i64* %cloptr79762, i64 0                  ; &cloptr79762[0]
  %f79767 = ptrtoint void(i64,i64)* @lam77225 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79767, i64* %eptr79763                                                 ; store fptr
  %arg75421 = ptrtoint i64* %cloptr79762 to i64                                      ; closure cast; i64* -> i64
  %rva76520 = add i64 0, 0                                                           ; quoted ()
  %rva76519 = call i64 @prim_cons(i64 %arg75421, i64 %rva76520)                      ; call prim_cons
  %cloptr79768 = inttoptr i64 %arg75422 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79769 = getelementptr inbounds i64, i64* %cloptr79768, i64 0                 ; &cloptr79768[0]
  %f79771 = load i64, i64* %i0ptr79769, align 8                                      ; load; *i0ptr79769
  %fptr79770 = inttoptr i64 %f79771 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79770(i64 %arg75422, i64 %rva76519)                 ; tail call
  ret void
}


define void @lam77229(i64 %env77230, i64 %KQM$lst74523) {
  %cont74522 = call i64 @prim_car(i64 %KQM$lst74523)                                 ; call prim_car
  %KQM$lst = call i64 @prim_cdr(i64 %KQM$lst74523)                                   ; call prim_cdr
  %arg75426 = add i64 0, 0                                                           ; quoted ()
  %rva76500 = add i64 0, 0                                                           ; quoted ()
  %rva76499 = call i64 @prim_cons(i64 %KQM$lst, i64 %rva76500)                       ; call prim_cons
  %rva76498 = call i64 @prim_cons(i64 %arg75426, i64 %rva76499)                      ; call prim_cons
  %cloptr79772 = inttoptr i64 %cont74522 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79773 = getelementptr inbounds i64, i64* %cloptr79772, i64 0                 ; &cloptr79772[0]
  %f79775 = load i64, i64* %i0ptr79773, align 8                                      ; load; *i0ptr79773
  %fptr79774 = inttoptr i64 %f79775 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79774(i64 %cont74522, i64 %rva76498)                ; tail call
  ret void
}


define void @lam77225(i64 %env77226, i64 %rvp76518) {
  %envptr79776 = inttoptr i64 %env77226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79777 = getelementptr inbounds i64, i64* %envptr79776, i64 3                ; &envptr79776[3]
  %a74383 = load i64, i64* %envptr79777, align 8                                     ; load; *envptr79777
  %envptr79778 = inttoptr i64 %env77226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79779 = getelementptr inbounds i64, i64* %envptr79778, i64 2                ; &envptr79778[2]
  %a74381 = load i64, i64* %envptr79779, align 8                                     ; load; *envptr79779
  %envptr79780 = inttoptr i64 %env77226 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79781 = getelementptr inbounds i64, i64* %envptr79780, i64 1                ; &envptr79780[1]
  %cont74493 = load i64, i64* %envptr79781, align 8                                  ; load; *envptr79781
  %_9574518 = call i64 @prim_car(i64 %rvp76518)                                      ; call prim_car
  %rvp76517 = call i64 @prim_cdr(i64 %rvp76518)                                      ; call prim_cdr
  %a74384 = call i64 @prim_car(i64 %rvp76517)                                        ; call prim_car
  %na76502 = call i64 @prim_cdr(i64 %rvp76517)                                       ; call prim_cdr
  %cloptr79782 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79783 = getelementptr inbounds i64, i64* %cloptr79782, i64 0                  ; &cloptr79782[0]
  %f79784 = ptrtoint void(i64,i64)* @lam77223 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79784, i64* %eptr79783                                                 ; store fptr
  %arg75429 = ptrtoint i64* %cloptr79782 to i64                                      ; closure cast; i64* -> i64
  %cloptr79785 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79787 = getelementptr inbounds i64, i64* %cloptr79785, i64 1                  ; &eptr79787[1]
  %eptr79788 = getelementptr inbounds i64, i64* %cloptr79785, i64 2                  ; &eptr79788[2]
  %eptr79789 = getelementptr inbounds i64, i64* %cloptr79785, i64 3                  ; &eptr79789[3]
  %eptr79790 = getelementptr inbounds i64, i64* %cloptr79785, i64 4                  ; &eptr79790[4]
  store i64 %cont74493, i64* %eptr79787                                              ; *eptr79787 = %cont74493
  store i64 %a74381, i64* %eptr79788                                                 ; *eptr79788 = %a74381
  store i64 %a74383, i64* %eptr79789                                                 ; *eptr79789 = %a74383
  store i64 %a74384, i64* %eptr79790                                                 ; *eptr79790 = %a74384
  %eptr79786 = getelementptr inbounds i64, i64* %cloptr79785, i64 0                  ; &cloptr79785[0]
  %f79791 = ptrtoint void(i64,i64)* @lam77219 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79791, i64* %eptr79786                                                 ; store fptr
  %arg75428 = ptrtoint i64* %cloptr79785 to i64                                      ; closure cast; i64* -> i64
  %rva76516 = add i64 0, 0                                                           ; quoted ()
  %rva76515 = call i64 @prim_cons(i64 %arg75428, i64 %rva76516)                      ; call prim_cons
  %cloptr79792 = inttoptr i64 %arg75429 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79793 = getelementptr inbounds i64, i64* %cloptr79792, i64 0                 ; &cloptr79792[0]
  %f79795 = load i64, i64* %i0ptr79793, align 8                                      ; load; *i0ptr79793
  %fptr79794 = inttoptr i64 %f79795 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79794(i64 %arg75429, i64 %rva76515)                 ; tail call
  ret void
}


define void @lam77223(i64 %env77224, i64 %tBk$lst74521) {
  %cont74520 = call i64 @prim_car(i64 %tBk$lst74521)                                 ; call prim_car
  %tBk$lst = call i64 @prim_cdr(i64 %tBk$lst74521)                                   ; call prim_cdr
  %arg75433 = add i64 0, 0                                                           ; quoted ()
  %rva76505 = add i64 0, 0                                                           ; quoted ()
  %rva76504 = call i64 @prim_cons(i64 %tBk$lst, i64 %rva76505)                       ; call prim_cons
  %rva76503 = call i64 @prim_cons(i64 %arg75433, i64 %rva76504)                      ; call prim_cons
  %cloptr79796 = inttoptr i64 %cont74520 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79797 = getelementptr inbounds i64, i64* %cloptr79796, i64 0                 ; &cloptr79796[0]
  %f79799 = load i64, i64* %i0ptr79797, align 8                                      ; load; *i0ptr79797
  %fptr79798 = inttoptr i64 %f79799 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79798(i64 %cont74520, i64 %rva76503)                ; tail call
  ret void
}


define void @lam77219(i64 %env77220, i64 %rvp76514) {
  %envptr79800 = inttoptr i64 %env77220 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79801 = getelementptr inbounds i64, i64* %envptr79800, i64 4                ; &envptr79800[4]
  %a74384 = load i64, i64* %envptr79801, align 8                                     ; load; *envptr79801
  %envptr79802 = inttoptr i64 %env77220 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79803 = getelementptr inbounds i64, i64* %envptr79802, i64 3                ; &envptr79802[3]
  %a74383 = load i64, i64* %envptr79803, align 8                                     ; load; *envptr79803
  %envptr79804 = inttoptr i64 %env77220 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79805 = getelementptr inbounds i64, i64* %envptr79804, i64 2                ; &envptr79804[2]
  %a74381 = load i64, i64* %envptr79805, align 8                                     ; load; *envptr79805
  %envptr79806 = inttoptr i64 %env77220 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79807 = getelementptr inbounds i64, i64* %envptr79806, i64 1                ; &envptr79806[1]
  %cont74493 = load i64, i64* %envptr79807, align 8                                  ; load; *envptr79807
  %_9574519 = call i64 @prim_car(i64 %rvp76514)                                      ; call prim_car
  %rvp76513 = call i64 @prim_cdr(i64 %rvp76514)                                      ; call prim_cdr
  %a74385 = call i64 @prim_car(i64 %rvp76513)                                        ; call prim_car
  %na76507 = call i64 @prim_cdr(i64 %rvp76513)                                       ; call prim_cdr
  %rva76512 = add i64 0, 0                                                           ; quoted ()
  %rva76511 = call i64 @prim_cons(i64 %a74385, i64 %rva76512)                        ; call prim_cons
  %rva76510 = call i64 @prim_cons(i64 %a74384, i64 %rva76511)                        ; call prim_cons
  %rva76509 = call i64 @prim_cons(i64 %a74383, i64 %rva76510)                        ; call prim_cons
  %rva76508 = call i64 @prim_cons(i64 %cont74493, i64 %rva76509)                     ; call prim_cons
  %cloptr79808 = inttoptr i64 %a74381 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr79809 = getelementptr inbounds i64, i64* %cloptr79808, i64 0                 ; &cloptr79808[0]
  %f79811 = load i64, i64* %i0ptr79809, align 8                                      ; load; *i0ptr79809
  %fptr79810 = inttoptr i64 %f79811 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79810(i64 %a74381, i64 %rva76508)                   ; tail call
  ret void
}


define void @lam77203(i64 %env77204, i64 %rvp76560) {
  %_950 = call i64 @prim_car(i64 %rvp76560)                                          ; call prim_car
  %rvp76559 = call i64 @prim_cdr(i64 %rvp76560)                                      ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp76559)                                             ; call prim_car
  %na76556 = call i64 @prim_cdr(i64 %rvp76559)                                       ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva76558 = add i64 0, 0                                                           ; quoted ()
  %rva76557 = call i64 @prim_cons(i64 %_951, i64 %rva76558)                          ; call prim_cons
  %cloptr79812 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  %i0ptr79813 = getelementptr inbounds i64, i64* %cloptr79812, i64 0                 ; &cloptr79812[0]
  %f79815 = load i64, i64* %i0ptr79813, align 8                                      ; load; *i0ptr79813
  %fptr79814 = inttoptr i64 %f79815 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79814(i64 %_951, i64 %rva76557)                     ; tail call
  ret void
}


define void @lam77189(i64 %env77190, i64 %rvp76687) {
  %envptr79816 = inttoptr i64 %env77190 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79817 = getelementptr inbounds i64, i64* %envptr79816, i64 3                ; &envptr79816[3]
  %ovI$_37map1 = load i64, i64* %envptr79817, align 8                                ; load; *envptr79817
  %envptr79818 = inttoptr i64 %env77190 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79819 = getelementptr inbounds i64, i64* %envptr79818, i64 2                ; &envptr79818[2]
  %CdI$_37foldr = load i64, i64* %envptr79819, align 8                               ; load; *envptr79819
  %envptr79820 = inttoptr i64 %env77190 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79821 = getelementptr inbounds i64, i64* %envptr79820, i64 1                ; &envptr79820[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr79821, align 8                              ; load; *envptr79821
  %cont74550 = call i64 @prim_car(i64 %rvp76687)                                     ; call prim_car
  %rvp76686 = call i64 @prim_cdr(i64 %rvp76687)                                      ; call prim_cdr
  %tuR$_37foldl = call i64 @prim_car(i64 %rvp76686)                                  ; call prim_car
  %na76594 = call i64 @prim_cdr(i64 %rvp76686)                                       ; call prim_cdr
  %arg75449 = add i64 0, 0                                                           ; quoted ()
  %cloptr79822 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79824 = getelementptr inbounds i64, i64* %cloptr79822, i64 1                  ; &eptr79824[1]
  %eptr79825 = getelementptr inbounds i64, i64* %cloptr79822, i64 2                  ; &eptr79825[2]
  %eptr79826 = getelementptr inbounds i64, i64* %cloptr79822, i64 3                  ; &eptr79826[3]
  %eptr79827 = getelementptr inbounds i64, i64* %cloptr79822, i64 4                  ; &eptr79827[4]
  store i64 %tuR$_37foldl, i64* %eptr79824                                           ; *eptr79824 = %tuR$_37foldl
  store i64 %Cyf$_37foldr1, i64* %eptr79825                                          ; *eptr79825 = %Cyf$_37foldr1
  store i64 %CdI$_37foldr, i64* %eptr79826                                           ; *eptr79826 = %CdI$_37foldr
  store i64 %ovI$_37map1, i64* %eptr79827                                            ; *eptr79827 = %ovI$_37map1
  %eptr79823 = getelementptr inbounds i64, i64* %cloptr79822, i64 0                  ; &cloptr79822[0]
  %f79828 = ptrtoint void(i64,i64)* @lam77186 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79828, i64* %eptr79823                                                 ; store fptr
  %arg75448 = ptrtoint i64* %cloptr79822 to i64                                      ; closure cast; i64* -> i64
  %rva76685 = add i64 0, 0                                                           ; quoted ()
  %rva76684 = call i64 @prim_cons(i64 %arg75448, i64 %rva76685)                      ; call prim_cons
  %rva76683 = call i64 @prim_cons(i64 %arg75449, i64 %rva76684)                      ; call prim_cons
  %cloptr79829 = inttoptr i64 %cont74550 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79830 = getelementptr inbounds i64, i64* %cloptr79829, i64 0                 ; &cloptr79829[0]
  %f79832 = load i64, i64* %i0ptr79830, align 8                                      ; load; *i0ptr79830
  %fptr79831 = inttoptr i64 %f79832 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79831(i64 %cont74550, i64 %rva76683)                ; tail call
  ret void
}


define void @lam77186(i64 %env77187, i64 %tQK$args74552) {
  %envptr79833 = inttoptr i64 %env77187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79834 = getelementptr inbounds i64, i64* %envptr79833, i64 4                ; &envptr79833[4]
  %ovI$_37map1 = load i64, i64* %envptr79834, align 8                                ; load; *envptr79834
  %envptr79835 = inttoptr i64 %env77187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79836 = getelementptr inbounds i64, i64* %envptr79835, i64 3                ; &envptr79835[3]
  %CdI$_37foldr = load i64, i64* %envptr79836, align 8                               ; load; *envptr79836
  %envptr79837 = inttoptr i64 %env77187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79838 = getelementptr inbounds i64, i64* %envptr79837, i64 2                ; &envptr79837[2]
  %Cyf$_37foldr1 = load i64, i64* %envptr79838, align 8                              ; load; *envptr79838
  %envptr79839 = inttoptr i64 %env77187 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79840 = getelementptr inbounds i64, i64* %envptr79839, i64 1                ; &envptr79839[1]
  %tuR$_37foldl = load i64, i64* %envptr79840, align 8                               ; load; *envptr79840
  %cont74551 = call i64 @prim_car(i64 %tQK$args74552)                                ; call prim_car
  %tQK$args = call i64 @prim_cdr(i64 %tQK$args74552)                                 ; call prim_cdr
  %I3e$f = call i64 @prim_car(i64 %tQK$args)                                         ; call prim_car
  %a74262 = call i64 @prim_cdr(i64 %tQK$args)                                        ; call prim_cdr
  %retprim74571 = call i64 @prim_car(i64 %a74262)                                    ; call prim_car
  %cloptr79841 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr79843 = getelementptr inbounds i64, i64* %cloptr79841, i64 1                  ; &eptr79843[1]
  %eptr79844 = getelementptr inbounds i64, i64* %cloptr79841, i64 2                  ; &eptr79844[2]
  %eptr79845 = getelementptr inbounds i64, i64* %cloptr79841, i64 3                  ; &eptr79845[3]
  %eptr79846 = getelementptr inbounds i64, i64* %cloptr79841, i64 4                  ; &eptr79846[4]
  %eptr79847 = getelementptr inbounds i64, i64* %cloptr79841, i64 5                  ; &eptr79847[5]
  %eptr79848 = getelementptr inbounds i64, i64* %cloptr79841, i64 6                  ; &eptr79848[6]
  %eptr79849 = getelementptr inbounds i64, i64* %cloptr79841, i64 7                  ; &eptr79849[7]
  store i64 %tQK$args, i64* %eptr79843                                               ; *eptr79843 = %tQK$args
  store i64 %tuR$_37foldl, i64* %eptr79844                                           ; *eptr79844 = %tuR$_37foldl
  store i64 %Cyf$_37foldr1, i64* %eptr79845                                          ; *eptr79845 = %Cyf$_37foldr1
  store i64 %I3e$f, i64* %eptr79846                                                  ; *eptr79846 = %I3e$f
  store i64 %CdI$_37foldr, i64* %eptr79847                                           ; *eptr79847 = %CdI$_37foldr
  store i64 %ovI$_37map1, i64* %eptr79848                                            ; *eptr79848 = %ovI$_37map1
  store i64 %cont74551, i64* %eptr79849                                              ; *eptr79849 = %cont74551
  %eptr79842 = getelementptr inbounds i64, i64* %cloptr79841, i64 0                  ; &cloptr79841[0]
  %f79850 = ptrtoint void(i64,i64)* @lam77184 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79850, i64* %eptr79842                                                 ; store fptr
  %arg75458 = ptrtoint i64* %cloptr79841 to i64                                      ; closure cast; i64* -> i64
  %arg75457 = add i64 0, 0                                                           ; quoted ()
  %rva76682 = add i64 0, 0                                                           ; quoted ()
  %rva76681 = call i64 @prim_cons(i64 %retprim74571, i64 %rva76682)                  ; call prim_cons
  %rva76680 = call i64 @prim_cons(i64 %arg75457, i64 %rva76681)                      ; call prim_cons
  %cloptr79851 = inttoptr i64 %arg75458 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79852 = getelementptr inbounds i64, i64* %cloptr79851, i64 0                 ; &cloptr79851[0]
  %f79854 = load i64, i64* %i0ptr79852, align 8                                      ; load; *i0ptr79852
  %fptr79853 = inttoptr i64 %f79854 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79853(i64 %arg75458, i64 %rva76680)                 ; tail call
  ret void
}


define void @lam77184(i64 %env77185, i64 %rvp76679) {
  %envptr79855 = inttoptr i64 %env77185 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79856 = getelementptr inbounds i64, i64* %envptr79855, i64 7                ; &envptr79855[7]
  %cont74551 = load i64, i64* %envptr79856, align 8                                  ; load; *envptr79856
  %envptr79857 = inttoptr i64 %env77185 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79858 = getelementptr inbounds i64, i64* %envptr79857, i64 6                ; &envptr79857[6]
  %ovI$_37map1 = load i64, i64* %envptr79858, align 8                                ; load; *envptr79858
  %envptr79859 = inttoptr i64 %env77185 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79860 = getelementptr inbounds i64, i64* %envptr79859, i64 5                ; &envptr79859[5]
  %CdI$_37foldr = load i64, i64* %envptr79860, align 8                               ; load; *envptr79860
  %envptr79861 = inttoptr i64 %env77185 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79862 = getelementptr inbounds i64, i64* %envptr79861, i64 4                ; &envptr79861[4]
  %I3e$f = load i64, i64* %envptr79862, align 8                                      ; load; *envptr79862
  %envptr79863 = inttoptr i64 %env77185 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79864 = getelementptr inbounds i64, i64* %envptr79863, i64 3                ; &envptr79863[3]
  %Cyf$_37foldr1 = load i64, i64* %envptr79864, align 8                              ; load; *envptr79864
  %envptr79865 = inttoptr i64 %env77185 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79866 = getelementptr inbounds i64, i64* %envptr79865, i64 2                ; &envptr79865[2]
  %tuR$_37foldl = load i64, i64* %envptr79866, align 8                               ; load; *envptr79866
  %envptr79867 = inttoptr i64 %env77185 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79868 = getelementptr inbounds i64, i64* %envptr79867, i64 1                ; &envptr79867[1]
  %tQK$args = load i64, i64* %envptr79868, align 8                                   ; load; *envptr79868
  %_9574553 = call i64 @prim_car(i64 %rvp76679)                                      ; call prim_car
  %rvp76678 = call i64 @prim_cdr(i64 %rvp76679)                                      ; call prim_cdr
  %E0J$acc = call i64 @prim_car(i64 %rvp76678)                                       ; call prim_car
  %na76596 = call i64 @prim_cdr(i64 %rvp76678)                                       ; call prim_cdr
  %a74263 = call i64 @prim_cdr(i64 %tQK$args)                                        ; call prim_cdr
  %retprim74570 = call i64 @prim_cdr(i64 %a74263)                                    ; call prim_cdr
  %cloptr79869 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr79871 = getelementptr inbounds i64, i64* %cloptr79869, i64 1                  ; &eptr79871[1]
  %eptr79872 = getelementptr inbounds i64, i64* %cloptr79869, i64 2                  ; &eptr79872[2]
  %eptr79873 = getelementptr inbounds i64, i64* %cloptr79869, i64 3                  ; &eptr79873[3]
  %eptr79874 = getelementptr inbounds i64, i64* %cloptr79869, i64 4                  ; &eptr79874[4]
  %eptr79875 = getelementptr inbounds i64, i64* %cloptr79869, i64 5                  ; &eptr79875[5]
  %eptr79876 = getelementptr inbounds i64, i64* %cloptr79869, i64 6                  ; &eptr79876[6]
  %eptr79877 = getelementptr inbounds i64, i64* %cloptr79869, i64 7                  ; &eptr79877[7]
  store i64 %E0J$acc, i64* %eptr79871                                                ; *eptr79871 = %E0J$acc
  store i64 %tuR$_37foldl, i64* %eptr79872                                           ; *eptr79872 = %tuR$_37foldl
  store i64 %Cyf$_37foldr1, i64* %eptr79873                                          ; *eptr79873 = %Cyf$_37foldr1
  store i64 %I3e$f, i64* %eptr79874                                                  ; *eptr79874 = %I3e$f
  store i64 %CdI$_37foldr, i64* %eptr79875                                           ; *eptr79875 = %CdI$_37foldr
  store i64 %ovI$_37map1, i64* %eptr79876                                            ; *eptr79876 = %ovI$_37map1
  store i64 %cont74551, i64* %eptr79877                                              ; *eptr79877 = %cont74551
  %eptr79870 = getelementptr inbounds i64, i64* %cloptr79869, i64 0                  ; &cloptr79869[0]
  %f79878 = ptrtoint void(i64,i64)* @lam77182 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79878, i64* %eptr79870                                                 ; store fptr
  %arg75463 = ptrtoint i64* %cloptr79869 to i64                                      ; closure cast; i64* -> i64
  %arg75462 = add i64 0, 0                                                           ; quoted ()
  %rva76677 = add i64 0, 0                                                           ; quoted ()
  %rva76676 = call i64 @prim_cons(i64 %retprim74570, i64 %rva76677)                  ; call prim_cons
  %rva76675 = call i64 @prim_cons(i64 %arg75462, i64 %rva76676)                      ; call prim_cons
  %cloptr79879 = inttoptr i64 %arg75463 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr79880 = getelementptr inbounds i64, i64* %cloptr79879, i64 0                 ; &cloptr79879[0]
  %f79882 = load i64, i64* %i0ptr79880, align 8                                      ; load; *i0ptr79880
  %fptr79881 = inttoptr i64 %f79882 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79881(i64 %arg75463, i64 %rva76675)                 ; tail call
  ret void
}


define void @lam77182(i64 %env77183, i64 %rvp76674) {
  %envptr79883 = inttoptr i64 %env77183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79884 = getelementptr inbounds i64, i64* %envptr79883, i64 7                ; &envptr79883[7]
  %cont74551 = load i64, i64* %envptr79884, align 8                                  ; load; *envptr79884
  %envptr79885 = inttoptr i64 %env77183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79886 = getelementptr inbounds i64, i64* %envptr79885, i64 6                ; &envptr79885[6]
  %ovI$_37map1 = load i64, i64* %envptr79886, align 8                                ; load; *envptr79886
  %envptr79887 = inttoptr i64 %env77183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79888 = getelementptr inbounds i64, i64* %envptr79887, i64 5                ; &envptr79887[5]
  %CdI$_37foldr = load i64, i64* %envptr79888, align 8                               ; load; *envptr79888
  %envptr79889 = inttoptr i64 %env77183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79890 = getelementptr inbounds i64, i64* %envptr79889, i64 4                ; &envptr79889[4]
  %I3e$f = load i64, i64* %envptr79890, align 8                                      ; load; *envptr79890
  %envptr79891 = inttoptr i64 %env77183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79892 = getelementptr inbounds i64, i64* %envptr79891, i64 3                ; &envptr79891[3]
  %Cyf$_37foldr1 = load i64, i64* %envptr79892, align 8                              ; load; *envptr79892
  %envptr79893 = inttoptr i64 %env77183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79894 = getelementptr inbounds i64, i64* %envptr79893, i64 2                ; &envptr79893[2]
  %tuR$_37foldl = load i64, i64* %envptr79894, align 8                               ; load; *envptr79894
  %envptr79895 = inttoptr i64 %env77183 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79896 = getelementptr inbounds i64, i64* %envptr79895, i64 1                ; &envptr79895[1]
  %E0J$acc = load i64, i64* %envptr79896, align 8                                    ; load; *envptr79896
  %_9574554 = call i64 @prim_car(i64 %rvp76674)                                      ; call prim_car
  %rvp76673 = call i64 @prim_cdr(i64 %rvp76674)                                      ; call prim_cdr
  %Gxd$lsts = call i64 @prim_car(i64 %rvp76673)                                      ; call prim_car
  %na76598 = call i64 @prim_cdr(i64 %rvp76673)                                       ; call prim_cdr
  %cloptr79897 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr79899 = getelementptr inbounds i64, i64* %cloptr79897, i64 1                  ; &eptr79899[1]
  %eptr79900 = getelementptr inbounds i64, i64* %cloptr79897, i64 2                  ; &eptr79900[2]
  %eptr79901 = getelementptr inbounds i64, i64* %cloptr79897, i64 3                  ; &eptr79901[3]
  %eptr79902 = getelementptr inbounds i64, i64* %cloptr79897, i64 4                  ; &eptr79902[4]
  %eptr79903 = getelementptr inbounds i64, i64* %cloptr79897, i64 5                  ; &eptr79903[5]
  %eptr79904 = getelementptr inbounds i64, i64* %cloptr79897, i64 6                  ; &eptr79904[6]
  %eptr79905 = getelementptr inbounds i64, i64* %cloptr79897, i64 7                  ; &eptr79905[7]
  store i64 %E0J$acc, i64* %eptr79899                                                ; *eptr79899 = %E0J$acc
  store i64 %tuR$_37foldl, i64* %eptr79900                                           ; *eptr79900 = %tuR$_37foldl
  store i64 %Gxd$lsts, i64* %eptr79901                                               ; *eptr79901 = %Gxd$lsts
  store i64 %I3e$f, i64* %eptr79902                                                  ; *eptr79902 = %I3e$f
  store i64 %CdI$_37foldr, i64* %eptr79903                                           ; *eptr79903 = %CdI$_37foldr
  store i64 %ovI$_37map1, i64* %eptr79904                                            ; *eptr79904 = %ovI$_37map1
  store i64 %cont74551, i64* %eptr79905                                              ; *eptr79905 = %cont74551
  %eptr79898 = getelementptr inbounds i64, i64* %cloptr79897, i64 0                  ; &cloptr79897[0]
  %f79906 = ptrtoint void(i64,i64)* @lam77180 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79906, i64* %eptr79898                                                 ; store fptr
  %arg75467 = ptrtoint i64* %cloptr79897 to i64                                      ; closure cast; i64* -> i64
  %cloptr79907 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79908 = getelementptr inbounds i64, i64* %cloptr79907, i64 0                  ; &cloptr79907[0]
  %f79909 = ptrtoint void(i64,i64)* @lam77152 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79909, i64* %eptr79908                                                 ; store fptr
  %arg75466 = ptrtoint i64* %cloptr79907 to i64                                      ; closure cast; i64* -> i64
  %arg75465 = call i64 @const_init_false()                                           ; quoted #f
  %rva76672 = add i64 0, 0                                                           ; quoted ()
  %rva76671 = call i64 @prim_cons(i64 %Gxd$lsts, i64 %rva76672)                      ; call prim_cons
  %rva76670 = call i64 @prim_cons(i64 %arg75465, i64 %rva76671)                      ; call prim_cons
  %rva76669 = call i64 @prim_cons(i64 %arg75466, i64 %rva76670)                      ; call prim_cons
  %rva76668 = call i64 @prim_cons(i64 %arg75467, i64 %rva76669)                      ; call prim_cons
  %cloptr79910 = inttoptr i64 %Cyf$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr79911 = getelementptr inbounds i64, i64* %cloptr79910, i64 0                 ; &cloptr79910[0]
  %f79913 = load i64, i64* %i0ptr79911, align 8                                      ; load; *i0ptr79911
  %fptr79912 = inttoptr i64 %f79913 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79912(i64 %Cyf$_37foldr1, i64 %rva76668)            ; tail call
  ret void
}


define void @lam77180(i64 %env77181, i64 %rvp76656) {
  %envptr79914 = inttoptr i64 %env77181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79915 = getelementptr inbounds i64, i64* %envptr79914, i64 7                ; &envptr79914[7]
  %cont74551 = load i64, i64* %envptr79915, align 8                                  ; load; *envptr79915
  %envptr79916 = inttoptr i64 %env77181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79917 = getelementptr inbounds i64, i64* %envptr79916, i64 6                ; &envptr79916[6]
  %ovI$_37map1 = load i64, i64* %envptr79917, align 8                                ; load; *envptr79917
  %envptr79918 = inttoptr i64 %env77181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79919 = getelementptr inbounds i64, i64* %envptr79918, i64 5                ; &envptr79918[5]
  %CdI$_37foldr = load i64, i64* %envptr79919, align 8                               ; load; *envptr79919
  %envptr79920 = inttoptr i64 %env77181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79921 = getelementptr inbounds i64, i64* %envptr79920, i64 4                ; &envptr79920[4]
  %I3e$f = load i64, i64* %envptr79921, align 8                                      ; load; *envptr79921
  %envptr79922 = inttoptr i64 %env77181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79923 = getelementptr inbounds i64, i64* %envptr79922, i64 3                ; &envptr79922[3]
  %Gxd$lsts = load i64, i64* %envptr79923, align 8                                   ; load; *envptr79923
  %envptr79924 = inttoptr i64 %env77181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79925 = getelementptr inbounds i64, i64* %envptr79924, i64 2                ; &envptr79924[2]
  %tuR$_37foldl = load i64, i64* %envptr79925, align 8                               ; load; *envptr79925
  %envptr79926 = inttoptr i64 %env77181 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79927 = getelementptr inbounds i64, i64* %envptr79926, i64 1                ; &envptr79926[1]
  %E0J$acc = load i64, i64* %envptr79927, align 8                                    ; load; *envptr79927
  %_9574555 = call i64 @prim_car(i64 %rvp76656)                                      ; call prim_car
  %rvp76655 = call i64 @prim_cdr(i64 %rvp76656)                                      ; call prim_cdr
  %a74264 = call i64 @prim_car(i64 %rvp76655)                                        ; call prim_car
  %na76600 = call i64 @prim_cdr(i64 %rvp76655)                                       ; call prim_cdr
  %cmp79928 = icmp eq i64 %a74264, 15                                                ; false?
  br i1 %cmp79928, label %else79930, label %then79929                                ; if

then79929:
  %arg75470 = add i64 0, 0                                                           ; quoted ()
  %rva76603 = add i64 0, 0                                                           ; quoted ()
  %rva76602 = call i64 @prim_cons(i64 %E0J$acc, i64 %rva76603)                       ; call prim_cons
  %rva76601 = call i64 @prim_cons(i64 %arg75470, i64 %rva76602)                      ; call prim_cons
  %cloptr79931 = inttoptr i64 %cont74551 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr79932 = getelementptr inbounds i64, i64* %cloptr79931, i64 0                 ; &cloptr79931[0]
  %f79934 = load i64, i64* %i0ptr79932, align 8                                      ; load; *i0ptr79932
  %fptr79933 = inttoptr i64 %f79934 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79933(i64 %cont74551, i64 %rva76601)                ; tail call
  ret void

else79930:
  %cloptr79935 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr79937 = getelementptr inbounds i64, i64* %cloptr79935, i64 1                  ; &eptr79937[1]
  %eptr79938 = getelementptr inbounds i64, i64* %cloptr79935, i64 2                  ; &eptr79938[2]
  %eptr79939 = getelementptr inbounds i64, i64* %cloptr79935, i64 3                  ; &eptr79939[3]
  %eptr79940 = getelementptr inbounds i64, i64* %cloptr79935, i64 4                  ; &eptr79940[4]
  %eptr79941 = getelementptr inbounds i64, i64* %cloptr79935, i64 5                  ; &eptr79941[5]
  %eptr79942 = getelementptr inbounds i64, i64* %cloptr79935, i64 6                  ; &eptr79942[6]
  %eptr79943 = getelementptr inbounds i64, i64* %cloptr79935, i64 7                  ; &eptr79943[7]
  store i64 %E0J$acc, i64* %eptr79937                                                ; *eptr79937 = %E0J$acc
  store i64 %tuR$_37foldl, i64* %eptr79938                                           ; *eptr79938 = %tuR$_37foldl
  store i64 %Gxd$lsts, i64* %eptr79939                                               ; *eptr79939 = %Gxd$lsts
  store i64 %I3e$f, i64* %eptr79940                                                  ; *eptr79940 = %I3e$f
  store i64 %CdI$_37foldr, i64* %eptr79941                                           ; *eptr79941 = %CdI$_37foldr
  store i64 %ovI$_37map1, i64* %eptr79942                                            ; *eptr79942 = %ovI$_37map1
  store i64 %cont74551, i64* %eptr79943                                              ; *eptr79943 = %cont74551
  %eptr79936 = getelementptr inbounds i64, i64* %cloptr79935, i64 0                  ; &cloptr79935[0]
  %f79944 = ptrtoint void(i64,i64)* @lam77178 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79944, i64* %eptr79936                                                 ; store fptr
  %arg75474 = ptrtoint i64* %cloptr79935 to i64                                      ; closure cast; i64* -> i64
  %cloptr79945 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79946 = getelementptr inbounds i64, i64* %cloptr79945, i64 0                  ; &cloptr79945[0]
  %f79947 = ptrtoint void(i64,i64)* @lam77159 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79947, i64* %eptr79946                                                 ; store fptr
  %arg75473 = ptrtoint i64* %cloptr79945 to i64                                      ; closure cast; i64* -> i64
  %rva76654 = add i64 0, 0                                                           ; quoted ()
  %rva76653 = call i64 @prim_cons(i64 %Gxd$lsts, i64 %rva76654)                      ; call prim_cons
  %rva76652 = call i64 @prim_cons(i64 %arg75473, i64 %rva76653)                      ; call prim_cons
  %rva76651 = call i64 @prim_cons(i64 %arg75474, i64 %rva76652)                      ; call prim_cons
  %cloptr79948 = inttoptr i64 %ovI$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr79949 = getelementptr inbounds i64, i64* %cloptr79948, i64 0                 ; &cloptr79948[0]
  %f79951 = load i64, i64* %i0ptr79949, align 8                                      ; load; *i0ptr79949
  %fptr79950 = inttoptr i64 %f79951 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79950(i64 %ovI$_37map1, i64 %rva76651)              ; tail call
  ret void
}


define void @lam77178(i64 %env77179, i64 %rvp76643) {
  %envptr79952 = inttoptr i64 %env77179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79953 = getelementptr inbounds i64, i64* %envptr79952, i64 7                ; &envptr79952[7]
  %cont74551 = load i64, i64* %envptr79953, align 8                                  ; load; *envptr79953
  %envptr79954 = inttoptr i64 %env77179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79955 = getelementptr inbounds i64, i64* %envptr79954, i64 6                ; &envptr79954[6]
  %ovI$_37map1 = load i64, i64* %envptr79955, align 8                                ; load; *envptr79955
  %envptr79956 = inttoptr i64 %env77179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79957 = getelementptr inbounds i64, i64* %envptr79956, i64 5                ; &envptr79956[5]
  %CdI$_37foldr = load i64, i64* %envptr79957, align 8                               ; load; *envptr79957
  %envptr79958 = inttoptr i64 %env77179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79959 = getelementptr inbounds i64, i64* %envptr79958, i64 4                ; &envptr79958[4]
  %I3e$f = load i64, i64* %envptr79959, align 8                                      ; load; *envptr79959
  %envptr79960 = inttoptr i64 %env77179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79961 = getelementptr inbounds i64, i64* %envptr79960, i64 3                ; &envptr79960[3]
  %Gxd$lsts = load i64, i64* %envptr79961, align 8                                   ; load; *envptr79961
  %envptr79962 = inttoptr i64 %env77179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79963 = getelementptr inbounds i64, i64* %envptr79962, i64 2                ; &envptr79962[2]
  %tuR$_37foldl = load i64, i64* %envptr79963, align 8                               ; load; *envptr79963
  %envptr79964 = inttoptr i64 %env77179 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79965 = getelementptr inbounds i64, i64* %envptr79964, i64 1                ; &envptr79964[1]
  %E0J$acc = load i64, i64* %envptr79965, align 8                                    ; load; *envptr79965
  %_9574556 = call i64 @prim_car(i64 %rvp76643)                                      ; call prim_car
  %rvp76642 = call i64 @prim_cdr(i64 %rvp76643)                                      ; call prim_cdr
  %zjm$lsts_43 = call i64 @prim_car(i64 %rvp76642)                                   ; call prim_car
  %na76605 = call i64 @prim_cdr(i64 %rvp76642)                                       ; call prim_cdr
  %cloptr79966 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr79968 = getelementptr inbounds i64, i64* %cloptr79966, i64 1                  ; &eptr79968[1]
  %eptr79969 = getelementptr inbounds i64, i64* %cloptr79966, i64 2                  ; &eptr79969[2]
  %eptr79970 = getelementptr inbounds i64, i64* %cloptr79966, i64 3                  ; &eptr79970[3]
  %eptr79971 = getelementptr inbounds i64, i64* %cloptr79966, i64 4                  ; &eptr79971[4]
  %eptr79972 = getelementptr inbounds i64, i64* %cloptr79966, i64 5                  ; &eptr79972[5]
  %eptr79973 = getelementptr inbounds i64, i64* %cloptr79966, i64 6                  ; &eptr79973[6]
  store i64 %E0J$acc, i64* %eptr79968                                                ; *eptr79968 = %E0J$acc
  store i64 %tuR$_37foldl, i64* %eptr79969                                           ; *eptr79969 = %tuR$_37foldl
  store i64 %zjm$lsts_43, i64* %eptr79970                                            ; *eptr79970 = %zjm$lsts_43
  store i64 %I3e$f, i64* %eptr79971                                                  ; *eptr79971 = %I3e$f
  store i64 %CdI$_37foldr, i64* %eptr79972                                           ; *eptr79972 = %CdI$_37foldr
  store i64 %cont74551, i64* %eptr79973                                              ; *eptr79973 = %cont74551
  %eptr79967 = getelementptr inbounds i64, i64* %cloptr79966, i64 0                  ; &cloptr79966[0]
  %f79974 = ptrtoint void(i64,i64)* @lam77176 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79974, i64* %eptr79967                                                 ; store fptr
  %arg75478 = ptrtoint i64* %cloptr79966 to i64                                      ; closure cast; i64* -> i64
  %cloptr79975 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr79976 = getelementptr inbounds i64, i64* %cloptr79975, i64 0                  ; &cloptr79975[0]
  %f79977 = ptrtoint void(i64,i64)* @lam77164 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f79977, i64* %eptr79976                                                 ; store fptr
  %arg75477 = ptrtoint i64* %cloptr79975 to i64                                      ; closure cast; i64* -> i64
  %rva76641 = add i64 0, 0                                                           ; quoted ()
  %rva76640 = call i64 @prim_cons(i64 %Gxd$lsts, i64 %rva76641)                      ; call prim_cons
  %rva76639 = call i64 @prim_cons(i64 %arg75477, i64 %rva76640)                      ; call prim_cons
  %rva76638 = call i64 @prim_cons(i64 %arg75478, i64 %rva76639)                      ; call prim_cons
  %cloptr79978 = inttoptr i64 %ovI$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr79979 = getelementptr inbounds i64, i64* %cloptr79978, i64 0                 ; &cloptr79978[0]
  %f79981 = load i64, i64* %i0ptr79979, align 8                                      ; load; *i0ptr79979
  %fptr79980 = inttoptr i64 %f79981 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr79980(i64 %ovI$_37map1, i64 %rva76638)              ; tail call
  ret void
}


define void @lam77176(i64 %env77177, i64 %rvp76630) {
  %envptr79982 = inttoptr i64 %env77177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79983 = getelementptr inbounds i64, i64* %envptr79982, i64 6                ; &envptr79982[6]
  %cont74551 = load i64, i64* %envptr79983, align 8                                  ; load; *envptr79983
  %envptr79984 = inttoptr i64 %env77177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79985 = getelementptr inbounds i64, i64* %envptr79984, i64 5                ; &envptr79984[5]
  %CdI$_37foldr = load i64, i64* %envptr79985, align 8                               ; load; *envptr79985
  %envptr79986 = inttoptr i64 %env77177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79987 = getelementptr inbounds i64, i64* %envptr79986, i64 4                ; &envptr79986[4]
  %I3e$f = load i64, i64* %envptr79987, align 8                                      ; load; *envptr79987
  %envptr79988 = inttoptr i64 %env77177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79989 = getelementptr inbounds i64, i64* %envptr79988, i64 3                ; &envptr79988[3]
  %zjm$lsts_43 = load i64, i64* %envptr79989, align 8                                ; load; *envptr79989
  %envptr79990 = inttoptr i64 %env77177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79991 = getelementptr inbounds i64, i64* %envptr79990, i64 2                ; &envptr79990[2]
  %tuR$_37foldl = load i64, i64* %envptr79991, align 8                               ; load; *envptr79991
  %envptr79992 = inttoptr i64 %env77177 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr79993 = getelementptr inbounds i64, i64* %envptr79992, i64 1                ; &envptr79992[1]
  %E0J$acc = load i64, i64* %envptr79993, align 8                                    ; load; *envptr79993
  %_9574557 = call i64 @prim_car(i64 %rvp76630)                                      ; call prim_car
  %rvp76629 = call i64 @prim_cdr(i64 %rvp76630)                                      ; call prim_cdr
  %VkE$vs = call i64 @prim_car(i64 %rvp76629)                                        ; call prim_car
  %na76607 = call i64 @prim_cdr(i64 %rvp76629)                                       ; call prim_cdr
  %arg75480 = add i64 0, 0                                                           ; quoted ()
  %a74265 = call i64 @prim_cons(i64 %E0J$acc, i64 %arg75480)                         ; call prim_cons
  %cloptr79994 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr79996 = getelementptr inbounds i64, i64* %cloptr79994, i64 1                  ; &eptr79996[1]
  %eptr79997 = getelementptr inbounds i64, i64* %cloptr79994, i64 2                  ; &eptr79997[2]
  %eptr79998 = getelementptr inbounds i64, i64* %cloptr79994, i64 3                  ; &eptr79998[3]
  %eptr79999 = getelementptr inbounds i64, i64* %cloptr79994, i64 4                  ; &eptr79999[4]
  store i64 %tuR$_37foldl, i64* %eptr79996                                           ; *eptr79996 = %tuR$_37foldl
  store i64 %zjm$lsts_43, i64* %eptr79997                                            ; *eptr79997 = %zjm$lsts_43
  store i64 %I3e$f, i64* %eptr79998                                                  ; *eptr79998 = %I3e$f
  store i64 %cont74551, i64* %eptr79999                                              ; *eptr79999 = %cont74551
  %eptr79995 = getelementptr inbounds i64, i64* %cloptr79994, i64 0                  ; &cloptr79994[0]
  %f80000 = ptrtoint void(i64,i64)* @lam77173 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80000, i64* %eptr79995                                                 ; store fptr
  %arg75485 = ptrtoint i64* %cloptr79994 to i64                                      ; closure cast; i64* -> i64
  %cloptr80001 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr80002 = getelementptr inbounds i64, i64* %cloptr80001, i64 0                  ; &cloptr80001[0]
  %f80003 = ptrtoint void(i64,i64)* @lam77169 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80003, i64* %eptr80002                                                 ; store fptr
  %arg75484 = ptrtoint i64* %cloptr80001 to i64                                      ; closure cast; i64* -> i64
  %rva76628 = add i64 0, 0                                                           ; quoted ()
  %rva76627 = call i64 @prim_cons(i64 %VkE$vs, i64 %rva76628)                        ; call prim_cons
  %rva76626 = call i64 @prim_cons(i64 %a74265, i64 %rva76627)                        ; call prim_cons
  %rva76625 = call i64 @prim_cons(i64 %arg75484, i64 %rva76626)                      ; call prim_cons
  %rva76624 = call i64 @prim_cons(i64 %arg75485, i64 %rva76625)                      ; call prim_cons
  %cloptr80004 = inttoptr i64 %CdI$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr80005 = getelementptr inbounds i64, i64* %cloptr80004, i64 0                 ; &cloptr80004[0]
  %f80007 = load i64, i64* %i0ptr80005, align 8                                      ; load; *i0ptr80005
  %fptr80006 = inttoptr i64 %f80007 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80006(i64 %CdI$_37foldr, i64 %rva76624)             ; tail call
  ret void
}


define void @lam77173(i64 %env77174, i64 %rvp76615) {
  %envptr80008 = inttoptr i64 %env77174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80009 = getelementptr inbounds i64, i64* %envptr80008, i64 4                ; &envptr80008[4]
  %cont74551 = load i64, i64* %envptr80009, align 8                                  ; load; *envptr80009
  %envptr80010 = inttoptr i64 %env77174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80011 = getelementptr inbounds i64, i64* %envptr80010, i64 3                ; &envptr80010[3]
  %I3e$f = load i64, i64* %envptr80011, align 8                                      ; load; *envptr80011
  %envptr80012 = inttoptr i64 %env77174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80013 = getelementptr inbounds i64, i64* %envptr80012, i64 2                ; &envptr80012[2]
  %zjm$lsts_43 = load i64, i64* %envptr80013, align 8                                ; load; *envptr80013
  %envptr80014 = inttoptr i64 %env77174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80015 = getelementptr inbounds i64, i64* %envptr80014, i64 1                ; &envptr80014[1]
  %tuR$_37foldl = load i64, i64* %envptr80015, align 8                               ; load; *envptr80015
  %_9574560 = call i64 @prim_car(i64 %rvp76615)                                      ; call prim_car
  %rvp76614 = call i64 @prim_cdr(i64 %rvp76615)                                      ; call prim_cdr
  %a74266 = call i64 @prim_car(i64 %rvp76614)                                        ; call prim_car
  %na76609 = call i64 @prim_cdr(i64 %rvp76614)                                       ; call prim_cdr
  %cloptr80016 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr80018 = getelementptr inbounds i64, i64* %cloptr80016, i64 1                  ; &eptr80018[1]
  %eptr80019 = getelementptr inbounds i64, i64* %cloptr80016, i64 2                  ; &eptr80019[2]
  %eptr80020 = getelementptr inbounds i64, i64* %cloptr80016, i64 3                  ; &eptr80020[3]
  %eptr80021 = getelementptr inbounds i64, i64* %cloptr80016, i64 4                  ; &eptr80021[4]
  store i64 %tuR$_37foldl, i64* %eptr80018                                           ; *eptr80018 = %tuR$_37foldl
  store i64 %zjm$lsts_43, i64* %eptr80019                                            ; *eptr80019 = %zjm$lsts_43
  store i64 %I3e$f, i64* %eptr80020                                                  ; *eptr80020 = %I3e$f
  store i64 %cont74551, i64* %eptr80021                                              ; *eptr80021 = %cont74551
  %eptr80017 = getelementptr inbounds i64, i64* %cloptr80016, i64 0                  ; &cloptr80016[0]
  %f80022 = ptrtoint void(i64,i64)* @lam77171 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80022, i64* %eptr80017                                                 ; store fptr
  %arg75488 = ptrtoint i64* %cloptr80016 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst74561 = call i64 @prim_cons(i64 %arg75488, i64 %a74266)                  ; call prim_cons
  %cloptr80023 = inttoptr i64 %I3e$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr80024 = getelementptr inbounds i64, i64* %cloptr80023, i64 0                 ; &cloptr80023[0]
  %f80026 = load i64, i64* %i0ptr80024, align 8                                      ; load; *i0ptr80024
  %fptr80025 = inttoptr i64 %f80026 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80025(i64 %I3e$f, i64 %cps_45lst74561)              ; tail call
  ret void
}


define void @lam77171(i64 %env77172, i64 %rvp76613) {
  %envptr80027 = inttoptr i64 %env77172 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80028 = getelementptr inbounds i64, i64* %envptr80027, i64 4                ; &envptr80027[4]
  %cont74551 = load i64, i64* %envptr80028, align 8                                  ; load; *envptr80028
  %envptr80029 = inttoptr i64 %env77172 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80030 = getelementptr inbounds i64, i64* %envptr80029, i64 3                ; &envptr80029[3]
  %I3e$f = load i64, i64* %envptr80030, align 8                                      ; load; *envptr80030
  %envptr80031 = inttoptr i64 %env77172 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80032 = getelementptr inbounds i64, i64* %envptr80031, i64 2                ; &envptr80031[2]
  %zjm$lsts_43 = load i64, i64* %envptr80032, align 8                                ; load; *envptr80032
  %envptr80033 = inttoptr i64 %env77172 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80034 = getelementptr inbounds i64, i64* %envptr80033, i64 1                ; &envptr80033[1]
  %tuR$_37foldl = load i64, i64* %envptr80034, align 8                               ; load; *envptr80034
  %_9574558 = call i64 @prim_car(i64 %rvp76613)                                      ; call prim_car
  %rvp76612 = call i64 @prim_cdr(i64 %rvp76613)                                      ; call prim_cdr
  %odI$acc_43 = call i64 @prim_car(i64 %rvp76612)                                    ; call prim_car
  %na76611 = call i64 @prim_cdr(i64 %rvp76612)                                       ; call prim_cdr
  %a74267 = call i64 @prim_cons(i64 %odI$acc_43, i64 %zjm$lsts_43)                   ; call prim_cons
  %a74268 = call i64 @prim_cons(i64 %I3e$f, i64 %a74267)                             ; call prim_cons
  %cps_45lst74559 = call i64 @prim_cons(i64 %cont74551, i64 %a74268)                 ; call prim_cons
  %cloptr80035 = inttoptr i64 %tuR$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr80036 = getelementptr inbounds i64, i64* %cloptr80035, i64 0                 ; &cloptr80035[0]
  %f80038 = load i64, i64* %i0ptr80036, align 8                                      ; load; *i0ptr80036
  %fptr80037 = inttoptr i64 %f80038 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80037(i64 %tuR$_37foldl, i64 %cps_45lst74559)       ; tail call
  ret void
}


define void @lam77169(i64 %env77170, i64 %rvp76623) {
  %cont74562 = call i64 @prim_car(i64 %rvp76623)                                     ; call prim_car
  %rvp76622 = call i64 @prim_cdr(i64 %rvp76623)                                      ; call prim_cdr
  %cIP$a = call i64 @prim_car(i64 %rvp76622)                                         ; call prim_car
  %rvp76621 = call i64 @prim_cdr(i64 %rvp76622)                                      ; call prim_cdr
  %oxR$b = call i64 @prim_car(i64 %rvp76621)                                         ; call prim_car
  %na76617 = call i64 @prim_cdr(i64 %rvp76621)                                       ; call prim_cdr
  %retprim74563 = call i64 @prim_cons(i64 %cIP$a, i64 %oxR$b)                        ; call prim_cons
  %arg75498 = add i64 0, 0                                                           ; quoted ()
  %rva76620 = add i64 0, 0                                                           ; quoted ()
  %rva76619 = call i64 @prim_cons(i64 %retprim74563, i64 %rva76620)                  ; call prim_cons
  %rva76618 = call i64 @prim_cons(i64 %arg75498, i64 %rva76619)                      ; call prim_cons
  %cloptr80039 = inttoptr i64 %cont74562 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80040 = getelementptr inbounds i64, i64* %cloptr80039, i64 0                 ; &cloptr80039[0]
  %f80042 = load i64, i64* %i0ptr80040, align 8                                      ; load; *i0ptr80040
  %fptr80041 = inttoptr i64 %f80042 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80041(i64 %cont74562, i64 %rva76618)                ; tail call
  ret void
}


define void @lam77164(i64 %env77165, i64 %rvp76637) {
  %cont74564 = call i64 @prim_car(i64 %rvp76637)                                     ; call prim_car
  %rvp76636 = call i64 @prim_cdr(i64 %rvp76637)                                      ; call prim_cdr
  %uYK$x = call i64 @prim_car(i64 %rvp76636)                                         ; call prim_car
  %na76632 = call i64 @prim_cdr(i64 %rvp76636)                                       ; call prim_cdr
  %retprim74565 = call i64 @prim_car(i64 %uYK$x)                                     ; call prim_car
  %arg75502 = add i64 0, 0                                                           ; quoted ()
  %rva76635 = add i64 0, 0                                                           ; quoted ()
  %rva76634 = call i64 @prim_cons(i64 %retprim74565, i64 %rva76635)                  ; call prim_cons
  %rva76633 = call i64 @prim_cons(i64 %arg75502, i64 %rva76634)                      ; call prim_cons
  %cloptr80043 = inttoptr i64 %cont74564 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80044 = getelementptr inbounds i64, i64* %cloptr80043, i64 0                 ; &cloptr80043[0]
  %f80046 = load i64, i64* %i0ptr80044, align 8                                      ; load; *i0ptr80044
  %fptr80045 = inttoptr i64 %f80046 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80045(i64 %cont74564, i64 %rva76633)                ; tail call
  ret void
}


define void @lam77159(i64 %env77160, i64 %rvp76650) {
  %cont74566 = call i64 @prim_car(i64 %rvp76650)                                     ; call prim_car
  %rvp76649 = call i64 @prim_cdr(i64 %rvp76650)                                      ; call prim_cdr
  %qLv$x = call i64 @prim_car(i64 %rvp76649)                                         ; call prim_car
  %na76645 = call i64 @prim_cdr(i64 %rvp76649)                                       ; call prim_cdr
  %retprim74567 = call i64 @prim_cdr(i64 %qLv$x)                                     ; call prim_cdr
  %arg75506 = add i64 0, 0                                                           ; quoted ()
  %rva76648 = add i64 0, 0                                                           ; quoted ()
  %rva76647 = call i64 @prim_cons(i64 %retprim74567, i64 %rva76648)                  ; call prim_cons
  %rva76646 = call i64 @prim_cons(i64 %arg75506, i64 %rva76647)                      ; call prim_cons
  %cloptr80047 = inttoptr i64 %cont74566 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80048 = getelementptr inbounds i64, i64* %cloptr80047, i64 0                 ; &cloptr80047[0]
  %f80050 = load i64, i64* %i0ptr80048, align 8                                      ; load; *i0ptr80048
  %fptr80049 = inttoptr i64 %f80050 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80049(i64 %cont74566, i64 %rva76646)                ; tail call
  ret void
}


define void @lam77152(i64 %env77153, i64 %rvp76667) {
  %cont74568 = call i64 @prim_car(i64 %rvp76667)                                     ; call prim_car
  %rvp76666 = call i64 @prim_cdr(i64 %rvp76667)                                      ; call prim_cdr
  %ra9$lst = call i64 @prim_car(i64 %rvp76666)                                       ; call prim_car
  %rvp76665 = call i64 @prim_cdr(i64 %rvp76666)                                      ; call prim_cdr
  %XIO$b = call i64 @prim_car(i64 %rvp76665)                                         ; call prim_car
  %na76658 = call i64 @prim_cdr(i64 %rvp76665)                                       ; call prim_cdr
  %cmp80051 = icmp eq i64 %XIO$b, 15                                                 ; false?
  br i1 %cmp80051, label %else80053, label %then80052                                ; if

then80052:
  %arg75509 = add i64 0, 0                                                           ; quoted ()
  %rva76661 = add i64 0, 0                                                           ; quoted ()
  %rva76660 = call i64 @prim_cons(i64 %XIO$b, i64 %rva76661)                         ; call prim_cons
  %rva76659 = call i64 @prim_cons(i64 %arg75509, i64 %rva76660)                      ; call prim_cons
  %cloptr80054 = inttoptr i64 %cont74568 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80055 = getelementptr inbounds i64, i64* %cloptr80054, i64 0                 ; &cloptr80054[0]
  %f80057 = load i64, i64* %i0ptr80055, align 8                                      ; load; *i0ptr80055
  %fptr80056 = inttoptr i64 %f80057 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80056(i64 %cont74568, i64 %rva76659)                ; tail call
  ret void

else80053:
  %retprim74569 = call i64 @prim_null_63(i64 %ra9$lst)                               ; call prim_null_63
  %arg75513 = add i64 0, 0                                                           ; quoted ()
  %rva76664 = add i64 0, 0                                                           ; quoted ()
  %rva76663 = call i64 @prim_cons(i64 %retprim74569, i64 %rva76664)                  ; call prim_cons
  %rva76662 = call i64 @prim_cons(i64 %arg75513, i64 %rva76663)                      ; call prim_cons
  %cloptr80058 = inttoptr i64 %cont74568 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80059 = getelementptr inbounds i64, i64* %cloptr80058, i64 0                 ; &cloptr80058[0]
  %f80061 = load i64, i64* %i0ptr80059, align 8                                      ; load; *i0ptr80059
  %fptr80060 = inttoptr i64 %f80061 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80060(i64 %cont74568, i64 %rva76662)                ; tail call
  ret void
}


define void @lam77138(i64 %env77139, i64 %rvp76787) {
  %envptr80062 = inttoptr i64 %env77139 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80063 = getelementptr inbounds i64, i64* %envptr80062, i64 2                ; &envptr80062[2]
  %VtU$_37map1 = load i64, i64* %envptr80063, align 8                                ; load; *envptr80063
  %envptr80064 = inttoptr i64 %env77139 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80065 = getelementptr inbounds i64, i64* %envptr80064, i64 1                ; &envptr80064[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr80065, align 8                              ; load; *envptr80065
  %cont74572 = call i64 @prim_car(i64 %rvp76787)                                     ; call prim_car
  %rvp76786 = call i64 @prim_cdr(i64 %rvp76787)                                      ; call prim_cdr
  %ARx$_37foldr = call i64 @prim_car(i64 %rvp76786)                                  ; call prim_car
  %na76694 = call i64 @prim_cdr(i64 %rvp76786)                                       ; call prim_cdr
  %arg75516 = add i64 0, 0                                                           ; quoted ()
  %cloptr80066 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr80068 = getelementptr inbounds i64, i64* %cloptr80066, i64 1                  ; &eptr80068[1]
  %eptr80069 = getelementptr inbounds i64, i64* %cloptr80066, i64 2                  ; &eptr80069[2]
  %eptr80070 = getelementptr inbounds i64, i64* %cloptr80066, i64 3                  ; &eptr80070[3]
  store i64 %Cyf$_37foldr1, i64* %eptr80068                                          ; *eptr80068 = %Cyf$_37foldr1
  store i64 %ARx$_37foldr, i64* %eptr80069                                           ; *eptr80069 = %ARx$_37foldr
  store i64 %VtU$_37map1, i64* %eptr80070                                            ; *eptr80070 = %VtU$_37map1
  %eptr80067 = getelementptr inbounds i64, i64* %cloptr80066, i64 0                  ; &cloptr80066[0]
  %f80071 = ptrtoint void(i64,i64)* @lam77135 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80071, i64* %eptr80067                                                 ; store fptr
  %arg75515 = ptrtoint i64* %cloptr80066 to i64                                      ; closure cast; i64* -> i64
  %rva76785 = add i64 0, 0                                                           ; quoted ()
  %rva76784 = call i64 @prim_cons(i64 %arg75515, i64 %rva76785)                      ; call prim_cons
  %rva76783 = call i64 @prim_cons(i64 %arg75516, i64 %rva76784)                      ; call prim_cons
  %cloptr80072 = inttoptr i64 %cont74572 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80073 = getelementptr inbounds i64, i64* %cloptr80072, i64 0                 ; &cloptr80072[0]
  %f80075 = load i64, i64* %i0ptr80073, align 8                                      ; load; *i0ptr80073
  %fptr80074 = inttoptr i64 %f80075 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80074(i64 %cont74572, i64 %rva76783)                ; tail call
  ret void
}


define void @lam77135(i64 %env77136, i64 %x7W$args74574) {
  %envptr80076 = inttoptr i64 %env77136 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80077 = getelementptr inbounds i64, i64* %envptr80076, i64 3                ; &envptr80076[3]
  %VtU$_37map1 = load i64, i64* %envptr80077, align 8                                ; load; *envptr80077
  %envptr80078 = inttoptr i64 %env77136 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80079 = getelementptr inbounds i64, i64* %envptr80078, i64 2                ; &envptr80078[2]
  %ARx$_37foldr = load i64, i64* %envptr80079, align 8                               ; load; *envptr80079
  %envptr80080 = inttoptr i64 %env77136 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80081 = getelementptr inbounds i64, i64* %envptr80080, i64 1                ; &envptr80080[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr80081, align 8                              ; load; *envptr80081
  %cont74573 = call i64 @prim_car(i64 %x7W$args74574)                                ; call prim_car
  %x7W$args = call i64 @prim_cdr(i64 %x7W$args74574)                                 ; call prim_cdr
  %UyP$f = call i64 @prim_car(i64 %x7W$args)                                         ; call prim_car
  %a74248 = call i64 @prim_cdr(i64 %x7W$args)                                        ; call prim_cdr
  %retprim74593 = call i64 @prim_car(i64 %a74248)                                    ; call prim_car
  %cloptr80082 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr80084 = getelementptr inbounds i64, i64* %cloptr80082, i64 1                  ; &eptr80084[1]
  %eptr80085 = getelementptr inbounds i64, i64* %cloptr80082, i64 2                  ; &eptr80085[2]
  %eptr80086 = getelementptr inbounds i64, i64* %cloptr80082, i64 3                  ; &eptr80086[3]
  %eptr80087 = getelementptr inbounds i64, i64* %cloptr80082, i64 4                  ; &eptr80087[4]
  %eptr80088 = getelementptr inbounds i64, i64* %cloptr80082, i64 5                  ; &eptr80088[5]
  %eptr80089 = getelementptr inbounds i64, i64* %cloptr80082, i64 6                  ; &eptr80089[6]
  store i64 %Cyf$_37foldr1, i64* %eptr80084                                          ; *eptr80084 = %Cyf$_37foldr1
  store i64 %cont74573, i64* %eptr80085                                              ; *eptr80085 = %cont74573
  store i64 %ARx$_37foldr, i64* %eptr80086                                           ; *eptr80086 = %ARx$_37foldr
  store i64 %VtU$_37map1, i64* %eptr80087                                            ; *eptr80087 = %VtU$_37map1
  store i64 %x7W$args, i64* %eptr80088                                               ; *eptr80088 = %x7W$args
  store i64 %UyP$f, i64* %eptr80089                                                  ; *eptr80089 = %UyP$f
  %eptr80083 = getelementptr inbounds i64, i64* %cloptr80082, i64 0                  ; &cloptr80082[0]
  %f80090 = ptrtoint void(i64,i64)* @lam77133 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80090, i64* %eptr80083                                                 ; store fptr
  %arg75525 = ptrtoint i64* %cloptr80082 to i64                                      ; closure cast; i64* -> i64
  %arg75524 = add i64 0, 0                                                           ; quoted ()
  %rva76782 = add i64 0, 0                                                           ; quoted ()
  %rva76781 = call i64 @prim_cons(i64 %retprim74593, i64 %rva76782)                  ; call prim_cons
  %rva76780 = call i64 @prim_cons(i64 %arg75524, i64 %rva76781)                      ; call prim_cons
  %cloptr80091 = inttoptr i64 %arg75525 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr80092 = getelementptr inbounds i64, i64* %cloptr80091, i64 0                 ; &cloptr80091[0]
  %f80094 = load i64, i64* %i0ptr80092, align 8                                      ; load; *i0ptr80092
  %fptr80093 = inttoptr i64 %f80094 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80093(i64 %arg75525, i64 %rva76780)                 ; tail call
  ret void
}


define void @lam77133(i64 %env77134, i64 %rvp76779) {
  %envptr80095 = inttoptr i64 %env77134 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80096 = getelementptr inbounds i64, i64* %envptr80095, i64 6                ; &envptr80095[6]
  %UyP$f = load i64, i64* %envptr80096, align 8                                      ; load; *envptr80096
  %envptr80097 = inttoptr i64 %env77134 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80098 = getelementptr inbounds i64, i64* %envptr80097, i64 5                ; &envptr80097[5]
  %x7W$args = load i64, i64* %envptr80098, align 8                                   ; load; *envptr80098
  %envptr80099 = inttoptr i64 %env77134 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80100 = getelementptr inbounds i64, i64* %envptr80099, i64 4                ; &envptr80099[4]
  %VtU$_37map1 = load i64, i64* %envptr80100, align 8                                ; load; *envptr80100
  %envptr80101 = inttoptr i64 %env77134 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80102 = getelementptr inbounds i64, i64* %envptr80101, i64 3                ; &envptr80101[3]
  %ARx$_37foldr = load i64, i64* %envptr80102, align 8                               ; load; *envptr80102
  %envptr80103 = inttoptr i64 %env77134 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80104 = getelementptr inbounds i64, i64* %envptr80103, i64 2                ; &envptr80103[2]
  %cont74573 = load i64, i64* %envptr80104, align 8                                  ; load; *envptr80104
  %envptr80105 = inttoptr i64 %env77134 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80106 = getelementptr inbounds i64, i64* %envptr80105, i64 1                ; &envptr80105[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr80106, align 8                              ; load; *envptr80106
  %_9574575 = call i64 @prim_car(i64 %rvp76779)                                      ; call prim_car
  %rvp76778 = call i64 @prim_cdr(i64 %rvp76779)                                      ; call prim_cdr
  %n6H$acc = call i64 @prim_car(i64 %rvp76778)                                       ; call prim_car
  %na76696 = call i64 @prim_cdr(i64 %rvp76778)                                       ; call prim_cdr
  %a74249 = call i64 @prim_cdr(i64 %x7W$args)                                        ; call prim_cdr
  %retprim74592 = call i64 @prim_cdr(i64 %a74249)                                    ; call prim_cdr
  %cloptr80107 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr80109 = getelementptr inbounds i64, i64* %cloptr80107, i64 1                  ; &eptr80109[1]
  %eptr80110 = getelementptr inbounds i64, i64* %cloptr80107, i64 2                  ; &eptr80110[2]
  %eptr80111 = getelementptr inbounds i64, i64* %cloptr80107, i64 3                  ; &eptr80111[3]
  %eptr80112 = getelementptr inbounds i64, i64* %cloptr80107, i64 4                  ; &eptr80112[4]
  %eptr80113 = getelementptr inbounds i64, i64* %cloptr80107, i64 5                  ; &eptr80113[5]
  %eptr80114 = getelementptr inbounds i64, i64* %cloptr80107, i64 6                  ; &eptr80114[6]
  store i64 %n6H$acc, i64* %eptr80109                                                ; *eptr80109 = %n6H$acc
  store i64 %Cyf$_37foldr1, i64* %eptr80110                                          ; *eptr80110 = %Cyf$_37foldr1
  store i64 %cont74573, i64* %eptr80111                                              ; *eptr80111 = %cont74573
  store i64 %ARx$_37foldr, i64* %eptr80112                                           ; *eptr80112 = %ARx$_37foldr
  store i64 %VtU$_37map1, i64* %eptr80113                                            ; *eptr80113 = %VtU$_37map1
  store i64 %UyP$f, i64* %eptr80114                                                  ; *eptr80114 = %UyP$f
  %eptr80108 = getelementptr inbounds i64, i64* %cloptr80107, i64 0                  ; &cloptr80107[0]
  %f80115 = ptrtoint void(i64,i64)* @lam77131 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80115, i64* %eptr80108                                                 ; store fptr
  %arg75530 = ptrtoint i64* %cloptr80107 to i64                                      ; closure cast; i64* -> i64
  %arg75529 = add i64 0, 0                                                           ; quoted ()
  %rva76777 = add i64 0, 0                                                           ; quoted ()
  %rva76776 = call i64 @prim_cons(i64 %retprim74592, i64 %rva76777)                  ; call prim_cons
  %rva76775 = call i64 @prim_cons(i64 %arg75529, i64 %rva76776)                      ; call prim_cons
  %cloptr80116 = inttoptr i64 %arg75530 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr80117 = getelementptr inbounds i64, i64* %cloptr80116, i64 0                 ; &cloptr80116[0]
  %f80119 = load i64, i64* %i0ptr80117, align 8                                      ; load; *i0ptr80117
  %fptr80118 = inttoptr i64 %f80119 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80118(i64 %arg75530, i64 %rva76775)                 ; tail call
  ret void
}


define void @lam77131(i64 %env77132, i64 %rvp76774) {
  %envptr80120 = inttoptr i64 %env77132 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80121 = getelementptr inbounds i64, i64* %envptr80120, i64 6                ; &envptr80120[6]
  %UyP$f = load i64, i64* %envptr80121, align 8                                      ; load; *envptr80121
  %envptr80122 = inttoptr i64 %env77132 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80123 = getelementptr inbounds i64, i64* %envptr80122, i64 5                ; &envptr80122[5]
  %VtU$_37map1 = load i64, i64* %envptr80123, align 8                                ; load; *envptr80123
  %envptr80124 = inttoptr i64 %env77132 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80125 = getelementptr inbounds i64, i64* %envptr80124, i64 4                ; &envptr80124[4]
  %ARx$_37foldr = load i64, i64* %envptr80125, align 8                               ; load; *envptr80125
  %envptr80126 = inttoptr i64 %env77132 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80127 = getelementptr inbounds i64, i64* %envptr80126, i64 3                ; &envptr80126[3]
  %cont74573 = load i64, i64* %envptr80127, align 8                                  ; load; *envptr80127
  %envptr80128 = inttoptr i64 %env77132 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80129 = getelementptr inbounds i64, i64* %envptr80128, i64 2                ; &envptr80128[2]
  %Cyf$_37foldr1 = load i64, i64* %envptr80129, align 8                              ; load; *envptr80129
  %envptr80130 = inttoptr i64 %env77132 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80131 = getelementptr inbounds i64, i64* %envptr80130, i64 1                ; &envptr80130[1]
  %n6H$acc = load i64, i64* %envptr80131, align 8                                    ; load; *envptr80131
  %_9574576 = call i64 @prim_car(i64 %rvp76774)                                      ; call prim_car
  %rvp76773 = call i64 @prim_cdr(i64 %rvp76774)                                      ; call prim_cdr
  %kg5$lsts = call i64 @prim_car(i64 %rvp76773)                                      ; call prim_car
  %na76698 = call i64 @prim_cdr(i64 %rvp76773)                                       ; call prim_cdr
  %cloptr80132 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr80134 = getelementptr inbounds i64, i64* %cloptr80132, i64 1                  ; &eptr80134[1]
  %eptr80135 = getelementptr inbounds i64, i64* %cloptr80132, i64 2                  ; &eptr80135[2]
  %eptr80136 = getelementptr inbounds i64, i64* %cloptr80132, i64 3                  ; &eptr80136[3]
  %eptr80137 = getelementptr inbounds i64, i64* %cloptr80132, i64 4                  ; &eptr80137[4]
  %eptr80138 = getelementptr inbounds i64, i64* %cloptr80132, i64 5                  ; &eptr80138[5]
  %eptr80139 = getelementptr inbounds i64, i64* %cloptr80132, i64 6                  ; &eptr80139[6]
  %eptr80140 = getelementptr inbounds i64, i64* %cloptr80132, i64 7                  ; &eptr80140[7]
  store i64 %n6H$acc, i64* %eptr80134                                                ; *eptr80134 = %n6H$acc
  store i64 %Cyf$_37foldr1, i64* %eptr80135                                          ; *eptr80135 = %Cyf$_37foldr1
  store i64 %cont74573, i64* %eptr80136                                              ; *eptr80136 = %cont74573
  store i64 %kg5$lsts, i64* %eptr80137                                               ; *eptr80137 = %kg5$lsts
  store i64 %ARx$_37foldr, i64* %eptr80138                                           ; *eptr80138 = %ARx$_37foldr
  store i64 %VtU$_37map1, i64* %eptr80139                                            ; *eptr80139 = %VtU$_37map1
  store i64 %UyP$f, i64* %eptr80140                                                  ; *eptr80140 = %UyP$f
  %eptr80133 = getelementptr inbounds i64, i64* %cloptr80132, i64 0                  ; &cloptr80132[0]
  %f80141 = ptrtoint void(i64,i64)* @lam77129 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80141, i64* %eptr80133                                                 ; store fptr
  %arg75534 = ptrtoint i64* %cloptr80132 to i64                                      ; closure cast; i64* -> i64
  %cloptr80142 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr80143 = getelementptr inbounds i64, i64* %cloptr80142, i64 0                  ; &cloptr80142[0]
  %f80144 = ptrtoint void(i64,i64)* @lam77101 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80144, i64* %eptr80143                                                 ; store fptr
  %arg75533 = ptrtoint i64* %cloptr80142 to i64                                      ; closure cast; i64* -> i64
  %arg75532 = call i64 @const_init_false()                                           ; quoted #f
  %rva76772 = add i64 0, 0                                                           ; quoted ()
  %rva76771 = call i64 @prim_cons(i64 %kg5$lsts, i64 %rva76772)                      ; call prim_cons
  %rva76770 = call i64 @prim_cons(i64 %arg75532, i64 %rva76771)                      ; call prim_cons
  %rva76769 = call i64 @prim_cons(i64 %arg75533, i64 %rva76770)                      ; call prim_cons
  %rva76768 = call i64 @prim_cons(i64 %arg75534, i64 %rva76769)                      ; call prim_cons
  %cloptr80145 = inttoptr i64 %Cyf$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr80146 = getelementptr inbounds i64, i64* %cloptr80145, i64 0                 ; &cloptr80145[0]
  %f80148 = load i64, i64* %i0ptr80146, align 8                                      ; load; *i0ptr80146
  %fptr80147 = inttoptr i64 %f80148 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80147(i64 %Cyf$_37foldr1, i64 %rva76768)            ; tail call
  ret void
}


define void @lam77129(i64 %env77130, i64 %rvp76756) {
  %envptr80149 = inttoptr i64 %env77130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80150 = getelementptr inbounds i64, i64* %envptr80149, i64 7                ; &envptr80149[7]
  %UyP$f = load i64, i64* %envptr80150, align 8                                      ; load; *envptr80150
  %envptr80151 = inttoptr i64 %env77130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80152 = getelementptr inbounds i64, i64* %envptr80151, i64 6                ; &envptr80151[6]
  %VtU$_37map1 = load i64, i64* %envptr80152, align 8                                ; load; *envptr80152
  %envptr80153 = inttoptr i64 %env77130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80154 = getelementptr inbounds i64, i64* %envptr80153, i64 5                ; &envptr80153[5]
  %ARx$_37foldr = load i64, i64* %envptr80154, align 8                               ; load; *envptr80154
  %envptr80155 = inttoptr i64 %env77130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80156 = getelementptr inbounds i64, i64* %envptr80155, i64 4                ; &envptr80155[4]
  %kg5$lsts = load i64, i64* %envptr80156, align 8                                   ; load; *envptr80156
  %envptr80157 = inttoptr i64 %env77130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80158 = getelementptr inbounds i64, i64* %envptr80157, i64 3                ; &envptr80157[3]
  %cont74573 = load i64, i64* %envptr80158, align 8                                  ; load; *envptr80158
  %envptr80159 = inttoptr i64 %env77130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80160 = getelementptr inbounds i64, i64* %envptr80159, i64 2                ; &envptr80159[2]
  %Cyf$_37foldr1 = load i64, i64* %envptr80160, align 8                              ; load; *envptr80160
  %envptr80161 = inttoptr i64 %env77130 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80162 = getelementptr inbounds i64, i64* %envptr80161, i64 1                ; &envptr80161[1]
  %n6H$acc = load i64, i64* %envptr80162, align 8                                    ; load; *envptr80162
  %_9574577 = call i64 @prim_car(i64 %rvp76756)                                      ; call prim_car
  %rvp76755 = call i64 @prim_cdr(i64 %rvp76756)                                      ; call prim_cdr
  %a74250 = call i64 @prim_car(i64 %rvp76755)                                        ; call prim_car
  %na76700 = call i64 @prim_cdr(i64 %rvp76755)                                       ; call prim_cdr
  %cmp80163 = icmp eq i64 %a74250, 15                                                ; false?
  br i1 %cmp80163, label %else80165, label %then80164                                ; if

then80164:
  %arg75537 = add i64 0, 0                                                           ; quoted ()
  %rva76703 = add i64 0, 0                                                           ; quoted ()
  %rva76702 = call i64 @prim_cons(i64 %n6H$acc, i64 %rva76703)                       ; call prim_cons
  %rva76701 = call i64 @prim_cons(i64 %arg75537, i64 %rva76702)                      ; call prim_cons
  %cloptr80166 = inttoptr i64 %cont74573 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80167 = getelementptr inbounds i64, i64* %cloptr80166, i64 0                 ; &cloptr80166[0]
  %f80169 = load i64, i64* %i0ptr80167, align 8                                      ; load; *i0ptr80167
  %fptr80168 = inttoptr i64 %f80169 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80168(i64 %cont74573, i64 %rva76701)                ; tail call
  ret void

else80165:
  %cloptr80170 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr80172 = getelementptr inbounds i64, i64* %cloptr80170, i64 1                  ; &eptr80172[1]
  %eptr80173 = getelementptr inbounds i64, i64* %cloptr80170, i64 2                  ; &eptr80173[2]
  %eptr80174 = getelementptr inbounds i64, i64* %cloptr80170, i64 3                  ; &eptr80174[3]
  %eptr80175 = getelementptr inbounds i64, i64* %cloptr80170, i64 4                  ; &eptr80175[4]
  %eptr80176 = getelementptr inbounds i64, i64* %cloptr80170, i64 5                  ; &eptr80176[5]
  %eptr80177 = getelementptr inbounds i64, i64* %cloptr80170, i64 6                  ; &eptr80177[6]
  %eptr80178 = getelementptr inbounds i64, i64* %cloptr80170, i64 7                  ; &eptr80178[7]
  store i64 %n6H$acc, i64* %eptr80172                                                ; *eptr80172 = %n6H$acc
  store i64 %Cyf$_37foldr1, i64* %eptr80173                                          ; *eptr80173 = %Cyf$_37foldr1
  store i64 %cont74573, i64* %eptr80174                                              ; *eptr80174 = %cont74573
  store i64 %kg5$lsts, i64* %eptr80175                                               ; *eptr80175 = %kg5$lsts
  store i64 %ARx$_37foldr, i64* %eptr80176                                           ; *eptr80176 = %ARx$_37foldr
  store i64 %VtU$_37map1, i64* %eptr80177                                            ; *eptr80177 = %VtU$_37map1
  store i64 %UyP$f, i64* %eptr80178                                                  ; *eptr80178 = %UyP$f
  %eptr80171 = getelementptr inbounds i64, i64* %cloptr80170, i64 0                  ; &cloptr80170[0]
  %f80179 = ptrtoint void(i64,i64)* @lam77127 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80179, i64* %eptr80171                                                 ; store fptr
  %arg75541 = ptrtoint i64* %cloptr80170 to i64                                      ; closure cast; i64* -> i64
  %cloptr80180 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr80181 = getelementptr inbounds i64, i64* %cloptr80180, i64 0                  ; &cloptr80180[0]
  %f80182 = ptrtoint void(i64,i64)* @lam77108 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80182, i64* %eptr80181                                                 ; store fptr
  %arg75540 = ptrtoint i64* %cloptr80180 to i64                                      ; closure cast; i64* -> i64
  %rva76754 = add i64 0, 0                                                           ; quoted ()
  %rva76753 = call i64 @prim_cons(i64 %kg5$lsts, i64 %rva76754)                      ; call prim_cons
  %rva76752 = call i64 @prim_cons(i64 %arg75540, i64 %rva76753)                      ; call prim_cons
  %rva76751 = call i64 @prim_cons(i64 %arg75541, i64 %rva76752)                      ; call prim_cons
  %cloptr80183 = inttoptr i64 %VtU$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr80184 = getelementptr inbounds i64, i64* %cloptr80183, i64 0                 ; &cloptr80183[0]
  %f80186 = load i64, i64* %i0ptr80184, align 8                                      ; load; *i0ptr80184
  %fptr80185 = inttoptr i64 %f80186 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80185(i64 %VtU$_37map1, i64 %rva76751)              ; tail call
  ret void
}


define void @lam77127(i64 %env77128, i64 %rvp76743) {
  %envptr80187 = inttoptr i64 %env77128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80188 = getelementptr inbounds i64, i64* %envptr80187, i64 7                ; &envptr80187[7]
  %UyP$f = load i64, i64* %envptr80188, align 8                                      ; load; *envptr80188
  %envptr80189 = inttoptr i64 %env77128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80190 = getelementptr inbounds i64, i64* %envptr80189, i64 6                ; &envptr80189[6]
  %VtU$_37map1 = load i64, i64* %envptr80190, align 8                                ; load; *envptr80190
  %envptr80191 = inttoptr i64 %env77128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80192 = getelementptr inbounds i64, i64* %envptr80191, i64 5                ; &envptr80191[5]
  %ARx$_37foldr = load i64, i64* %envptr80192, align 8                               ; load; *envptr80192
  %envptr80193 = inttoptr i64 %env77128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80194 = getelementptr inbounds i64, i64* %envptr80193, i64 4                ; &envptr80193[4]
  %kg5$lsts = load i64, i64* %envptr80194, align 8                                   ; load; *envptr80194
  %envptr80195 = inttoptr i64 %env77128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80196 = getelementptr inbounds i64, i64* %envptr80195, i64 3                ; &envptr80195[3]
  %cont74573 = load i64, i64* %envptr80196, align 8                                  ; load; *envptr80196
  %envptr80197 = inttoptr i64 %env77128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80198 = getelementptr inbounds i64, i64* %envptr80197, i64 2                ; &envptr80197[2]
  %Cyf$_37foldr1 = load i64, i64* %envptr80198, align 8                              ; load; *envptr80198
  %envptr80199 = inttoptr i64 %env77128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80200 = getelementptr inbounds i64, i64* %envptr80199, i64 1                ; &envptr80199[1]
  %n6H$acc = load i64, i64* %envptr80200, align 8                                    ; load; *envptr80200
  %_9574578 = call i64 @prim_car(i64 %rvp76743)                                      ; call prim_car
  %rvp76742 = call i64 @prim_cdr(i64 %rvp76743)                                      ; call prim_cdr
  %jRh$lsts_43 = call i64 @prim_car(i64 %rvp76742)                                   ; call prim_car
  %na76705 = call i64 @prim_cdr(i64 %rvp76742)                                       ; call prim_cdr
  %cloptr80201 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr80203 = getelementptr inbounds i64, i64* %cloptr80201, i64 1                  ; &eptr80203[1]
  %eptr80204 = getelementptr inbounds i64, i64* %cloptr80201, i64 2                  ; &eptr80204[2]
  %eptr80205 = getelementptr inbounds i64, i64* %cloptr80201, i64 3                  ; &eptr80205[3]
  %eptr80206 = getelementptr inbounds i64, i64* %cloptr80201, i64 4                  ; &eptr80206[4]
  %eptr80207 = getelementptr inbounds i64, i64* %cloptr80201, i64 5                  ; &eptr80207[5]
  %eptr80208 = getelementptr inbounds i64, i64* %cloptr80201, i64 6                  ; &eptr80208[6]
  store i64 %n6H$acc, i64* %eptr80203                                                ; *eptr80203 = %n6H$acc
  store i64 %Cyf$_37foldr1, i64* %eptr80204                                          ; *eptr80204 = %Cyf$_37foldr1
  store i64 %cont74573, i64* %eptr80205                                              ; *eptr80205 = %cont74573
  store i64 %jRh$lsts_43, i64* %eptr80206                                            ; *eptr80206 = %jRh$lsts_43
  store i64 %ARx$_37foldr, i64* %eptr80207                                           ; *eptr80207 = %ARx$_37foldr
  store i64 %UyP$f, i64* %eptr80208                                                  ; *eptr80208 = %UyP$f
  %eptr80202 = getelementptr inbounds i64, i64* %cloptr80201, i64 0                  ; &cloptr80201[0]
  %f80209 = ptrtoint void(i64,i64)* @lam77125 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80209, i64* %eptr80202                                                 ; store fptr
  %arg75545 = ptrtoint i64* %cloptr80201 to i64                                      ; closure cast; i64* -> i64
  %cloptr80210 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr80211 = getelementptr inbounds i64, i64* %cloptr80210, i64 0                  ; &cloptr80210[0]
  %f80212 = ptrtoint void(i64,i64)* @lam77113 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80212, i64* %eptr80211                                                 ; store fptr
  %arg75544 = ptrtoint i64* %cloptr80210 to i64                                      ; closure cast; i64* -> i64
  %rva76741 = add i64 0, 0                                                           ; quoted ()
  %rva76740 = call i64 @prim_cons(i64 %kg5$lsts, i64 %rva76741)                      ; call prim_cons
  %rva76739 = call i64 @prim_cons(i64 %arg75544, i64 %rva76740)                      ; call prim_cons
  %rva76738 = call i64 @prim_cons(i64 %arg75545, i64 %rva76739)                      ; call prim_cons
  %cloptr80213 = inttoptr i64 %VtU$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr80214 = getelementptr inbounds i64, i64* %cloptr80213, i64 0                 ; &cloptr80213[0]
  %f80216 = load i64, i64* %i0ptr80214, align 8                                      ; load; *i0ptr80214
  %fptr80215 = inttoptr i64 %f80216 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80215(i64 %VtU$_37map1, i64 %rva76738)              ; tail call
  ret void
}


define void @lam77125(i64 %env77126, i64 %rvp76730) {
  %envptr80217 = inttoptr i64 %env77126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80218 = getelementptr inbounds i64, i64* %envptr80217, i64 6                ; &envptr80217[6]
  %UyP$f = load i64, i64* %envptr80218, align 8                                      ; load; *envptr80218
  %envptr80219 = inttoptr i64 %env77126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80220 = getelementptr inbounds i64, i64* %envptr80219, i64 5                ; &envptr80219[5]
  %ARx$_37foldr = load i64, i64* %envptr80220, align 8                               ; load; *envptr80220
  %envptr80221 = inttoptr i64 %env77126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80222 = getelementptr inbounds i64, i64* %envptr80221, i64 4                ; &envptr80221[4]
  %jRh$lsts_43 = load i64, i64* %envptr80222, align 8                                ; load; *envptr80222
  %envptr80223 = inttoptr i64 %env77126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80224 = getelementptr inbounds i64, i64* %envptr80223, i64 3                ; &envptr80223[3]
  %cont74573 = load i64, i64* %envptr80224, align 8                                  ; load; *envptr80224
  %envptr80225 = inttoptr i64 %env77126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80226 = getelementptr inbounds i64, i64* %envptr80225, i64 2                ; &envptr80225[2]
  %Cyf$_37foldr1 = load i64, i64* %envptr80226, align 8                              ; load; *envptr80226
  %envptr80227 = inttoptr i64 %env77126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80228 = getelementptr inbounds i64, i64* %envptr80227, i64 1                ; &envptr80227[1]
  %n6H$acc = load i64, i64* %envptr80228, align 8                                    ; load; *envptr80228
  %_9574579 = call i64 @prim_car(i64 %rvp76730)                                      ; call prim_car
  %rvp76729 = call i64 @prim_cdr(i64 %rvp76730)                                      ; call prim_cdr
  %MNi$vs = call i64 @prim_car(i64 %rvp76729)                                        ; call prim_car
  %na76707 = call i64 @prim_cdr(i64 %rvp76729)                                       ; call prim_cdr
  %a74251 = call i64 @prim_cons(i64 %n6H$acc, i64 %jRh$lsts_43)                      ; call prim_cons
  %a74252 = call i64 @prim_cons(i64 %UyP$f, i64 %a74251)                             ; call prim_cons
  %cloptr80229 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr80231 = getelementptr inbounds i64, i64* %cloptr80229, i64 1                  ; &eptr80231[1]
  %eptr80232 = getelementptr inbounds i64, i64* %cloptr80229, i64 2                  ; &eptr80232[2]
  %eptr80233 = getelementptr inbounds i64, i64* %cloptr80229, i64 3                  ; &eptr80233[3]
  %eptr80234 = getelementptr inbounds i64, i64* %cloptr80229, i64 4                  ; &eptr80234[4]
  store i64 %Cyf$_37foldr1, i64* %eptr80231                                          ; *eptr80231 = %Cyf$_37foldr1
  store i64 %cont74573, i64* %eptr80232                                              ; *eptr80232 = %cont74573
  store i64 %MNi$vs, i64* %eptr80233                                                 ; *eptr80233 = %MNi$vs
  store i64 %UyP$f, i64* %eptr80234                                                  ; *eptr80234 = %UyP$f
  %eptr80230 = getelementptr inbounds i64, i64* %cloptr80229, i64 0                  ; &cloptr80229[0]
  %f80235 = ptrtoint void(i64,i64)* @lam77123 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80235, i64* %eptr80230                                                 ; store fptr
  %arg75552 = ptrtoint i64* %cloptr80229 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst74585 = call i64 @prim_cons(i64 %arg75552, i64 %a74252)                  ; call prim_cons
  %cloptr80236 = inttoptr i64 %ARx$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr80237 = getelementptr inbounds i64, i64* %cloptr80236, i64 0                 ; &cloptr80236[0]
  %f80239 = load i64, i64* %i0ptr80237, align 8                                      ; load; *i0ptr80237
  %fptr80238 = inttoptr i64 %f80239 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80238(i64 %ARx$_37foldr, i64 %cps_45lst74585)       ; tail call
  ret void
}


define void @lam77123(i64 %env77124, i64 %rvp76728) {
  %envptr80240 = inttoptr i64 %env77124 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80241 = getelementptr inbounds i64, i64* %envptr80240, i64 4                ; &envptr80240[4]
  %UyP$f = load i64, i64* %envptr80241, align 8                                      ; load; *envptr80241
  %envptr80242 = inttoptr i64 %env77124 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80243 = getelementptr inbounds i64, i64* %envptr80242, i64 3                ; &envptr80242[3]
  %MNi$vs = load i64, i64* %envptr80243, align 8                                     ; load; *envptr80243
  %envptr80244 = inttoptr i64 %env77124 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80245 = getelementptr inbounds i64, i64* %envptr80244, i64 2                ; &envptr80244[2]
  %cont74573 = load i64, i64* %envptr80245, align 8                                  ; load; *envptr80245
  %envptr80246 = inttoptr i64 %env77124 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80247 = getelementptr inbounds i64, i64* %envptr80246, i64 1                ; &envptr80246[1]
  %Cyf$_37foldr1 = load i64, i64* %envptr80247, align 8                              ; load; *envptr80247
  %_9574580 = call i64 @prim_car(i64 %rvp76728)                                      ; call prim_car
  %rvp76727 = call i64 @prim_cdr(i64 %rvp76728)                                      ; call prim_cdr
  %a74253 = call i64 @prim_car(i64 %rvp76727)                                        ; call prim_car
  %na76709 = call i64 @prim_cdr(i64 %rvp76727)                                       ; call prim_cdr
  %arg75553 = add i64 0, 0                                                           ; quoted ()
  %a74254 = call i64 @prim_cons(i64 %a74253, i64 %arg75553)                          ; call prim_cons
  %cloptr80248 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr80250 = getelementptr inbounds i64, i64* %cloptr80248, i64 1                  ; &eptr80250[1]
  %eptr80251 = getelementptr inbounds i64, i64* %cloptr80248, i64 2                  ; &eptr80251[2]
  store i64 %cont74573, i64* %eptr80250                                              ; *eptr80250 = %cont74573
  store i64 %UyP$f, i64* %eptr80251                                                  ; *eptr80251 = %UyP$f
  %eptr80249 = getelementptr inbounds i64, i64* %cloptr80248, i64 0                  ; &cloptr80248[0]
  %f80252 = ptrtoint void(i64,i64)* @lam77120 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80252, i64* %eptr80249                                                 ; store fptr
  %arg75558 = ptrtoint i64* %cloptr80248 to i64                                      ; closure cast; i64* -> i64
  %cloptr80253 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr80254 = getelementptr inbounds i64, i64* %cloptr80253, i64 0                  ; &cloptr80253[0]
  %f80255 = ptrtoint void(i64,i64)* @lam77118 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80255, i64* %eptr80254                                                 ; store fptr
  %arg75557 = ptrtoint i64* %cloptr80253 to i64                                      ; closure cast; i64* -> i64
  %rva76726 = add i64 0, 0                                                           ; quoted ()
  %rva76725 = call i64 @prim_cons(i64 %MNi$vs, i64 %rva76726)                        ; call prim_cons
  %rva76724 = call i64 @prim_cons(i64 %a74254, i64 %rva76725)                        ; call prim_cons
  %rva76723 = call i64 @prim_cons(i64 %arg75557, i64 %rva76724)                      ; call prim_cons
  %rva76722 = call i64 @prim_cons(i64 %arg75558, i64 %rva76723)                      ; call prim_cons
  %cloptr80256 = inttoptr i64 %Cyf$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr80257 = getelementptr inbounds i64, i64* %cloptr80256, i64 0                 ; &cloptr80256[0]
  %f80259 = load i64, i64* %i0ptr80257, align 8                                      ; load; *i0ptr80257
  %fptr80258 = inttoptr i64 %f80259 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80258(i64 %Cyf$_37foldr1, i64 %rva76722)            ; tail call
  ret void
}


define void @lam77120(i64 %env77121, i64 %rvp76713) {
  %envptr80260 = inttoptr i64 %env77121 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80261 = getelementptr inbounds i64, i64* %envptr80260, i64 2                ; &envptr80260[2]
  %UyP$f = load i64, i64* %envptr80261, align 8                                      ; load; *envptr80261
  %envptr80262 = inttoptr i64 %env77121 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80263 = getelementptr inbounds i64, i64* %envptr80262, i64 1                ; &envptr80262[1]
  %cont74573 = load i64, i64* %envptr80263, align 8                                  ; load; *envptr80263
  %_9574581 = call i64 @prim_car(i64 %rvp76713)                                      ; call prim_car
  %rvp76712 = call i64 @prim_cdr(i64 %rvp76713)                                      ; call prim_cdr
  %a74255 = call i64 @prim_car(i64 %rvp76712)                                        ; call prim_car
  %na76711 = call i64 @prim_cdr(i64 %rvp76712)                                       ; call prim_cdr
  %cps_45lst74582 = call i64 @prim_cons(i64 %cont74573, i64 %a74255)                 ; call prim_cons
  %cloptr80264 = inttoptr i64 %UyP$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr80265 = getelementptr inbounds i64, i64* %cloptr80264, i64 0                 ; &cloptr80264[0]
  %f80267 = load i64, i64* %i0ptr80265, align 8                                      ; load; *i0ptr80265
  %fptr80266 = inttoptr i64 %f80267 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80266(i64 %UyP$f, i64 %cps_45lst74582)              ; tail call
  ret void
}


define void @lam77118(i64 %env77119, i64 %rvp76721) {
  %cont74583 = call i64 @prim_car(i64 %rvp76721)                                     ; call prim_car
  %rvp76720 = call i64 @prim_cdr(i64 %rvp76721)                                      ; call prim_cdr
  %uav$a = call i64 @prim_car(i64 %rvp76720)                                         ; call prim_car
  %rvp76719 = call i64 @prim_cdr(i64 %rvp76720)                                      ; call prim_cdr
  %Tbt$b = call i64 @prim_car(i64 %rvp76719)                                         ; call prim_car
  %na76715 = call i64 @prim_cdr(i64 %rvp76719)                                       ; call prim_cdr
  %retprim74584 = call i64 @prim_cons(i64 %uav$a, i64 %Tbt$b)                        ; call prim_cons
  %arg75565 = add i64 0, 0                                                           ; quoted ()
  %rva76718 = add i64 0, 0                                                           ; quoted ()
  %rva76717 = call i64 @prim_cons(i64 %retprim74584, i64 %rva76718)                  ; call prim_cons
  %rva76716 = call i64 @prim_cons(i64 %arg75565, i64 %rva76717)                      ; call prim_cons
  %cloptr80268 = inttoptr i64 %cont74583 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80269 = getelementptr inbounds i64, i64* %cloptr80268, i64 0                 ; &cloptr80268[0]
  %f80271 = load i64, i64* %i0ptr80269, align 8                                      ; load; *i0ptr80269
  %fptr80270 = inttoptr i64 %f80271 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80270(i64 %cont74583, i64 %rva76716)                ; tail call
  ret void
}


define void @lam77113(i64 %env77114, i64 %rvp76737) {
  %cont74586 = call i64 @prim_car(i64 %rvp76737)                                     ; call prim_car
  %rvp76736 = call i64 @prim_cdr(i64 %rvp76737)                                      ; call prim_cdr
  %bDS$x = call i64 @prim_car(i64 %rvp76736)                                         ; call prim_car
  %na76732 = call i64 @prim_cdr(i64 %rvp76736)                                       ; call prim_cdr
  %retprim74587 = call i64 @prim_car(i64 %bDS$x)                                     ; call prim_car
  %arg75569 = add i64 0, 0                                                           ; quoted ()
  %rva76735 = add i64 0, 0                                                           ; quoted ()
  %rva76734 = call i64 @prim_cons(i64 %retprim74587, i64 %rva76735)                  ; call prim_cons
  %rva76733 = call i64 @prim_cons(i64 %arg75569, i64 %rva76734)                      ; call prim_cons
  %cloptr80272 = inttoptr i64 %cont74586 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80273 = getelementptr inbounds i64, i64* %cloptr80272, i64 0                 ; &cloptr80272[0]
  %f80275 = load i64, i64* %i0ptr80273, align 8                                      ; load; *i0ptr80273
  %fptr80274 = inttoptr i64 %f80275 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80274(i64 %cont74586, i64 %rva76733)                ; tail call
  ret void
}


define void @lam77108(i64 %env77109, i64 %rvp76750) {
  %cont74588 = call i64 @prim_car(i64 %rvp76750)                                     ; call prim_car
  %rvp76749 = call i64 @prim_cdr(i64 %rvp76750)                                      ; call prim_cdr
  %I80$x = call i64 @prim_car(i64 %rvp76749)                                         ; call prim_car
  %na76745 = call i64 @prim_cdr(i64 %rvp76749)                                       ; call prim_cdr
  %retprim74589 = call i64 @prim_cdr(i64 %I80$x)                                     ; call prim_cdr
  %arg75573 = add i64 0, 0                                                           ; quoted ()
  %rva76748 = add i64 0, 0                                                           ; quoted ()
  %rva76747 = call i64 @prim_cons(i64 %retprim74589, i64 %rva76748)                  ; call prim_cons
  %rva76746 = call i64 @prim_cons(i64 %arg75573, i64 %rva76747)                      ; call prim_cons
  %cloptr80276 = inttoptr i64 %cont74588 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80277 = getelementptr inbounds i64, i64* %cloptr80276, i64 0                 ; &cloptr80276[0]
  %f80279 = load i64, i64* %i0ptr80277, align 8                                      ; load; *i0ptr80277
  %fptr80278 = inttoptr i64 %f80279 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80278(i64 %cont74588, i64 %rva76746)                ; tail call
  ret void
}


define void @lam77101(i64 %env77102, i64 %rvp76767) {
  %cont74590 = call i64 @prim_car(i64 %rvp76767)                                     ; call prim_car
  %rvp76766 = call i64 @prim_cdr(i64 %rvp76767)                                      ; call prim_cdr
  %Ezy$lst = call i64 @prim_car(i64 %rvp76766)                                       ; call prim_car
  %rvp76765 = call i64 @prim_cdr(i64 %rvp76766)                                      ; call prim_cdr
  %Z5P$b = call i64 @prim_car(i64 %rvp76765)                                         ; call prim_car
  %na76758 = call i64 @prim_cdr(i64 %rvp76765)                                       ; call prim_cdr
  %cmp80280 = icmp eq i64 %Z5P$b, 15                                                 ; false?
  br i1 %cmp80280, label %else80282, label %then80281                                ; if

then80281:
  %arg75576 = add i64 0, 0                                                           ; quoted ()
  %rva76761 = add i64 0, 0                                                           ; quoted ()
  %rva76760 = call i64 @prim_cons(i64 %Z5P$b, i64 %rva76761)                         ; call prim_cons
  %rva76759 = call i64 @prim_cons(i64 %arg75576, i64 %rva76760)                      ; call prim_cons
  %cloptr80283 = inttoptr i64 %cont74590 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80284 = getelementptr inbounds i64, i64* %cloptr80283, i64 0                 ; &cloptr80283[0]
  %f80286 = load i64, i64* %i0ptr80284, align 8                                      ; load; *i0ptr80284
  %fptr80285 = inttoptr i64 %f80286 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80285(i64 %cont74590, i64 %rva76759)                ; tail call
  ret void

else80282:
  %retprim74591 = call i64 @prim_null_63(i64 %Ezy$lst)                               ; call prim_null_63
  %arg75580 = add i64 0, 0                                                           ; quoted ()
  %rva76764 = add i64 0, 0                                                           ; quoted ()
  %rva76763 = call i64 @prim_cons(i64 %retprim74591, i64 %rva76764)                  ; call prim_cons
  %rva76762 = call i64 @prim_cons(i64 %arg75580, i64 %rva76763)                      ; call prim_cons
  %cloptr80287 = inttoptr i64 %cont74590 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80288 = getelementptr inbounds i64, i64* %cloptr80287, i64 0                 ; &cloptr80287[0]
  %f80290 = load i64, i64* %i0ptr80288, align 8                                      ; load; *i0ptr80288
  %fptr80289 = inttoptr i64 %f80290 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80289(i64 %cont74590, i64 %rva76762)                ; tail call
  ret void
}


define void @lam77087(i64 %env77088, i64 %rvp76821) {
  %cont74594 = call i64 @prim_car(i64 %rvp76821)                                     ; call prim_car
  %rvp76820 = call i64 @prim_cdr(i64 %rvp76821)                                      ; call prim_cdr
  %KQk$_37foldl1 = call i64 @prim_car(i64 %rvp76820)                                 ; call prim_car
  %na76794 = call i64 @prim_cdr(i64 %rvp76820)                                       ; call prim_cdr
  %arg75583 = add i64 0, 0                                                           ; quoted ()
  %cloptr80291 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr80293 = getelementptr inbounds i64, i64* %cloptr80291, i64 1                  ; &eptr80293[1]
  store i64 %KQk$_37foldl1, i64* %eptr80293                                          ; *eptr80293 = %KQk$_37foldl1
  %eptr80292 = getelementptr inbounds i64, i64* %cloptr80291, i64 0                  ; &cloptr80291[0]
  %f80294 = ptrtoint void(i64,i64)* @lam77084 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80294, i64* %eptr80292                                                 ; store fptr
  %arg75582 = ptrtoint i64* %cloptr80291 to i64                                      ; closure cast; i64* -> i64
  %rva76819 = add i64 0, 0                                                           ; quoted ()
  %rva76818 = call i64 @prim_cons(i64 %arg75582, i64 %rva76819)                      ; call prim_cons
  %rva76817 = call i64 @prim_cons(i64 %arg75583, i64 %rva76818)                      ; call prim_cons
  %cloptr80295 = inttoptr i64 %cont74594 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80296 = getelementptr inbounds i64, i64* %cloptr80295, i64 0                 ; &cloptr80295[0]
  %f80298 = load i64, i64* %i0ptr80296, align 8                                      ; load; *i0ptr80296
  %fptr80297 = inttoptr i64 %f80298 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80297(i64 %cont74594, i64 %rva76817)                ; tail call
  ret void
}


define void @lam77084(i64 %env77085, i64 %rvp76816) {
  %envptr80299 = inttoptr i64 %env77085 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80300 = getelementptr inbounds i64, i64* %envptr80299, i64 1                ; &envptr80299[1]
  %KQk$_37foldl1 = load i64, i64* %envptr80300, align 8                              ; load; *envptr80300
  %cont74595 = call i64 @prim_car(i64 %rvp76816)                                     ; call prim_car
  %rvp76815 = call i64 @prim_cdr(i64 %rvp76816)                                      ; call prim_cdr
  %QWZ$f = call i64 @prim_car(i64 %rvp76815)                                         ; call prim_car
  %rvp76814 = call i64 @prim_cdr(i64 %rvp76815)                                      ; call prim_cdr
  %uWm$acc = call i64 @prim_car(i64 %rvp76814)                                       ; call prim_car
  %rvp76813 = call i64 @prim_cdr(i64 %rvp76814)                                      ; call prim_cdr
  %gZs$lst = call i64 @prim_car(i64 %rvp76813)                                       ; call prim_car
  %na76796 = call i64 @prim_cdr(i64 %rvp76813)                                       ; call prim_cdr
  %a74242 = call i64 @prim_null_63(i64 %gZs$lst)                                     ; call prim_null_63
  %cmp80301 = icmp eq i64 %a74242, 15                                                ; false?
  br i1 %cmp80301, label %else80303, label %then80302                                ; if

then80302:
  %arg75587 = add i64 0, 0                                                           ; quoted ()
  %rva76799 = add i64 0, 0                                                           ; quoted ()
  %rva76798 = call i64 @prim_cons(i64 %uWm$acc, i64 %rva76799)                       ; call prim_cons
  %rva76797 = call i64 @prim_cons(i64 %arg75587, i64 %rva76798)                      ; call prim_cons
  %cloptr80304 = inttoptr i64 %cont74595 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80305 = getelementptr inbounds i64, i64* %cloptr80304, i64 0                 ; &cloptr80304[0]
  %f80307 = load i64, i64* %i0ptr80305, align 8                                      ; load; *i0ptr80305
  %fptr80306 = inttoptr i64 %f80307 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80306(i64 %cont74595, i64 %rva76797)                ; tail call
  ret void

else80303:
  %a74243 = call i64 @prim_car(i64 %gZs$lst)                                         ; call prim_car
  %cloptr80308 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr80310 = getelementptr inbounds i64, i64* %cloptr80308, i64 1                  ; &eptr80310[1]
  %eptr80311 = getelementptr inbounds i64, i64* %cloptr80308, i64 2                  ; &eptr80311[2]
  %eptr80312 = getelementptr inbounds i64, i64* %cloptr80308, i64 3                  ; &eptr80312[3]
  %eptr80313 = getelementptr inbounds i64, i64* %cloptr80308, i64 4                  ; &eptr80313[4]
  store i64 %KQk$_37foldl1, i64* %eptr80310                                          ; *eptr80310 = %KQk$_37foldl1
  store i64 %cont74595, i64* %eptr80311                                              ; *eptr80311 = %cont74595
  store i64 %QWZ$f, i64* %eptr80312                                                  ; *eptr80312 = %QWZ$f
  store i64 %gZs$lst, i64* %eptr80313                                                ; *eptr80313 = %gZs$lst
  %eptr80309 = getelementptr inbounds i64, i64* %cloptr80308, i64 0                  ; &cloptr80308[0]
  %f80314 = ptrtoint void(i64,i64)* @lam77082 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80314, i64* %eptr80309                                                 ; store fptr
  %arg75592 = ptrtoint i64* %cloptr80308 to i64                                      ; closure cast; i64* -> i64
  %rva76812 = add i64 0, 0                                                           ; quoted ()
  %rva76811 = call i64 @prim_cons(i64 %uWm$acc, i64 %rva76812)                       ; call prim_cons
  %rva76810 = call i64 @prim_cons(i64 %a74243, i64 %rva76811)                        ; call prim_cons
  %rva76809 = call i64 @prim_cons(i64 %arg75592, i64 %rva76810)                      ; call prim_cons
  %cloptr80315 = inttoptr i64 %QWZ$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr80316 = getelementptr inbounds i64, i64* %cloptr80315, i64 0                 ; &cloptr80315[0]
  %f80318 = load i64, i64* %i0ptr80316, align 8                                      ; load; *i0ptr80316
  %fptr80317 = inttoptr i64 %f80318 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80317(i64 %QWZ$f, i64 %rva76809)                    ; tail call
  ret void
}


define void @lam77082(i64 %env77083, i64 %rvp76808) {
  %envptr80319 = inttoptr i64 %env77083 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80320 = getelementptr inbounds i64, i64* %envptr80319, i64 4                ; &envptr80319[4]
  %gZs$lst = load i64, i64* %envptr80320, align 8                                    ; load; *envptr80320
  %envptr80321 = inttoptr i64 %env77083 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80322 = getelementptr inbounds i64, i64* %envptr80321, i64 3                ; &envptr80321[3]
  %QWZ$f = load i64, i64* %envptr80322, align 8                                      ; load; *envptr80322
  %envptr80323 = inttoptr i64 %env77083 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80324 = getelementptr inbounds i64, i64* %envptr80323, i64 2                ; &envptr80323[2]
  %cont74595 = load i64, i64* %envptr80324, align 8                                  ; load; *envptr80324
  %envptr80325 = inttoptr i64 %env77083 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80326 = getelementptr inbounds i64, i64* %envptr80325, i64 1                ; &envptr80325[1]
  %KQk$_37foldl1 = load i64, i64* %envptr80326, align 8                              ; load; *envptr80326
  %_9574596 = call i64 @prim_car(i64 %rvp76808)                                      ; call prim_car
  %rvp76807 = call i64 @prim_cdr(i64 %rvp76808)                                      ; call prim_cdr
  %a74244 = call i64 @prim_car(i64 %rvp76807)                                        ; call prim_car
  %na76801 = call i64 @prim_cdr(i64 %rvp76807)                                       ; call prim_cdr
  %a74245 = call i64 @prim_cdr(i64 %gZs$lst)                                         ; call prim_cdr
  %rva76806 = add i64 0, 0                                                           ; quoted ()
  %rva76805 = call i64 @prim_cons(i64 %a74245, i64 %rva76806)                        ; call prim_cons
  %rva76804 = call i64 @prim_cons(i64 %a74244, i64 %rva76805)                        ; call prim_cons
  %rva76803 = call i64 @prim_cons(i64 %QWZ$f, i64 %rva76804)                         ; call prim_cons
  %rva76802 = call i64 @prim_cons(i64 %cont74595, i64 %rva76803)                     ; call prim_cons
  %cloptr80327 = inttoptr i64 %KQk$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr80328 = getelementptr inbounds i64, i64* %cloptr80327, i64 0                 ; &cloptr80327[0]
  %f80330 = load i64, i64* %i0ptr80328, align 8                                      ; load; *i0ptr80328
  %fptr80329 = inttoptr i64 %f80330 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80329(i64 %KQk$_37foldl1, i64 %rva76802)            ; tail call
  ret void
}


define void @lam77074(i64 %env77075, i64 %rvp76850) {
  %cont74597 = call i64 @prim_car(i64 %rvp76850)                                     ; call prim_car
  %rvp76849 = call i64 @prim_cdr(i64 %rvp76850)                                      ; call prim_cdr
  %p5M$_37length = call i64 @prim_car(i64 %rvp76849)                                 ; call prim_car
  %na76828 = call i64 @prim_cdr(i64 %rvp76849)                                       ; call prim_cdr
  %arg75601 = add i64 0, 0                                                           ; quoted ()
  %cloptr80331 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr80333 = getelementptr inbounds i64, i64* %cloptr80331, i64 1                  ; &eptr80333[1]
  store i64 %p5M$_37length, i64* %eptr80333                                          ; *eptr80333 = %p5M$_37length
  %eptr80332 = getelementptr inbounds i64, i64* %cloptr80331, i64 0                  ; &cloptr80331[0]
  %f80334 = ptrtoint void(i64,i64)* @lam77071 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80334, i64* %eptr80332                                                 ; store fptr
  %arg75600 = ptrtoint i64* %cloptr80331 to i64                                      ; closure cast; i64* -> i64
  %rva76848 = add i64 0, 0                                                           ; quoted ()
  %rva76847 = call i64 @prim_cons(i64 %arg75600, i64 %rva76848)                      ; call prim_cons
  %rva76846 = call i64 @prim_cons(i64 %arg75601, i64 %rva76847)                      ; call prim_cons
  %cloptr80335 = inttoptr i64 %cont74597 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80336 = getelementptr inbounds i64, i64* %cloptr80335, i64 0                 ; &cloptr80335[0]
  %f80338 = load i64, i64* %i0ptr80336, align 8                                      ; load; *i0ptr80336
  %fptr80337 = inttoptr i64 %f80338 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80337(i64 %cont74597, i64 %rva76846)                ; tail call
  ret void
}


define void @lam77071(i64 %env77072, i64 %rvp76845) {
  %envptr80339 = inttoptr i64 %env77072 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80340 = getelementptr inbounds i64, i64* %envptr80339, i64 1                ; &envptr80339[1]
  %p5M$_37length = load i64, i64* %envptr80340, align 8                              ; load; *envptr80340
  %cont74598 = call i64 @prim_car(i64 %rvp76845)                                     ; call prim_car
  %rvp76844 = call i64 @prim_cdr(i64 %rvp76845)                                      ; call prim_cdr
  %BXb$lst = call i64 @prim_car(i64 %rvp76844)                                       ; call prim_car
  %na76830 = call i64 @prim_cdr(i64 %rvp76844)                                       ; call prim_cdr
  %a74239 = call i64 @prim_null_63(i64 %BXb$lst)                                     ; call prim_null_63
  %cmp80341 = icmp eq i64 %a74239, 15                                                ; false?
  br i1 %cmp80341, label %else80343, label %then80342                                ; if

then80342:
  %arg75605 = add i64 0, 0                                                           ; quoted ()
  %arg75604 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %rva76833 = add i64 0, 0                                                           ; quoted ()
  %rva76832 = call i64 @prim_cons(i64 %arg75604, i64 %rva76833)                      ; call prim_cons
  %rva76831 = call i64 @prim_cons(i64 %arg75605, i64 %rva76832)                      ; call prim_cons
  %cloptr80344 = inttoptr i64 %cont74598 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80345 = getelementptr inbounds i64, i64* %cloptr80344, i64 0                 ; &cloptr80344[0]
  %f80347 = load i64, i64* %i0ptr80345, align 8                                      ; load; *i0ptr80345
  %fptr80346 = inttoptr i64 %f80347 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80346(i64 %cont74598, i64 %rva76831)                ; tail call
  ret void

else80343:
  %a74240 = call i64 @prim_cdr(i64 %BXb$lst)                                         ; call prim_cdr
  %cloptr80348 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr80350 = getelementptr inbounds i64, i64* %cloptr80348, i64 1                  ; &eptr80350[1]
  store i64 %cont74598, i64* %eptr80350                                              ; *eptr80350 = %cont74598
  %eptr80349 = getelementptr inbounds i64, i64* %cloptr80348, i64 0                  ; &cloptr80348[0]
  %f80351 = ptrtoint void(i64,i64)* @lam77069 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80351, i64* %eptr80349                                                 ; store fptr
  %arg75609 = ptrtoint i64* %cloptr80348 to i64                                      ; closure cast; i64* -> i64
  %rva76843 = add i64 0, 0                                                           ; quoted ()
  %rva76842 = call i64 @prim_cons(i64 %a74240, i64 %rva76843)                        ; call prim_cons
  %rva76841 = call i64 @prim_cons(i64 %arg75609, i64 %rva76842)                      ; call prim_cons
  %cloptr80352 = inttoptr i64 %p5M$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr80353 = getelementptr inbounds i64, i64* %cloptr80352, i64 0                 ; &cloptr80352[0]
  %f80355 = load i64, i64* %i0ptr80353, align 8                                      ; load; *i0ptr80353
  %fptr80354 = inttoptr i64 %f80355 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80354(i64 %p5M$_37length, i64 %rva76841)            ; tail call
  ret void
}


define void @lam77069(i64 %env77070, i64 %rvp76840) {
  %envptr80356 = inttoptr i64 %env77070 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80357 = getelementptr inbounds i64, i64* %envptr80356, i64 1                ; &envptr80356[1]
  %cont74598 = load i64, i64* %envptr80357, align 8                                  ; load; *envptr80357
  %_9574599 = call i64 @prim_car(i64 %rvp76840)                                      ; call prim_car
  %rvp76839 = call i64 @prim_cdr(i64 %rvp76840)                                      ; call prim_cdr
  %a74241 = call i64 @prim_car(i64 %rvp76839)                                        ; call prim_car
  %na76835 = call i64 @prim_cdr(i64 %rvp76839)                                       ; call prim_cdr
  %arg75612 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim74600 = call i64 @prim__43(i64 %arg75612, i64 %a74241)                     ; call prim__43
  %arg75614 = add i64 0, 0                                                           ; quoted ()
  %rva76838 = add i64 0, 0                                                           ; quoted ()
  %rva76837 = call i64 @prim_cons(i64 %retprim74600, i64 %rva76838)                  ; call prim_cons
  %rva76836 = call i64 @prim_cons(i64 %arg75614, i64 %rva76837)                      ; call prim_cons
  %cloptr80358 = inttoptr i64 %cont74598 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80359 = getelementptr inbounds i64, i64* %cloptr80358, i64 0                 ; &cloptr80358[0]
  %f80361 = load i64, i64* %i0ptr80359, align 8                                      ; load; *i0ptr80359
  %fptr80360 = inttoptr i64 %f80361 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80360(i64 %cont74598, i64 %rva76836)                ; tail call
  ret void
}


define void @lam77058(i64 %env77059, i64 %rvp76884) {
  %cont74601 = call i64 @prim_car(i64 %rvp76884)                                     ; call prim_car
  %rvp76883 = call i64 @prim_cdr(i64 %rvp76884)                                      ; call prim_cdr
  %b10$_37take = call i64 @prim_car(i64 %rvp76883)                                   ; call prim_car
  %na76857 = call i64 @prim_cdr(i64 %rvp76883)                                       ; call prim_cdr
  %arg75617 = add i64 0, 0                                                           ; quoted ()
  %cloptr80362 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr80364 = getelementptr inbounds i64, i64* %cloptr80362, i64 1                  ; &eptr80364[1]
  store i64 %b10$_37take, i64* %eptr80364                                            ; *eptr80364 = %b10$_37take
  %eptr80363 = getelementptr inbounds i64, i64* %cloptr80362, i64 0                  ; &cloptr80362[0]
  %f80365 = ptrtoint void(i64,i64)* @lam77055 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80365, i64* %eptr80363                                                 ; store fptr
  %arg75616 = ptrtoint i64* %cloptr80362 to i64                                      ; closure cast; i64* -> i64
  %rva76882 = add i64 0, 0                                                           ; quoted ()
  %rva76881 = call i64 @prim_cons(i64 %arg75616, i64 %rva76882)                      ; call prim_cons
  %rva76880 = call i64 @prim_cons(i64 %arg75617, i64 %rva76881)                      ; call prim_cons
  %cloptr80366 = inttoptr i64 %cont74601 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80367 = getelementptr inbounds i64, i64* %cloptr80366, i64 0                 ; &cloptr80366[0]
  %f80369 = load i64, i64* %i0ptr80367, align 8                                      ; load; *i0ptr80367
  %fptr80368 = inttoptr i64 %f80369 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80368(i64 %cont74601, i64 %rva76880)                ; tail call
  ret void
}


define void @lam77055(i64 %env77056, i64 %rvp76879) {
  %envptr80370 = inttoptr i64 %env77056 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80371 = getelementptr inbounds i64, i64* %envptr80370, i64 1                ; &envptr80370[1]
  %b10$_37take = load i64, i64* %envptr80371, align 8                                ; load; *envptr80371
  %cont74602 = call i64 @prim_car(i64 %rvp76879)                                     ; call prim_car
  %rvp76878 = call i64 @prim_cdr(i64 %rvp76879)                                      ; call prim_cdr
  %t67$lst = call i64 @prim_car(i64 %rvp76878)                                       ; call prim_car
  %rvp76877 = call i64 @prim_cdr(i64 %rvp76878)                                      ; call prim_cdr
  %OXJ$n = call i64 @prim_car(i64 %rvp76877)                                         ; call prim_car
  %na76859 = call i64 @prim_cdr(i64 %rvp76877)                                       ; call prim_cdr
  %arg75619 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a74233 = call i64 @prim__61(i64 %OXJ$n, i64 %arg75619)                            ; call prim__61
  %cmp80372 = icmp eq i64 %a74233, 15                                                ; false?
  br i1 %cmp80372, label %else80374, label %then80373                                ; if

then80373:
  %arg75622 = add i64 0, 0                                                           ; quoted ()
  %arg75621 = add i64 0, 0                                                           ; quoted ()
  %rva76862 = add i64 0, 0                                                           ; quoted ()
  %rva76861 = call i64 @prim_cons(i64 %arg75621, i64 %rva76862)                      ; call prim_cons
  %rva76860 = call i64 @prim_cons(i64 %arg75622, i64 %rva76861)                      ; call prim_cons
  %cloptr80375 = inttoptr i64 %cont74602 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80376 = getelementptr inbounds i64, i64* %cloptr80375, i64 0                 ; &cloptr80375[0]
  %f80378 = load i64, i64* %i0ptr80376, align 8                                      ; load; *i0ptr80376
  %fptr80377 = inttoptr i64 %f80378 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80377(i64 %cont74602, i64 %rva76860)                ; tail call
  ret void

else80374:
  %a74234 = call i64 @prim_null_63(i64 %t67$lst)                                     ; call prim_null_63
  %cmp80379 = icmp eq i64 %a74234, 15                                                ; false?
  br i1 %cmp80379, label %else80381, label %then80380                                ; if

then80380:
  %arg75626 = add i64 0, 0                                                           ; quoted ()
  %arg75625 = add i64 0, 0                                                           ; quoted ()
  %rva76865 = add i64 0, 0                                                           ; quoted ()
  %rva76864 = call i64 @prim_cons(i64 %arg75625, i64 %rva76865)                      ; call prim_cons
  %rva76863 = call i64 @prim_cons(i64 %arg75626, i64 %rva76864)                      ; call prim_cons
  %cloptr80382 = inttoptr i64 %cont74602 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80383 = getelementptr inbounds i64, i64* %cloptr80382, i64 0                 ; &cloptr80382[0]
  %f80385 = load i64, i64* %i0ptr80383, align 8                                      ; load; *i0ptr80383
  %fptr80384 = inttoptr i64 %f80385 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80384(i64 %cont74602, i64 %rva76863)                ; tail call
  ret void

else80381:
  %a74235 = call i64 @prim_car(i64 %t67$lst)                                         ; call prim_car
  %a74236 = call i64 @prim_cdr(i64 %t67$lst)                                         ; call prim_cdr
  %arg75630 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a74237 = call i64 @prim__45(i64 %OXJ$n, i64 %arg75630)                            ; call prim__45
  %cloptr80386 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr80388 = getelementptr inbounds i64, i64* %cloptr80386, i64 1                  ; &eptr80388[1]
  %eptr80389 = getelementptr inbounds i64, i64* %cloptr80386, i64 2                  ; &eptr80389[2]
  store i64 %a74235, i64* %eptr80388                                                 ; *eptr80388 = %a74235
  store i64 %cont74602, i64* %eptr80389                                              ; *eptr80389 = %cont74602
  %eptr80387 = getelementptr inbounds i64, i64* %cloptr80386, i64 0                  ; &cloptr80386[0]
  %f80390 = ptrtoint void(i64,i64)* @lam77051 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80390, i64* %eptr80387                                                 ; store fptr
  %arg75634 = ptrtoint i64* %cloptr80386 to i64                                      ; closure cast; i64* -> i64
  %rva76876 = add i64 0, 0                                                           ; quoted ()
  %rva76875 = call i64 @prim_cons(i64 %a74237, i64 %rva76876)                        ; call prim_cons
  %rva76874 = call i64 @prim_cons(i64 %a74236, i64 %rva76875)                        ; call prim_cons
  %rva76873 = call i64 @prim_cons(i64 %arg75634, i64 %rva76874)                      ; call prim_cons
  %cloptr80391 = inttoptr i64 %b10$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr80392 = getelementptr inbounds i64, i64* %cloptr80391, i64 0                 ; &cloptr80391[0]
  %f80394 = load i64, i64* %i0ptr80392, align 8                                      ; load; *i0ptr80392
  %fptr80393 = inttoptr i64 %f80394 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80393(i64 %b10$_37take, i64 %rva76873)              ; tail call
  ret void
}


define void @lam77051(i64 %env77052, i64 %rvp76872) {
  %envptr80395 = inttoptr i64 %env77052 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80396 = getelementptr inbounds i64, i64* %envptr80395, i64 2                ; &envptr80395[2]
  %cont74602 = load i64, i64* %envptr80396, align 8                                  ; load; *envptr80396
  %envptr80397 = inttoptr i64 %env77052 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80398 = getelementptr inbounds i64, i64* %envptr80397, i64 1                ; &envptr80397[1]
  %a74235 = load i64, i64* %envptr80398, align 8                                     ; load; *envptr80398
  %_9574603 = call i64 @prim_car(i64 %rvp76872)                                      ; call prim_car
  %rvp76871 = call i64 @prim_cdr(i64 %rvp76872)                                      ; call prim_cdr
  %a74238 = call i64 @prim_car(i64 %rvp76871)                                        ; call prim_car
  %na76867 = call i64 @prim_cdr(i64 %rvp76871)                                       ; call prim_cdr
  %retprim74604 = call i64 @prim_cons(i64 %a74235, i64 %a74238)                      ; call prim_cons
  %arg75639 = add i64 0, 0                                                           ; quoted ()
  %rva76870 = add i64 0, 0                                                           ; quoted ()
  %rva76869 = call i64 @prim_cons(i64 %retprim74604, i64 %rva76870)                  ; call prim_cons
  %rva76868 = call i64 @prim_cons(i64 %arg75639, i64 %rva76869)                      ; call prim_cons
  %cloptr80399 = inttoptr i64 %cont74602 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80400 = getelementptr inbounds i64, i64* %cloptr80399, i64 0                 ; &cloptr80399[0]
  %f80402 = load i64, i64* %i0ptr80400, align 8                                      ; load; *i0ptr80400
  %fptr80401 = inttoptr i64 %f80402 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80401(i64 %cont74602, i64 %rva76868)                ; tail call
  ret void
}


define void @lam77038(i64 %env77039, i64 %rvp76922) {
  %cont74605 = call i64 @prim_car(i64 %rvp76922)                                     ; call prim_car
  %rvp76921 = call i64 @prim_cdr(i64 %rvp76922)                                      ; call prim_cdr
  %d6C$_37map = call i64 @prim_car(i64 %rvp76921)                                    ; call prim_car
  %na76891 = call i64 @prim_cdr(i64 %rvp76921)                                       ; call prim_cdr
  %arg75642 = add i64 0, 0                                                           ; quoted ()
  %cloptr80403 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr80405 = getelementptr inbounds i64, i64* %cloptr80403, i64 1                  ; &eptr80405[1]
  store i64 %d6C$_37map, i64* %eptr80405                                             ; *eptr80405 = %d6C$_37map
  %eptr80404 = getelementptr inbounds i64, i64* %cloptr80403, i64 0                  ; &cloptr80403[0]
  %f80406 = ptrtoint void(i64,i64)* @lam77035 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80406, i64* %eptr80404                                                 ; store fptr
  %arg75641 = ptrtoint i64* %cloptr80403 to i64                                      ; closure cast; i64* -> i64
  %rva76920 = add i64 0, 0                                                           ; quoted ()
  %rva76919 = call i64 @prim_cons(i64 %arg75641, i64 %rva76920)                      ; call prim_cons
  %rva76918 = call i64 @prim_cons(i64 %arg75642, i64 %rva76919)                      ; call prim_cons
  %cloptr80407 = inttoptr i64 %cont74605 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80408 = getelementptr inbounds i64, i64* %cloptr80407, i64 0                 ; &cloptr80407[0]
  %f80410 = load i64, i64* %i0ptr80408, align 8                                      ; load; *i0ptr80408
  %fptr80409 = inttoptr i64 %f80410 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80409(i64 %cont74605, i64 %rva76918)                ; tail call
  ret void
}


define void @lam77035(i64 %env77036, i64 %rvp76917) {
  %envptr80411 = inttoptr i64 %env77036 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80412 = getelementptr inbounds i64, i64* %envptr80411, i64 1                ; &envptr80411[1]
  %d6C$_37map = load i64, i64* %envptr80412, align 8                                 ; load; *envptr80412
  %cont74606 = call i64 @prim_car(i64 %rvp76917)                                     ; call prim_car
  %rvp76916 = call i64 @prim_cdr(i64 %rvp76917)                                      ; call prim_cdr
  %TNs$f = call i64 @prim_car(i64 %rvp76916)                                         ; call prim_car
  %rvp76915 = call i64 @prim_cdr(i64 %rvp76916)                                      ; call prim_cdr
  %Svp$lst = call i64 @prim_car(i64 %rvp76915)                                       ; call prim_car
  %na76893 = call i64 @prim_cdr(i64 %rvp76915)                                       ; call prim_cdr
  %a74228 = call i64 @prim_null_63(i64 %Svp$lst)                                     ; call prim_null_63
  %cmp80413 = icmp eq i64 %a74228, 15                                                ; false?
  br i1 %cmp80413, label %else80415, label %then80414                                ; if

then80414:
  %arg75646 = add i64 0, 0                                                           ; quoted ()
  %arg75645 = add i64 0, 0                                                           ; quoted ()
  %rva76896 = add i64 0, 0                                                           ; quoted ()
  %rva76895 = call i64 @prim_cons(i64 %arg75645, i64 %rva76896)                      ; call prim_cons
  %rva76894 = call i64 @prim_cons(i64 %arg75646, i64 %rva76895)                      ; call prim_cons
  %cloptr80416 = inttoptr i64 %cont74606 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80417 = getelementptr inbounds i64, i64* %cloptr80416, i64 0                 ; &cloptr80416[0]
  %f80419 = load i64, i64* %i0ptr80417, align 8                                      ; load; *i0ptr80417
  %fptr80418 = inttoptr i64 %f80419 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80418(i64 %cont74606, i64 %rva76894)                ; tail call
  ret void

else80415:
  %a74229 = call i64 @prim_car(i64 %Svp$lst)                                         ; call prim_car
  %cloptr80420 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr80422 = getelementptr inbounds i64, i64* %cloptr80420, i64 1                  ; &eptr80422[1]
  %eptr80423 = getelementptr inbounds i64, i64* %cloptr80420, i64 2                  ; &eptr80423[2]
  %eptr80424 = getelementptr inbounds i64, i64* %cloptr80420, i64 3                  ; &eptr80424[3]
  %eptr80425 = getelementptr inbounds i64, i64* %cloptr80420, i64 4                  ; &eptr80425[4]
  store i64 %Svp$lst, i64* %eptr80422                                                ; *eptr80422 = %Svp$lst
  store i64 %d6C$_37map, i64* %eptr80423                                             ; *eptr80423 = %d6C$_37map
  store i64 %TNs$f, i64* %eptr80424                                                  ; *eptr80424 = %TNs$f
  store i64 %cont74606, i64* %eptr80425                                              ; *eptr80425 = %cont74606
  %eptr80421 = getelementptr inbounds i64, i64* %cloptr80420, i64 0                  ; &cloptr80420[0]
  %f80426 = ptrtoint void(i64,i64)* @lam77033 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80426, i64* %eptr80421                                                 ; store fptr
  %arg75650 = ptrtoint i64* %cloptr80420 to i64                                      ; closure cast; i64* -> i64
  %rva76914 = add i64 0, 0                                                           ; quoted ()
  %rva76913 = call i64 @prim_cons(i64 %a74229, i64 %rva76914)                        ; call prim_cons
  %rva76912 = call i64 @prim_cons(i64 %arg75650, i64 %rva76913)                      ; call prim_cons
  %cloptr80427 = inttoptr i64 %TNs$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr80428 = getelementptr inbounds i64, i64* %cloptr80427, i64 0                 ; &cloptr80427[0]
  %f80430 = load i64, i64* %i0ptr80428, align 8                                      ; load; *i0ptr80428
  %fptr80429 = inttoptr i64 %f80430 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80429(i64 %TNs$f, i64 %rva76912)                    ; tail call
  ret void
}


define void @lam77033(i64 %env77034, i64 %rvp76911) {
  %envptr80431 = inttoptr i64 %env77034 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80432 = getelementptr inbounds i64, i64* %envptr80431, i64 4                ; &envptr80431[4]
  %cont74606 = load i64, i64* %envptr80432, align 8                                  ; load; *envptr80432
  %envptr80433 = inttoptr i64 %env77034 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80434 = getelementptr inbounds i64, i64* %envptr80433, i64 3                ; &envptr80433[3]
  %TNs$f = load i64, i64* %envptr80434, align 8                                      ; load; *envptr80434
  %envptr80435 = inttoptr i64 %env77034 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80436 = getelementptr inbounds i64, i64* %envptr80435, i64 2                ; &envptr80435[2]
  %d6C$_37map = load i64, i64* %envptr80436, align 8                                 ; load; *envptr80436
  %envptr80437 = inttoptr i64 %env77034 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80438 = getelementptr inbounds i64, i64* %envptr80437, i64 1                ; &envptr80437[1]
  %Svp$lst = load i64, i64* %envptr80438, align 8                                    ; load; *envptr80438
  %_9574607 = call i64 @prim_car(i64 %rvp76911)                                      ; call prim_car
  %rvp76910 = call i64 @prim_cdr(i64 %rvp76911)                                      ; call prim_cdr
  %a74230 = call i64 @prim_car(i64 %rvp76910)                                        ; call prim_car
  %na76898 = call i64 @prim_cdr(i64 %rvp76910)                                       ; call prim_cdr
  %a74231 = call i64 @prim_cdr(i64 %Svp$lst)                                         ; call prim_cdr
  %cloptr80439 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr80441 = getelementptr inbounds i64, i64* %cloptr80439, i64 1                  ; &eptr80441[1]
  %eptr80442 = getelementptr inbounds i64, i64* %cloptr80439, i64 2                  ; &eptr80442[2]
  store i64 %a74230, i64* %eptr80441                                                 ; *eptr80441 = %a74230
  store i64 %cont74606, i64* %eptr80442                                              ; *eptr80442 = %cont74606
  %eptr80440 = getelementptr inbounds i64, i64* %cloptr80439, i64 0                  ; &cloptr80439[0]
  %f80443 = ptrtoint void(i64,i64)* @lam77031 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80443, i64* %eptr80440                                                 ; store fptr
  %arg75655 = ptrtoint i64* %cloptr80439 to i64                                      ; closure cast; i64* -> i64
  %rva76909 = add i64 0, 0                                                           ; quoted ()
  %rva76908 = call i64 @prim_cons(i64 %a74231, i64 %rva76909)                        ; call prim_cons
  %rva76907 = call i64 @prim_cons(i64 %TNs$f, i64 %rva76908)                         ; call prim_cons
  %rva76906 = call i64 @prim_cons(i64 %arg75655, i64 %rva76907)                      ; call prim_cons
  %cloptr80444 = inttoptr i64 %d6C$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr80445 = getelementptr inbounds i64, i64* %cloptr80444, i64 0                 ; &cloptr80444[0]
  %f80447 = load i64, i64* %i0ptr80445, align 8                                      ; load; *i0ptr80445
  %fptr80446 = inttoptr i64 %f80447 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80446(i64 %d6C$_37map, i64 %rva76906)               ; tail call
  ret void
}


define void @lam77031(i64 %env77032, i64 %rvp76905) {
  %envptr80448 = inttoptr i64 %env77032 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80449 = getelementptr inbounds i64, i64* %envptr80448, i64 2                ; &envptr80448[2]
  %cont74606 = load i64, i64* %envptr80449, align 8                                  ; load; *envptr80449
  %envptr80450 = inttoptr i64 %env77032 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80451 = getelementptr inbounds i64, i64* %envptr80450, i64 1                ; &envptr80450[1]
  %a74230 = load i64, i64* %envptr80451, align 8                                     ; load; *envptr80451
  %_9574608 = call i64 @prim_car(i64 %rvp76905)                                      ; call prim_car
  %rvp76904 = call i64 @prim_cdr(i64 %rvp76905)                                      ; call prim_cdr
  %a74232 = call i64 @prim_car(i64 %rvp76904)                                        ; call prim_car
  %na76900 = call i64 @prim_cdr(i64 %rvp76904)                                       ; call prim_cdr
  %retprim74609 = call i64 @prim_cons(i64 %a74230, i64 %a74232)                      ; call prim_cons
  %arg75660 = add i64 0, 0                                                           ; quoted ()
  %rva76903 = add i64 0, 0                                                           ; quoted ()
  %rva76902 = call i64 @prim_cons(i64 %retprim74609, i64 %rva76903)                  ; call prim_cons
  %rva76901 = call i64 @prim_cons(i64 %arg75660, i64 %rva76902)                      ; call prim_cons
  %cloptr80452 = inttoptr i64 %cont74606 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80453 = getelementptr inbounds i64, i64* %cloptr80452, i64 0                 ; &cloptr80452[0]
  %f80455 = load i64, i64* %i0ptr80453, align 8                                      ; load; *i0ptr80453
  %fptr80454 = inttoptr i64 %f80455 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80454(i64 %cont74606, i64 %rva76901)                ; tail call
  ret void
}


define void @lam77020(i64 %env77021, i64 %rvp76956) {
  %cont74610 = call i64 @prim_car(i64 %rvp76956)                                     ; call prim_car
  %rvp76955 = call i64 @prim_cdr(i64 %rvp76956)                                      ; call prim_cdr
  %rju$_37foldr1 = call i64 @prim_car(i64 %rvp76955)                                 ; call prim_car
  %na76929 = call i64 @prim_cdr(i64 %rvp76955)                                       ; call prim_cdr
  %arg75663 = add i64 0, 0                                                           ; quoted ()
  %cloptr80456 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr80458 = getelementptr inbounds i64, i64* %cloptr80456, i64 1                  ; &eptr80458[1]
  store i64 %rju$_37foldr1, i64* %eptr80458                                          ; *eptr80458 = %rju$_37foldr1
  %eptr80457 = getelementptr inbounds i64, i64* %cloptr80456, i64 0                  ; &cloptr80456[0]
  %f80459 = ptrtoint void(i64,i64)* @lam77017 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80459, i64* %eptr80457                                                 ; store fptr
  %arg75662 = ptrtoint i64* %cloptr80456 to i64                                      ; closure cast; i64* -> i64
  %rva76954 = add i64 0, 0                                                           ; quoted ()
  %rva76953 = call i64 @prim_cons(i64 %arg75662, i64 %rva76954)                      ; call prim_cons
  %rva76952 = call i64 @prim_cons(i64 %arg75663, i64 %rva76953)                      ; call prim_cons
  %cloptr80460 = inttoptr i64 %cont74610 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80461 = getelementptr inbounds i64, i64* %cloptr80460, i64 0                 ; &cloptr80460[0]
  %f80463 = load i64, i64* %i0ptr80461, align 8                                      ; load; *i0ptr80461
  %fptr80462 = inttoptr i64 %f80463 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80462(i64 %cont74610, i64 %rva76952)                ; tail call
  ret void
}


define void @lam77017(i64 %env77018, i64 %rvp76951) {
  %envptr80464 = inttoptr i64 %env77018 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80465 = getelementptr inbounds i64, i64* %envptr80464, i64 1                ; &envptr80464[1]
  %rju$_37foldr1 = load i64, i64* %envptr80465, align 8                              ; load; *envptr80465
  %cont74611 = call i64 @prim_car(i64 %rvp76951)                                     ; call prim_car
  %rvp76950 = call i64 @prim_cdr(i64 %rvp76951)                                      ; call prim_cdr
  %arD$f = call i64 @prim_car(i64 %rvp76950)                                         ; call prim_car
  %rvp76949 = call i64 @prim_cdr(i64 %rvp76950)                                      ; call prim_cdr
  %EMV$acc = call i64 @prim_car(i64 %rvp76949)                                       ; call prim_car
  %rvp76948 = call i64 @prim_cdr(i64 %rvp76949)                                      ; call prim_cdr
  %e86$lst = call i64 @prim_car(i64 %rvp76948)                                       ; call prim_car
  %na76931 = call i64 @prim_cdr(i64 %rvp76948)                                       ; call prim_cdr
  %a74224 = call i64 @prim_null_63(i64 %e86$lst)                                     ; call prim_null_63
  %cmp80466 = icmp eq i64 %a74224, 15                                                ; false?
  br i1 %cmp80466, label %else80468, label %then80467                                ; if

then80467:
  %arg75667 = add i64 0, 0                                                           ; quoted ()
  %rva76934 = add i64 0, 0                                                           ; quoted ()
  %rva76933 = call i64 @prim_cons(i64 %EMV$acc, i64 %rva76934)                       ; call prim_cons
  %rva76932 = call i64 @prim_cons(i64 %arg75667, i64 %rva76933)                      ; call prim_cons
  %cloptr80469 = inttoptr i64 %cont74611 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80470 = getelementptr inbounds i64, i64* %cloptr80469, i64 0                 ; &cloptr80469[0]
  %f80472 = load i64, i64* %i0ptr80470, align 8                                      ; load; *i0ptr80470
  %fptr80471 = inttoptr i64 %f80472 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80471(i64 %cont74611, i64 %rva76932)                ; tail call
  ret void

else80468:
  %a74225 = call i64 @prim_car(i64 %e86$lst)                                         ; call prim_car
  %a74226 = call i64 @prim_cdr(i64 %e86$lst)                                         ; call prim_cdr
  %cloptr80473 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr80475 = getelementptr inbounds i64, i64* %cloptr80473, i64 1                  ; &eptr80475[1]
  %eptr80476 = getelementptr inbounds i64, i64* %cloptr80473, i64 2                  ; &eptr80476[2]
  %eptr80477 = getelementptr inbounds i64, i64* %cloptr80473, i64 3                  ; &eptr80477[3]
  store i64 %cont74611, i64* %eptr80475                                              ; *eptr80475 = %cont74611
  store i64 %a74225, i64* %eptr80476                                                 ; *eptr80476 = %a74225
  store i64 %arD$f, i64* %eptr80477                                                  ; *eptr80477 = %arD$f
  %eptr80474 = getelementptr inbounds i64, i64* %cloptr80473, i64 0                  ; &cloptr80473[0]
  %f80478 = ptrtoint void(i64,i64)* @lam77015 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80478, i64* %eptr80474                                                 ; store fptr
  %arg75674 = ptrtoint i64* %cloptr80473 to i64                                      ; closure cast; i64* -> i64
  %rva76947 = add i64 0, 0                                                           ; quoted ()
  %rva76946 = call i64 @prim_cons(i64 %a74226, i64 %rva76947)                        ; call prim_cons
  %rva76945 = call i64 @prim_cons(i64 %EMV$acc, i64 %rva76946)                       ; call prim_cons
  %rva76944 = call i64 @prim_cons(i64 %arD$f, i64 %rva76945)                         ; call prim_cons
  %rva76943 = call i64 @prim_cons(i64 %arg75674, i64 %rva76944)                      ; call prim_cons
  %cloptr80479 = inttoptr i64 %rju$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr80480 = getelementptr inbounds i64, i64* %cloptr80479, i64 0                 ; &cloptr80479[0]
  %f80482 = load i64, i64* %i0ptr80480, align 8                                      ; load; *i0ptr80480
  %fptr80481 = inttoptr i64 %f80482 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80481(i64 %rju$_37foldr1, i64 %rva76943)            ; tail call
  ret void
}


define void @lam77015(i64 %env77016, i64 %rvp76942) {
  %envptr80483 = inttoptr i64 %env77016 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80484 = getelementptr inbounds i64, i64* %envptr80483, i64 3                ; &envptr80483[3]
  %arD$f = load i64, i64* %envptr80484, align 8                                      ; load; *envptr80484
  %envptr80485 = inttoptr i64 %env77016 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80486 = getelementptr inbounds i64, i64* %envptr80485, i64 2                ; &envptr80485[2]
  %a74225 = load i64, i64* %envptr80486, align 8                                     ; load; *envptr80486
  %envptr80487 = inttoptr i64 %env77016 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80488 = getelementptr inbounds i64, i64* %envptr80487, i64 1                ; &envptr80487[1]
  %cont74611 = load i64, i64* %envptr80488, align 8                                  ; load; *envptr80488
  %_9574612 = call i64 @prim_car(i64 %rvp76942)                                      ; call prim_car
  %rvp76941 = call i64 @prim_cdr(i64 %rvp76942)                                      ; call prim_cdr
  %a74227 = call i64 @prim_car(i64 %rvp76941)                                        ; call prim_car
  %na76936 = call i64 @prim_cdr(i64 %rvp76941)                                       ; call prim_cdr
  %rva76940 = add i64 0, 0                                                           ; quoted ()
  %rva76939 = call i64 @prim_cons(i64 %a74227, i64 %rva76940)                        ; call prim_cons
  %rva76938 = call i64 @prim_cons(i64 %a74225, i64 %rva76939)                        ; call prim_cons
  %rva76937 = call i64 @prim_cons(i64 %cont74611, i64 %rva76938)                     ; call prim_cons
  %cloptr80489 = inttoptr i64 %arD$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr80490 = getelementptr inbounds i64, i64* %cloptr80489, i64 0                 ; &cloptr80489[0]
  %f80492 = load i64, i64* %i0ptr80490, align 8                                      ; load; *i0ptr80490
  %fptr80491 = inttoptr i64 %f80492 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80491(i64 %arD$f, i64 %rva76937)                    ; tail call
  ret void
}


define void @lam77007(i64 %env77008, i64 %rvp76989) {
  %cont74614 = call i64 @prim_car(i64 %rvp76989)                                     ; call prim_car
  %rvp76988 = call i64 @prim_cdr(i64 %rvp76989)                                      ; call prim_cdr
  %mG1$y = call i64 @prim_car(i64 %rvp76988)                                         ; call prim_car
  %na76963 = call i64 @prim_cdr(i64 %rvp76988)                                       ; call prim_cdr
  %arg75681 = add i64 0, 0                                                           ; quoted ()
  %cloptr80493 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr80495 = getelementptr inbounds i64, i64* %cloptr80493, i64 1                  ; &eptr80495[1]
  store i64 %mG1$y, i64* %eptr80495                                                  ; *eptr80495 = %mG1$y
  %eptr80494 = getelementptr inbounds i64, i64* %cloptr80493, i64 0                  ; &cloptr80493[0]
  %f80496 = ptrtoint void(i64,i64)* @lam77004 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80496, i64* %eptr80494                                                 ; store fptr
  %arg75680 = ptrtoint i64* %cloptr80493 to i64                                      ; closure cast; i64* -> i64
  %rva76987 = add i64 0, 0                                                           ; quoted ()
  %rva76986 = call i64 @prim_cons(i64 %arg75680, i64 %rva76987)                      ; call prim_cons
  %rva76985 = call i64 @prim_cons(i64 %arg75681, i64 %rva76986)                      ; call prim_cons
  %cloptr80497 = inttoptr i64 %cont74614 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr80498 = getelementptr inbounds i64, i64* %cloptr80497, i64 0                 ; &cloptr80497[0]
  %f80500 = load i64, i64* %i0ptr80498, align 8                                      ; load; *i0ptr80498
  %fptr80499 = inttoptr i64 %f80500 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80499(i64 %cont74614, i64 %rva76985)                ; tail call
  ret void
}


define void @lam77004(i64 %env77005, i64 %rvp76984) {
  %envptr80501 = inttoptr i64 %env77005 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80502 = getelementptr inbounds i64, i64* %envptr80501, i64 1                ; &envptr80501[1]
  %mG1$y = load i64, i64* %envptr80502, align 8                                      ; load; *envptr80502
  %cont74615 = call i64 @prim_car(i64 %rvp76984)                                     ; call prim_car
  %rvp76983 = call i64 @prim_cdr(i64 %rvp76984)                                      ; call prim_cdr
  %aBj$f = call i64 @prim_car(i64 %rvp76983)                                         ; call prim_car
  %na76965 = call i64 @prim_cdr(i64 %rvp76983)                                       ; call prim_cdr
  %cloptr80503 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr80505 = getelementptr inbounds i64, i64* %cloptr80503, i64 1                  ; &eptr80505[1]
  %eptr80506 = getelementptr inbounds i64, i64* %cloptr80503, i64 2                  ; &eptr80506[2]
  store i64 %aBj$f, i64* %eptr80505                                                  ; *eptr80505 = %aBj$f
  store i64 %mG1$y, i64* %eptr80506                                                  ; *eptr80506 = %mG1$y
  %eptr80504 = getelementptr inbounds i64, i64* %cloptr80503, i64 0                  ; &cloptr80503[0]
  %f80507 = ptrtoint void(i64,i64)* @lam77002 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80507, i64* %eptr80504                                                 ; store fptr
  %arg75683 = ptrtoint i64* %cloptr80503 to i64                                      ; closure cast; i64* -> i64
  %rva76982 = add i64 0, 0                                                           ; quoted ()
  %rva76981 = call i64 @prim_cons(i64 %arg75683, i64 %rva76982)                      ; call prim_cons
  %rva76980 = call i64 @prim_cons(i64 %cont74615, i64 %rva76981)                     ; call prim_cons
  %cloptr80508 = inttoptr i64 %aBj$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr80509 = getelementptr inbounds i64, i64* %cloptr80508, i64 0                 ; &cloptr80508[0]
  %f80511 = load i64, i64* %i0ptr80509, align 8                                      ; load; *i0ptr80509
  %fptr80510 = inttoptr i64 %f80511 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80510(i64 %aBj$f, i64 %rva76980)                    ; tail call
  ret void
}


define void @lam77002(i64 %env77003, i64 %s8l$args74617) {
  %envptr80512 = inttoptr i64 %env77003 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80513 = getelementptr inbounds i64, i64* %envptr80512, i64 2                ; &envptr80512[2]
  %mG1$y = load i64, i64* %envptr80513, align 8                                      ; load; *envptr80513
  %envptr80514 = inttoptr i64 %env77003 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80515 = getelementptr inbounds i64, i64* %envptr80514, i64 1                ; &envptr80514[1]
  %aBj$f = load i64, i64* %envptr80515, align 8                                      ; load; *envptr80515
  %cont74616 = call i64 @prim_car(i64 %s8l$args74617)                                ; call prim_car
  %s8l$args = call i64 @prim_cdr(i64 %s8l$args74617)                                 ; call prim_cdr
  %cloptr80516 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr80518 = getelementptr inbounds i64, i64* %cloptr80516, i64 1                  ; &eptr80518[1]
  %eptr80519 = getelementptr inbounds i64, i64* %cloptr80516, i64 2                  ; &eptr80519[2]
  %eptr80520 = getelementptr inbounds i64, i64* %cloptr80516, i64 3                  ; &eptr80520[3]
  store i64 %aBj$f, i64* %eptr80518                                                  ; *eptr80518 = %aBj$f
  store i64 %s8l$args, i64* %eptr80519                                               ; *eptr80519 = %s8l$args
  store i64 %cont74616, i64* %eptr80520                                              ; *eptr80520 = %cont74616
  %eptr80517 = getelementptr inbounds i64, i64* %cloptr80516, i64 0                  ; &cloptr80516[0]
  %f80521 = ptrtoint void(i64,i64)* @lam77000 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80521, i64* %eptr80517                                                 ; store fptr
  %arg75689 = ptrtoint i64* %cloptr80516 to i64                                      ; closure cast; i64* -> i64
  %rva76979 = add i64 0, 0                                                           ; quoted ()
  %rva76978 = call i64 @prim_cons(i64 %mG1$y, i64 %rva76979)                         ; call prim_cons
  %rva76977 = call i64 @prim_cons(i64 %arg75689, i64 %rva76978)                      ; call prim_cons
  %cloptr80522 = inttoptr i64 %mG1$y to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr80523 = getelementptr inbounds i64, i64* %cloptr80522, i64 0                 ; &cloptr80522[0]
  %f80525 = load i64, i64* %i0ptr80523, align 8                                      ; load; *i0ptr80523
  %fptr80524 = inttoptr i64 %f80525 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80524(i64 %mG1$y, i64 %rva76977)                    ; tail call
  ret void
}


define void @lam77000(i64 %env77001, i64 %rvp76976) {
  %envptr80526 = inttoptr i64 %env77001 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80527 = getelementptr inbounds i64, i64* %envptr80526, i64 3                ; &envptr80526[3]
  %cont74616 = load i64, i64* %envptr80527, align 8                                  ; load; *envptr80527
  %envptr80528 = inttoptr i64 %env77001 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80529 = getelementptr inbounds i64, i64* %envptr80528, i64 2                ; &envptr80528[2]
  %s8l$args = load i64, i64* %envptr80529, align 8                                   ; load; *envptr80529
  %envptr80530 = inttoptr i64 %env77001 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80531 = getelementptr inbounds i64, i64* %envptr80530, i64 1                ; &envptr80530[1]
  %aBj$f = load i64, i64* %envptr80531, align 8                                      ; load; *envptr80531
  %_9574618 = call i64 @prim_car(i64 %rvp76976)                                      ; call prim_car
  %rvp76975 = call i64 @prim_cdr(i64 %rvp76976)                                      ; call prim_cdr
  %a74222 = call i64 @prim_car(i64 %rvp76975)                                        ; call prim_car
  %na76967 = call i64 @prim_cdr(i64 %rvp76975)                                       ; call prim_cdr
  %cloptr80532 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr80534 = getelementptr inbounds i64, i64* %cloptr80532, i64 1                  ; &eptr80534[1]
  %eptr80535 = getelementptr inbounds i64, i64* %cloptr80532, i64 2                  ; &eptr80535[2]
  store i64 %s8l$args, i64* %eptr80534                                               ; *eptr80534 = %s8l$args
  store i64 %cont74616, i64* %eptr80535                                              ; *eptr80535 = %cont74616
  %eptr80533 = getelementptr inbounds i64, i64* %cloptr80532, i64 0                  ; &cloptr80532[0]
  %f80536 = ptrtoint void(i64,i64)* @lam76998 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f80536, i64* %eptr80533                                                 ; store fptr
  %arg75692 = ptrtoint i64* %cloptr80532 to i64                                      ; closure cast; i64* -> i64
  %rva76974 = add i64 0, 0                                                           ; quoted ()
  %rva76973 = call i64 @prim_cons(i64 %aBj$f, i64 %rva76974)                         ; call prim_cons
  %rva76972 = call i64 @prim_cons(i64 %arg75692, i64 %rva76973)                      ; call prim_cons
  %cloptr80537 = inttoptr i64 %a74222 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr80538 = getelementptr inbounds i64, i64* %cloptr80537, i64 0                 ; &cloptr80537[0]
  %f80540 = load i64, i64* %i0ptr80538, align 8                                      ; load; *i0ptr80538
  %fptr80539 = inttoptr i64 %f80540 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80539(i64 %a74222, i64 %rva76972)                   ; tail call
  ret void
}


define void @lam76998(i64 %env76999, i64 %rvp76971) {
  %envptr80541 = inttoptr i64 %env76999 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80542 = getelementptr inbounds i64, i64* %envptr80541, i64 2                ; &envptr80541[2]
  %cont74616 = load i64, i64* %envptr80542, align 8                                  ; load; *envptr80542
  %envptr80543 = inttoptr i64 %env76999 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr80544 = getelementptr inbounds i64, i64* %envptr80543, i64 1                ; &envptr80543[1]
  %s8l$args = load i64, i64* %envptr80544, align 8                                   ; load; *envptr80544
  %_9574619 = call i64 @prim_car(i64 %rvp76971)                                      ; call prim_car
  %rvp76970 = call i64 @prim_cdr(i64 %rvp76971)                                      ; call prim_cdr
  %a74223 = call i64 @prim_car(i64 %rvp76970)                                        ; call prim_car
  %na76969 = call i64 @prim_cdr(i64 %rvp76970)                                       ; call prim_cdr
  %cps_45lst74620 = call i64 @prim_cons(i64 %cont74616, i64 %s8l$args)               ; call prim_cons
  %cloptr80545 = inttoptr i64 %a74223 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr80546 = getelementptr inbounds i64, i64* %cloptr80545, i64 0                 ; &cloptr80545[0]
  %f80548 = load i64, i64* %i0ptr80546, align 8                                      ; load; *i0ptr80546
  %fptr80547 = inttoptr i64 %f80548 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr80547(i64 %a74223, i64 %cps_45lst74620)             ; tail call
  ret void
}





@sym78580 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
