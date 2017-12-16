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
@.str.35 = private unnamed_addr constant [28 x i8] c"(prim / a b); b cannot be 0\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

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
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = and i64 %6, -8
  %8 = lshr i64 %7, 32
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %2
  call void @fatal_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %2
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, 7
  %16 = icmp ne i64 %15, 2
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %13
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  br label %18

; <label>:18                                      ; preds = %17, %13
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, 7
  %21 = icmp ne i64 %20, 2
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %18
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %22, %18
  %24 = load i64, i64* %3, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, -8
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i32
  %32 = sdiv i32 %27, %31
  %33 = zext i32 %32 to i64
  %34 = shl i64 %33, 32
  %35 = or i64 %34, 2
  ret i64 %35
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %2
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i32 0, i32 0))
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
  %cloptr73963 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr73964 = getelementptr inbounds i64, i64* %cloptr73963, i64 0                  ; &cloptr73963[0]
  %f73965 = ptrtoint void(i64,i64,i64)* @lam73961 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f73965, i64* %eptr73964                                                 ; store fptr
  %arg72657 = ptrtoint i64* %cloptr73963 to i64                                      ; closure cast; i64* -> i64
  %cloptr73966 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr73967 = getelementptr inbounds i64, i64* %cloptr73966, i64 0                  ; &cloptr73966[0]
  %f73968 = ptrtoint void(i64,i64,i64)* @lam73959 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f73968, i64* %eptr73967                                                 ; store fptr
  %arg72656 = ptrtoint i64* %cloptr73966 to i64                                      ; closure cast; i64* -> i64
  %cloptr73969 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr73970 = getelementptr inbounds i64, i64* %cloptr73969, i64 0                  ; &cloptr73969[0]
  %f73971 = ptrtoint void(i64,i64,i64)* @lam73515 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f73971, i64* %eptr73970                                                 ; store fptr
  %arg72655 = ptrtoint i64* %cloptr73969 to i64                                      ; closure cast; i64* -> i64
  %cloptr73972 = inttoptr i64 %arg72657 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr73973 = getelementptr inbounds i64, i64* %cloptr73972, i64 0                 ; &cloptr73972[0]
  %f73975 = load i64, i64* %i0ptr73973, align 8                                      ; load; *i0ptr73973
  %fptr73974 = inttoptr i64 %f73975 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr73974(i64 %arg72657, i64 %arg72656, i64 %arg72655)  ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam73961(i64 %env73962, i64 %cont72647, i64 %NTI$yu) {
  %cloptr73976 = inttoptr i64 %NTI$yu to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr73977 = getelementptr inbounds i64, i64* %cloptr73976, i64 0                 ; &cloptr73976[0]
  %f73979 = load i64, i64* %i0ptr73977, align 8                                      ; load; *i0ptr73977
  %fptr73978 = inttoptr i64 %f73979 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr73978(i64 %NTI$yu, i64 %cont72647, i64 %NTI$yu)     ; tail call
  ret void
}


define void @lam73959(i64 %env73960, i64 %_9572468, i64 %vcB$Ycmb) {
  %cloptr73980 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr73982 = getelementptr inbounds i64, i64* %cloptr73980, i64 1                  ; &eptr73982[1]
  store i64 %vcB$Ycmb, i64* %eptr73982                                               ; *eptr73982 = %vcB$Ycmb
  %eptr73981 = getelementptr inbounds i64, i64* %cloptr73980, i64 0                  ; &cloptr73980[0]
  %f73983 = ptrtoint void(i64,i64,i64)* @lam73957 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f73983, i64* %eptr73981                                                 ; store fptr
  %arg72662 = ptrtoint i64* %cloptr73980 to i64                                      ; closure cast; i64* -> i64
  %cloptr73984 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr73985 = getelementptr inbounds i64, i64* %cloptr73984, i64 0                  ; &cloptr73984[0]
  %f73986 = ptrtoint void(i64,i64,i64)* @lam73523 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f73986, i64* %eptr73985                                                 ; store fptr
  %arg72661 = ptrtoint i64* %cloptr73984 to i64                                      ; closure cast; i64* -> i64
  %cloptr73987 = inttoptr i64 %vcB$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr73988 = getelementptr inbounds i64, i64* %cloptr73987, i64 0                 ; &cloptr73987[0]
  %f73990 = load i64, i64* %i0ptr73988, align 8                                      ; load; *i0ptr73988
  %fptr73989 = inttoptr i64 %f73990 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr73989(i64 %vcB$Ycmb, i64 %arg72662, i64 %arg72661)  ; tail call
  ret void
}


define void @lam73957(i64 %env73958, i64 %_9572469, i64 %F0G$_37foldr1) {
  %envptr73991 = inttoptr i64 %env73958 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr73992 = getelementptr inbounds i64, i64* %envptr73991, i64 1                ; &envptr73991[1]
  %vcB$Ycmb = load i64, i64* %envptr73992, align 8                                   ; load; *envptr73992
  %cloptr73993 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr73995 = getelementptr inbounds i64, i64* %cloptr73993, i64 1                  ; &eptr73995[1]
  %eptr73996 = getelementptr inbounds i64, i64* %cloptr73993, i64 2                  ; &eptr73996[2]
  store i64 %F0G$_37foldr1, i64* %eptr73995                                          ; *eptr73995 = %F0G$_37foldr1
  store i64 %vcB$Ycmb, i64* %eptr73996                                               ; *eptr73996 = %vcB$Ycmb
  %eptr73994 = getelementptr inbounds i64, i64* %cloptr73993, i64 0                  ; &cloptr73993[0]
  %f73997 = ptrtoint void(i64,i64,i64)* @lam73955 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f73997, i64* %eptr73994                                                 ; store fptr
  %arg72665 = ptrtoint i64* %cloptr73993 to i64                                      ; closure cast; i64* -> i64
  %cloptr73998 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr73999 = getelementptr inbounds i64, i64* %cloptr73998, i64 0                  ; &cloptr73998[0]
  %f74000 = ptrtoint void(i64,i64,i64)* @lam73535 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74000, i64* %eptr73999                                                 ; store fptr
  %arg72664 = ptrtoint i64* %cloptr73998 to i64                                      ; closure cast; i64* -> i64
  %cloptr74001 = inttoptr i64 %vcB$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74002 = getelementptr inbounds i64, i64* %cloptr74001, i64 0                 ; &cloptr74001[0]
  %f74004 = load i64, i64* %i0ptr74002, align 8                                      ; load; *i0ptr74002
  %fptr74003 = inttoptr i64 %f74004 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74003(i64 %vcB$Ycmb, i64 %arg72665, i64 %arg72664)  ; tail call
  ret void
}


define void @lam73955(i64 %env73956, i64 %_9572470, i64 %CGi$_37map1) {
  %envptr74005 = inttoptr i64 %env73956 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74006 = getelementptr inbounds i64, i64* %envptr74005, i64 2                ; &envptr74005[2]
  %vcB$Ycmb = load i64, i64* %envptr74006, align 8                                   ; load; *envptr74006
  %envptr74007 = inttoptr i64 %env73956 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74008 = getelementptr inbounds i64, i64* %envptr74007, i64 1                ; &envptr74007[1]
  %F0G$_37foldr1 = load i64, i64* %envptr74008, align 8                              ; load; *envptr74008
  %cloptr74009 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74011 = getelementptr inbounds i64, i64* %cloptr74009, i64 1                  ; &eptr74011[1]
  %eptr74012 = getelementptr inbounds i64, i64* %cloptr74009, i64 2                  ; &eptr74012[2]
  %eptr74013 = getelementptr inbounds i64, i64* %cloptr74009, i64 3                  ; &eptr74013[3]
  store i64 %F0G$_37foldr1, i64* %eptr74011                                          ; *eptr74011 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr74012                                            ; *eptr74012 = %CGi$_37map1
  store i64 %vcB$Ycmb, i64* %eptr74013                                               ; *eptr74013 = %vcB$Ycmb
  %eptr74010 = getelementptr inbounds i64, i64* %cloptr74009, i64 0                  ; &cloptr74009[0]
  %f74014 = ptrtoint void(i64,i64,i64)* @lam73953 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74014, i64* %eptr74010                                                 ; store fptr
  %arg72668 = ptrtoint i64* %cloptr74009 to i64                                      ; closure cast; i64* -> i64
  %cloptr74015 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74016 = getelementptr inbounds i64, i64* %cloptr74015, i64 0                  ; &cloptr74015[0]
  %f74017 = ptrtoint void(i64,i64,i64)* @lam73549 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74017, i64* %eptr74016                                                 ; store fptr
  %arg72667 = ptrtoint i64* %cloptr74015 to i64                                      ; closure cast; i64* -> i64
  %cloptr74018 = inttoptr i64 %vcB$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74019 = getelementptr inbounds i64, i64* %cloptr74018, i64 0                 ; &cloptr74018[0]
  %f74021 = load i64, i64* %i0ptr74019, align 8                                      ; load; *i0ptr74019
  %fptr74020 = inttoptr i64 %f74021 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74020(i64 %vcB$Ycmb, i64 %arg72668, i64 %arg72667)  ; tail call
  ret void
}


define void @lam73953(i64 %env73954, i64 %_9572471, i64 %FKP$_37take) {
  %envptr74022 = inttoptr i64 %env73954 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74023 = getelementptr inbounds i64, i64* %envptr74022, i64 3                ; &envptr74022[3]
  %vcB$Ycmb = load i64, i64* %envptr74023, align 8                                   ; load; *envptr74023
  %envptr74024 = inttoptr i64 %env73954 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74025 = getelementptr inbounds i64, i64* %envptr74024, i64 2                ; &envptr74024[2]
  %CGi$_37map1 = load i64, i64* %envptr74025, align 8                                ; load; *envptr74025
  %envptr74026 = inttoptr i64 %env73954 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74027 = getelementptr inbounds i64, i64* %envptr74026, i64 1                ; &envptr74026[1]
  %F0G$_37foldr1 = load i64, i64* %envptr74027, align 8                              ; load; *envptr74027
  %cloptr74028 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr74030 = getelementptr inbounds i64, i64* %cloptr74028, i64 1                  ; &eptr74030[1]
  %eptr74031 = getelementptr inbounds i64, i64* %cloptr74028, i64 2                  ; &eptr74031[2]
  %eptr74032 = getelementptr inbounds i64, i64* %cloptr74028, i64 3                  ; &eptr74032[3]
  %eptr74033 = getelementptr inbounds i64, i64* %cloptr74028, i64 4                  ; &eptr74033[4]
  store i64 %F0G$_37foldr1, i64* %eptr74030                                          ; *eptr74030 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr74031                                            ; *eptr74031 = %CGi$_37map1
  store i64 %FKP$_37take, i64* %eptr74032                                            ; *eptr74032 = %FKP$_37take
  store i64 %vcB$Ycmb, i64* %eptr74033                                               ; *eptr74033 = %vcB$Ycmb
  %eptr74029 = getelementptr inbounds i64, i64* %cloptr74028, i64 0                  ; &cloptr74028[0]
  %f74034 = ptrtoint void(i64,i64,i64)* @lam73951 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74034, i64* %eptr74029                                                 ; store fptr
  %arg72671 = ptrtoint i64* %cloptr74028 to i64                                      ; closure cast; i64* -> i64
  %cloptr74035 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74036 = getelementptr inbounds i64, i64* %cloptr74035, i64 0                  ; &cloptr74035[0]
  %f74037 = ptrtoint void(i64,i64,i64)* @lam73560 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74037, i64* %eptr74036                                                 ; store fptr
  %arg72670 = ptrtoint i64* %cloptr74035 to i64                                      ; closure cast; i64* -> i64
  %cloptr74038 = inttoptr i64 %vcB$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74039 = getelementptr inbounds i64, i64* %cloptr74038, i64 0                 ; &cloptr74038[0]
  %f74041 = load i64, i64* %i0ptr74039, align 8                                      ; load; *i0ptr74039
  %fptr74040 = inttoptr i64 %f74041 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74040(i64 %vcB$Ycmb, i64 %arg72671, i64 %arg72670)  ; tail call
  ret void
}


define void @lam73951(i64 %env73952, i64 %_9572472, i64 %dPS$_37length) {
  %envptr74042 = inttoptr i64 %env73952 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74043 = getelementptr inbounds i64, i64* %envptr74042, i64 4                ; &envptr74042[4]
  %vcB$Ycmb = load i64, i64* %envptr74043, align 8                                   ; load; *envptr74043
  %envptr74044 = inttoptr i64 %env73952 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74045 = getelementptr inbounds i64, i64* %envptr74044, i64 3                ; &envptr74044[3]
  %FKP$_37take = load i64, i64* %envptr74045, align 8                                ; load; *envptr74045
  %envptr74046 = inttoptr i64 %env73952 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74047 = getelementptr inbounds i64, i64* %envptr74046, i64 2                ; &envptr74046[2]
  %CGi$_37map1 = load i64, i64* %envptr74047, align 8                                ; load; *envptr74047
  %envptr74048 = inttoptr i64 %env73952 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74049 = getelementptr inbounds i64, i64* %envptr74048, i64 1                ; &envptr74048[1]
  %F0G$_37foldr1 = load i64, i64* %envptr74049, align 8                              ; load; *envptr74049
  %cloptr74050 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr74052 = getelementptr inbounds i64, i64* %cloptr74050, i64 1                  ; &eptr74052[1]
  %eptr74053 = getelementptr inbounds i64, i64* %cloptr74050, i64 2                  ; &eptr74053[2]
  %eptr74054 = getelementptr inbounds i64, i64* %cloptr74050, i64 3                  ; &eptr74054[3]
  %eptr74055 = getelementptr inbounds i64, i64* %cloptr74050, i64 4                  ; &eptr74055[4]
  %eptr74056 = getelementptr inbounds i64, i64* %cloptr74050, i64 5                  ; &eptr74056[5]
  store i64 %F0G$_37foldr1, i64* %eptr74052                                          ; *eptr74052 = %F0G$_37foldr1
  store i64 %dPS$_37length, i64* %eptr74053                                          ; *eptr74053 = %dPS$_37length
  store i64 %CGi$_37map1, i64* %eptr74054                                            ; *eptr74054 = %CGi$_37map1
  store i64 %FKP$_37take, i64* %eptr74055                                            ; *eptr74055 = %FKP$_37take
  store i64 %vcB$Ycmb, i64* %eptr74056                                               ; *eptr74056 = %vcB$Ycmb
  %eptr74051 = getelementptr inbounds i64, i64* %cloptr74050, i64 0                  ; &cloptr74050[0]
  %f74057 = ptrtoint void(i64,i64,i64)* @lam73949 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74057, i64* %eptr74051                                                 ; store fptr
  %arg72674 = ptrtoint i64* %cloptr74050 to i64                                      ; closure cast; i64* -> i64
  %cloptr74058 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74059 = getelementptr inbounds i64, i64* %cloptr74058, i64 0                  ; &cloptr74058[0]
  %f74060 = ptrtoint void(i64,i64,i64)* @lam73568 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74060, i64* %eptr74059                                                 ; store fptr
  %arg72673 = ptrtoint i64* %cloptr74058 to i64                                      ; closure cast; i64* -> i64
  %cloptr74061 = inttoptr i64 %vcB$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74062 = getelementptr inbounds i64, i64* %cloptr74061, i64 0                 ; &cloptr74061[0]
  %f74064 = load i64, i64* %i0ptr74062, align 8                                      ; load; *i0ptr74062
  %fptr74063 = inttoptr i64 %f74064 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74063(i64 %vcB$Ycmb, i64 %arg72674, i64 %arg72673)  ; tail call
  ret void
}


define void @lam73949(i64 %env73950, i64 %_9572473, i64 %Qt7$_37foldl1) {
  %envptr74065 = inttoptr i64 %env73950 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74066 = getelementptr inbounds i64, i64* %envptr74065, i64 5                ; &envptr74065[5]
  %vcB$Ycmb = load i64, i64* %envptr74066, align 8                                   ; load; *envptr74066
  %envptr74067 = inttoptr i64 %env73950 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74068 = getelementptr inbounds i64, i64* %envptr74067, i64 4                ; &envptr74067[4]
  %FKP$_37take = load i64, i64* %envptr74068, align 8                                ; load; *envptr74068
  %envptr74069 = inttoptr i64 %env73950 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74070 = getelementptr inbounds i64, i64* %envptr74069, i64 3                ; &envptr74069[3]
  %CGi$_37map1 = load i64, i64* %envptr74070, align 8                                ; load; *envptr74070
  %envptr74071 = inttoptr i64 %env73950 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74072 = getelementptr inbounds i64, i64* %envptr74071, i64 2                ; &envptr74071[2]
  %dPS$_37length = load i64, i64* %envptr74072, align 8                              ; load; *envptr74072
  %envptr74073 = inttoptr i64 %env73950 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74074 = getelementptr inbounds i64, i64* %envptr74073, i64 1                ; &envptr74073[1]
  %F0G$_37foldr1 = load i64, i64* %envptr74074, align 8                              ; load; *envptr74074
  %cloptr74075 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr74077 = getelementptr inbounds i64, i64* %cloptr74075, i64 1                  ; &eptr74077[1]
  store i64 %Qt7$_37foldl1, i64* %eptr74077                                          ; *eptr74077 = %Qt7$_37foldl1
  %eptr74076 = getelementptr inbounds i64, i64* %cloptr74075, i64 0                  ; &cloptr74075[0]
  %f74078 = ptrtoint void(i64,i64,i64)* @lam73947 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74078, i64* %eptr74076                                                 ; store fptr
  %OPt$_37last = ptrtoint i64* %cloptr74075 to i64                                   ; closure cast; i64* -> i64
  %cloptr74079 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74081 = getelementptr inbounds i64, i64* %cloptr74079, i64 1                  ; &eptr74081[1]
  %eptr74082 = getelementptr inbounds i64, i64* %cloptr74079, i64 2                  ; &eptr74082[2]
  store i64 %dPS$_37length, i64* %eptr74081                                          ; *eptr74081 = %dPS$_37length
  store i64 %FKP$_37take, i64* %eptr74082                                            ; *eptr74082 = %FKP$_37take
  %eptr74080 = getelementptr inbounds i64, i64* %cloptr74079, i64 0                  ; &cloptr74079[0]
  %f74083 = ptrtoint void(i64,i64,i64,i64)* @lam73941 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74083, i64* %eptr74080                                                 ; store fptr
  %Gbl$_37drop_45right = ptrtoint i64* %cloptr74079 to i64                           ; closure cast; i64* -> i64
  %cloptr74084 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr74086 = getelementptr inbounds i64, i64* %cloptr74084, i64 1                  ; &eptr74086[1]
  %eptr74087 = getelementptr inbounds i64, i64* %cloptr74084, i64 2                  ; &eptr74087[2]
  %eptr74088 = getelementptr inbounds i64, i64* %cloptr74084, i64 3                  ; &eptr74088[3]
  %eptr74089 = getelementptr inbounds i64, i64* %cloptr74084, i64 4                  ; &eptr74089[4]
  %eptr74090 = getelementptr inbounds i64, i64* %cloptr74084, i64 5                  ; &eptr74090[5]
  %eptr74091 = getelementptr inbounds i64, i64* %cloptr74084, i64 6                  ; &eptr74091[6]
  store i64 %F0G$_37foldr1, i64* %eptr74086                                          ; *eptr74086 = %F0G$_37foldr1
  store i64 %Gbl$_37drop_45right, i64* %eptr74087                                    ; *eptr74087 = %Gbl$_37drop_45right
  store i64 %Qt7$_37foldl1, i64* %eptr74088                                          ; *eptr74088 = %Qt7$_37foldl1
  store i64 %OPt$_37last, i64* %eptr74089                                            ; *eptr74089 = %OPt$_37last
  store i64 %dPS$_37length, i64* %eptr74090                                          ; *eptr74090 = %dPS$_37length
  store i64 %vcB$Ycmb, i64* %eptr74091                                               ; *eptr74091 = %vcB$Ycmb
  %eptr74085 = getelementptr inbounds i64, i64* %cloptr74084, i64 0                  ; &cloptr74084[0]
  %f74092 = ptrtoint void(i64,i64,i64)* @lam73937 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74092, i64* %eptr74085                                                 ; store fptr
  %arg72694 = ptrtoint i64* %cloptr74084 to i64                                      ; closure cast; i64* -> i64
  %cloptr74093 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74095 = getelementptr inbounds i64, i64* %cloptr74093, i64 1                  ; &eptr74095[1]
  %eptr74096 = getelementptr inbounds i64, i64* %cloptr74093, i64 2                  ; &eptr74096[2]
  store i64 %F0G$_37foldr1, i64* %eptr74095                                          ; *eptr74095 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr74096                                            ; *eptr74096 = %CGi$_37map1
  %eptr74094 = getelementptr inbounds i64, i64* %cloptr74093, i64 0                  ; &cloptr74093[0]
  %f74097 = ptrtoint void(i64,i64,i64)* @lam73605 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74097, i64* %eptr74094                                                 ; store fptr
  %arg72693 = ptrtoint i64* %cloptr74093 to i64                                      ; closure cast; i64* -> i64
  %cloptr74098 = inttoptr i64 %vcB$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74099 = getelementptr inbounds i64, i64* %cloptr74098, i64 0                 ; &cloptr74098[0]
  %f74101 = load i64, i64* %i0ptr74099, align 8                                      ; load; *i0ptr74099
  %fptr74100 = inttoptr i64 %f74101 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74100(i64 %vcB$Ycmb, i64 %arg72694, i64 %arg72693)  ; tail call
  ret void
}


define void @lam73947(i64 %env73948, i64 %cont72474, i64 %VwK$lst) {
  %envptr74102 = inttoptr i64 %env73948 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74103 = getelementptr inbounds i64, i64* %envptr74102, i64 1                ; &envptr74102[1]
  %Qt7$_37foldl1 = load i64, i64* %envptr74103, align 8                              ; load; *envptr74103
  %cloptr74104 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74105 = getelementptr inbounds i64, i64* %cloptr74104, i64 0                  ; &cloptr74104[0]
  %f74106 = ptrtoint void(i64,i64,i64,i64)* @lam73945 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74106, i64* %eptr74105                                                 ; store fptr
  %arg72678 = ptrtoint i64* %cloptr74104 to i64                                      ; closure cast; i64* -> i64
  %arg72677 = add i64 0, 0                                                           ; quoted ()
  %cloptr74107 = inttoptr i64 %Qt7$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr74108 = getelementptr inbounds i64, i64* %cloptr74107, i64 0                 ; &cloptr74107[0]
  %f74110 = load i64, i64* %i0ptr74108, align 8                                      ; load; *i0ptr74108
  %fptr74109 = inttoptr i64 %f74110 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74109(i64 %Qt7$_37foldl1, i64 %cont72474, i64 %arg72678, i64 %arg72677, i64 %VwK$lst); tail call
  ret void
}


define void @lam73945(i64 %env73946, i64 %cont72475, i64 %tOt$x, i64 %YnZ$y) {
  %arg72682 = add i64 0, 0                                                           ; quoted ()
  %cloptr74111 = inttoptr i64 %cont72475 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74112 = getelementptr inbounds i64, i64* %cloptr74111, i64 0                 ; &cloptr74111[0]
  %f74114 = load i64, i64* %i0ptr74112, align 8                                      ; load; *i0ptr74112
  %fptr74113 = inttoptr i64 %f74114 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74113(i64 %cont72475, i64 %arg72682, i64 %tOt$x)    ; tail call
  ret void
}


define void @lam73941(i64 %env73942, i64 %cont72476, i64 %InX$lst, i64 %xGy$n) {
  %envptr74115 = inttoptr i64 %env73942 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74116 = getelementptr inbounds i64, i64* %envptr74115, i64 2                ; &envptr74115[2]
  %FKP$_37take = load i64, i64* %envptr74116, align 8                                ; load; *envptr74116
  %envptr74117 = inttoptr i64 %env73942 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74118 = getelementptr inbounds i64, i64* %envptr74117, i64 1                ; &envptr74117[1]
  %dPS$_37length = load i64, i64* %envptr74118, align 8                              ; load; *envptr74118
  %cloptr74119 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr74121 = getelementptr inbounds i64, i64* %cloptr74119, i64 1                  ; &eptr74121[1]
  %eptr74122 = getelementptr inbounds i64, i64* %cloptr74119, i64 2                  ; &eptr74122[2]
  %eptr74123 = getelementptr inbounds i64, i64* %cloptr74119, i64 3                  ; &eptr74123[3]
  %eptr74124 = getelementptr inbounds i64, i64* %cloptr74119, i64 4                  ; &eptr74124[4]
  store i64 %cont72476, i64* %eptr74121                                              ; *eptr74121 = %cont72476
  store i64 %FKP$_37take, i64* %eptr74122                                            ; *eptr74122 = %FKP$_37take
  store i64 %xGy$n, i64* %eptr74123                                                  ; *eptr74123 = %xGy$n
  store i64 %InX$lst, i64* %eptr74124                                                ; *eptr74124 = %InX$lst
  %eptr74120 = getelementptr inbounds i64, i64* %cloptr74119, i64 0                  ; &cloptr74119[0]
  %f74125 = ptrtoint void(i64,i64,i64)* @lam73939 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74125, i64* %eptr74120                                                 ; store fptr
  %arg72685 = ptrtoint i64* %cloptr74119 to i64                                      ; closure cast; i64* -> i64
  %cloptr74126 = inttoptr i64 %dPS$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr74127 = getelementptr inbounds i64, i64* %cloptr74126, i64 0                 ; &cloptr74126[0]
  %f74129 = load i64, i64* %i0ptr74127, align 8                                      ; load; *i0ptr74127
  %fptr74128 = inttoptr i64 %f74129 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74128(i64 %dPS$_37length, i64 %arg72685, i64 %InX$lst); tail call
  ret void
}


define void @lam73939(i64 %env73940, i64 %_9572477, i64 %a72373) {
  %envptr74130 = inttoptr i64 %env73940 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74131 = getelementptr inbounds i64, i64* %envptr74130, i64 4                ; &envptr74130[4]
  %InX$lst = load i64, i64* %envptr74131, align 8                                    ; load; *envptr74131
  %envptr74132 = inttoptr i64 %env73940 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74133 = getelementptr inbounds i64, i64* %envptr74132, i64 3                ; &envptr74132[3]
  %xGy$n = load i64, i64* %envptr74133, align 8                                      ; load; *envptr74133
  %envptr74134 = inttoptr i64 %env73940 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74135 = getelementptr inbounds i64, i64* %envptr74134, i64 2                ; &envptr74134[2]
  %FKP$_37take = load i64, i64* %envptr74135, align 8                                ; load; *envptr74135
  %envptr74136 = inttoptr i64 %env73940 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74137 = getelementptr inbounds i64, i64* %envptr74136, i64 1                ; &envptr74136[1]
  %cont72476 = load i64, i64* %envptr74137, align 8                                  ; load; *envptr74137
  %a72374 = call i64 @prim__45(i64 %a72373, i64 %xGy$n)                              ; call prim__45
  %cloptr74138 = inttoptr i64 %FKP$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr74139 = getelementptr inbounds i64, i64* %cloptr74138, i64 0                 ; &cloptr74138[0]
  %f74141 = load i64, i64* %i0ptr74139, align 8                                      ; load; *i0ptr74139
  %fptr74140 = inttoptr i64 %f74141 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74140(i64 %FKP$_37take, i64 %cont72476, i64 %InX$lst, i64 %a72374); tail call
  ret void
}


define void @lam73937(i64 %env73938, i64 %_9572478, i64 %udL$_37foldr) {
  %envptr74142 = inttoptr i64 %env73938 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74143 = getelementptr inbounds i64, i64* %envptr74142, i64 6                ; &envptr74142[6]
  %vcB$Ycmb = load i64, i64* %envptr74143, align 8                                   ; load; *envptr74143
  %envptr74144 = inttoptr i64 %env73938 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74145 = getelementptr inbounds i64, i64* %envptr74144, i64 5                ; &envptr74144[5]
  %dPS$_37length = load i64, i64* %envptr74145, align 8                              ; load; *envptr74145
  %envptr74146 = inttoptr i64 %env73938 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74147 = getelementptr inbounds i64, i64* %envptr74146, i64 4                ; &envptr74146[4]
  %OPt$_37last = load i64, i64* %envptr74147, align 8                                ; load; *envptr74147
  %envptr74148 = inttoptr i64 %env73938 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74149 = getelementptr inbounds i64, i64* %envptr74148, i64 3                ; &envptr74148[3]
  %Qt7$_37foldl1 = load i64, i64* %envptr74149, align 8                              ; load; *envptr74149
  %envptr74150 = inttoptr i64 %env73938 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74151 = getelementptr inbounds i64, i64* %envptr74150, i64 2                ; &envptr74150[2]
  %Gbl$_37drop_45right = load i64, i64* %envptr74151, align 8                        ; load; *envptr74151
  %envptr74152 = inttoptr i64 %env73938 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74153 = getelementptr inbounds i64, i64* %envptr74152, i64 1                ; &envptr74152[1]
  %F0G$_37foldr1 = load i64, i64* %envptr74153, align 8                              ; load; *envptr74153
  %cloptr74154 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr74156 = getelementptr inbounds i64, i64* %cloptr74154, i64 1                  ; &eptr74156[1]
  store i64 %F0G$_37foldr1, i64* %eptr74156                                          ; *eptr74156 = %F0G$_37foldr1
  %eptr74155 = getelementptr inbounds i64, i64* %cloptr74154, i64 0                  ; &cloptr74154[0]
  %f74157 = ptrtoint void(i64,i64,i64,i64)* @lam73935 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74157, i64* %eptr74155                                                 ; store fptr
  %xFv$_37map1 = ptrtoint i64* %cloptr74154 to i64                                   ; closure cast; i64* -> i64
  %cloptr74158 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74160 = getelementptr inbounds i64, i64* %cloptr74158, i64 1                  ; &eptr74160[1]
  %eptr74161 = getelementptr inbounds i64, i64* %cloptr74158, i64 2                  ; &eptr74161[2]
  %eptr74162 = getelementptr inbounds i64, i64* %cloptr74158, i64 3                  ; &eptr74162[3]
  store i64 %Gbl$_37drop_45right, i64* %eptr74160                                    ; *eptr74160 = %Gbl$_37drop_45right
  store i64 %udL$_37foldr, i64* %eptr74161                                           ; *eptr74161 = %udL$_37foldr
  store i64 %OPt$_37last, i64* %eptr74162                                            ; *eptr74162 = %OPt$_37last
  %eptr74159 = getelementptr inbounds i64, i64* %cloptr74158, i64 0                  ; &cloptr74158[0]
  %f74163 = ptrtoint void(i64,i64)* @lam73927 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f74163, i64* %eptr74159                                                 ; store fptr
  %idb$_37map = ptrtoint i64* %cloptr74158 to i64                                    ; closure cast; i64* -> i64
  %cloptr74164 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74166 = getelementptr inbounds i64, i64* %cloptr74164, i64 1                  ; &eptr74166[1]
  %eptr74167 = getelementptr inbounds i64, i64* %cloptr74164, i64 2                  ; &eptr74167[2]
  store i64 %Qt7$_37foldl1, i64* %eptr74166                                          ; *eptr74166 = %Qt7$_37foldl1
  store i64 %dPS$_37length, i64* %eptr74167                                          ; *eptr74167 = %dPS$_37length
  %eptr74165 = getelementptr inbounds i64, i64* %cloptr74164, i64 0                  ; &cloptr74164[0]
  %f74168 = ptrtoint void(i64,i64,i64)* @lam73914 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74168, i64* %eptr74165                                                 ; store fptr
  %arg72736 = ptrtoint i64* %cloptr74164 to i64                                      ; closure cast; i64* -> i64
  %cloptr74169 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74171 = getelementptr inbounds i64, i64* %cloptr74169, i64 1                  ; &eptr74171[1]
  %eptr74172 = getelementptr inbounds i64, i64* %cloptr74169, i64 2                  ; &eptr74172[2]
  %eptr74173 = getelementptr inbounds i64, i64* %cloptr74169, i64 3                  ; &eptr74173[3]
  store i64 %F0G$_37foldr1, i64* %eptr74171                                          ; *eptr74171 = %F0G$_37foldr1
  store i64 %udL$_37foldr, i64* %eptr74172                                           ; *eptr74172 = %udL$_37foldr
  store i64 %xFv$_37map1, i64* %eptr74173                                            ; *eptr74173 = %xFv$_37map1
  %eptr74170 = getelementptr inbounds i64, i64* %cloptr74169, i64 0                  ; &cloptr74169[0]
  %f74174 = ptrtoint void(i64,i64,i64)* @lam73642 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74174, i64* %eptr74170                                                 ; store fptr
  %arg72735 = ptrtoint i64* %cloptr74169 to i64                                      ; closure cast; i64* -> i64
  %cloptr74175 = inttoptr i64 %vcB$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74176 = getelementptr inbounds i64, i64* %cloptr74175, i64 0                 ; &cloptr74175[0]
  %f74178 = load i64, i64* %i0ptr74176, align 8                                      ; load; *i0ptr74176
  %fptr74177 = inttoptr i64 %f74178 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74177(i64 %vcB$Ycmb, i64 %arg72736, i64 %arg72735)  ; tail call
  ret void
}


define void @lam73935(i64 %env73936, i64 %cont72479, i64 %SZW$f, i64 %VjY$lst) {
  %envptr74179 = inttoptr i64 %env73936 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74180 = getelementptr inbounds i64, i64* %envptr74179, i64 1                ; &envptr74179[1]
  %F0G$_37foldr1 = load i64, i64* %envptr74180, align 8                              ; load; *envptr74180
  %cloptr74181 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr74183 = getelementptr inbounds i64, i64* %cloptr74181, i64 1                  ; &eptr74183[1]
  store i64 %SZW$f, i64* %eptr74183                                                  ; *eptr74183 = %SZW$f
  %eptr74182 = getelementptr inbounds i64, i64* %cloptr74181, i64 0                  ; &cloptr74181[0]
  %f74184 = ptrtoint void(i64,i64,i64,i64)* @lam73933 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74184, i64* %eptr74182                                                 ; store fptr
  %arg72698 = ptrtoint i64* %cloptr74181 to i64                                      ; closure cast; i64* -> i64
  %arg72697 = add i64 0, 0                                                           ; quoted ()
  %cloptr74185 = inttoptr i64 %F0G$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr74186 = getelementptr inbounds i64, i64* %cloptr74185, i64 0                 ; &cloptr74185[0]
  %f74188 = load i64, i64* %i0ptr74186, align 8                                      ; load; *i0ptr74186
  %fptr74187 = inttoptr i64 %f74188 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74187(i64 %F0G$_37foldr1, i64 %cont72479, i64 %arg72698, i64 %arg72697, i64 %VjY$lst); tail call
  ret void
}


define void @lam73933(i64 %env73934, i64 %cont72480, i64 %Gga$v, i64 %IjA$r) {
  %envptr74189 = inttoptr i64 %env73934 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74190 = getelementptr inbounds i64, i64* %envptr74189, i64 1                ; &envptr74189[1]
  %SZW$f = load i64, i64* %envptr74190, align 8                                      ; load; *envptr74190
  %cloptr74191 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74193 = getelementptr inbounds i64, i64* %cloptr74191, i64 1                  ; &eptr74193[1]
  %eptr74194 = getelementptr inbounds i64, i64* %cloptr74191, i64 2                  ; &eptr74194[2]
  store i64 %IjA$r, i64* %eptr74193                                                  ; *eptr74193 = %IjA$r
  store i64 %cont72480, i64* %eptr74194                                              ; *eptr74194 = %cont72480
  %eptr74192 = getelementptr inbounds i64, i64* %cloptr74191, i64 0                  ; &cloptr74191[0]
  %f74195 = ptrtoint void(i64,i64,i64)* @lam73931 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74195, i64* %eptr74192                                                 ; store fptr
  %arg72702 = ptrtoint i64* %cloptr74191 to i64                                      ; closure cast; i64* -> i64
  %cloptr74196 = inttoptr i64 %SZW$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr74197 = getelementptr inbounds i64, i64* %cloptr74196, i64 0                 ; &cloptr74196[0]
  %f74199 = load i64, i64* %i0ptr74197, align 8                                      ; load; *i0ptr74197
  %fptr74198 = inttoptr i64 %f74199 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74198(i64 %SZW$f, i64 %arg72702, i64 %Gga$v)        ; tail call
  ret void
}


define void @lam73931(i64 %env73932, i64 %_9572481, i64 %a72383) {
  %envptr74200 = inttoptr i64 %env73932 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74201 = getelementptr inbounds i64, i64* %envptr74200, i64 2                ; &envptr74200[2]
  %cont72480 = load i64, i64* %envptr74201, align 8                                  ; load; *envptr74201
  %envptr74202 = inttoptr i64 %env73932 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74203 = getelementptr inbounds i64, i64* %envptr74202, i64 1                ; &envptr74202[1]
  %IjA$r = load i64, i64* %envptr74203, align 8                                      ; load; *envptr74203
  %retprim72482 = call i64 @prim_cons(i64 %a72383, i64 %IjA$r)                       ; call prim_cons
  %arg72707 = add i64 0, 0                                                           ; quoted ()
  %cloptr74204 = inttoptr i64 %cont72480 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74205 = getelementptr inbounds i64, i64* %cloptr74204, i64 0                 ; &cloptr74204[0]
  %f74207 = load i64, i64* %i0ptr74205, align 8                                      ; load; *i0ptr74205
  %fptr74206 = inttoptr i64 %f74207 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74206(i64 %cont72480, i64 %arg72707, i64 %retprim72482); tail call
  ret void
}


define void @lam73927(i64 %env73928, i64 %xLm$args72484) {
  %envptr74208 = inttoptr i64 %env73928 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74209 = getelementptr inbounds i64, i64* %envptr74208, i64 3                ; &envptr74208[3]
  %OPt$_37last = load i64, i64* %envptr74209, align 8                                ; load; *envptr74209
  %envptr74210 = inttoptr i64 %env73928 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74211 = getelementptr inbounds i64, i64* %envptr74210, i64 2                ; &envptr74210[2]
  %udL$_37foldr = load i64, i64* %envptr74211, align 8                               ; load; *envptr74211
  %envptr74212 = inttoptr i64 %env73928 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74213 = getelementptr inbounds i64, i64* %envptr74212, i64 1                ; &envptr74212[1]
  %Gbl$_37drop_45right = load i64, i64* %envptr74213, align 8                        ; load; *envptr74213
  %cont72483 = call i64 @prim_car(i64 %xLm$args72484)                                ; call prim_car
  %xLm$args = call i64 @prim_cdr(i64 %xLm$args72484)                                 ; call prim_cdr
  %d05$f = call i64 @prim_car(i64 %xLm$args)                                         ; call prim_car
  %IMR$lsts = call i64 @prim_cdr(i64 %xLm$args)                                      ; call prim_cdr
  %arg72714 = add i64 0, 0                                                           ; quoted ()
  %a72387 = call i64 @prim_cons(i64 %arg72714, i64 %IMR$lsts)                        ; call prim_cons
  %cloptr74214 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74216 = getelementptr inbounds i64, i64* %cloptr74214, i64 1                  ; &eptr74216[1]
  %eptr74217 = getelementptr inbounds i64, i64* %cloptr74214, i64 2                  ; &eptr74217[2]
  %eptr74218 = getelementptr inbounds i64, i64* %cloptr74214, i64 3                  ; &eptr74218[3]
  store i64 %Gbl$_37drop_45right, i64* %eptr74216                                    ; *eptr74216 = %Gbl$_37drop_45right
  store i64 %OPt$_37last, i64* %eptr74217                                            ; *eptr74217 = %OPt$_37last
  store i64 %d05$f, i64* %eptr74218                                                  ; *eptr74218 = %d05$f
  %eptr74215 = getelementptr inbounds i64, i64* %cloptr74214, i64 0                  ; &cloptr74214[0]
  %f74219 = ptrtoint void(i64,i64)* @lam73924 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f74219, i64* %eptr74215                                                 ; store fptr
  %arg72716 = ptrtoint i64* %cloptr74214 to i64                                      ; closure cast; i64* -> i64
  %a72388 = call i64 @prim_cons(i64 %arg72716, i64 %a72387)                          ; call prim_cons
  %cps_45lst72492 = call i64 @prim_cons(i64 %cont72483, i64 %a72388)                 ; call prim_cons
  %cloptr74220 = inttoptr i64 %udL$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr74221 = getelementptr inbounds i64, i64* %cloptr74220, i64 0                 ; &cloptr74220[0]
  %f74223 = load i64, i64* %i0ptr74221, align 8                                      ; load; *i0ptr74221
  %fptr74222 = inttoptr i64 %f74223 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74222(i64 %udL$_37foldr, i64 %cps_45lst72492)       ; tail call
  ret void
}


define void @lam73924(i64 %env73925, i64 %EIJ$fargs72486) {
  %envptr74224 = inttoptr i64 %env73925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74225 = getelementptr inbounds i64, i64* %envptr74224, i64 3                ; &envptr74224[3]
  %d05$f = load i64, i64* %envptr74225, align 8                                      ; load; *envptr74225
  %envptr74226 = inttoptr i64 %env73925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74227 = getelementptr inbounds i64, i64* %envptr74226, i64 2                ; &envptr74226[2]
  %OPt$_37last = load i64, i64* %envptr74227, align 8                                ; load; *envptr74227
  %envptr74228 = inttoptr i64 %env73925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74229 = getelementptr inbounds i64, i64* %envptr74228, i64 1                ; &envptr74228[1]
  %Gbl$_37drop_45right = load i64, i64* %envptr74229, align 8                        ; load; *envptr74229
  %cont72485 = call i64 @prim_car(i64 %EIJ$fargs72486)                               ; call prim_car
  %EIJ$fargs = call i64 @prim_cdr(i64 %EIJ$fargs72486)                               ; call prim_cdr
  %cloptr74230 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr74232 = getelementptr inbounds i64, i64* %cloptr74230, i64 1                  ; &eptr74232[1]
  %eptr74233 = getelementptr inbounds i64, i64* %cloptr74230, i64 2                  ; &eptr74233[2]
  %eptr74234 = getelementptr inbounds i64, i64* %cloptr74230, i64 3                  ; &eptr74234[3]
  %eptr74235 = getelementptr inbounds i64, i64* %cloptr74230, i64 4                  ; &eptr74235[4]
  store i64 %EIJ$fargs, i64* %eptr74232                                              ; *eptr74232 = %EIJ$fargs
  store i64 %OPt$_37last, i64* %eptr74233                                            ; *eptr74233 = %OPt$_37last
  store i64 %d05$f, i64* %eptr74234                                                  ; *eptr74234 = %d05$f
  store i64 %cont72485, i64* %eptr74235                                              ; *eptr74235 = %cont72485
  %eptr74231 = getelementptr inbounds i64, i64* %cloptr74230, i64 0                  ; &cloptr74230[0]
  %f74236 = ptrtoint void(i64,i64,i64)* @lam73922 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74236, i64* %eptr74231                                                 ; store fptr
  %arg72721 = ptrtoint i64* %cloptr74230 to i64                                      ; closure cast; i64* -> i64
  %arg72719 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %cloptr74237 = inttoptr i64 %Gbl$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  %i0ptr74238 = getelementptr inbounds i64, i64* %cloptr74237, i64 0                 ; &cloptr74237[0]
  %f74240 = load i64, i64* %i0ptr74238, align 8                                      ; load; *i0ptr74238
  %fptr74239 = inttoptr i64 %f74240 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74239(i64 %Gbl$_37drop_45right, i64 %arg72721, i64 %EIJ$fargs, i64 %arg72719); tail call
  ret void
}


define void @lam73922(i64 %env73923, i64 %_9572487, i64 %a72384) {
  %envptr74241 = inttoptr i64 %env73923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74242 = getelementptr inbounds i64, i64* %envptr74241, i64 4                ; &envptr74241[4]
  %cont72485 = load i64, i64* %envptr74242, align 8                                  ; load; *envptr74242
  %envptr74243 = inttoptr i64 %env73923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74244 = getelementptr inbounds i64, i64* %envptr74243, i64 3                ; &envptr74243[3]
  %d05$f = load i64, i64* %envptr74244, align 8                                      ; load; *envptr74244
  %envptr74245 = inttoptr i64 %env73923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74246 = getelementptr inbounds i64, i64* %envptr74245, i64 2                ; &envptr74245[2]
  %OPt$_37last = load i64, i64* %envptr74246, align 8                                ; load; *envptr74246
  %envptr74247 = inttoptr i64 %env73923 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74248 = getelementptr inbounds i64, i64* %envptr74247, i64 1                ; &envptr74247[1]
  %EIJ$fargs = load i64, i64* %envptr74248, align 8                                  ; load; *envptr74248
  %cloptr74249 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74251 = getelementptr inbounds i64, i64* %cloptr74249, i64 1                  ; &eptr74251[1]
  %eptr74252 = getelementptr inbounds i64, i64* %cloptr74249, i64 2                  ; &eptr74252[2]
  %eptr74253 = getelementptr inbounds i64, i64* %cloptr74249, i64 3                  ; &eptr74253[3]
  store i64 %EIJ$fargs, i64* %eptr74251                                              ; *eptr74251 = %EIJ$fargs
  store i64 %OPt$_37last, i64* %eptr74252                                            ; *eptr74252 = %OPt$_37last
  store i64 %cont72485, i64* %eptr74253                                              ; *eptr74253 = %cont72485
  %eptr74250 = getelementptr inbounds i64, i64* %cloptr74249, i64 0                  ; &cloptr74249[0]
  %f74254 = ptrtoint void(i64,i64,i64)* @lam73920 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74254, i64* %eptr74250                                                 ; store fptr
  %arg72724 = ptrtoint i64* %cloptr74249 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst72491 = call i64 @prim_cons(i64 %arg72724, i64 %a72384)                  ; call prim_cons
  %cloptr74255 = inttoptr i64 %d05$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr74256 = getelementptr inbounds i64, i64* %cloptr74255, i64 0                 ; &cloptr74255[0]
  %f74258 = load i64, i64* %i0ptr74256, align 8                                      ; load; *i0ptr74256
  %fptr74257 = inttoptr i64 %f74258 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74257(i64 %d05$f, i64 %cps_45lst72491)              ; tail call
  ret void
}


define void @lam73920(i64 %env73921, i64 %_9572488, i64 %a72385) {
  %envptr74259 = inttoptr i64 %env73921 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74260 = getelementptr inbounds i64, i64* %envptr74259, i64 3                ; &envptr74259[3]
  %cont72485 = load i64, i64* %envptr74260, align 8                                  ; load; *envptr74260
  %envptr74261 = inttoptr i64 %env73921 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74262 = getelementptr inbounds i64, i64* %envptr74261, i64 2                ; &envptr74261[2]
  %OPt$_37last = load i64, i64* %envptr74262, align 8                                ; load; *envptr74262
  %envptr74263 = inttoptr i64 %env73921 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74264 = getelementptr inbounds i64, i64* %envptr74263, i64 1                ; &envptr74263[1]
  %EIJ$fargs = load i64, i64* %envptr74264, align 8                                  ; load; *envptr74264
  %cloptr74265 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74267 = getelementptr inbounds i64, i64* %cloptr74265, i64 1                  ; &eptr74267[1]
  %eptr74268 = getelementptr inbounds i64, i64* %cloptr74265, i64 2                  ; &eptr74268[2]
  store i64 %a72385, i64* %eptr74267                                                 ; *eptr74267 = %a72385
  store i64 %cont72485, i64* %eptr74268                                              ; *eptr74268 = %cont72485
  %eptr74266 = getelementptr inbounds i64, i64* %cloptr74265, i64 0                  ; &cloptr74265[0]
  %f74269 = ptrtoint void(i64,i64,i64)* @lam73918 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74269, i64* %eptr74266                                                 ; store fptr
  %arg72726 = ptrtoint i64* %cloptr74265 to i64                                      ; closure cast; i64* -> i64
  %cloptr74270 = inttoptr i64 %OPt$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr74271 = getelementptr inbounds i64, i64* %cloptr74270, i64 0                 ; &cloptr74270[0]
  %f74273 = load i64, i64* %i0ptr74271, align 8                                      ; load; *i0ptr74271
  %fptr74272 = inttoptr i64 %f74273 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74272(i64 %OPt$_37last, i64 %arg72726, i64 %EIJ$fargs); tail call
  ret void
}


define void @lam73918(i64 %env73919, i64 %_9572489, i64 %a72386) {
  %envptr74274 = inttoptr i64 %env73919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74275 = getelementptr inbounds i64, i64* %envptr74274, i64 2                ; &envptr74274[2]
  %cont72485 = load i64, i64* %envptr74275, align 8                                  ; load; *envptr74275
  %envptr74276 = inttoptr i64 %env73919 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74277 = getelementptr inbounds i64, i64* %envptr74276, i64 1                ; &envptr74276[1]
  %a72385 = load i64, i64* %envptr74277, align 8                                     ; load; *envptr74277
  %retprim72490 = call i64 @prim_cons(i64 %a72385, i64 %a72386)                      ; call prim_cons
  %arg72731 = add i64 0, 0                                                           ; quoted ()
  %cloptr74278 = inttoptr i64 %cont72485 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74279 = getelementptr inbounds i64, i64* %cloptr74278, i64 0                 ; &cloptr74278[0]
  %f74281 = load i64, i64* %i0ptr74279, align 8                                      ; load; *i0ptr74279
  %fptr74280 = inttoptr i64 %f74281 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74280(i64 %cont72485, i64 %arg72731, i64 %retprim72490); tail call
  ret void
}


define void @lam73914(i64 %env73915, i64 %_9572493, i64 %w8N$_37foldl) {
  %envptr74282 = inttoptr i64 %env73915 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74283 = getelementptr inbounds i64, i64* %envptr74282, i64 2                ; &envptr74282[2]
  %dPS$_37length = load i64, i64* %envptr74283, align 8                              ; load; *envptr74283
  %envptr74284 = inttoptr i64 %env73915 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74285 = getelementptr inbounds i64, i64* %envptr74284, i64 1                ; &envptr74284[1]
  %Qt7$_37foldl1 = load i64, i64* %envptr74285, align 8                              ; load; *envptr74285
  %cloptr74286 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74287 = getelementptr inbounds i64, i64* %cloptr74286, i64 0                  ; &cloptr74286[0]
  %f74288 = ptrtoint void(i64,i64,i64,i64)* @lam73912 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74288, i64* %eptr74287                                                 ; store fptr
  %ZVd$_37_62 = ptrtoint i64* %cloptr74286 to i64                                    ; closure cast; i64* -> i64
  %cloptr74289 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74290 = getelementptr inbounds i64, i64* %cloptr74289, i64 0                  ; &cloptr74289[0]
  %f74291 = ptrtoint void(i64,i64,i64,i64)* @lam73909 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74291, i64* %eptr74290                                                 ; store fptr
  %zx4$_37_62_61 = ptrtoint i64* %cloptr74289 to i64                                 ; closure cast; i64* -> i64
  %arg72751 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %arg72750 = add i64 0, 0                                                           ; quoted ()
  %T58$_37append = call i64 @prim_make_45vector(i64 %arg72751, i64 %arg72750)        ; call prim_make_45vector
  %arg72753 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr74292 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr74294 = getelementptr inbounds i64, i64* %cloptr74292, i64 1                  ; &eptr74294[1]
  store i64 %T58$_37append, i64* %eptr74294                                          ; *eptr74294 = %T58$_37append
  %eptr74293 = getelementptr inbounds i64, i64* %cloptr74292, i64 0                  ; &cloptr74292[0]
  %f74295 = ptrtoint void(i64,i64,i64,i64)* @lam73903 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74295, i64* %eptr74293                                                 ; store fptr
  %arg72752 = ptrtoint i64* %cloptr74292 to i64                                      ; closure cast; i64* -> i64
  %vKY$_950 = call i64 @prim_vector_45set_33(i64 %T58$_37append, i64 %arg72753, i64 %arg72752); call prim_vector_45set_33
  %arg72772 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72583 = call i64 @prim_vector_45ref(i64 %T58$_37append, i64 %arg72772)     ; call prim_vector_45ref
  %cloptr74296 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74298 = getelementptr inbounds i64, i64* %cloptr74296, i64 1                  ; &eptr74298[1]
  %eptr74299 = getelementptr inbounds i64, i64* %cloptr74296, i64 2                  ; &eptr74299[2]
  %eptr74300 = getelementptr inbounds i64, i64* %cloptr74296, i64 3                  ; &eptr74300[3]
  store i64 %ZVd$_37_62, i64* %eptr74298                                             ; *eptr74298 = %ZVd$_37_62
  store i64 %Qt7$_37foldl1, i64* %eptr74299                                          ; *eptr74299 = %Qt7$_37foldl1
  store i64 %dPS$_37length, i64* %eptr74300                                          ; *eptr74300 = %dPS$_37length
  %eptr74297 = getelementptr inbounds i64, i64* %cloptr74296, i64 0                  ; &cloptr74296[0]
  %f74301 = ptrtoint void(i64,i64,i64)* @lam73895 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74301, i64* %eptr74297                                                 ; store fptr
  %arg72776 = ptrtoint i64* %cloptr74296 to i64                                      ; closure cast; i64* -> i64
  %arg72775 = add i64 0, 0                                                           ; quoted ()
  %cloptr74302 = inttoptr i64 %arg72776 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74303 = getelementptr inbounds i64, i64* %cloptr74302, i64 0                 ; &cloptr74302[0]
  %f74305 = load i64, i64* %i0ptr74303, align 8                                      ; load; *i0ptr74303
  %fptr74304 = inttoptr i64 %f74305 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74304(i64 %arg72776, i64 %arg72775, i64 %retprim72583); tail call
  ret void
}


define void @lam73912(i64 %env73913, i64 %cont72494, i64 %eq0$a, i64 %JUy$b) {
  %a72396 = call i64 @prim__60_61(i64 %eq0$a, i64 %JUy$b)                            ; call prim__60_61
  %retprim72495 = call i64 @prim_not(i64 %a72396)                                    ; call prim_not
  %arg72742 = add i64 0, 0                                                           ; quoted ()
  %cloptr74306 = inttoptr i64 %cont72494 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74307 = getelementptr inbounds i64, i64* %cloptr74306, i64 0                 ; &cloptr74306[0]
  %f74309 = load i64, i64* %i0ptr74307, align 8                                      ; load; *i0ptr74307
  %fptr74308 = inttoptr i64 %f74309 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74308(i64 %cont72494, i64 %arg72742, i64 %retprim72495); tail call
  ret void
}


define void @lam73909(i64 %env73910, i64 %cont72496, i64 %B3o$a, i64 %WlH$b) {
  %a72397 = call i64 @prim__60(i64 %B3o$a, i64 %WlH$b)                               ; call prim__60
  %retprim72497 = call i64 @prim_not(i64 %a72397)                                    ; call prim_not
  %arg72748 = add i64 0, 0                                                           ; quoted ()
  %cloptr74310 = inttoptr i64 %cont72496 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74311 = getelementptr inbounds i64, i64* %cloptr74310, i64 0                 ; &cloptr74310[0]
  %f74313 = load i64, i64* %i0ptr74311, align 8                                      ; load; *i0ptr74311
  %fptr74312 = inttoptr i64 %f74313 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74312(i64 %cont72496, i64 %arg72748, i64 %retprim72497); tail call
  ret void
}


define void @lam73903(i64 %env73904, i64 %cont72580, i64 %D6a$ls0, i64 %vw1$ls1) {
  %envptr74314 = inttoptr i64 %env73904 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74315 = getelementptr inbounds i64, i64* %envptr74314, i64 1                ; &envptr74314[1]
  %T58$_37append = load i64, i64* %envptr74315, align 8                              ; load; *envptr74315
  %a72398 = call i64 @prim_null_63(i64 %D6a$ls0)                                     ; call prim_null_63
  %cmp74316 = icmp eq i64 %a72398, 15                                                ; false?
  br i1 %cmp74316, label %else74318, label %then74317                                ; if

then74317:
  %arg72757 = add i64 0, 0                                                           ; quoted ()
  %cloptr74319 = inttoptr i64 %cont72580 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74320 = getelementptr inbounds i64, i64* %cloptr74319, i64 0                 ; &cloptr74319[0]
  %f74322 = load i64, i64* %i0ptr74320, align 8                                      ; load; *i0ptr74320
  %fptr74321 = inttoptr i64 %f74322 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74321(i64 %cont72580, i64 %arg72757, i64 %vw1$ls1)  ; tail call
  ret void

else74318:
  %a72399 = call i64 @prim_car(i64 %D6a$ls0)                                         ; call prim_car
  %arg72760 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72400 = call i64 @prim_vector_45ref(i64 %T58$_37append, i64 %arg72760)           ; call prim_vector_45ref
  %a72401 = call i64 @prim_cdr(i64 %D6a$ls0)                                         ; call prim_cdr
  %cloptr74323 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74325 = getelementptr inbounds i64, i64* %cloptr74323, i64 1                  ; &eptr74325[1]
  %eptr74326 = getelementptr inbounds i64, i64* %cloptr74323, i64 2                  ; &eptr74326[2]
  store i64 %cont72580, i64* %eptr74325                                              ; *eptr74325 = %cont72580
  store i64 %a72399, i64* %eptr74326                                                 ; *eptr74326 = %a72399
  %eptr74324 = getelementptr inbounds i64, i64* %cloptr74323, i64 0                  ; &cloptr74323[0]
  %f74327 = ptrtoint void(i64,i64,i64)* @lam73900 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74327, i64* %eptr74324                                                 ; store fptr
  %arg72765 = ptrtoint i64* %cloptr74323 to i64                                      ; closure cast; i64* -> i64
  %cloptr74328 = inttoptr i64 %a72400 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74329 = getelementptr inbounds i64, i64* %cloptr74328, i64 0                 ; &cloptr74328[0]
  %f74331 = load i64, i64* %i0ptr74329, align 8                                      ; load; *i0ptr74329
  %fptr74330 = inttoptr i64 %f74331 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74330(i64 %a72400, i64 %arg72765, i64 %a72401, i64 %vw1$ls1); tail call
  ret void
}


define void @lam73900(i64 %env73901, i64 %_9572581, i64 %a72402) {
  %envptr74332 = inttoptr i64 %env73901 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74333 = getelementptr inbounds i64, i64* %envptr74332, i64 2                ; &envptr74332[2]
  %a72399 = load i64, i64* %envptr74333, align 8                                     ; load; *envptr74333
  %envptr74334 = inttoptr i64 %env73901 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74335 = getelementptr inbounds i64, i64* %envptr74334, i64 1                ; &envptr74334[1]
  %cont72580 = load i64, i64* %envptr74335, align 8                                  ; load; *envptr74335
  %retprim72582 = call i64 @prim_cons(i64 %a72399, i64 %a72402)                      ; call prim_cons
  %arg72770 = add i64 0, 0                                                           ; quoted ()
  %cloptr74336 = inttoptr i64 %cont72580 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74337 = getelementptr inbounds i64, i64* %cloptr74336, i64 0                 ; &cloptr74336[0]
  %f74339 = load i64, i64* %i0ptr74337, align 8                                      ; load; *i0ptr74337
  %fptr74338 = inttoptr i64 %f74339 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74338(i64 %cont72580, i64 %arg72770, i64 %retprim72582); tail call
  ret void
}


define void @lam73895(i64 %env73896, i64 %_9572498, i64 %Tk8$_37append) {
  %envptr74340 = inttoptr i64 %env73896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74341 = getelementptr inbounds i64, i64* %envptr74340, i64 3                ; &envptr74340[3]
  %dPS$_37length = load i64, i64* %envptr74341, align 8                              ; load; *envptr74341
  %envptr74342 = inttoptr i64 %env73896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74343 = getelementptr inbounds i64, i64* %envptr74342, i64 2                ; &envptr74342[2]
  %Qt7$_37foldl1 = load i64, i64* %envptr74343, align 8                              ; load; *envptr74343
  %envptr74344 = inttoptr i64 %env73896 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74345 = getelementptr inbounds i64, i64* %envptr74344, i64 1                ; &envptr74344[1]
  %ZVd$_37_62 = load i64, i64* %envptr74345, align 8                                 ; load; *envptr74345
  %cloptr74346 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74347 = getelementptr inbounds i64, i64* %cloptr74346, i64 0                  ; &cloptr74346[0]
  %f74348 = ptrtoint void(i64,i64,i64)* @lam73893 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74348, i64* %eptr74347                                                 ; store fptr
  %xw3$_37list_63 = ptrtoint i64* %cloptr74346 to i64                                ; closure cast; i64* -> i64
  %cloptr74349 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74350 = getelementptr inbounds i64, i64* %cloptr74349, i64 0                  ; &cloptr74349[0]
  %f74351 = ptrtoint void(i64,i64,i64,i64)* @lam73853 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74351, i64* %eptr74350                                                 ; store fptr
  %SJZ$_37drop = ptrtoint i64* %cloptr74349 to i64                                   ; closure cast; i64* -> i64
  %cloptr74352 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74353 = getelementptr inbounds i64, i64* %cloptr74352, i64 0                  ; &cloptr74352[0]
  %f74354 = ptrtoint void(i64,i64,i64,i64)* @lam73813 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74354, i64* %eptr74353                                                 ; store fptr
  %ZP0$_37memv = ptrtoint i64* %cloptr74352 to i64                                   ; closure cast; i64* -> i64
  %cloptr74355 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr74357 = getelementptr inbounds i64, i64* %cloptr74355, i64 1                  ; &eptr74357[1]
  store i64 %Qt7$_37foldl1, i64* %eptr74357                                          ; *eptr74357 = %Qt7$_37foldl1
  %eptr74356 = getelementptr inbounds i64, i64* %cloptr74355, i64 0                  ; &cloptr74355[0]
  %f74358 = ptrtoint void(i64,i64)* @lam73782 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f74358, i64* %eptr74356                                                 ; store fptr
  %ek2$_37_47 = ptrtoint i64* %cloptr74355 to i64                                    ; closure cast; i64* -> i64
  %cloptr74359 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74360 = getelementptr inbounds i64, i64* %cloptr74359, i64 0                  ; &cloptr74359[0]
  %f74361 = ptrtoint void(i64,i64,i64)* @lam73774 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74361, i64* %eptr74360                                                 ; store fptr
  %cdl$_37first = ptrtoint i64* %cloptr74359 to i64                                  ; closure cast; i64* -> i64
  %cloptr74362 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74363 = getelementptr inbounds i64, i64* %cloptr74362, i64 0                  ; &cloptr74362[0]
  %f74364 = ptrtoint void(i64,i64,i64)* @lam73771 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74364, i64* %eptr74363                                                 ; store fptr
  %tq7$_37second = ptrtoint i64* %cloptr74362 to i64                                 ; closure cast; i64* -> i64
  %cloptr74365 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74366 = getelementptr inbounds i64, i64* %cloptr74365, i64 0                  ; &cloptr74365[0]
  %f74367 = ptrtoint void(i64,i64,i64)* @lam73768 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74367, i64* %eptr74366                                                 ; store fptr
  %Ef3$_37third = ptrtoint i64* %cloptr74365 to i64                                  ; closure cast; i64* -> i64
  %cloptr74368 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74369 = getelementptr inbounds i64, i64* %cloptr74368, i64 0                  ; &cloptr74368[0]
  %f74370 = ptrtoint void(i64,i64,i64)* @lam73765 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74370, i64* %eptr74369                                                 ; store fptr
  %pTU$_37fourth = ptrtoint i64* %cloptr74368 to i64                                 ; closure cast; i64* -> i64
  %cloptr74371 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74372 = getelementptr inbounds i64, i64* %cloptr74371, i64 0                  ; &cloptr74371[0]
  %f74373 = ptrtoint void(i64,i64,i64)* @lam73762 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74373, i64* %eptr74372                                                 ; store fptr
  %I0D$promise_63 = ptrtoint i64* %cloptr74371 to i64                                ; closure cast; i64* -> i64
  %cloptr74374 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74375 = getelementptr inbounds i64, i64* %cloptr74374, i64 0                  ; &cloptr74374[0]
  %f74376 = ptrtoint void(i64,i64)* @lam73756 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f74376, i64* %eptr74375                                                 ; store fptr
  %arg73038 = ptrtoint i64* %cloptr74374 to i64                                      ; closure cast; i64* -> i64
  %cloptr74377 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74379 = getelementptr inbounds i64, i64* %cloptr74377, i64 1                  ; &eptr74379[1]
  %eptr74380 = getelementptr inbounds i64, i64* %cloptr74377, i64 2                  ; &eptr74380[2]
  %eptr74381 = getelementptr inbounds i64, i64* %cloptr74377, i64 3                  ; &eptr74381[3]
  store i64 %ZVd$_37_62, i64* %eptr74379                                             ; *eptr74379 = %ZVd$_37_62
  store i64 %SJZ$_37drop, i64* %eptr74380                                            ; *eptr74380 = %SJZ$_37drop
  store i64 %dPS$_37length, i64* %eptr74381                                          ; *eptr74381 = %dPS$_37length
  %eptr74378 = getelementptr inbounds i64, i64* %cloptr74377, i64 0                  ; &cloptr74377[0]
  %f74382 = ptrtoint void(i64,i64,i64)* @lam73753 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74382, i64* %eptr74378                                                 ; store fptr
  %arg73037 = ptrtoint i64* %cloptr74377 to i64                                      ; closure cast; i64* -> i64
  %rva73505 = add i64 0, 0                                                           ; quoted ()
  %rva73504 = call i64 @prim_cons(i64 %arg73037, i64 %rva73505)                      ; call prim_cons
  %cloptr74383 = inttoptr i64 %arg73038 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74384 = getelementptr inbounds i64, i64* %cloptr74383, i64 0                 ; &cloptr74383[0]
  %f74386 = load i64, i64* %i0ptr74384, align 8                                      ; load; *i0ptr74384
  %fptr74385 = inttoptr i64 %f74386 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74385(i64 %arg73038, i64 %rva73504)                 ; tail call
  ret void
}


define void @lam73893(i64 %env73894, i64 %cont72499, i64 %KKq$a) {
  %arg72778 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %nwg$a = call i64 @prim_make_45vector(i64 %arg72778, i64 %KKq$a)                   ; call prim_make_45vector
  %cloptr74387 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74388 = getelementptr inbounds i64, i64* %cloptr74387, i64 0                  ; &cloptr74387[0]
  %f74389 = ptrtoint void(i64,i64,i64)* @lam73890 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74389, i64* %eptr74388                                                 ; store fptr
  %arg72781 = ptrtoint i64* %cloptr74387 to i64                                      ; closure cast; i64* -> i64
  %cloptr74390 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74392 = getelementptr inbounds i64, i64* %cloptr74390, i64 1                  ; &eptr74392[1]
  %eptr74393 = getelementptr inbounds i64, i64* %cloptr74390, i64 2                  ; &eptr74393[2]
  store i64 %cont72499, i64* %eptr74392                                              ; *eptr74392 = %cont72499
  store i64 %nwg$a, i64* %eptr74393                                                  ; *eptr74393 = %nwg$a
  %eptr74391 = getelementptr inbounds i64, i64* %cloptr74390, i64 0                  ; &cloptr74390[0]
  %f74394 = ptrtoint void(i64,i64,i64)* @lam73887 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74394, i64* %eptr74391                                                 ; store fptr
  %arg72780 = ptrtoint i64* %cloptr74390 to i64                                      ; closure cast; i64* -> i64
  %cloptr74395 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74397 = getelementptr inbounds i64, i64* %cloptr74395, i64 1                  ; &eptr74397[1]
  %eptr74398 = getelementptr inbounds i64, i64* %cloptr74395, i64 2                  ; &eptr74398[2]
  store i64 %cont72499, i64* %eptr74397                                              ; *eptr74397 = %cont72499
  store i64 %nwg$a, i64* %eptr74398                                                  ; *eptr74398 = %nwg$a
  %eptr74396 = getelementptr inbounds i64, i64* %cloptr74395, i64 0                  ; &cloptr74395[0]
  %f74399 = ptrtoint void(i64,i64,i64)* @lam73870 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74399, i64* %eptr74396                                                 ; store fptr
  %arg72779 = ptrtoint i64* %cloptr74395 to i64                                      ; closure cast; i64* -> i64
  %cloptr74400 = inttoptr i64 %arg72781 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74401 = getelementptr inbounds i64, i64* %cloptr74400, i64 0                 ; &cloptr74400[0]
  %f74403 = load i64, i64* %i0ptr74401, align 8                                      ; load; *i0ptr74401
  %fptr74402 = inttoptr i64 %f74403 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74402(i64 %arg72781, i64 %arg72780, i64 %arg72779)  ; tail call
  ret void
}


define void @lam73890(i64 %env73891, i64 %cont72505, i64 %dnZ$k) {
  %arg72783 = add i64 0, 0                                                           ; quoted ()
  %cloptr74404 = inttoptr i64 %cont72505 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74405 = getelementptr inbounds i64, i64* %cloptr74404, i64 0                 ; &cloptr74404[0]
  %f74407 = load i64, i64* %i0ptr74405, align 8                                      ; load; *i0ptr74405
  %fptr74406 = inttoptr i64 %f74407 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74406(i64 %cont72505, i64 %arg72783, i64 %dnZ$k)    ; tail call
  ret void
}


define void @lam73887(i64 %env73888, i64 %_9572500, i64 %dNW$cc) {
  %envptr74408 = inttoptr i64 %env73888 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74409 = getelementptr inbounds i64, i64* %envptr74408, i64 2                ; &envptr74408[2]
  %nwg$a = load i64, i64* %envptr74409, align 8                                      ; load; *envptr74409
  %envptr74410 = inttoptr i64 %env73888 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74411 = getelementptr inbounds i64, i64* %envptr74410, i64 1                ; &envptr74410[1]
  %cont72499 = load i64, i64* %envptr74411, align 8                                  ; load; *envptr74411
  %arg72785 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72403 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72785)                   ; call prim_vector_45ref
  %a72404 = call i64 @prim_null_63(i64 %a72403)                                      ; call prim_null_63
  %cmp74412 = icmp eq i64 %a72404, 15                                                ; false?
  br i1 %cmp74412, label %else74414, label %then74413                                ; if

then74413:
  %arg72789 = add i64 0, 0                                                           ; quoted ()
  %arg72788 = call i64 @const_init_true()                                            ; quoted #t
  %cloptr74415 = inttoptr i64 %cont72499 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74416 = getelementptr inbounds i64, i64* %cloptr74415, i64 0                 ; &cloptr74415[0]
  %f74418 = load i64, i64* %i0ptr74416, align 8                                      ; load; *i0ptr74416
  %fptr74417 = inttoptr i64 %f74418 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74417(i64 %cont72499, i64 %arg72789, i64 %arg72788) ; tail call
  ret void

else74414:
  %arg72791 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72405 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72791)                   ; call prim_vector_45ref
  %a72406 = call i64 @prim_cons_63(i64 %a72405)                                      ; call prim_cons_63
  %cmp74419 = icmp eq i64 %a72406, 15                                                ; false?
  br i1 %cmp74419, label %else74421, label %then74420                                ; if

then74420:
  %arg72794 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72407 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72794)                   ; call prim_vector_45ref
  %retprim72504 = call i64 @prim_cdr(i64 %a72407)                                    ; call prim_cdr
  %cloptr74422 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74424 = getelementptr inbounds i64, i64* %cloptr74422, i64 1                  ; &eptr74424[1]
  %eptr74425 = getelementptr inbounds i64, i64* %cloptr74422, i64 2                  ; &eptr74425[2]
  %eptr74426 = getelementptr inbounds i64, i64* %cloptr74422, i64 3                  ; &eptr74426[3]
  store i64 %cont72499, i64* %eptr74424                                              ; *eptr74424 = %cont72499
  store i64 %dNW$cc, i64* %eptr74425                                                 ; *eptr74425 = %dNW$cc
  store i64 %nwg$a, i64* %eptr74426                                                  ; *eptr74426 = %nwg$a
  %eptr74423 = getelementptr inbounds i64, i64* %cloptr74422, i64 0                  ; &cloptr74422[0]
  %f74427 = ptrtoint void(i64,i64,i64)* @lam73880 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74427, i64* %eptr74423                                                 ; store fptr
  %arg72799 = ptrtoint i64* %cloptr74422 to i64                                      ; closure cast; i64* -> i64
  %arg72798 = add i64 0, 0                                                           ; quoted ()
  %cloptr74428 = inttoptr i64 %arg72799 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74429 = getelementptr inbounds i64, i64* %cloptr74428, i64 0                 ; &cloptr74428[0]
  %f74431 = load i64, i64* %i0ptr74429, align 8                                      ; load; *i0ptr74429
  %fptr74430 = inttoptr i64 %f74431 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74430(i64 %arg72799, i64 %arg72798, i64 %retprim72504); tail call
  ret void

else74421:
  %arg72813 = add i64 0, 0                                                           ; quoted ()
  %arg72812 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr74432 = inttoptr i64 %cont72499 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74433 = getelementptr inbounds i64, i64* %cloptr74432, i64 0                 ; &cloptr74432[0]
  %f74435 = load i64, i64* %i0ptr74433, align 8                                      ; load; *i0ptr74433
  %fptr74434 = inttoptr i64 %f74435 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74434(i64 %cont72499, i64 %arg72813, i64 %arg72812) ; tail call
  ret void
}


define void @lam73880(i64 %env73881, i64 %_9572501, i64 %kP7$b) {
  %envptr74436 = inttoptr i64 %env73881 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74437 = getelementptr inbounds i64, i64* %envptr74436, i64 3                ; &envptr74436[3]
  %nwg$a = load i64, i64* %envptr74437, align 8                                      ; load; *envptr74437
  %envptr74438 = inttoptr i64 %env73881 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74439 = getelementptr inbounds i64, i64* %envptr74438, i64 2                ; &envptr74438[2]
  %dNW$cc = load i64, i64* %envptr74439, align 8                                     ; load; *envptr74439
  %envptr74440 = inttoptr i64 %env73881 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74441 = getelementptr inbounds i64, i64* %envptr74440, i64 1                ; &envptr74440[1]
  %cont72499 = load i64, i64* %envptr74441, align 8                                  ; load; *envptr74441
  %arg72800 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72408 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72800)                   ; call prim_vector_45ref
  %a72409 = call i64 @prim_cdr(i64 %a72408)                                          ; call prim_cdr
  %arg72804 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72503 = call i64 @prim_vector_45set_33(i64 %nwg$a, i64 %arg72804, i64 %a72409); call prim_vector_45set_33
  %cloptr74442 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74444 = getelementptr inbounds i64, i64* %cloptr74442, i64 1                  ; &eptr74444[1]
  %eptr74445 = getelementptr inbounds i64, i64* %cloptr74442, i64 2                  ; &eptr74445[2]
  store i64 %cont72499, i64* %eptr74444                                              ; *eptr74444 = %cont72499
  store i64 %dNW$cc, i64* %eptr74445                                                 ; *eptr74445 = %dNW$cc
  %eptr74443 = getelementptr inbounds i64, i64* %cloptr74442, i64 0                  ; &cloptr74442[0]
  %f74446 = ptrtoint void(i64,i64,i64)* @lam73876 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74446, i64* %eptr74443                                                 ; store fptr
  %arg72808 = ptrtoint i64* %cloptr74442 to i64                                      ; closure cast; i64* -> i64
  %arg72807 = add i64 0, 0                                                           ; quoted ()
  %cloptr74447 = inttoptr i64 %arg72808 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74448 = getelementptr inbounds i64, i64* %cloptr74447, i64 0                 ; &cloptr74447[0]
  %f74450 = load i64, i64* %i0ptr74448, align 8                                      ; load; *i0ptr74448
  %fptr74449 = inttoptr i64 %f74450 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74449(i64 %arg72808, i64 %arg72807, i64 %retprim72503); tail call
  ret void
}


define void @lam73876(i64 %env73877, i64 %_9572502, i64 %w4h$_950) {
  %envptr74451 = inttoptr i64 %env73877 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74452 = getelementptr inbounds i64, i64* %envptr74451, i64 2                ; &envptr74451[2]
  %dNW$cc = load i64, i64* %envptr74452, align 8                                     ; load; *envptr74452
  %envptr74453 = inttoptr i64 %env73877 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74454 = getelementptr inbounds i64, i64* %envptr74453, i64 1                ; &envptr74453[1]
  %cont72499 = load i64, i64* %envptr74454, align 8                                  ; load; *envptr74454
  %cloptr74455 = inttoptr i64 %dNW$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74456 = getelementptr inbounds i64, i64* %cloptr74455, i64 0                 ; &cloptr74455[0]
  %f74458 = load i64, i64* %i0ptr74456, align 8                                      ; load; *i0ptr74456
  %fptr74457 = inttoptr i64 %f74458 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74457(i64 %dNW$cc, i64 %cont72499, i64 %dNW$cc)     ; tail call
  ret void
}


define void @lam73870(i64 %env73871, i64 %_9572500, i64 %dNW$cc) {
  %envptr74459 = inttoptr i64 %env73871 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74460 = getelementptr inbounds i64, i64* %envptr74459, i64 2                ; &envptr74459[2]
  %nwg$a = load i64, i64* %envptr74460, align 8                                      ; load; *envptr74460
  %envptr74461 = inttoptr i64 %env73871 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74462 = getelementptr inbounds i64, i64* %envptr74461, i64 1                ; &envptr74461[1]
  %cont72499 = load i64, i64* %envptr74462, align 8                                  ; load; *envptr74462
  %arg72815 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72403 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72815)                   ; call prim_vector_45ref
  %a72404 = call i64 @prim_null_63(i64 %a72403)                                      ; call prim_null_63
  %cmp74463 = icmp eq i64 %a72404, 15                                                ; false?
  br i1 %cmp74463, label %else74465, label %then74464                                ; if

then74464:
  %arg72819 = add i64 0, 0                                                           ; quoted ()
  %arg72818 = call i64 @const_init_true()                                            ; quoted #t
  %cloptr74466 = inttoptr i64 %cont72499 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74467 = getelementptr inbounds i64, i64* %cloptr74466, i64 0                 ; &cloptr74466[0]
  %f74469 = load i64, i64* %i0ptr74467, align 8                                      ; load; *i0ptr74467
  %fptr74468 = inttoptr i64 %f74469 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74468(i64 %cont72499, i64 %arg72819, i64 %arg72818) ; tail call
  ret void

else74465:
  %arg72821 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72405 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72821)                   ; call prim_vector_45ref
  %a72406 = call i64 @prim_cons_63(i64 %a72405)                                      ; call prim_cons_63
  %cmp74470 = icmp eq i64 %a72406, 15                                                ; false?
  br i1 %cmp74470, label %else74472, label %then74471                                ; if

then74471:
  %arg72824 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72407 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72824)                   ; call prim_vector_45ref
  %retprim72504 = call i64 @prim_cdr(i64 %a72407)                                    ; call prim_cdr
  %cloptr74473 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74475 = getelementptr inbounds i64, i64* %cloptr74473, i64 1                  ; &eptr74475[1]
  %eptr74476 = getelementptr inbounds i64, i64* %cloptr74473, i64 2                  ; &eptr74476[2]
  %eptr74477 = getelementptr inbounds i64, i64* %cloptr74473, i64 3                  ; &eptr74477[3]
  store i64 %cont72499, i64* %eptr74475                                              ; *eptr74475 = %cont72499
  store i64 %dNW$cc, i64* %eptr74476                                                 ; *eptr74476 = %dNW$cc
  store i64 %nwg$a, i64* %eptr74477                                                  ; *eptr74477 = %nwg$a
  %eptr74474 = getelementptr inbounds i64, i64* %cloptr74473, i64 0                  ; &cloptr74473[0]
  %f74478 = ptrtoint void(i64,i64,i64)* @lam73863 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74478, i64* %eptr74474                                                 ; store fptr
  %arg72829 = ptrtoint i64* %cloptr74473 to i64                                      ; closure cast; i64* -> i64
  %arg72828 = add i64 0, 0                                                           ; quoted ()
  %cloptr74479 = inttoptr i64 %arg72829 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74480 = getelementptr inbounds i64, i64* %cloptr74479, i64 0                 ; &cloptr74479[0]
  %f74482 = load i64, i64* %i0ptr74480, align 8                                      ; load; *i0ptr74480
  %fptr74481 = inttoptr i64 %f74482 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74481(i64 %arg72829, i64 %arg72828, i64 %retprim72504); tail call
  ret void

else74472:
  %arg72843 = add i64 0, 0                                                           ; quoted ()
  %arg72842 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr74483 = inttoptr i64 %cont72499 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74484 = getelementptr inbounds i64, i64* %cloptr74483, i64 0                 ; &cloptr74483[0]
  %f74486 = load i64, i64* %i0ptr74484, align 8                                      ; load; *i0ptr74484
  %fptr74485 = inttoptr i64 %f74486 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74485(i64 %cont72499, i64 %arg72843, i64 %arg72842) ; tail call
  ret void
}


define void @lam73863(i64 %env73864, i64 %_9572501, i64 %kP7$b) {
  %envptr74487 = inttoptr i64 %env73864 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74488 = getelementptr inbounds i64, i64* %envptr74487, i64 3                ; &envptr74487[3]
  %nwg$a = load i64, i64* %envptr74488, align 8                                      ; load; *envptr74488
  %envptr74489 = inttoptr i64 %env73864 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74490 = getelementptr inbounds i64, i64* %envptr74489, i64 2                ; &envptr74489[2]
  %dNW$cc = load i64, i64* %envptr74490, align 8                                     ; load; *envptr74490
  %envptr74491 = inttoptr i64 %env73864 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74492 = getelementptr inbounds i64, i64* %envptr74491, i64 1                ; &envptr74491[1]
  %cont72499 = load i64, i64* %envptr74492, align 8                                  ; load; *envptr74492
  %arg72830 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72408 = call i64 @prim_vector_45ref(i64 %nwg$a, i64 %arg72830)                   ; call prim_vector_45ref
  %a72409 = call i64 @prim_cdr(i64 %a72408)                                          ; call prim_cdr
  %arg72834 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72503 = call i64 @prim_vector_45set_33(i64 %nwg$a, i64 %arg72834, i64 %a72409); call prim_vector_45set_33
  %cloptr74493 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74495 = getelementptr inbounds i64, i64* %cloptr74493, i64 1                  ; &eptr74495[1]
  %eptr74496 = getelementptr inbounds i64, i64* %cloptr74493, i64 2                  ; &eptr74496[2]
  store i64 %cont72499, i64* %eptr74495                                              ; *eptr74495 = %cont72499
  store i64 %dNW$cc, i64* %eptr74496                                                 ; *eptr74496 = %dNW$cc
  %eptr74494 = getelementptr inbounds i64, i64* %cloptr74493, i64 0                  ; &cloptr74493[0]
  %f74497 = ptrtoint void(i64,i64,i64)* @lam73859 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74497, i64* %eptr74494                                                 ; store fptr
  %arg72838 = ptrtoint i64* %cloptr74493 to i64                                      ; closure cast; i64* -> i64
  %arg72837 = add i64 0, 0                                                           ; quoted ()
  %cloptr74498 = inttoptr i64 %arg72838 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74499 = getelementptr inbounds i64, i64* %cloptr74498, i64 0                 ; &cloptr74498[0]
  %f74501 = load i64, i64* %i0ptr74499, align 8                                      ; load; *i0ptr74499
  %fptr74500 = inttoptr i64 %f74501 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74500(i64 %arg72838, i64 %arg72837, i64 %retprim72503); tail call
  ret void
}


define void @lam73859(i64 %env73860, i64 %_9572502, i64 %w4h$_950) {
  %envptr74502 = inttoptr i64 %env73860 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74503 = getelementptr inbounds i64, i64* %envptr74502, i64 2                ; &envptr74502[2]
  %dNW$cc = load i64, i64* %envptr74503, align 8                                     ; load; *envptr74503
  %envptr74504 = inttoptr i64 %env73860 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74505 = getelementptr inbounds i64, i64* %envptr74504, i64 1                ; &envptr74504[1]
  %cont72499 = load i64, i64* %envptr74505, align 8                                  ; load; *envptr74505
  %cloptr74506 = inttoptr i64 %dNW$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74507 = getelementptr inbounds i64, i64* %cloptr74506, i64 0                 ; &cloptr74506[0]
  %f74509 = load i64, i64* %i0ptr74507, align 8                                      ; load; *i0ptr74507
  %fptr74508 = inttoptr i64 %f74509 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74508(i64 %dNW$cc, i64 %cont72499, i64 %dNW$cc)     ; tail call
  ret void
}


define void @lam73853(i64 %env73854, i64 %cont72506, i64 %hMD$lst, i64 %EZ7$n) {
  %arg72846 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %qLh$lst = call i64 @prim_make_45vector(i64 %arg72846, i64 %hMD$lst)               ; call prim_make_45vector
  %arg72848 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %P4f$n = call i64 @prim_make_45vector(i64 %arg72848, i64 %EZ7$n)                   ; call prim_make_45vector
  %cloptr74510 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74511 = getelementptr inbounds i64, i64* %cloptr74510, i64 0                  ; &cloptr74510[0]
  %f74512 = ptrtoint void(i64,i64,i64)* @lam73849 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74512, i64* %eptr74511                                                 ; store fptr
  %arg72851 = ptrtoint i64* %cloptr74510 to i64                                      ; closure cast; i64* -> i64
  %cloptr74513 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74515 = getelementptr inbounds i64, i64* %cloptr74513, i64 1                  ; &eptr74515[1]
  %eptr74516 = getelementptr inbounds i64, i64* %cloptr74513, i64 2                  ; &eptr74516[2]
  %eptr74517 = getelementptr inbounds i64, i64* %cloptr74513, i64 3                  ; &eptr74517[3]
  store i64 %qLh$lst, i64* %eptr74515                                                ; *eptr74515 = %qLh$lst
  store i64 %cont72506, i64* %eptr74516                                              ; *eptr74516 = %cont72506
  store i64 %P4f$n, i64* %eptr74517                                                  ; *eptr74517 = %P4f$n
  %eptr74514 = getelementptr inbounds i64, i64* %cloptr74513, i64 0                  ; &cloptr74513[0]
  %f74518 = ptrtoint void(i64,i64,i64)* @lam73847 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74518, i64* %eptr74514                                                 ; store fptr
  %arg72850 = ptrtoint i64* %cloptr74513 to i64                                      ; closure cast; i64* -> i64
  %cloptr74519 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74521 = getelementptr inbounds i64, i64* %cloptr74519, i64 1                  ; &eptr74521[1]
  %eptr74522 = getelementptr inbounds i64, i64* %cloptr74519, i64 2                  ; &eptr74522[2]
  %eptr74523 = getelementptr inbounds i64, i64* %cloptr74519, i64 3                  ; &eptr74523[3]
  store i64 %qLh$lst, i64* %eptr74521                                                ; *eptr74521 = %qLh$lst
  store i64 %cont72506, i64* %eptr74522                                              ; *eptr74522 = %cont72506
  store i64 %P4f$n, i64* %eptr74523                                                  ; *eptr74523 = %P4f$n
  %eptr74520 = getelementptr inbounds i64, i64* %cloptr74519, i64 0                  ; &cloptr74519[0]
  %f74524 = ptrtoint void(i64,i64,i64)* @lam73830 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74524, i64* %eptr74520                                                 ; store fptr
  %arg72849 = ptrtoint i64* %cloptr74519 to i64                                      ; closure cast; i64* -> i64
  %cloptr74525 = inttoptr i64 %arg72851 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74526 = getelementptr inbounds i64, i64* %cloptr74525, i64 0                 ; &cloptr74525[0]
  %f74528 = load i64, i64* %i0ptr74526, align 8                                      ; load; *i0ptr74526
  %fptr74527 = inttoptr i64 %f74528 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74527(i64 %arg72851, i64 %arg72850, i64 %arg72849)  ; tail call
  ret void
}


define void @lam73849(i64 %env73850, i64 %cont72513, i64 %eNt$u) {
  %cloptr74529 = inttoptr i64 %eNt$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr74530 = getelementptr inbounds i64, i64* %cloptr74529, i64 0                 ; &cloptr74529[0]
  %f74532 = load i64, i64* %i0ptr74530, align 8                                      ; load; *i0ptr74530
  %fptr74531 = inttoptr i64 %f74532 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74531(i64 %eNt$u, i64 %cont72513, i64 %eNt$u)       ; tail call
  ret void
}


define void @lam73847(i64 %env73848, i64 %_9572507, i64 %QTK$cc) {
  %envptr74533 = inttoptr i64 %env73848 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74534 = getelementptr inbounds i64, i64* %envptr74533, i64 3                ; &envptr74533[3]
  %P4f$n = load i64, i64* %envptr74534, align 8                                      ; load; *envptr74534
  %envptr74535 = inttoptr i64 %env73848 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74536 = getelementptr inbounds i64, i64* %envptr74535, i64 2                ; &envptr74535[2]
  %cont72506 = load i64, i64* %envptr74536, align 8                                  ; load; *envptr74536
  %envptr74537 = inttoptr i64 %env73848 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74538 = getelementptr inbounds i64, i64* %envptr74537, i64 1                ; &envptr74537[1]
  %qLh$lst = load i64, i64* %envptr74538, align 8                                    ; load; *envptr74538
  %arg72855 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72410 = call i64 @prim_vector_45ref(i64 %P4f$n, i64 %arg72855)                   ; call prim_vector_45ref
  %arg72858 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72411 = call i64 @prim__61(i64 %arg72858, i64 %a72410)                           ; call prim__61
  %cmp74539 = icmp eq i64 %a72411, 15                                                ; false?
  br i1 %cmp74539, label %else74541, label %then74540                                ; if

then74540:
  %arg72859 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72508 = call i64 @prim_vector_45ref(i64 %qLh$lst, i64 %arg72859)           ; call prim_vector_45ref
  %arg72862 = add i64 0, 0                                                           ; quoted ()
  %cloptr74542 = inttoptr i64 %cont72506 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74543 = getelementptr inbounds i64, i64* %cloptr74542, i64 0                 ; &cloptr74542[0]
  %f74545 = load i64, i64* %i0ptr74543, align 8                                      ; load; *i0ptr74543
  %fptr74544 = inttoptr i64 %f74545 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74544(i64 %cont72506, i64 %arg72862, i64 %retprim72508); tail call
  ret void

else74541:
  %arg72864 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72412 = call i64 @prim_vector_45ref(i64 %qLh$lst, i64 %arg72864)                 ; call prim_vector_45ref
  %a72413 = call i64 @prim_cdr(i64 %a72412)                                          ; call prim_cdr
  %arg72868 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72512 = call i64 @prim_vector_45set_33(i64 %qLh$lst, i64 %arg72868, i64 %a72413); call prim_vector_45set_33
  %cloptr74546 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74548 = getelementptr inbounds i64, i64* %cloptr74546, i64 1                  ; &eptr74548[1]
  %eptr74549 = getelementptr inbounds i64, i64* %cloptr74546, i64 2                  ; &eptr74549[2]
  %eptr74550 = getelementptr inbounds i64, i64* %cloptr74546, i64 3                  ; &eptr74550[3]
  store i64 %QTK$cc, i64* %eptr74548                                                 ; *eptr74548 = %QTK$cc
  store i64 %cont72506, i64* %eptr74549                                              ; *eptr74549 = %cont72506
  store i64 %P4f$n, i64* %eptr74550                                                  ; *eptr74550 = %P4f$n
  %eptr74547 = getelementptr inbounds i64, i64* %cloptr74546, i64 0                  ; &cloptr74546[0]
  %f74551 = ptrtoint void(i64,i64,i64)* @lam73841 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74551, i64* %eptr74547                                                 ; store fptr
  %arg72872 = ptrtoint i64* %cloptr74546 to i64                                      ; closure cast; i64* -> i64
  %arg72871 = add i64 0, 0                                                           ; quoted ()
  %cloptr74552 = inttoptr i64 %arg72872 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74553 = getelementptr inbounds i64, i64* %cloptr74552, i64 0                 ; &cloptr74552[0]
  %f74555 = load i64, i64* %i0ptr74553, align 8                                      ; load; *i0ptr74553
  %fptr74554 = inttoptr i64 %f74555 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74554(i64 %arg72872, i64 %arg72871, i64 %retprim72512); tail call
  ret void
}


define void @lam73841(i64 %env73842, i64 %_9572509, i64 %HCj$_950) {
  %envptr74556 = inttoptr i64 %env73842 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74557 = getelementptr inbounds i64, i64* %envptr74556, i64 3                ; &envptr74556[3]
  %P4f$n = load i64, i64* %envptr74557, align 8                                      ; load; *envptr74557
  %envptr74558 = inttoptr i64 %env73842 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74559 = getelementptr inbounds i64, i64* %envptr74558, i64 2                ; &envptr74558[2]
  %cont72506 = load i64, i64* %envptr74559, align 8                                  ; load; *envptr74559
  %envptr74560 = inttoptr i64 %env73842 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74561 = getelementptr inbounds i64, i64* %envptr74560, i64 1                ; &envptr74560[1]
  %QTK$cc = load i64, i64* %envptr74561, align 8                                     ; load; *envptr74561
  %arg72873 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72414 = call i64 @prim_vector_45ref(i64 %P4f$n, i64 %arg72873)                   ; call prim_vector_45ref
  %arg72875 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a72415 = call i64 @prim__45(i64 %a72414, i64 %arg72875)                           ; call prim__45
  %arg72878 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72511 = call i64 @prim_vector_45set_33(i64 %P4f$n, i64 %arg72878, i64 %a72415); call prim_vector_45set_33
  %cloptr74562 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74564 = getelementptr inbounds i64, i64* %cloptr74562, i64 1                  ; &eptr74564[1]
  %eptr74565 = getelementptr inbounds i64, i64* %cloptr74562, i64 2                  ; &eptr74565[2]
  store i64 %QTK$cc, i64* %eptr74564                                                 ; *eptr74564 = %QTK$cc
  store i64 %cont72506, i64* %eptr74565                                              ; *eptr74565 = %cont72506
  %eptr74563 = getelementptr inbounds i64, i64* %cloptr74562, i64 0                  ; &cloptr74562[0]
  %f74566 = ptrtoint void(i64,i64,i64)* @lam73836 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74566, i64* %eptr74563                                                 ; store fptr
  %arg72882 = ptrtoint i64* %cloptr74562 to i64                                      ; closure cast; i64* -> i64
  %arg72881 = add i64 0, 0                                                           ; quoted ()
  %cloptr74567 = inttoptr i64 %arg72882 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74568 = getelementptr inbounds i64, i64* %cloptr74567, i64 0                 ; &cloptr74567[0]
  %f74570 = load i64, i64* %i0ptr74568, align 8                                      ; load; *i0ptr74568
  %fptr74569 = inttoptr i64 %f74570 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74569(i64 %arg72882, i64 %arg72881, i64 %retprim72511); tail call
  ret void
}


define void @lam73836(i64 %env73837, i64 %_9572510, i64 %zMU$_951) {
  %envptr74571 = inttoptr i64 %env73837 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74572 = getelementptr inbounds i64, i64* %envptr74571, i64 2                ; &envptr74571[2]
  %cont72506 = load i64, i64* %envptr74572, align 8                                  ; load; *envptr74572
  %envptr74573 = inttoptr i64 %env73837 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74574 = getelementptr inbounds i64, i64* %envptr74573, i64 1                ; &envptr74573[1]
  %QTK$cc = load i64, i64* %envptr74574, align 8                                     ; load; *envptr74574
  %cloptr74575 = inttoptr i64 %QTK$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74576 = getelementptr inbounds i64, i64* %cloptr74575, i64 0                 ; &cloptr74575[0]
  %f74578 = load i64, i64* %i0ptr74576, align 8                                      ; load; *i0ptr74576
  %fptr74577 = inttoptr i64 %f74578 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74577(i64 %QTK$cc, i64 %cont72506, i64 %QTK$cc)     ; tail call
  ret void
}


define void @lam73830(i64 %env73831, i64 %_9572507, i64 %QTK$cc) {
  %envptr74579 = inttoptr i64 %env73831 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74580 = getelementptr inbounds i64, i64* %envptr74579, i64 3                ; &envptr74579[3]
  %P4f$n = load i64, i64* %envptr74580, align 8                                      ; load; *envptr74580
  %envptr74581 = inttoptr i64 %env73831 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74582 = getelementptr inbounds i64, i64* %envptr74581, i64 2                ; &envptr74581[2]
  %cont72506 = load i64, i64* %envptr74582, align 8                                  ; load; *envptr74582
  %envptr74583 = inttoptr i64 %env73831 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74584 = getelementptr inbounds i64, i64* %envptr74583, i64 1                ; &envptr74583[1]
  %qLh$lst = load i64, i64* %envptr74584, align 8                                    ; load; *envptr74584
  %arg72886 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72410 = call i64 @prim_vector_45ref(i64 %P4f$n, i64 %arg72886)                   ; call prim_vector_45ref
  %arg72889 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72411 = call i64 @prim__61(i64 %arg72889, i64 %a72410)                           ; call prim__61
  %cmp74585 = icmp eq i64 %a72411, 15                                                ; false?
  br i1 %cmp74585, label %else74587, label %then74586                                ; if

then74586:
  %arg72890 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72508 = call i64 @prim_vector_45ref(i64 %qLh$lst, i64 %arg72890)           ; call prim_vector_45ref
  %arg72893 = add i64 0, 0                                                           ; quoted ()
  %cloptr74588 = inttoptr i64 %cont72506 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74589 = getelementptr inbounds i64, i64* %cloptr74588, i64 0                 ; &cloptr74588[0]
  %f74591 = load i64, i64* %i0ptr74589, align 8                                      ; load; *i0ptr74589
  %fptr74590 = inttoptr i64 %f74591 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74590(i64 %cont72506, i64 %arg72893, i64 %retprim72508); tail call
  ret void

else74587:
  %arg72895 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72412 = call i64 @prim_vector_45ref(i64 %qLh$lst, i64 %arg72895)                 ; call prim_vector_45ref
  %a72413 = call i64 @prim_cdr(i64 %a72412)                                          ; call prim_cdr
  %arg72899 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72512 = call i64 @prim_vector_45set_33(i64 %qLh$lst, i64 %arg72899, i64 %a72413); call prim_vector_45set_33
  %cloptr74592 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74594 = getelementptr inbounds i64, i64* %cloptr74592, i64 1                  ; &eptr74594[1]
  %eptr74595 = getelementptr inbounds i64, i64* %cloptr74592, i64 2                  ; &eptr74595[2]
  %eptr74596 = getelementptr inbounds i64, i64* %cloptr74592, i64 3                  ; &eptr74596[3]
  store i64 %QTK$cc, i64* %eptr74594                                                 ; *eptr74594 = %QTK$cc
  store i64 %cont72506, i64* %eptr74595                                              ; *eptr74595 = %cont72506
  store i64 %P4f$n, i64* %eptr74596                                                  ; *eptr74596 = %P4f$n
  %eptr74593 = getelementptr inbounds i64, i64* %cloptr74592, i64 0                  ; &cloptr74592[0]
  %f74597 = ptrtoint void(i64,i64,i64)* @lam73824 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74597, i64* %eptr74593                                                 ; store fptr
  %arg72903 = ptrtoint i64* %cloptr74592 to i64                                      ; closure cast; i64* -> i64
  %arg72902 = add i64 0, 0                                                           ; quoted ()
  %cloptr74598 = inttoptr i64 %arg72903 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74599 = getelementptr inbounds i64, i64* %cloptr74598, i64 0                 ; &cloptr74598[0]
  %f74601 = load i64, i64* %i0ptr74599, align 8                                      ; load; *i0ptr74599
  %fptr74600 = inttoptr i64 %f74601 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74600(i64 %arg72903, i64 %arg72902, i64 %retprim72512); tail call
  ret void
}


define void @lam73824(i64 %env73825, i64 %_9572509, i64 %HCj$_950) {
  %envptr74602 = inttoptr i64 %env73825 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74603 = getelementptr inbounds i64, i64* %envptr74602, i64 3                ; &envptr74602[3]
  %P4f$n = load i64, i64* %envptr74603, align 8                                      ; load; *envptr74603
  %envptr74604 = inttoptr i64 %env73825 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74605 = getelementptr inbounds i64, i64* %envptr74604, i64 2                ; &envptr74604[2]
  %cont72506 = load i64, i64* %envptr74605, align 8                                  ; load; *envptr74605
  %envptr74606 = inttoptr i64 %env73825 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74607 = getelementptr inbounds i64, i64* %envptr74606, i64 1                ; &envptr74606[1]
  %QTK$cc = load i64, i64* %envptr74607, align 8                                     ; load; *envptr74607
  %arg72904 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72414 = call i64 @prim_vector_45ref(i64 %P4f$n, i64 %arg72904)                   ; call prim_vector_45ref
  %arg72906 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a72415 = call i64 @prim__45(i64 %a72414, i64 %arg72906)                           ; call prim__45
  %arg72909 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72511 = call i64 @prim_vector_45set_33(i64 %P4f$n, i64 %arg72909, i64 %a72415); call prim_vector_45set_33
  %cloptr74608 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74610 = getelementptr inbounds i64, i64* %cloptr74608, i64 1                  ; &eptr74610[1]
  %eptr74611 = getelementptr inbounds i64, i64* %cloptr74608, i64 2                  ; &eptr74611[2]
  store i64 %QTK$cc, i64* %eptr74610                                                 ; *eptr74610 = %QTK$cc
  store i64 %cont72506, i64* %eptr74611                                              ; *eptr74611 = %cont72506
  %eptr74609 = getelementptr inbounds i64, i64* %cloptr74608, i64 0                  ; &cloptr74608[0]
  %f74612 = ptrtoint void(i64,i64,i64)* @lam73819 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74612, i64* %eptr74609                                                 ; store fptr
  %arg72913 = ptrtoint i64* %cloptr74608 to i64                                      ; closure cast; i64* -> i64
  %arg72912 = add i64 0, 0                                                           ; quoted ()
  %cloptr74613 = inttoptr i64 %arg72913 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74614 = getelementptr inbounds i64, i64* %cloptr74613, i64 0                 ; &cloptr74613[0]
  %f74616 = load i64, i64* %i0ptr74614, align 8                                      ; load; *i0ptr74614
  %fptr74615 = inttoptr i64 %f74616 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74615(i64 %arg72913, i64 %arg72912, i64 %retprim72511); tail call
  ret void
}


define void @lam73819(i64 %env73820, i64 %_9572510, i64 %zMU$_951) {
  %envptr74617 = inttoptr i64 %env73820 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74618 = getelementptr inbounds i64, i64* %envptr74617, i64 2                ; &envptr74617[2]
  %cont72506 = load i64, i64* %envptr74618, align 8                                  ; load; *envptr74618
  %envptr74619 = inttoptr i64 %env73820 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74620 = getelementptr inbounds i64, i64* %envptr74619, i64 1                ; &envptr74619[1]
  %QTK$cc = load i64, i64* %envptr74620, align 8                                     ; load; *envptr74620
  %cloptr74621 = inttoptr i64 %QTK$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74622 = getelementptr inbounds i64, i64* %cloptr74621, i64 0                 ; &cloptr74621[0]
  %f74624 = load i64, i64* %i0ptr74622, align 8                                      ; load; *i0ptr74622
  %fptr74623 = inttoptr i64 %f74624 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74623(i64 %QTK$cc, i64 %cont72506, i64 %QTK$cc)     ; tail call
  ret void
}


define void @lam73813(i64 %env73814, i64 %cont72514, i64 %ZXt$v, i64 %hYS$lst) {
  %arg72918 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %aFL$lst = call i64 @prim_make_45vector(i64 %arg72918, i64 %hYS$lst)               ; call prim_make_45vector
  %cloptr74625 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74626 = getelementptr inbounds i64, i64* %cloptr74625, i64 0                  ; &cloptr74625[0]
  %f74627 = ptrtoint void(i64,i64,i64)* @lam73810 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74627, i64* %eptr74626                                                 ; store fptr
  %arg72921 = ptrtoint i64* %cloptr74625 to i64                                      ; closure cast; i64* -> i64
  %cloptr74628 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74630 = getelementptr inbounds i64, i64* %cloptr74628, i64 1                  ; &eptr74630[1]
  %eptr74631 = getelementptr inbounds i64, i64* %cloptr74628, i64 2                  ; &eptr74631[2]
  %eptr74632 = getelementptr inbounds i64, i64* %cloptr74628, i64 3                  ; &eptr74632[3]
  store i64 %cont72514, i64* %eptr74630                                              ; *eptr74630 = %cont72514
  store i64 %aFL$lst, i64* %eptr74631                                                ; *eptr74631 = %aFL$lst
  store i64 %ZXt$v, i64* %eptr74632                                                  ; *eptr74632 = %ZXt$v
  %eptr74629 = getelementptr inbounds i64, i64* %cloptr74628, i64 0                  ; &cloptr74628[0]
  %f74633 = ptrtoint void(i64,i64,i64)* @lam73808 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74633, i64* %eptr74629                                                 ; store fptr
  %arg72920 = ptrtoint i64* %cloptr74628 to i64                                      ; closure cast; i64* -> i64
  %cloptr74634 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74636 = getelementptr inbounds i64, i64* %cloptr74634, i64 1                  ; &eptr74636[1]
  %eptr74637 = getelementptr inbounds i64, i64* %cloptr74634, i64 2                  ; &eptr74637[2]
  %eptr74638 = getelementptr inbounds i64, i64* %cloptr74634, i64 3                  ; &eptr74638[3]
  store i64 %cont72514, i64* %eptr74636                                              ; *eptr74636 = %cont72514
  store i64 %aFL$lst, i64* %eptr74637                                                ; *eptr74637 = %aFL$lst
  store i64 %ZXt$v, i64* %eptr74638                                                  ; *eptr74638 = %ZXt$v
  %eptr74635 = getelementptr inbounds i64, i64* %cloptr74634, i64 0                  ; &cloptr74634[0]
  %f74639 = ptrtoint void(i64,i64,i64)* @lam73795 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74639, i64* %eptr74635                                                 ; store fptr
  %arg72919 = ptrtoint i64* %cloptr74634 to i64                                      ; closure cast; i64* -> i64
  %cloptr74640 = inttoptr i64 %arg72921 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74641 = getelementptr inbounds i64, i64* %cloptr74640, i64 0                 ; &cloptr74640[0]
  %f74643 = load i64, i64* %i0ptr74641, align 8                                      ; load; *i0ptr74641
  %fptr74642 = inttoptr i64 %f74643 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74642(i64 %arg72921, i64 %arg72920, i64 %arg72919)  ; tail call
  ret void
}


define void @lam73810(i64 %env73811, i64 %cont72519, i64 %MF4$u) {
  %cloptr74644 = inttoptr i64 %MF4$u to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr74645 = getelementptr inbounds i64, i64* %cloptr74644, i64 0                 ; &cloptr74644[0]
  %f74647 = load i64, i64* %i0ptr74645, align 8                                      ; load; *i0ptr74645
  %fptr74646 = inttoptr i64 %f74647 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74646(i64 %MF4$u, i64 %cont72519, i64 %MF4$u)       ; tail call
  ret void
}


define void @lam73808(i64 %env73809, i64 %_9572515, i64 %alh$cc) {
  %envptr74648 = inttoptr i64 %env73809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74649 = getelementptr inbounds i64, i64* %envptr74648, i64 3                ; &envptr74648[3]
  %ZXt$v = load i64, i64* %envptr74649, align 8                                      ; load; *envptr74649
  %envptr74650 = inttoptr i64 %env73809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74651 = getelementptr inbounds i64, i64* %envptr74650, i64 2                ; &envptr74650[2]
  %aFL$lst = load i64, i64* %envptr74651, align 8                                    ; load; *envptr74651
  %envptr74652 = inttoptr i64 %env73809 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74653 = getelementptr inbounds i64, i64* %envptr74652, i64 1                ; &envptr74652[1]
  %cont72514 = load i64, i64* %envptr74653, align 8                                  ; load; *envptr74653
  %arg72925 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72416 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72925)                 ; call prim_vector_45ref
  %a72417 = call i64 @prim_null_63(i64 %a72416)                                      ; call prim_null_63
  %cmp74654 = icmp eq i64 %a72417, 15                                                ; false?
  br i1 %cmp74654, label %else74656, label %then74655                                ; if

then74655:
  %arg72929 = add i64 0, 0                                                           ; quoted ()
  %arg72928 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr74657 = inttoptr i64 %cont72514 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74658 = getelementptr inbounds i64, i64* %cloptr74657, i64 0                 ; &cloptr74657[0]
  %f74660 = load i64, i64* %i0ptr74658, align 8                                      ; load; *i0ptr74658
  %fptr74659 = inttoptr i64 %f74660 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74659(i64 %cont72514, i64 %arg72929, i64 %arg72928) ; tail call
  ret void

else74656:
  %arg72931 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72418 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72931)                 ; call prim_vector_45ref
  %a72419 = call i64 @prim_car(i64 %a72418)                                          ; call prim_car
  %a72420 = call i64 @prim_eqv_63(i64 %a72419, i64 %ZXt$v)                           ; call prim_eqv_63
  %cmp74661 = icmp eq i64 %a72420, 15                                                ; false?
  br i1 %cmp74661, label %else74663, label %then74662                                ; if

then74662:
  %arg72936 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72516 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72936)           ; call prim_vector_45ref
  %arg72939 = add i64 0, 0                                                           ; quoted ()
  %cloptr74664 = inttoptr i64 %cont72514 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74665 = getelementptr inbounds i64, i64* %cloptr74664, i64 0                 ; &cloptr74664[0]
  %f74667 = load i64, i64* %i0ptr74665, align 8                                      ; load; *i0ptr74665
  %fptr74666 = inttoptr i64 %f74667 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74666(i64 %cont72514, i64 %arg72939, i64 %retprim72516); tail call
  ret void

else74663:
  %arg72941 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72421 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72941)                 ; call prim_vector_45ref
  %a72422 = call i64 @prim_cdr(i64 %a72421)                                          ; call prim_cdr
  %arg72945 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72518 = call i64 @prim_vector_45set_33(i64 %aFL$lst, i64 %arg72945, i64 %a72422); call prim_vector_45set_33
  %cloptr74668 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74670 = getelementptr inbounds i64, i64* %cloptr74668, i64 1                  ; &eptr74670[1]
  %eptr74671 = getelementptr inbounds i64, i64* %cloptr74668, i64 2                  ; &eptr74671[2]
  store i64 %cont72514, i64* %eptr74670                                              ; *eptr74670 = %cont72514
  store i64 %alh$cc, i64* %eptr74671                                                 ; *eptr74671 = %alh$cc
  %eptr74669 = getelementptr inbounds i64, i64* %cloptr74668, i64 0                  ; &cloptr74668[0]
  %f74672 = ptrtoint void(i64,i64,i64)* @lam73802 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74672, i64* %eptr74669                                                 ; store fptr
  %arg72949 = ptrtoint i64* %cloptr74668 to i64                                      ; closure cast; i64* -> i64
  %arg72948 = add i64 0, 0                                                           ; quoted ()
  %cloptr74673 = inttoptr i64 %arg72949 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74674 = getelementptr inbounds i64, i64* %cloptr74673, i64 0                 ; &cloptr74673[0]
  %f74676 = load i64, i64* %i0ptr74674, align 8                                      ; load; *i0ptr74674
  %fptr74675 = inttoptr i64 %f74676 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74675(i64 %arg72949, i64 %arg72948, i64 %retprim72518); tail call
  ret void
}


define void @lam73802(i64 %env73803, i64 %_9572517, i64 %XDZ$_950) {
  %envptr74677 = inttoptr i64 %env73803 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74678 = getelementptr inbounds i64, i64* %envptr74677, i64 2                ; &envptr74677[2]
  %alh$cc = load i64, i64* %envptr74678, align 8                                     ; load; *envptr74678
  %envptr74679 = inttoptr i64 %env73803 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74680 = getelementptr inbounds i64, i64* %envptr74679, i64 1                ; &envptr74679[1]
  %cont72514 = load i64, i64* %envptr74680, align 8                                  ; load; *envptr74680
  %cloptr74681 = inttoptr i64 %alh$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74682 = getelementptr inbounds i64, i64* %cloptr74681, i64 0                 ; &cloptr74681[0]
  %f74684 = load i64, i64* %i0ptr74682, align 8                                      ; load; *i0ptr74682
  %fptr74683 = inttoptr i64 %f74684 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74683(i64 %alh$cc, i64 %cont72514, i64 %alh$cc)     ; tail call
  ret void
}


define void @lam73795(i64 %env73796, i64 %_9572515, i64 %alh$cc) {
  %envptr74685 = inttoptr i64 %env73796 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74686 = getelementptr inbounds i64, i64* %envptr74685, i64 3                ; &envptr74685[3]
  %ZXt$v = load i64, i64* %envptr74686, align 8                                      ; load; *envptr74686
  %envptr74687 = inttoptr i64 %env73796 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74688 = getelementptr inbounds i64, i64* %envptr74687, i64 2                ; &envptr74687[2]
  %aFL$lst = load i64, i64* %envptr74688, align 8                                    ; load; *envptr74688
  %envptr74689 = inttoptr i64 %env73796 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74690 = getelementptr inbounds i64, i64* %envptr74689, i64 1                ; &envptr74689[1]
  %cont72514 = load i64, i64* %envptr74690, align 8                                  ; load; *envptr74690
  %arg72953 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72416 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72953)                 ; call prim_vector_45ref
  %a72417 = call i64 @prim_null_63(i64 %a72416)                                      ; call prim_null_63
  %cmp74691 = icmp eq i64 %a72417, 15                                                ; false?
  br i1 %cmp74691, label %else74693, label %then74692                                ; if

then74692:
  %arg72957 = add i64 0, 0                                                           ; quoted ()
  %arg72956 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr74694 = inttoptr i64 %cont72514 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74695 = getelementptr inbounds i64, i64* %cloptr74694, i64 0                 ; &cloptr74694[0]
  %f74697 = load i64, i64* %i0ptr74695, align 8                                      ; load; *i0ptr74695
  %fptr74696 = inttoptr i64 %f74697 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74696(i64 %cont72514, i64 %arg72957, i64 %arg72956) ; tail call
  ret void

else74693:
  %arg72959 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72418 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72959)                 ; call prim_vector_45ref
  %a72419 = call i64 @prim_car(i64 %a72418)                                          ; call prim_car
  %a72420 = call i64 @prim_eqv_63(i64 %a72419, i64 %ZXt$v)                           ; call prim_eqv_63
  %cmp74698 = icmp eq i64 %a72420, 15                                                ; false?
  br i1 %cmp74698, label %else74700, label %then74699                                ; if

then74699:
  %arg72964 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72516 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72964)           ; call prim_vector_45ref
  %arg72967 = add i64 0, 0                                                           ; quoted ()
  %cloptr74701 = inttoptr i64 %cont72514 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74702 = getelementptr inbounds i64, i64* %cloptr74701, i64 0                 ; &cloptr74701[0]
  %f74704 = load i64, i64* %i0ptr74702, align 8                                      ; load; *i0ptr74702
  %fptr74703 = inttoptr i64 %f74704 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74703(i64 %cont72514, i64 %arg72967, i64 %retprim72516); tail call
  ret void

else74700:
  %arg72969 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72421 = call i64 @prim_vector_45ref(i64 %aFL$lst, i64 %arg72969)                 ; call prim_vector_45ref
  %a72422 = call i64 @prim_cdr(i64 %a72421)                                          ; call prim_cdr
  %arg72973 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72518 = call i64 @prim_vector_45set_33(i64 %aFL$lst, i64 %arg72973, i64 %a72422); call prim_vector_45set_33
  %cloptr74705 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74707 = getelementptr inbounds i64, i64* %cloptr74705, i64 1                  ; &eptr74707[1]
  %eptr74708 = getelementptr inbounds i64, i64* %cloptr74705, i64 2                  ; &eptr74708[2]
  store i64 %cont72514, i64* %eptr74707                                              ; *eptr74707 = %cont72514
  store i64 %alh$cc, i64* %eptr74708                                                 ; *eptr74708 = %alh$cc
  %eptr74706 = getelementptr inbounds i64, i64* %cloptr74705, i64 0                  ; &cloptr74705[0]
  %f74709 = ptrtoint void(i64,i64,i64)* @lam73789 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74709, i64* %eptr74706                                                 ; store fptr
  %arg72977 = ptrtoint i64* %cloptr74705 to i64                                      ; closure cast; i64* -> i64
  %arg72976 = add i64 0, 0                                                           ; quoted ()
  %cloptr74710 = inttoptr i64 %arg72977 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74711 = getelementptr inbounds i64, i64* %cloptr74710, i64 0                 ; &cloptr74710[0]
  %f74713 = load i64, i64* %i0ptr74711, align 8                                      ; load; *i0ptr74711
  %fptr74712 = inttoptr i64 %f74713 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74712(i64 %arg72977, i64 %arg72976, i64 %retprim72518); tail call
  ret void
}


define void @lam73789(i64 %env73790, i64 %_9572517, i64 %XDZ$_950) {
  %envptr74714 = inttoptr i64 %env73790 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74715 = getelementptr inbounds i64, i64* %envptr74714, i64 2                ; &envptr74714[2]
  %alh$cc = load i64, i64* %envptr74715, align 8                                     ; load; *envptr74715
  %envptr74716 = inttoptr i64 %env73790 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74717 = getelementptr inbounds i64, i64* %envptr74716, i64 1                ; &envptr74716[1]
  %cont72514 = load i64, i64* %envptr74717, align 8                                  ; load; *envptr74717
  %cloptr74718 = inttoptr i64 %alh$cc to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74719 = getelementptr inbounds i64, i64* %cloptr74718, i64 0                 ; &cloptr74718[0]
  %f74721 = load i64, i64* %i0ptr74719, align 8                                      ; load; *i0ptr74719
  %fptr74720 = inttoptr i64 %f74721 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74720(i64 %alh$cc, i64 %cont72514, i64 %alh$cc)     ; tail call
  ret void
}


define void @lam73782(i64 %env73783, i64 %AL5$args72521) {
  %envptr74722 = inttoptr i64 %env73783 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74723 = getelementptr inbounds i64, i64* %envptr74722, i64 1                ; &envptr74722[1]
  %Qt7$_37foldl1 = load i64, i64* %envptr74723, align 8                              ; load; *envptr74723
  %cont72520 = call i64 @prim_car(i64 %AL5$args72521)                                ; call prim_car
  %AL5$args = call i64 @prim_cdr(i64 %AL5$args72521)                                 ; call prim_cdr
  %a72423 = call i64 @prim_null_63(i64 %AL5$args)                                    ; call prim_null_63
  %cmp74724 = icmp eq i64 %a72423, 15                                                ; false?
  br i1 %cmp74724, label %else74726, label %then74725                                ; if

then74725:
  %arg72985 = add i64 0, 0                                                           ; quoted ()
  %arg72984 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %cloptr74727 = inttoptr i64 %cont72520 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74728 = getelementptr inbounds i64, i64* %cloptr74727, i64 0                 ; &cloptr74727[0]
  %f74730 = load i64, i64* %i0ptr74728, align 8                                      ; load; *i0ptr74728
  %fptr74729 = inttoptr i64 %f74730 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74729(i64 %cont72520, i64 %arg72985, i64 %arg72984) ; tail call
  ret void

else74726:
  %a72424 = call i64 @prim_cdr(i64 %AL5$args)                                        ; call prim_cdr
  %a72425 = call i64 @prim_null_63(i64 %a72424)                                      ; call prim_null_63
  %cmp74731 = icmp eq i64 %a72425, 15                                                ; false?
  br i1 %cmp74731, label %else74733, label %then74732                                ; if

then74732:
  %retprim72522 = call i64 @prim_car(i64 %AL5$args)                                  ; call prim_car
  %arg72991 = add i64 0, 0                                                           ; quoted ()
  %cloptr74734 = inttoptr i64 %cont72520 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74735 = getelementptr inbounds i64, i64* %cloptr74734, i64 0                 ; &cloptr74734[0]
  %f74737 = load i64, i64* %i0ptr74735, align 8                                      ; load; *i0ptr74735
  %fptr74736 = inttoptr i64 %f74737 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74736(i64 %cont72520, i64 %arg72991, i64 %retprim72522); tail call
  ret void

else74733:
  %a72426 = call i64 @prim_car(i64 %AL5$args)                                        ; call prim_car
  %a72427 = call i64 @prim_cdr(i64 %AL5$args)                                        ; call prim_cdr
  %cloptr74738 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74739 = getelementptr inbounds i64, i64* %cloptr74738, i64 0                  ; &cloptr74738[0]
  %f74740 = ptrtoint void(i64,i64,i64,i64)* @lam73780 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74740, i64* %eptr74739                                                 ; store fptr
  %arg72997 = ptrtoint i64* %cloptr74738 to i64                                      ; closure cast; i64* -> i64
  %cloptr74741 = inttoptr i64 %Qt7$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr74742 = getelementptr inbounds i64, i64* %cloptr74741, i64 0                 ; &cloptr74741[0]
  %f74744 = load i64, i64* %i0ptr74742, align 8                                      ; load; *i0ptr74742
  %fptr74743 = inttoptr i64 %f74744 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74743(i64 %Qt7$_37foldl1, i64 %cont72520, i64 %arg72997, i64 %a72426, i64 %a72427); tail call
  ret void
}


define void @lam73780(i64 %env73781, i64 %cont72523, i64 %E3z$n, i64 %lQy$v) {
  %retprim72524 = call i64 @prim__47(i64 %lQy$v, i64 %E3z$n)                         ; call prim__47
  %arg73003 = add i64 0, 0                                                           ; quoted ()
  %cloptr74745 = inttoptr i64 %cont72523 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74746 = getelementptr inbounds i64, i64* %cloptr74745, i64 0                 ; &cloptr74745[0]
  %f74748 = load i64, i64* %i0ptr74746, align 8                                      ; load; *i0ptr74746
  %fptr74747 = inttoptr i64 %f74748 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74747(i64 %cont72523, i64 %arg73003, i64 %retprim72524); tail call
  ret void
}


define void @lam73774(i64 %env73775, i64 %cont72525, i64 %xQT$x) {
  %retprim72526 = call i64 @prim_car(i64 %xQT$x)                                     ; call prim_car
  %arg73007 = add i64 0, 0                                                           ; quoted ()
  %cloptr74749 = inttoptr i64 %cont72525 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74750 = getelementptr inbounds i64, i64* %cloptr74749, i64 0                 ; &cloptr74749[0]
  %f74752 = load i64, i64* %i0ptr74750, align 8                                      ; load; *i0ptr74750
  %fptr74751 = inttoptr i64 %f74752 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74751(i64 %cont72525, i64 %arg73007, i64 %retprim72526); tail call
  ret void
}


define void @lam73771(i64 %env73772, i64 %cont72527, i64 %CoJ$x) {
  %a72428 = call i64 @prim_cdr(i64 %CoJ$x)                                           ; call prim_cdr
  %retprim72528 = call i64 @prim_car(i64 %a72428)                                    ; call prim_car
  %arg73012 = add i64 0, 0                                                           ; quoted ()
  %cloptr74753 = inttoptr i64 %cont72527 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74754 = getelementptr inbounds i64, i64* %cloptr74753, i64 0                 ; &cloptr74753[0]
  %f74756 = load i64, i64* %i0ptr74754, align 8                                      ; load; *i0ptr74754
  %fptr74755 = inttoptr i64 %f74756 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74755(i64 %cont72527, i64 %arg73012, i64 %retprim72528); tail call
  ret void
}


define void @lam73768(i64 %env73769, i64 %cont72529, i64 %fN8$x) {
  %a72429 = call i64 @prim_cdr(i64 %fN8$x)                                           ; call prim_cdr
  %a72430 = call i64 @prim_cdr(i64 %a72429)                                          ; call prim_cdr
  %retprim72530 = call i64 @prim_car(i64 %a72430)                                    ; call prim_car
  %arg73018 = add i64 0, 0                                                           ; quoted ()
  %cloptr74757 = inttoptr i64 %cont72529 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74758 = getelementptr inbounds i64, i64* %cloptr74757, i64 0                 ; &cloptr74757[0]
  %f74760 = load i64, i64* %i0ptr74758, align 8                                      ; load; *i0ptr74758
  %fptr74759 = inttoptr i64 %f74760 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74759(i64 %cont72529, i64 %arg73018, i64 %retprim72530); tail call
  ret void
}


define void @lam73765(i64 %env73766, i64 %cont72531, i64 %mWn$x) {
  %a72431 = call i64 @prim_cdr(i64 %mWn$x)                                           ; call prim_cdr
  %a72432 = call i64 @prim_cdr(i64 %a72431)                                          ; call prim_cdr
  %a72433 = call i64 @prim_cdr(i64 %a72432)                                          ; call prim_cdr
  %retprim72532 = call i64 @prim_car(i64 %a72433)                                    ; call prim_car
  %arg73025 = add i64 0, 0                                                           ; quoted ()
  %cloptr74761 = inttoptr i64 %cont72531 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74762 = getelementptr inbounds i64, i64* %cloptr74761, i64 0                 ; &cloptr74761[0]
  %f74764 = load i64, i64* %i0ptr74762, align 8                                      ; load; *i0ptr74762
  %fptr74763 = inttoptr i64 %f74764 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74763(i64 %cont72531, i64 %arg73025, i64 %retprim72532); tail call
  ret void
}


define void @lam73762(i64 %env73763, i64 %cont72533, i64 %w81$p) {
  %a72434 = call i64 @prim_cons_63(i64 %w81$p)                                       ; call prim_cons_63
  %cmp74765 = icmp eq i64 %a72434, 15                                                ; false?
  br i1 %cmp74765, label %else74767, label %then74766                                ; if

then74766:
  %a72435 = call i64 @prim_car(i64 %w81$p)                                           ; call prim_car
  %arg73029 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym74768, i32 0, i32 0)); quoted string
  %retprim72534 = call i64 @prim_eq_63(i64 %a72435, i64 %arg73029)                   ; call prim_eq_63
  %arg73032 = add i64 0, 0                                                           ; quoted ()
  %cloptr74769 = inttoptr i64 %cont72533 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74770 = getelementptr inbounds i64, i64* %cloptr74769, i64 0                 ; &cloptr74769[0]
  %f74772 = load i64, i64* %i0ptr74770, align 8                                      ; load; *i0ptr74770
  %fptr74771 = inttoptr i64 %f74772 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74771(i64 %cont72533, i64 %arg73032, i64 %retprim72534); tail call
  ret void

else74767:
  %arg73035 = add i64 0, 0                                                           ; quoted ()
  %arg73034 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr74773 = inttoptr i64 %cont72533 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74774 = getelementptr inbounds i64, i64* %cloptr74773, i64 0                 ; &cloptr74773[0]
  %f74776 = load i64, i64* %i0ptr74774, align 8                                      ; load; *i0ptr74774
  %fptr74775 = inttoptr i64 %f74776 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74775(i64 %cont72533, i64 %arg73035, i64 %arg73034) ; tail call
  ret void
}


define void @lam73756(i64 %env73757, i64 %mOO$lst72579) {
  %cont72578 = call i64 @prim_car(i64 %mOO$lst72579)                                 ; call prim_car
  %mOO$lst = call i64 @prim_cdr(i64 %mOO$lst72579)                                   ; call prim_cdr
  %arg73042 = add i64 0, 0                                                           ; quoted ()
  %cloptr74777 = inttoptr i64 %cont72578 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74778 = getelementptr inbounds i64, i64* %cloptr74777, i64 0                 ; &cloptr74777[0]
  %f74780 = load i64, i64* %i0ptr74778, align 8                                      ; load; *i0ptr74778
  %fptr74779 = inttoptr i64 %f74780 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74779(i64 %cont72578, i64 %arg73042, i64 %mOO$lst)  ; tail call
  ret void
}


define void @lam73753(i64 %env73754, i64 %_9572535, i64 %bjK$_37raise_45handler) {
  %envptr74781 = inttoptr i64 %env73754 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74782 = getelementptr inbounds i64, i64* %envptr74781, i64 3                ; &envptr74781[3]
  %dPS$_37length = load i64, i64* %envptr74782, align 8                              ; load; *envptr74782
  %envptr74783 = inttoptr i64 %env73754 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74784 = getelementptr inbounds i64, i64* %envptr74783, i64 2                ; &envptr74783[2]
  %SJZ$_37drop = load i64, i64* %envptr74784, align 8                                ; load; *envptr74784
  %envptr74785 = inttoptr i64 %env73754 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74786 = getelementptr inbounds i64, i64* %envptr74785, i64 1                ; &envptr74785[1]
  %ZVd$_37_62 = load i64, i64* %envptr74786, align 8                                 ; load; *envptr74786
  %cloptr74787 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74788 = getelementptr inbounds i64, i64* %cloptr74787, i64 0                  ; &cloptr74787[0]
  %f74789 = ptrtoint void(i64,i64)* @lam73751 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f74789, i64* %eptr74788                                                 ; store fptr
  %arg73045 = ptrtoint i64* %cloptr74787 to i64                                      ; closure cast; i64* -> i64
  %cloptr74790 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74792 = getelementptr inbounds i64, i64* %cloptr74790, i64 1                  ; &eptr74792[1]
  %eptr74793 = getelementptr inbounds i64, i64* %cloptr74790, i64 2                  ; &eptr74793[2]
  %eptr74794 = getelementptr inbounds i64, i64* %cloptr74790, i64 3                  ; &eptr74794[3]
  store i64 %ZVd$_37_62, i64* %eptr74792                                             ; *eptr74792 = %ZVd$_37_62
  store i64 %SJZ$_37drop, i64* %eptr74793                                            ; *eptr74793 = %SJZ$_37drop
  store i64 %dPS$_37length, i64* %eptr74794                                          ; *eptr74794 = %dPS$_37length
  %eptr74791 = getelementptr inbounds i64, i64* %cloptr74790, i64 0                  ; &cloptr74790[0]
  %f74795 = ptrtoint void(i64,i64,i64)* @lam73748 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74795, i64* %eptr74791                                                 ; store fptr
  %arg73044 = ptrtoint i64* %cloptr74790 to i64                                      ; closure cast; i64* -> i64
  %rva73503 = add i64 0, 0                                                           ; quoted ()
  %rva73502 = call i64 @prim_cons(i64 %arg73044, i64 %rva73503)                      ; call prim_cons
  %cloptr74796 = inttoptr i64 %arg73045 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74797 = getelementptr inbounds i64, i64* %cloptr74796, i64 0                 ; &cloptr74796[0]
  %f74799 = load i64, i64* %i0ptr74797, align 8                                      ; load; *i0ptr74797
  %fptr74798 = inttoptr i64 %f74799 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74798(i64 %arg73045, i64 %rva73502)                 ; tail call
  ret void
}


define void @lam73751(i64 %env73752, i64 %aN6$lst72577) {
  %cont72576 = call i64 @prim_car(i64 %aN6$lst72577)                                 ; call prim_car
  %aN6$lst = call i64 @prim_cdr(i64 %aN6$lst72577)                                   ; call prim_cdr
  %arg73049 = add i64 0, 0                                                           ; quoted ()
  %cloptr74800 = inttoptr i64 %cont72576 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74801 = getelementptr inbounds i64, i64* %cloptr74800, i64 0                 ; &cloptr74800[0]
  %f74803 = load i64, i64* %i0ptr74801, align 8                                      ; load; *i0ptr74801
  %fptr74802 = inttoptr i64 %f74803 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74802(i64 %cont72576, i64 %arg73049, i64 %aN6$lst)  ; tail call
  ret void
}


define void @lam73748(i64 %env73749, i64 %_9572574, i64 %a72436) {
  %envptr74804 = inttoptr i64 %env73749 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74805 = getelementptr inbounds i64, i64* %envptr74804, i64 3                ; &envptr74804[3]
  %dPS$_37length = load i64, i64* %envptr74805, align 8                              ; load; *envptr74805
  %envptr74806 = inttoptr i64 %env73749 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74807 = getelementptr inbounds i64, i64* %envptr74806, i64 2                ; &envptr74806[2]
  %SJZ$_37drop = load i64, i64* %envptr74807, align 8                                ; load; *envptr74807
  %envptr74808 = inttoptr i64 %env73749 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74809 = getelementptr inbounds i64, i64* %envptr74808, i64 1                ; &envptr74808[1]
  %ZVd$_37_62 = load i64, i64* %envptr74809, align 8                                 ; load; *envptr74809
  %arg73052 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim72575 = call i64 @prim_make_45vector(i64 %arg73052, i64 %a72436)           ; call prim_make_45vector
  %cloptr74810 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74812 = getelementptr inbounds i64, i64* %cloptr74810, i64 1                  ; &eptr74812[1]
  %eptr74813 = getelementptr inbounds i64, i64* %cloptr74810, i64 2                  ; &eptr74813[2]
  %eptr74814 = getelementptr inbounds i64, i64* %cloptr74810, i64 3                  ; &eptr74814[3]
  store i64 %ZVd$_37_62, i64* %eptr74812                                             ; *eptr74812 = %ZVd$_37_62
  store i64 %SJZ$_37drop, i64* %eptr74813                                            ; *eptr74813 = %SJZ$_37drop
  store i64 %dPS$_37length, i64* %eptr74814                                          ; *eptr74814 = %dPS$_37length
  %eptr74811 = getelementptr inbounds i64, i64* %cloptr74810, i64 0                  ; &cloptr74810[0]
  %f74815 = ptrtoint void(i64,i64,i64)* @lam73745 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74815, i64* %eptr74811                                                 ; store fptr
  %arg73055 = ptrtoint i64* %cloptr74810 to i64                                      ; closure cast; i64* -> i64
  %arg73054 = add i64 0, 0                                                           ; quoted ()
  %cloptr74816 = inttoptr i64 %arg73055 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74817 = getelementptr inbounds i64, i64* %cloptr74816, i64 0                 ; &cloptr74816[0]
  %f74819 = load i64, i64* %i0ptr74817, align 8                                      ; load; *i0ptr74817
  %fptr74818 = inttoptr i64 %f74819 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74818(i64 %arg73055, i64 %arg73054, i64 %retprim72575); tail call
  ret void
}


define void @lam73745(i64 %env73746, i64 %_9572536, i64 %C5K$_37wind_45stack) {
  %envptr74820 = inttoptr i64 %env73746 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74821 = getelementptr inbounds i64, i64* %envptr74820, i64 3                ; &envptr74820[3]
  %dPS$_37length = load i64, i64* %envptr74821, align 8                              ; load; *envptr74821
  %envptr74822 = inttoptr i64 %env73746 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74823 = getelementptr inbounds i64, i64* %envptr74822, i64 2                ; &envptr74822[2]
  %SJZ$_37drop = load i64, i64* %envptr74823, align 8                                ; load; *envptr74823
  %envptr74824 = inttoptr i64 %env73746 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74825 = getelementptr inbounds i64, i64* %envptr74824, i64 1                ; &envptr74824[1]
  %ZVd$_37_62 = load i64, i64* %envptr74825, align 8                                 ; load; *envptr74825
  %cloptr74826 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr74828 = getelementptr inbounds i64, i64* %cloptr74826, i64 1                  ; &eptr74828[1]
  %eptr74829 = getelementptr inbounds i64, i64* %cloptr74826, i64 2                  ; &eptr74829[2]
  %eptr74830 = getelementptr inbounds i64, i64* %cloptr74826, i64 3                  ; &eptr74830[3]
  store i64 %ZVd$_37_62, i64* %eptr74828                                             ; *eptr74828 = %ZVd$_37_62
  store i64 %SJZ$_37drop, i64* %eptr74829                                            ; *eptr74829 = %SJZ$_37drop
  store i64 %dPS$_37length, i64* %eptr74830                                          ; *eptr74830 = %dPS$_37length
  %eptr74827 = getelementptr inbounds i64, i64* %cloptr74826, i64 0                  ; &cloptr74826[0]
  %f74831 = ptrtoint void(i64,i64,i64,i64)* @lam73743 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74831, i64* %eptr74827                                                 ; store fptr
  %Ajp$_37common_45tail = ptrtoint i64* %cloptr74826 to i64                          ; closure cast; i64* -> i64
  %cloptr74832 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr74834 = getelementptr inbounds i64, i64* %cloptr74832, i64 1                  ; &eptr74834[1]
  %eptr74835 = getelementptr inbounds i64, i64* %cloptr74832, i64 2                  ; &eptr74835[2]
  store i64 %C5K$_37wind_45stack, i64* %eptr74834                                    ; *eptr74834 = %C5K$_37wind_45stack
  store i64 %Ajp$_37common_45tail, i64* %eptr74835                                   ; *eptr74835 = %Ajp$_37common_45tail
  %eptr74833 = getelementptr inbounds i64, i64* %cloptr74832, i64 0                  ; &cloptr74832[0]
  %f74836 = ptrtoint void(i64,i64,i64)* @lam73701 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74836, i64* %eptr74833                                                 ; store fptr
  %lHz$_37do_45wind = ptrtoint i64* %cloptr74832 to i64                              ; closure cast; i64* -> i64
  %arg73241 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %arg73240 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72573 = call i64 @prim__47(i64 %arg73241, i64 %arg73240)                   ; call prim__47
  %cloptr74837 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74838 = getelementptr inbounds i64, i64* %cloptr74837, i64 0                  ; &cloptr74837[0]
  %f74839 = ptrtoint void(i64,i64,i64)* @lam73649 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74839, i64* %eptr74838                                                 ; store fptr
  %arg73244 = ptrtoint i64* %cloptr74837 to i64                                      ; closure cast; i64* -> i64
  %arg73243 = add i64 0, 0                                                           ; quoted ()
  %cloptr74840 = inttoptr i64 %arg73244 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74841 = getelementptr inbounds i64, i64* %cloptr74840, i64 0                 ; &cloptr74840[0]
  %f74843 = load i64, i64* %i0ptr74841, align 8                                      ; load; *i0ptr74841
  %fptr74842 = inttoptr i64 %f74843 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74842(i64 %arg73244, i64 %arg73243, i64 %retprim72573); tail call
  ret void
}


define void @lam73743(i64 %env73744, i64 %cont72537, i64 %JS7$x, i64 %Um0$y) {
  %envptr74844 = inttoptr i64 %env73744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74845 = getelementptr inbounds i64, i64* %envptr74844, i64 3                ; &envptr74844[3]
  %dPS$_37length = load i64, i64* %envptr74845, align 8                              ; load; *envptr74845
  %envptr74846 = inttoptr i64 %env73744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74847 = getelementptr inbounds i64, i64* %envptr74846, i64 2                ; &envptr74846[2]
  %SJZ$_37drop = load i64, i64* %envptr74847, align 8                                ; load; *envptr74847
  %envptr74848 = inttoptr i64 %env73744 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74849 = getelementptr inbounds i64, i64* %envptr74848, i64 1                ; &envptr74848[1]
  %ZVd$_37_62 = load i64, i64* %envptr74849, align 8                                 ; load; *envptr74849
  %cloptr74850 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr74852 = getelementptr inbounds i64, i64* %cloptr74850, i64 1                  ; &eptr74852[1]
  %eptr74853 = getelementptr inbounds i64, i64* %cloptr74850, i64 2                  ; &eptr74853[2]
  %eptr74854 = getelementptr inbounds i64, i64* %cloptr74850, i64 3                  ; &eptr74854[3]
  %eptr74855 = getelementptr inbounds i64, i64* %cloptr74850, i64 4                  ; &eptr74855[4]
  %eptr74856 = getelementptr inbounds i64, i64* %cloptr74850, i64 5                  ; &eptr74856[5]
  %eptr74857 = getelementptr inbounds i64, i64* %cloptr74850, i64 6                  ; &eptr74857[6]
  store i64 %ZVd$_37_62, i64* %eptr74852                                             ; *eptr74852 = %ZVd$_37_62
  store i64 %Um0$y, i64* %eptr74853                                                  ; *eptr74853 = %Um0$y
  store i64 %cont72537, i64* %eptr74854                                              ; *eptr74854 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr74855                                            ; *eptr74855 = %SJZ$_37drop
  store i64 %dPS$_37length, i64* %eptr74856                                          ; *eptr74856 = %dPS$_37length
  store i64 %JS7$x, i64* %eptr74857                                                  ; *eptr74857 = %JS7$x
  %eptr74851 = getelementptr inbounds i64, i64* %cloptr74850, i64 0                  ; &cloptr74850[0]
  %f74858 = ptrtoint void(i64,i64,i64)* @lam73741 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74858, i64* %eptr74851                                                 ; store fptr
  %arg73057 = ptrtoint i64* %cloptr74850 to i64                                      ; closure cast; i64* -> i64
  %cloptr74859 = inttoptr i64 %dPS$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr74860 = getelementptr inbounds i64, i64* %cloptr74859, i64 0                 ; &cloptr74859[0]
  %f74862 = load i64, i64* %i0ptr74860, align 8                                      ; load; *i0ptr74860
  %fptr74861 = inttoptr i64 %f74862 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74861(i64 %dPS$_37length, i64 %arg73057, i64 %JS7$x); tail call
  ret void
}


define void @lam73741(i64 %env73742, i64 %_9572538, i64 %tzM$lx) {
  %envptr74863 = inttoptr i64 %env73742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74864 = getelementptr inbounds i64, i64* %envptr74863, i64 6                ; &envptr74863[6]
  %JS7$x = load i64, i64* %envptr74864, align 8                                      ; load; *envptr74864
  %envptr74865 = inttoptr i64 %env73742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74866 = getelementptr inbounds i64, i64* %envptr74865, i64 5                ; &envptr74865[5]
  %dPS$_37length = load i64, i64* %envptr74866, align 8                              ; load; *envptr74866
  %envptr74867 = inttoptr i64 %env73742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74868 = getelementptr inbounds i64, i64* %envptr74867, i64 4                ; &envptr74867[4]
  %SJZ$_37drop = load i64, i64* %envptr74868, align 8                                ; load; *envptr74868
  %envptr74869 = inttoptr i64 %env73742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74870 = getelementptr inbounds i64, i64* %envptr74869, i64 3                ; &envptr74869[3]
  %cont72537 = load i64, i64* %envptr74870, align 8                                  ; load; *envptr74870
  %envptr74871 = inttoptr i64 %env73742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74872 = getelementptr inbounds i64, i64* %envptr74871, i64 2                ; &envptr74871[2]
  %Um0$y = load i64, i64* %envptr74872, align 8                                      ; load; *envptr74872
  %envptr74873 = inttoptr i64 %env73742 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74874 = getelementptr inbounds i64, i64* %envptr74873, i64 1                ; &envptr74873[1]
  %ZVd$_37_62 = load i64, i64* %envptr74874, align 8                                 ; load; *envptr74874
  %cloptr74875 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr74877 = getelementptr inbounds i64, i64* %cloptr74875, i64 1                  ; &eptr74877[1]
  %eptr74878 = getelementptr inbounds i64, i64* %cloptr74875, i64 2                  ; &eptr74878[2]
  %eptr74879 = getelementptr inbounds i64, i64* %cloptr74875, i64 3                  ; &eptr74879[3]
  %eptr74880 = getelementptr inbounds i64, i64* %cloptr74875, i64 4                  ; &eptr74880[4]
  %eptr74881 = getelementptr inbounds i64, i64* %cloptr74875, i64 5                  ; &eptr74881[5]
  %eptr74882 = getelementptr inbounds i64, i64* %cloptr74875, i64 6                  ; &eptr74882[6]
  store i64 %ZVd$_37_62, i64* %eptr74877                                             ; *eptr74877 = %ZVd$_37_62
  store i64 %Um0$y, i64* %eptr74878                                                  ; *eptr74878 = %Um0$y
  store i64 %cont72537, i64* %eptr74879                                              ; *eptr74879 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr74880                                            ; *eptr74880 = %SJZ$_37drop
  store i64 %tzM$lx, i64* %eptr74881                                                 ; *eptr74881 = %tzM$lx
  store i64 %JS7$x, i64* %eptr74882                                                  ; *eptr74882 = %JS7$x
  %eptr74876 = getelementptr inbounds i64, i64* %cloptr74875, i64 0                  ; &cloptr74875[0]
  %f74883 = ptrtoint void(i64,i64,i64)* @lam73739 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74883, i64* %eptr74876                                                 ; store fptr
  %arg73060 = ptrtoint i64* %cloptr74875 to i64                                      ; closure cast; i64* -> i64
  %cloptr74884 = inttoptr i64 %dPS$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr74885 = getelementptr inbounds i64, i64* %cloptr74884, i64 0                 ; &cloptr74884[0]
  %f74887 = load i64, i64* %i0ptr74885, align 8                                      ; load; *i0ptr74885
  %fptr74886 = inttoptr i64 %f74887 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74886(i64 %dPS$_37length, i64 %arg73060, i64 %Um0$y); tail call
  ret void
}


define void @lam73739(i64 %env73740, i64 %_9572539, i64 %UB9$ly) {
  %envptr74888 = inttoptr i64 %env73740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74889 = getelementptr inbounds i64, i64* %envptr74888, i64 6                ; &envptr74888[6]
  %JS7$x = load i64, i64* %envptr74889, align 8                                      ; load; *envptr74889
  %envptr74890 = inttoptr i64 %env73740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74891 = getelementptr inbounds i64, i64* %envptr74890, i64 5                ; &envptr74890[5]
  %tzM$lx = load i64, i64* %envptr74891, align 8                                     ; load; *envptr74891
  %envptr74892 = inttoptr i64 %env73740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74893 = getelementptr inbounds i64, i64* %envptr74892, i64 4                ; &envptr74892[4]
  %SJZ$_37drop = load i64, i64* %envptr74893, align 8                                ; load; *envptr74893
  %envptr74894 = inttoptr i64 %env73740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74895 = getelementptr inbounds i64, i64* %envptr74894, i64 3                ; &envptr74894[3]
  %cont72537 = load i64, i64* %envptr74895, align 8                                  ; load; *envptr74895
  %envptr74896 = inttoptr i64 %env73740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74897 = getelementptr inbounds i64, i64* %envptr74896, i64 2                ; &envptr74896[2]
  %Um0$y = load i64, i64* %envptr74897, align 8                                      ; load; *envptr74897
  %envptr74898 = inttoptr i64 %env73740 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74899 = getelementptr inbounds i64, i64* %envptr74898, i64 1                ; &envptr74898[1]
  %ZVd$_37_62 = load i64, i64* %envptr74899, align 8                                 ; load; *envptr74899
  %cloptr74900 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr74901 = getelementptr inbounds i64, i64* %cloptr74900, i64 0                  ; &cloptr74900[0]
  %f74902 = ptrtoint void(i64,i64)* @lam73737 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f74902, i64* %eptr74901                                                 ; store fptr
  %arg73063 = ptrtoint i64* %cloptr74900 to i64                                      ; closure cast; i64* -> i64
  %cloptr74903 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr74905 = getelementptr inbounds i64, i64* %cloptr74903, i64 1                  ; &eptr74905[1]
  %eptr74906 = getelementptr inbounds i64, i64* %cloptr74903, i64 2                  ; &eptr74906[2]
  %eptr74907 = getelementptr inbounds i64, i64* %cloptr74903, i64 3                  ; &eptr74907[3]
  %eptr74908 = getelementptr inbounds i64, i64* %cloptr74903, i64 4                  ; &eptr74908[4]
  %eptr74909 = getelementptr inbounds i64, i64* %cloptr74903, i64 5                  ; &eptr74909[5]
  %eptr74910 = getelementptr inbounds i64, i64* %cloptr74903, i64 6                  ; &eptr74910[6]
  %eptr74911 = getelementptr inbounds i64, i64* %cloptr74903, i64 7                  ; &eptr74911[7]
  store i64 %ZVd$_37_62, i64* %eptr74905                                             ; *eptr74905 = %ZVd$_37_62
  store i64 %Um0$y, i64* %eptr74906                                                  ; *eptr74906 = %Um0$y
  store i64 %cont72537, i64* %eptr74907                                              ; *eptr74907 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr74908                                            ; *eptr74908 = %SJZ$_37drop
  store i64 %UB9$ly, i64* %eptr74909                                                 ; *eptr74909 = %UB9$ly
  store i64 %tzM$lx, i64* %eptr74910                                                 ; *eptr74910 = %tzM$lx
  store i64 %JS7$x, i64* %eptr74911                                                  ; *eptr74911 = %JS7$x
  %eptr74904 = getelementptr inbounds i64, i64* %cloptr74903, i64 0                  ; &cloptr74903[0]
  %f74912 = ptrtoint void(i64,i64,i64)* @lam73734 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74912, i64* %eptr74904                                                 ; store fptr
  %arg73062 = ptrtoint i64* %cloptr74903 to i64                                      ; closure cast; i64* -> i64
  %cloptr74913 = inttoptr i64 %arg73063 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74914 = getelementptr inbounds i64, i64* %cloptr74913, i64 0                 ; &cloptr74913[0]
  %f74916 = load i64, i64* %i0ptr74914, align 8                                      ; load; *i0ptr74914
  %fptr74915 = inttoptr i64 %f74916 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74915(i64 %arg73063, i64 %arg73062)                 ; tail call
  ret void
}


define void @lam73737(i64 %env73738, i64 %sLu$lst72549) {
  %cont72548 = call i64 @prim_car(i64 %sLu$lst72549)                                 ; call prim_car
  %sLu$lst = call i64 @prim_cdr(i64 %sLu$lst72549)                                   ; call prim_cdr
  %arg73067 = add i64 0, 0                                                           ; quoted ()
  %cloptr74917 = inttoptr i64 %cont72548 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74918 = getelementptr inbounds i64, i64* %cloptr74917, i64 0                 ; &cloptr74917[0]
  %f74920 = load i64, i64* %i0ptr74918, align 8                                      ; load; *i0ptr74918
  %fptr74919 = inttoptr i64 %f74920 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74919(i64 %cont72548, i64 %arg73067, i64 %sLu$lst)  ; tail call
  ret void
}


define void @lam73734(i64 %env73735, i64 %_9572546, i64 %a72437) {
  %envptr74921 = inttoptr i64 %env73735 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74922 = getelementptr inbounds i64, i64* %envptr74921, i64 7                ; &envptr74921[7]
  %JS7$x = load i64, i64* %envptr74922, align 8                                      ; load; *envptr74922
  %envptr74923 = inttoptr i64 %env73735 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74924 = getelementptr inbounds i64, i64* %envptr74923, i64 6                ; &envptr74923[6]
  %tzM$lx = load i64, i64* %envptr74924, align 8                                     ; load; *envptr74924
  %envptr74925 = inttoptr i64 %env73735 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74926 = getelementptr inbounds i64, i64* %envptr74925, i64 5                ; &envptr74925[5]
  %UB9$ly = load i64, i64* %envptr74926, align 8                                     ; load; *envptr74926
  %envptr74927 = inttoptr i64 %env73735 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74928 = getelementptr inbounds i64, i64* %envptr74927, i64 4                ; &envptr74927[4]
  %SJZ$_37drop = load i64, i64* %envptr74928, align 8                                ; load; *envptr74928
  %envptr74929 = inttoptr i64 %env73735 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74930 = getelementptr inbounds i64, i64* %envptr74929, i64 3                ; &envptr74929[3]
  %cont72537 = load i64, i64* %envptr74930, align 8                                  ; load; *envptr74930
  %envptr74931 = inttoptr i64 %env73735 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74932 = getelementptr inbounds i64, i64* %envptr74931, i64 2                ; &envptr74931[2]
  %Um0$y = load i64, i64* %envptr74932, align 8                                      ; load; *envptr74932
  %envptr74933 = inttoptr i64 %env73735 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74934 = getelementptr inbounds i64, i64* %envptr74933, i64 1                ; &envptr74933[1]
  %ZVd$_37_62 = load i64, i64* %envptr74934, align 8                                 ; load; *envptr74934
  %arg73070 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim72547 = call i64 @prim_make_45vector(i64 %arg73070, i64 %a72437)           ; call prim_make_45vector
  %cloptr74935 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr74937 = getelementptr inbounds i64, i64* %cloptr74935, i64 1                  ; &eptr74937[1]
  %eptr74938 = getelementptr inbounds i64, i64* %cloptr74935, i64 2                  ; &eptr74938[2]
  %eptr74939 = getelementptr inbounds i64, i64* %cloptr74935, i64 3                  ; &eptr74939[3]
  %eptr74940 = getelementptr inbounds i64, i64* %cloptr74935, i64 4                  ; &eptr74940[4]
  %eptr74941 = getelementptr inbounds i64, i64* %cloptr74935, i64 5                  ; &eptr74941[5]
  %eptr74942 = getelementptr inbounds i64, i64* %cloptr74935, i64 6                  ; &eptr74942[6]
  %eptr74943 = getelementptr inbounds i64, i64* %cloptr74935, i64 7                  ; &eptr74943[7]
  store i64 %ZVd$_37_62, i64* %eptr74937                                             ; *eptr74937 = %ZVd$_37_62
  store i64 %Um0$y, i64* %eptr74938                                                  ; *eptr74938 = %Um0$y
  store i64 %cont72537, i64* %eptr74939                                              ; *eptr74939 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr74940                                            ; *eptr74940 = %SJZ$_37drop
  store i64 %UB9$ly, i64* %eptr74941                                                 ; *eptr74941 = %UB9$ly
  store i64 %tzM$lx, i64* %eptr74942                                                 ; *eptr74942 = %tzM$lx
  store i64 %JS7$x, i64* %eptr74943                                                  ; *eptr74943 = %JS7$x
  %eptr74936 = getelementptr inbounds i64, i64* %cloptr74935, i64 0                  ; &cloptr74935[0]
  %f74944 = ptrtoint void(i64,i64,i64)* @lam73731 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74944, i64* %eptr74936                                                 ; store fptr
  %arg73073 = ptrtoint i64* %cloptr74935 to i64                                      ; closure cast; i64* -> i64
  %arg73072 = add i64 0, 0                                                           ; quoted ()
  %cloptr74945 = inttoptr i64 %arg73073 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr74946 = getelementptr inbounds i64, i64* %cloptr74945, i64 0                 ; &cloptr74945[0]
  %f74948 = load i64, i64* %i0ptr74946, align 8                                      ; load; *i0ptr74946
  %fptr74947 = inttoptr i64 %f74948 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74947(i64 %arg73073, i64 %arg73072, i64 %retprim72547); tail call
  ret void
}


define void @lam73731(i64 %env73732, i64 %_9572540, i64 %jMC$loop) {
  %envptr74949 = inttoptr i64 %env73732 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74950 = getelementptr inbounds i64, i64* %envptr74949, i64 7                ; &envptr74949[7]
  %JS7$x = load i64, i64* %envptr74950, align 8                                      ; load; *envptr74950
  %envptr74951 = inttoptr i64 %env73732 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74952 = getelementptr inbounds i64, i64* %envptr74951, i64 6                ; &envptr74951[6]
  %tzM$lx = load i64, i64* %envptr74952, align 8                                     ; load; *envptr74952
  %envptr74953 = inttoptr i64 %env73732 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74954 = getelementptr inbounds i64, i64* %envptr74953, i64 5                ; &envptr74953[5]
  %UB9$ly = load i64, i64* %envptr74954, align 8                                     ; load; *envptr74954
  %envptr74955 = inttoptr i64 %env73732 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74956 = getelementptr inbounds i64, i64* %envptr74955, i64 4                ; &envptr74955[4]
  %SJZ$_37drop = load i64, i64* %envptr74956, align 8                                ; load; *envptr74956
  %envptr74957 = inttoptr i64 %env73732 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74958 = getelementptr inbounds i64, i64* %envptr74957, i64 3                ; &envptr74957[3]
  %cont72537 = load i64, i64* %envptr74958, align 8                                  ; load; *envptr74958
  %envptr74959 = inttoptr i64 %env73732 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74960 = getelementptr inbounds i64, i64* %envptr74959, i64 2                ; &envptr74959[2]
  %Um0$y = load i64, i64* %envptr74960, align 8                                      ; load; *envptr74960
  %envptr74961 = inttoptr i64 %env73732 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74962 = getelementptr inbounds i64, i64* %envptr74961, i64 1                ; &envptr74961[1]
  %ZVd$_37_62 = load i64, i64* %envptr74962, align 8                                 ; load; *envptr74962
  %arg73075 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr74963 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr74965 = getelementptr inbounds i64, i64* %cloptr74963, i64 1                  ; &eptr74965[1]
  store i64 %jMC$loop, i64* %eptr74965                                               ; *eptr74965 = %jMC$loop
  %eptr74964 = getelementptr inbounds i64, i64* %cloptr74963, i64 0                  ; &cloptr74963[0]
  %f74966 = ptrtoint void(i64,i64,i64,i64)* @lam73728 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f74966, i64* %eptr74964                                                 ; store fptr
  %arg73074 = ptrtoint i64* %cloptr74963 to i64                                      ; closure cast; i64* -> i64
  %hOG$_9572341 = call i64 @prim_vector_45set_33(i64 %jMC$loop, i64 %arg73075, i64 %arg73074); call prim_vector_45set_33
  %arg73090 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72442 = call i64 @prim_vector_45ref(i64 %jMC$loop, i64 %arg73090)                ; call prim_vector_45ref
  %cloptr74967 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr74969 = getelementptr inbounds i64, i64* %cloptr74967, i64 1                  ; &eptr74969[1]
  %eptr74970 = getelementptr inbounds i64, i64* %cloptr74967, i64 2                  ; &eptr74970[2]
  %eptr74971 = getelementptr inbounds i64, i64* %cloptr74967, i64 3                  ; &eptr74971[3]
  %eptr74972 = getelementptr inbounds i64, i64* %cloptr74967, i64 4                  ; &eptr74972[4]
  %eptr74973 = getelementptr inbounds i64, i64* %cloptr74967, i64 5                  ; &eptr74973[5]
  %eptr74974 = getelementptr inbounds i64, i64* %cloptr74967, i64 6                  ; &eptr74974[6]
  %eptr74975 = getelementptr inbounds i64, i64* %cloptr74967, i64 7                  ; &eptr74975[7]
  %eptr74976 = getelementptr inbounds i64, i64* %cloptr74967, i64 8                  ; &eptr74976[8]
  store i64 %ZVd$_37_62, i64* %eptr74969                                             ; *eptr74969 = %ZVd$_37_62
  store i64 %Um0$y, i64* %eptr74970                                                  ; *eptr74970 = %Um0$y
  store i64 %cont72537, i64* %eptr74971                                              ; *eptr74971 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr74972                                            ; *eptr74972 = %SJZ$_37drop
  store i64 %UB9$ly, i64* %eptr74973                                                 ; *eptr74973 = %UB9$ly
  store i64 %tzM$lx, i64* %eptr74974                                                 ; *eptr74974 = %tzM$lx
  store i64 %a72442, i64* %eptr74975                                                 ; *eptr74975 = %a72442
  store i64 %JS7$x, i64* %eptr74976                                                  ; *eptr74976 = %JS7$x
  %eptr74968 = getelementptr inbounds i64, i64* %cloptr74967, i64 0                  ; &cloptr74967[0]
  %f74977 = ptrtoint void(i64,i64,i64)* @lam73723 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f74977, i64* %eptr74968                                                 ; store fptr
  %arg73094 = ptrtoint i64* %cloptr74967 to i64                                      ; closure cast; i64* -> i64
  %cloptr74978 = inttoptr i64 %ZVd$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr74979 = getelementptr inbounds i64, i64* %cloptr74978, i64 0                 ; &cloptr74978[0]
  %f74981 = load i64, i64* %i0ptr74979, align 8                                      ; load; *i0ptr74979
  %fptr74980 = inttoptr i64 %f74981 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74980(i64 %ZVd$_37_62, i64 %arg73094, i64 %tzM$lx, i64 %UB9$ly); tail call
  ret void
}


define void @lam73728(i64 %env73729, i64 %cont72541, i64 %swa$x, i64 %Grw$y) {
  %envptr74982 = inttoptr i64 %env73729 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74983 = getelementptr inbounds i64, i64* %envptr74982, i64 1                ; &envptr74982[1]
  %jMC$loop = load i64, i64* %envptr74983, align 8                                   ; load; *envptr74983
  %a72438 = call i64 @prim_eq_63(i64 %swa$x, i64 %Grw$y)                             ; call prim_eq_63
  %cmp74984 = icmp eq i64 %a72438, 15                                                ; false?
  br i1 %cmp74984, label %else74986, label %then74985                                ; if

then74985:
  %arg73080 = add i64 0, 0                                                           ; quoted ()
  %cloptr74987 = inttoptr i64 %cont72541 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr74988 = getelementptr inbounds i64, i64* %cloptr74987, i64 0                 ; &cloptr74987[0]
  %f74990 = load i64, i64* %i0ptr74988, align 8                                      ; load; *i0ptr74988
  %fptr74989 = inttoptr i64 %f74990 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74989(i64 %cont72541, i64 %arg73080, i64 %swa$x)    ; tail call
  ret void

else74986:
  %arg73082 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72439 = call i64 @prim_vector_45ref(i64 %jMC$loop, i64 %arg73082)                ; call prim_vector_45ref
  %a72440 = call i64 @prim_cdr(i64 %swa$x)                                           ; call prim_cdr
  %a72441 = call i64 @prim_cdr(i64 %Grw$y)                                           ; call prim_cdr
  %cloptr74991 = inttoptr i64 %a72439 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr74992 = getelementptr inbounds i64, i64* %cloptr74991, i64 0                 ; &cloptr74991[0]
  %f74994 = load i64, i64* %i0ptr74992, align 8                                      ; load; *i0ptr74992
  %fptr74993 = inttoptr i64 %f74994 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr74993(i64 %a72439, i64 %cont72541, i64 %a72440, i64 %a72441); tail call
  ret void
}


define void @lam73723(i64 %env73724, i64 %_9572542, i64 %a72443) {
  %envptr74995 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74996 = getelementptr inbounds i64, i64* %envptr74995, i64 8                ; &envptr74995[8]
  %JS7$x = load i64, i64* %envptr74996, align 8                                      ; load; *envptr74996
  %envptr74997 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr74998 = getelementptr inbounds i64, i64* %envptr74997, i64 7                ; &envptr74997[7]
  %a72442 = load i64, i64* %envptr74998, align 8                                     ; load; *envptr74998
  %envptr74999 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75000 = getelementptr inbounds i64, i64* %envptr74999, i64 6                ; &envptr74999[6]
  %tzM$lx = load i64, i64* %envptr75000, align 8                                     ; load; *envptr75000
  %envptr75001 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75002 = getelementptr inbounds i64, i64* %envptr75001, i64 5                ; &envptr75001[5]
  %UB9$ly = load i64, i64* %envptr75002, align 8                                     ; load; *envptr75002
  %envptr75003 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75004 = getelementptr inbounds i64, i64* %envptr75003, i64 4                ; &envptr75003[4]
  %SJZ$_37drop = load i64, i64* %envptr75004, align 8                                ; load; *envptr75004
  %envptr75005 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75006 = getelementptr inbounds i64, i64* %envptr75005, i64 3                ; &envptr75005[3]
  %cont72537 = load i64, i64* %envptr75006, align 8                                  ; load; *envptr75006
  %envptr75007 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75008 = getelementptr inbounds i64, i64* %envptr75007, i64 2                ; &envptr75007[2]
  %Um0$y = load i64, i64* %envptr75008, align 8                                      ; load; *envptr75008
  %envptr75009 = inttoptr i64 %env73724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75010 = getelementptr inbounds i64, i64* %envptr75009, i64 1                ; &envptr75009[1]
  %ZVd$_37_62 = load i64, i64* %envptr75010, align 8                                 ; load; *envptr75010
  %cmp75011 = icmp eq i64 %a72443, 15                                                ; false?
  br i1 %cmp75011, label %else75013, label %then75012                                ; if

then75012:
  %a72444 = call i64 @prim__45(i64 %tzM$lx, i64 %UB9$ly)                             ; call prim__45
  %cloptr75014 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75016 = getelementptr inbounds i64, i64* %cloptr75014, i64 1                  ; &eptr75016[1]
  %eptr75017 = getelementptr inbounds i64, i64* %cloptr75014, i64 2                  ; &eptr75017[2]
  %eptr75018 = getelementptr inbounds i64, i64* %cloptr75014, i64 3                  ; &eptr75018[3]
  %eptr75019 = getelementptr inbounds i64, i64* %cloptr75014, i64 4                  ; &eptr75019[4]
  %eptr75020 = getelementptr inbounds i64, i64* %cloptr75014, i64 5                  ; &eptr75020[5]
  %eptr75021 = getelementptr inbounds i64, i64* %cloptr75014, i64 6                  ; &eptr75021[6]
  %eptr75022 = getelementptr inbounds i64, i64* %cloptr75014, i64 7                  ; &eptr75022[7]
  store i64 %ZVd$_37_62, i64* %eptr75016                                             ; *eptr75016 = %ZVd$_37_62
  store i64 %Um0$y, i64* %eptr75017                                                  ; *eptr75017 = %Um0$y
  store i64 %cont72537, i64* %eptr75018                                              ; *eptr75018 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr75019                                            ; *eptr75019 = %SJZ$_37drop
  store i64 %UB9$ly, i64* %eptr75020                                                 ; *eptr75020 = %UB9$ly
  store i64 %tzM$lx, i64* %eptr75021                                                 ; *eptr75021 = %tzM$lx
  store i64 %a72442, i64* %eptr75022                                                 ; *eptr75022 = %a72442
  %eptr75015 = getelementptr inbounds i64, i64* %cloptr75014, i64 0                  ; &cloptr75014[0]
  %f75023 = ptrtoint void(i64,i64,i64)* @lam73711 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75023, i64* %eptr75015                                                 ; store fptr
  %arg73100 = ptrtoint i64* %cloptr75014 to i64                                      ; closure cast; i64* -> i64
  %cloptr75024 = inttoptr i64 %SJZ$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr75025 = getelementptr inbounds i64, i64* %cloptr75024, i64 0                 ; &cloptr75024[0]
  %f75027 = load i64, i64* %i0ptr75025, align 8                                      ; load; *i0ptr75025
  %fptr75026 = inttoptr i64 %f75027 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75026(i64 %SJZ$_37drop, i64 %arg73100, i64 %JS7$x, i64 %a72444); tail call
  ret void

else75013:
  %cloptr75028 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75030 = getelementptr inbounds i64, i64* %cloptr75028, i64 1                  ; &eptr75030[1]
  %eptr75031 = getelementptr inbounds i64, i64* %cloptr75028, i64 2                  ; &eptr75031[2]
  %eptr75032 = getelementptr inbounds i64, i64* %cloptr75028, i64 3                  ; &eptr75032[3]
  %eptr75033 = getelementptr inbounds i64, i64* %cloptr75028, i64 4                  ; &eptr75033[4]
  %eptr75034 = getelementptr inbounds i64, i64* %cloptr75028, i64 5                  ; &eptr75034[5]
  %eptr75035 = getelementptr inbounds i64, i64* %cloptr75028, i64 6                  ; &eptr75035[6]
  %eptr75036 = getelementptr inbounds i64, i64* %cloptr75028, i64 7                  ; &eptr75036[7]
  store i64 %ZVd$_37_62, i64* %eptr75030                                             ; *eptr75030 = %ZVd$_37_62
  store i64 %Um0$y, i64* %eptr75031                                                  ; *eptr75031 = %Um0$y
  store i64 %cont72537, i64* %eptr75032                                              ; *eptr75032 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr75033                                            ; *eptr75033 = %SJZ$_37drop
  store i64 %UB9$ly, i64* %eptr75034                                                 ; *eptr75034 = %UB9$ly
  store i64 %tzM$lx, i64* %eptr75035                                                 ; *eptr75035 = %tzM$lx
  store i64 %a72442, i64* %eptr75036                                                 ; *eptr75036 = %a72442
  %eptr75029 = getelementptr inbounds i64, i64* %cloptr75028, i64 0                  ; &cloptr75028[0]
  %f75037 = ptrtoint void(i64,i64,i64)* @lam73721 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75037, i64* %eptr75029                                                 ; store fptr
  %arg73125 = ptrtoint i64* %cloptr75028 to i64                                      ; closure cast; i64* -> i64
  %arg73124 = add i64 0, 0                                                           ; quoted ()
  %cloptr75038 = inttoptr i64 %arg73125 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75039 = getelementptr inbounds i64, i64* %cloptr75038, i64 0                 ; &cloptr75038[0]
  %f75041 = load i64, i64* %i0ptr75039, align 8                                      ; load; *i0ptr75039
  %fptr75040 = inttoptr i64 %f75041 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75040(i64 %arg73125, i64 %arg73124, i64 %JS7$x)     ; tail call
  ret void
}


define void @lam73721(i64 %env73722, i64 %_9572543, i64 %a72445) {
  %envptr75042 = inttoptr i64 %env73722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75043 = getelementptr inbounds i64, i64* %envptr75042, i64 7                ; &envptr75042[7]
  %a72442 = load i64, i64* %envptr75043, align 8                                     ; load; *envptr75043
  %envptr75044 = inttoptr i64 %env73722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75045 = getelementptr inbounds i64, i64* %envptr75044, i64 6                ; &envptr75044[6]
  %tzM$lx = load i64, i64* %envptr75045, align 8                                     ; load; *envptr75045
  %envptr75046 = inttoptr i64 %env73722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75047 = getelementptr inbounds i64, i64* %envptr75046, i64 5                ; &envptr75046[5]
  %UB9$ly = load i64, i64* %envptr75047, align 8                                     ; load; *envptr75047
  %envptr75048 = inttoptr i64 %env73722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75049 = getelementptr inbounds i64, i64* %envptr75048, i64 4                ; &envptr75048[4]
  %SJZ$_37drop = load i64, i64* %envptr75049, align 8                                ; load; *envptr75049
  %envptr75050 = inttoptr i64 %env73722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75051 = getelementptr inbounds i64, i64* %envptr75050, i64 3                ; &envptr75050[3]
  %cont72537 = load i64, i64* %envptr75051, align 8                                  ; load; *envptr75051
  %envptr75052 = inttoptr i64 %env73722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75053 = getelementptr inbounds i64, i64* %envptr75052, i64 2                ; &envptr75052[2]
  %Um0$y = load i64, i64* %envptr75053, align 8                                      ; load; *envptr75053
  %envptr75054 = inttoptr i64 %env73722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75055 = getelementptr inbounds i64, i64* %envptr75054, i64 1                ; &envptr75054[1]
  %ZVd$_37_62 = load i64, i64* %envptr75055, align 8                                 ; load; *envptr75055
  %cloptr75056 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75058 = getelementptr inbounds i64, i64* %cloptr75056, i64 1                  ; &eptr75058[1]
  %eptr75059 = getelementptr inbounds i64, i64* %cloptr75056, i64 2                  ; &eptr75059[2]
  %eptr75060 = getelementptr inbounds i64, i64* %cloptr75056, i64 3                  ; &eptr75060[3]
  %eptr75061 = getelementptr inbounds i64, i64* %cloptr75056, i64 4                  ; &eptr75061[4]
  %eptr75062 = getelementptr inbounds i64, i64* %cloptr75056, i64 5                  ; &eptr75062[5]
  %eptr75063 = getelementptr inbounds i64, i64* %cloptr75056, i64 6                  ; &eptr75063[6]
  %eptr75064 = getelementptr inbounds i64, i64* %cloptr75056, i64 7                  ; &eptr75064[7]
  store i64 %Um0$y, i64* %eptr75058                                                  ; *eptr75058 = %Um0$y
  store i64 %a72445, i64* %eptr75059                                                 ; *eptr75059 = %a72445
  store i64 %cont72537, i64* %eptr75060                                              ; *eptr75060 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr75061                                            ; *eptr75061 = %SJZ$_37drop
  store i64 %UB9$ly, i64* %eptr75062                                                 ; *eptr75062 = %UB9$ly
  store i64 %tzM$lx, i64* %eptr75063                                                 ; *eptr75063 = %tzM$lx
  store i64 %a72442, i64* %eptr75064                                                 ; *eptr75064 = %a72442
  %eptr75057 = getelementptr inbounds i64, i64* %cloptr75056, i64 0                  ; &cloptr75056[0]
  %f75065 = ptrtoint void(i64,i64,i64)* @lam73719 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75065, i64* %eptr75057                                                 ; store fptr
  %arg73128 = ptrtoint i64* %cloptr75056 to i64                                      ; closure cast; i64* -> i64
  %cloptr75066 = inttoptr i64 %ZVd$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr75067 = getelementptr inbounds i64, i64* %cloptr75066, i64 0                 ; &cloptr75066[0]
  %f75069 = load i64, i64* %i0ptr75067, align 8                                      ; load; *i0ptr75067
  %fptr75068 = inttoptr i64 %f75069 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75068(i64 %ZVd$_37_62, i64 %arg73128, i64 %UB9$ly, i64 %tzM$lx); tail call
  ret void
}


define void @lam73719(i64 %env73720, i64 %_9572544, i64 %a72446) {
  %envptr75070 = inttoptr i64 %env73720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75071 = getelementptr inbounds i64, i64* %envptr75070, i64 7                ; &envptr75070[7]
  %a72442 = load i64, i64* %envptr75071, align 8                                     ; load; *envptr75071
  %envptr75072 = inttoptr i64 %env73720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75073 = getelementptr inbounds i64, i64* %envptr75072, i64 6                ; &envptr75072[6]
  %tzM$lx = load i64, i64* %envptr75073, align 8                                     ; load; *envptr75073
  %envptr75074 = inttoptr i64 %env73720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75075 = getelementptr inbounds i64, i64* %envptr75074, i64 5                ; &envptr75074[5]
  %UB9$ly = load i64, i64* %envptr75075, align 8                                     ; load; *envptr75075
  %envptr75076 = inttoptr i64 %env73720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75077 = getelementptr inbounds i64, i64* %envptr75076, i64 4                ; &envptr75076[4]
  %SJZ$_37drop = load i64, i64* %envptr75077, align 8                                ; load; *envptr75077
  %envptr75078 = inttoptr i64 %env73720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75079 = getelementptr inbounds i64, i64* %envptr75078, i64 3                ; &envptr75078[3]
  %cont72537 = load i64, i64* %envptr75079, align 8                                  ; load; *envptr75079
  %envptr75080 = inttoptr i64 %env73720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75081 = getelementptr inbounds i64, i64* %envptr75080, i64 2                ; &envptr75080[2]
  %a72445 = load i64, i64* %envptr75081, align 8                                     ; load; *envptr75081
  %envptr75082 = inttoptr i64 %env73720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75083 = getelementptr inbounds i64, i64* %envptr75082, i64 1                ; &envptr75082[1]
  %Um0$y = load i64, i64* %envptr75083, align 8                                      ; load; *envptr75083
  %cmp75084 = icmp eq i64 %a72446, 15                                                ; false?
  br i1 %cmp75084, label %else75086, label %then75085                                ; if

then75085:
  %a72447 = call i64 @prim__45(i64 %UB9$ly, i64 %tzM$lx)                             ; call prim__45
  %cloptr75087 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75089 = getelementptr inbounds i64, i64* %cloptr75087, i64 1                  ; &eptr75089[1]
  %eptr75090 = getelementptr inbounds i64, i64* %cloptr75087, i64 2                  ; &eptr75090[2]
  %eptr75091 = getelementptr inbounds i64, i64* %cloptr75087, i64 3                  ; &eptr75091[3]
  store i64 %a72445, i64* %eptr75089                                                 ; *eptr75089 = %a72445
  store i64 %cont72537, i64* %eptr75090                                              ; *eptr75090 = %cont72537
  store i64 %a72442, i64* %eptr75091                                                 ; *eptr75091 = %a72442
  %eptr75088 = getelementptr inbounds i64, i64* %cloptr75087, i64 0                  ; &cloptr75087[0]
  %f75092 = ptrtoint void(i64,i64,i64)* @lam73714 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75092, i64* %eptr75088                                                 ; store fptr
  %arg73134 = ptrtoint i64* %cloptr75087 to i64                                      ; closure cast; i64* -> i64
  %cloptr75093 = inttoptr i64 %SJZ$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr75094 = getelementptr inbounds i64, i64* %cloptr75093, i64 0                 ; &cloptr75093[0]
  %f75096 = load i64, i64* %i0ptr75094, align 8                                      ; load; *i0ptr75094
  %fptr75095 = inttoptr i64 %f75096 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75095(i64 %SJZ$_37drop, i64 %arg73134, i64 %Um0$y, i64 %a72447); tail call
  ret void

else75086:
  %cloptr75097 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75099 = getelementptr inbounds i64, i64* %cloptr75097, i64 1                  ; &eptr75099[1]
  %eptr75100 = getelementptr inbounds i64, i64* %cloptr75097, i64 2                  ; &eptr75100[2]
  %eptr75101 = getelementptr inbounds i64, i64* %cloptr75097, i64 3                  ; &eptr75101[3]
  store i64 %a72445, i64* %eptr75099                                                 ; *eptr75099 = %a72445
  store i64 %cont72537, i64* %eptr75100                                              ; *eptr75100 = %cont72537
  store i64 %a72442, i64* %eptr75101                                                 ; *eptr75101 = %a72442
  %eptr75098 = getelementptr inbounds i64, i64* %cloptr75097, i64 0                  ; &cloptr75097[0]
  %f75102 = ptrtoint void(i64,i64,i64)* @lam73717 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75102, i64* %eptr75098                                                 ; store fptr
  %arg73142 = ptrtoint i64* %cloptr75097 to i64                                      ; closure cast; i64* -> i64
  %arg73141 = add i64 0, 0                                                           ; quoted ()
  %cloptr75103 = inttoptr i64 %arg73142 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75104 = getelementptr inbounds i64, i64* %cloptr75103, i64 0                 ; &cloptr75103[0]
  %f75106 = load i64, i64* %i0ptr75104, align 8                                      ; load; *i0ptr75104
  %fptr75105 = inttoptr i64 %f75106 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75105(i64 %arg73142, i64 %arg73141, i64 %Um0$y)     ; tail call
  ret void
}


define void @lam73717(i64 %env73718, i64 %_9572545, i64 %a72448) {
  %envptr75107 = inttoptr i64 %env73718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75108 = getelementptr inbounds i64, i64* %envptr75107, i64 3                ; &envptr75107[3]
  %a72442 = load i64, i64* %envptr75108, align 8                                     ; load; *envptr75108
  %envptr75109 = inttoptr i64 %env73718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75110 = getelementptr inbounds i64, i64* %envptr75109, i64 2                ; &envptr75109[2]
  %cont72537 = load i64, i64* %envptr75110, align 8                                  ; load; *envptr75110
  %envptr75111 = inttoptr i64 %env73718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75112 = getelementptr inbounds i64, i64* %envptr75111, i64 1                ; &envptr75111[1]
  %a72445 = load i64, i64* %envptr75112, align 8                                     ; load; *envptr75112
  %cloptr75113 = inttoptr i64 %a72442 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75114 = getelementptr inbounds i64, i64* %cloptr75113, i64 0                 ; &cloptr75113[0]
  %f75116 = load i64, i64* %i0ptr75114, align 8                                      ; load; *i0ptr75114
  %fptr75115 = inttoptr i64 %f75116 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75115(i64 %a72442, i64 %cont72537, i64 %a72445, i64 %a72448); tail call
  ret void
}


define void @lam73714(i64 %env73715, i64 %_9572545, i64 %a72448) {
  %envptr75117 = inttoptr i64 %env73715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75118 = getelementptr inbounds i64, i64* %envptr75117, i64 3                ; &envptr75117[3]
  %a72442 = load i64, i64* %envptr75118, align 8                                     ; load; *envptr75118
  %envptr75119 = inttoptr i64 %env73715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75120 = getelementptr inbounds i64, i64* %envptr75119, i64 2                ; &envptr75119[2]
  %cont72537 = load i64, i64* %envptr75120, align 8                                  ; load; *envptr75120
  %envptr75121 = inttoptr i64 %env73715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75122 = getelementptr inbounds i64, i64* %envptr75121, i64 1                ; &envptr75121[1]
  %a72445 = load i64, i64* %envptr75122, align 8                                     ; load; *envptr75122
  %cloptr75123 = inttoptr i64 %a72442 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75124 = getelementptr inbounds i64, i64* %cloptr75123, i64 0                 ; &cloptr75123[0]
  %f75126 = load i64, i64* %i0ptr75124, align 8                                      ; load; *i0ptr75124
  %fptr75125 = inttoptr i64 %f75126 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75125(i64 %a72442, i64 %cont72537, i64 %a72445, i64 %a72448); tail call
  ret void
}


define void @lam73711(i64 %env73712, i64 %_9572543, i64 %a72445) {
  %envptr75127 = inttoptr i64 %env73712 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75128 = getelementptr inbounds i64, i64* %envptr75127, i64 7                ; &envptr75127[7]
  %a72442 = load i64, i64* %envptr75128, align 8                                     ; load; *envptr75128
  %envptr75129 = inttoptr i64 %env73712 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75130 = getelementptr inbounds i64, i64* %envptr75129, i64 6                ; &envptr75129[6]
  %tzM$lx = load i64, i64* %envptr75130, align 8                                     ; load; *envptr75130
  %envptr75131 = inttoptr i64 %env73712 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75132 = getelementptr inbounds i64, i64* %envptr75131, i64 5                ; &envptr75131[5]
  %UB9$ly = load i64, i64* %envptr75132, align 8                                     ; load; *envptr75132
  %envptr75133 = inttoptr i64 %env73712 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75134 = getelementptr inbounds i64, i64* %envptr75133, i64 4                ; &envptr75133[4]
  %SJZ$_37drop = load i64, i64* %envptr75134, align 8                                ; load; *envptr75134
  %envptr75135 = inttoptr i64 %env73712 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75136 = getelementptr inbounds i64, i64* %envptr75135, i64 3                ; &envptr75135[3]
  %cont72537 = load i64, i64* %envptr75136, align 8                                  ; load; *envptr75136
  %envptr75137 = inttoptr i64 %env73712 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75138 = getelementptr inbounds i64, i64* %envptr75137, i64 2                ; &envptr75137[2]
  %Um0$y = load i64, i64* %envptr75138, align 8                                      ; load; *envptr75138
  %envptr75139 = inttoptr i64 %env73712 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75140 = getelementptr inbounds i64, i64* %envptr75139, i64 1                ; &envptr75139[1]
  %ZVd$_37_62 = load i64, i64* %envptr75140, align 8                                 ; load; *envptr75140
  %cloptr75141 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75143 = getelementptr inbounds i64, i64* %cloptr75141, i64 1                  ; &eptr75143[1]
  %eptr75144 = getelementptr inbounds i64, i64* %cloptr75141, i64 2                  ; &eptr75144[2]
  %eptr75145 = getelementptr inbounds i64, i64* %cloptr75141, i64 3                  ; &eptr75145[3]
  %eptr75146 = getelementptr inbounds i64, i64* %cloptr75141, i64 4                  ; &eptr75146[4]
  %eptr75147 = getelementptr inbounds i64, i64* %cloptr75141, i64 5                  ; &eptr75147[5]
  %eptr75148 = getelementptr inbounds i64, i64* %cloptr75141, i64 6                  ; &eptr75148[6]
  %eptr75149 = getelementptr inbounds i64, i64* %cloptr75141, i64 7                  ; &eptr75149[7]
  store i64 %Um0$y, i64* %eptr75143                                                  ; *eptr75143 = %Um0$y
  store i64 %a72445, i64* %eptr75144                                                 ; *eptr75144 = %a72445
  store i64 %cont72537, i64* %eptr75145                                              ; *eptr75145 = %cont72537
  store i64 %SJZ$_37drop, i64* %eptr75146                                            ; *eptr75146 = %SJZ$_37drop
  store i64 %UB9$ly, i64* %eptr75147                                                 ; *eptr75147 = %UB9$ly
  store i64 %tzM$lx, i64* %eptr75148                                                 ; *eptr75148 = %tzM$lx
  store i64 %a72442, i64* %eptr75149                                                 ; *eptr75149 = %a72442
  %eptr75142 = getelementptr inbounds i64, i64* %cloptr75141, i64 0                  ; &cloptr75141[0]
  %f75150 = ptrtoint void(i64,i64,i64)* @lam73709 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75150, i64* %eptr75142                                                 ; store fptr
  %arg73104 = ptrtoint i64* %cloptr75141 to i64                                      ; closure cast; i64* -> i64
  %cloptr75151 = inttoptr i64 %ZVd$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr75152 = getelementptr inbounds i64, i64* %cloptr75151, i64 0                 ; &cloptr75151[0]
  %f75154 = load i64, i64* %i0ptr75152, align 8                                      ; load; *i0ptr75152
  %fptr75153 = inttoptr i64 %f75154 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75153(i64 %ZVd$_37_62, i64 %arg73104, i64 %UB9$ly, i64 %tzM$lx); tail call
  ret void
}


define void @lam73709(i64 %env73710, i64 %_9572544, i64 %a72446) {
  %envptr75155 = inttoptr i64 %env73710 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75156 = getelementptr inbounds i64, i64* %envptr75155, i64 7                ; &envptr75155[7]
  %a72442 = load i64, i64* %envptr75156, align 8                                     ; load; *envptr75156
  %envptr75157 = inttoptr i64 %env73710 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75158 = getelementptr inbounds i64, i64* %envptr75157, i64 6                ; &envptr75157[6]
  %tzM$lx = load i64, i64* %envptr75158, align 8                                     ; load; *envptr75158
  %envptr75159 = inttoptr i64 %env73710 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75160 = getelementptr inbounds i64, i64* %envptr75159, i64 5                ; &envptr75159[5]
  %UB9$ly = load i64, i64* %envptr75160, align 8                                     ; load; *envptr75160
  %envptr75161 = inttoptr i64 %env73710 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75162 = getelementptr inbounds i64, i64* %envptr75161, i64 4                ; &envptr75161[4]
  %SJZ$_37drop = load i64, i64* %envptr75162, align 8                                ; load; *envptr75162
  %envptr75163 = inttoptr i64 %env73710 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75164 = getelementptr inbounds i64, i64* %envptr75163, i64 3                ; &envptr75163[3]
  %cont72537 = load i64, i64* %envptr75164, align 8                                  ; load; *envptr75164
  %envptr75165 = inttoptr i64 %env73710 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75166 = getelementptr inbounds i64, i64* %envptr75165, i64 2                ; &envptr75165[2]
  %a72445 = load i64, i64* %envptr75166, align 8                                     ; load; *envptr75166
  %envptr75167 = inttoptr i64 %env73710 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75168 = getelementptr inbounds i64, i64* %envptr75167, i64 1                ; &envptr75167[1]
  %Um0$y = load i64, i64* %envptr75168, align 8                                      ; load; *envptr75168
  %cmp75169 = icmp eq i64 %a72446, 15                                                ; false?
  br i1 %cmp75169, label %else75171, label %then75170                                ; if

then75170:
  %a72447 = call i64 @prim__45(i64 %UB9$ly, i64 %tzM$lx)                             ; call prim__45
  %cloptr75172 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75174 = getelementptr inbounds i64, i64* %cloptr75172, i64 1                  ; &eptr75174[1]
  %eptr75175 = getelementptr inbounds i64, i64* %cloptr75172, i64 2                  ; &eptr75175[2]
  %eptr75176 = getelementptr inbounds i64, i64* %cloptr75172, i64 3                  ; &eptr75176[3]
  store i64 %a72445, i64* %eptr75174                                                 ; *eptr75174 = %a72445
  store i64 %cont72537, i64* %eptr75175                                              ; *eptr75175 = %cont72537
  store i64 %a72442, i64* %eptr75176                                                 ; *eptr75176 = %a72442
  %eptr75173 = getelementptr inbounds i64, i64* %cloptr75172, i64 0                  ; &cloptr75172[0]
  %f75177 = ptrtoint void(i64,i64,i64)* @lam73704 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75177, i64* %eptr75173                                                 ; store fptr
  %arg73110 = ptrtoint i64* %cloptr75172 to i64                                      ; closure cast; i64* -> i64
  %cloptr75178 = inttoptr i64 %SJZ$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr75179 = getelementptr inbounds i64, i64* %cloptr75178, i64 0                 ; &cloptr75178[0]
  %f75181 = load i64, i64* %i0ptr75179, align 8                                      ; load; *i0ptr75179
  %fptr75180 = inttoptr i64 %f75181 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75180(i64 %SJZ$_37drop, i64 %arg73110, i64 %Um0$y, i64 %a72447); tail call
  ret void

else75171:
  %cloptr75182 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75184 = getelementptr inbounds i64, i64* %cloptr75182, i64 1                  ; &eptr75184[1]
  %eptr75185 = getelementptr inbounds i64, i64* %cloptr75182, i64 2                  ; &eptr75185[2]
  %eptr75186 = getelementptr inbounds i64, i64* %cloptr75182, i64 3                  ; &eptr75186[3]
  store i64 %a72445, i64* %eptr75184                                                 ; *eptr75184 = %a72445
  store i64 %cont72537, i64* %eptr75185                                              ; *eptr75185 = %cont72537
  store i64 %a72442, i64* %eptr75186                                                 ; *eptr75186 = %a72442
  %eptr75183 = getelementptr inbounds i64, i64* %cloptr75182, i64 0                  ; &cloptr75182[0]
  %f75187 = ptrtoint void(i64,i64,i64)* @lam73707 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75187, i64* %eptr75183                                                 ; store fptr
  %arg73118 = ptrtoint i64* %cloptr75182 to i64                                      ; closure cast; i64* -> i64
  %arg73117 = add i64 0, 0                                                           ; quoted ()
  %cloptr75188 = inttoptr i64 %arg73118 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75189 = getelementptr inbounds i64, i64* %cloptr75188, i64 0                 ; &cloptr75188[0]
  %f75191 = load i64, i64* %i0ptr75189, align 8                                      ; load; *i0ptr75189
  %fptr75190 = inttoptr i64 %f75191 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75190(i64 %arg73118, i64 %arg73117, i64 %Um0$y)     ; tail call
  ret void
}


define void @lam73707(i64 %env73708, i64 %_9572545, i64 %a72448) {
  %envptr75192 = inttoptr i64 %env73708 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75193 = getelementptr inbounds i64, i64* %envptr75192, i64 3                ; &envptr75192[3]
  %a72442 = load i64, i64* %envptr75193, align 8                                     ; load; *envptr75193
  %envptr75194 = inttoptr i64 %env73708 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75195 = getelementptr inbounds i64, i64* %envptr75194, i64 2                ; &envptr75194[2]
  %cont72537 = load i64, i64* %envptr75195, align 8                                  ; load; *envptr75195
  %envptr75196 = inttoptr i64 %env73708 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75197 = getelementptr inbounds i64, i64* %envptr75196, i64 1                ; &envptr75196[1]
  %a72445 = load i64, i64* %envptr75197, align 8                                     ; load; *envptr75197
  %cloptr75198 = inttoptr i64 %a72442 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75199 = getelementptr inbounds i64, i64* %cloptr75198, i64 0                 ; &cloptr75198[0]
  %f75201 = load i64, i64* %i0ptr75199, align 8                                      ; load; *i0ptr75199
  %fptr75200 = inttoptr i64 %f75201 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75200(i64 %a72442, i64 %cont72537, i64 %a72445, i64 %a72448); tail call
  ret void
}


define void @lam73704(i64 %env73705, i64 %_9572545, i64 %a72448) {
  %envptr75202 = inttoptr i64 %env73705 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75203 = getelementptr inbounds i64, i64* %envptr75202, i64 3                ; &envptr75202[3]
  %a72442 = load i64, i64* %envptr75203, align 8                                     ; load; *envptr75203
  %envptr75204 = inttoptr i64 %env73705 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75205 = getelementptr inbounds i64, i64* %envptr75204, i64 2                ; &envptr75204[2]
  %cont72537 = load i64, i64* %envptr75205, align 8                                  ; load; *envptr75205
  %envptr75206 = inttoptr i64 %env73705 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75207 = getelementptr inbounds i64, i64* %envptr75206, i64 1                ; &envptr75206[1]
  %a72445 = load i64, i64* %envptr75207, align 8                                     ; load; *envptr75207
  %cloptr75208 = inttoptr i64 %a72442 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75209 = getelementptr inbounds i64, i64* %cloptr75208, i64 0                 ; &cloptr75208[0]
  %f75211 = load i64, i64* %i0ptr75209, align 8                                      ; load; *i0ptr75209
  %fptr75210 = inttoptr i64 %f75211 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75210(i64 %a72442, i64 %cont72537, i64 %a72445, i64 %a72448); tail call
  ret void
}


define void @lam73701(i64 %env73702, i64 %cont72550, i64 %j2m$new) {
  %envptr75212 = inttoptr i64 %env73702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75213 = getelementptr inbounds i64, i64* %envptr75212, i64 2                ; &envptr75212[2]
  %Ajp$_37common_45tail = load i64, i64* %envptr75213, align 8                       ; load; *envptr75213
  %envptr75214 = inttoptr i64 %env73702 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75215 = getelementptr inbounds i64, i64* %envptr75214, i64 1                ; &envptr75214[1]
  %C5K$_37wind_45stack = load i64, i64* %envptr75215, align 8                        ; load; *envptr75215
  %arg73147 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72449 = call i64 @prim_vector_45ref(i64 %C5K$_37wind_45stack, i64 %arg73147)     ; call prim_vector_45ref
  %cloptr75216 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75218 = getelementptr inbounds i64, i64* %cloptr75216, i64 1                  ; &eptr75218[1]
  %eptr75219 = getelementptr inbounds i64, i64* %cloptr75216, i64 2                  ; &eptr75219[2]
  %eptr75220 = getelementptr inbounds i64, i64* %cloptr75216, i64 3                  ; &eptr75220[3]
  store i64 %j2m$new, i64* %eptr75218                                                ; *eptr75218 = %j2m$new
  store i64 %cont72550, i64* %eptr75219                                              ; *eptr75219 = %cont72550
  store i64 %C5K$_37wind_45stack, i64* %eptr75220                                    ; *eptr75220 = %C5K$_37wind_45stack
  %eptr75217 = getelementptr inbounds i64, i64* %cloptr75216, i64 0                  ; &cloptr75216[0]
  %f75221 = ptrtoint void(i64,i64,i64)* @lam73698 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75221, i64* %eptr75217                                                 ; store fptr
  %arg73151 = ptrtoint i64* %cloptr75216 to i64                                      ; closure cast; i64* -> i64
  %cloptr75222 = inttoptr i64 %Ajp$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  %i0ptr75223 = getelementptr inbounds i64, i64* %cloptr75222, i64 0                 ; &cloptr75222[0]
  %f75225 = load i64, i64* %i0ptr75223, align 8                                      ; load; *i0ptr75223
  %fptr75224 = inttoptr i64 %f75225 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75224(i64 %Ajp$_37common_45tail, i64 %arg73151, i64 %j2m$new, i64 %a72449); tail call
  ret void
}


define void @lam73698(i64 %env73699, i64 %_9572551, i64 %Wdt$tail) {
  %envptr75226 = inttoptr i64 %env73699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75227 = getelementptr inbounds i64, i64* %envptr75226, i64 3                ; &envptr75226[3]
  %C5K$_37wind_45stack = load i64, i64* %envptr75227, align 8                        ; load; *envptr75227
  %envptr75228 = inttoptr i64 %env73699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75229 = getelementptr inbounds i64, i64* %envptr75228, i64 2                ; &envptr75228[2]
  %cont72550 = load i64, i64* %envptr75229, align 8                                  ; load; *envptr75229
  %envptr75230 = inttoptr i64 %env73699 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75231 = getelementptr inbounds i64, i64* %envptr75230, i64 1                ; &envptr75230[1]
  %j2m$new = load i64, i64* %envptr75231, align 8                                    ; load; *envptr75231
  %cloptr75232 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75233 = getelementptr inbounds i64, i64* %cloptr75232, i64 0                  ; &cloptr75232[0]
  %f75234 = ptrtoint void(i64,i64)* @lam73696 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f75234, i64* %eptr75233                                                 ; store fptr
  %arg73154 = ptrtoint i64* %cloptr75232 to i64                                      ; closure cast; i64* -> i64
  %cloptr75235 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75237 = getelementptr inbounds i64, i64* %cloptr75235, i64 1                  ; &eptr75237[1]
  %eptr75238 = getelementptr inbounds i64, i64* %cloptr75235, i64 2                  ; &eptr75238[2]
  %eptr75239 = getelementptr inbounds i64, i64* %cloptr75235, i64 3                  ; &eptr75239[3]
  %eptr75240 = getelementptr inbounds i64, i64* %cloptr75235, i64 4                  ; &eptr75240[4]
  store i64 %j2m$new, i64* %eptr75237                                                ; *eptr75237 = %j2m$new
  store i64 %cont72550, i64* %eptr75238                                              ; *eptr75238 = %cont72550
  store i64 %Wdt$tail, i64* %eptr75239                                               ; *eptr75239 = %Wdt$tail
  store i64 %C5K$_37wind_45stack, i64* %eptr75240                                    ; *eptr75240 = %C5K$_37wind_45stack
  %eptr75236 = getelementptr inbounds i64, i64* %cloptr75235, i64 0                  ; &cloptr75235[0]
  %f75241 = ptrtoint void(i64,i64,i64)* @lam73693 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75241, i64* %eptr75236                                                 ; store fptr
  %arg73153 = ptrtoint i64* %cloptr75235 to i64                                      ; closure cast; i64* -> i64
  %cloptr75242 = inttoptr i64 %arg73154 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75243 = getelementptr inbounds i64, i64* %cloptr75242, i64 0                 ; &cloptr75242[0]
  %f75245 = load i64, i64* %i0ptr75243, align 8                                      ; load; *i0ptr75243
  %fptr75244 = inttoptr i64 %f75245 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75244(i64 %arg73154, i64 %arg73153)                 ; tail call
  ret void
}


define void @lam73696(i64 %env73697, i64 %ccR$lst72572) {
  %cont72571 = call i64 @prim_car(i64 %ccR$lst72572)                                 ; call prim_car
  %ccR$lst = call i64 @prim_cdr(i64 %ccR$lst72572)                                   ; call prim_cdr
  %arg73158 = add i64 0, 0                                                           ; quoted ()
  %cloptr75246 = inttoptr i64 %cont72571 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75247 = getelementptr inbounds i64, i64* %cloptr75246, i64 0                 ; &cloptr75246[0]
  %f75249 = load i64, i64* %i0ptr75247, align 8                                      ; load; *i0ptr75247
  %fptr75248 = inttoptr i64 %f75249 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75248(i64 %cont72571, i64 %arg73158, i64 %ccR$lst)  ; tail call
  ret void
}


define void @lam73693(i64 %env73694, i64 %_9572569, i64 %a72450) {
  %envptr75250 = inttoptr i64 %env73694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75251 = getelementptr inbounds i64, i64* %envptr75250, i64 4                ; &envptr75250[4]
  %C5K$_37wind_45stack = load i64, i64* %envptr75251, align 8                        ; load; *envptr75251
  %envptr75252 = inttoptr i64 %env73694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75253 = getelementptr inbounds i64, i64* %envptr75252, i64 3                ; &envptr75252[3]
  %Wdt$tail = load i64, i64* %envptr75253, align 8                                   ; load; *envptr75253
  %envptr75254 = inttoptr i64 %env73694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75255 = getelementptr inbounds i64, i64* %envptr75254, i64 2                ; &envptr75254[2]
  %cont72550 = load i64, i64* %envptr75255, align 8                                  ; load; *envptr75255
  %envptr75256 = inttoptr i64 %env73694 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75257 = getelementptr inbounds i64, i64* %envptr75256, i64 1                ; &envptr75256[1]
  %j2m$new = load i64, i64* %envptr75257, align 8                                    ; load; *envptr75257
  %arg73161 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim72570 = call i64 @prim_make_45vector(i64 %arg73161, i64 %a72450)           ; call prim_make_45vector
  %cloptr75258 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75260 = getelementptr inbounds i64, i64* %cloptr75258, i64 1                  ; &eptr75260[1]
  %eptr75261 = getelementptr inbounds i64, i64* %cloptr75258, i64 2                  ; &eptr75261[2]
  %eptr75262 = getelementptr inbounds i64, i64* %cloptr75258, i64 3                  ; &eptr75262[3]
  %eptr75263 = getelementptr inbounds i64, i64* %cloptr75258, i64 4                  ; &eptr75263[4]
  store i64 %j2m$new, i64* %eptr75260                                                ; *eptr75260 = %j2m$new
  store i64 %cont72550, i64* %eptr75261                                              ; *eptr75261 = %cont72550
  store i64 %Wdt$tail, i64* %eptr75262                                               ; *eptr75262 = %Wdt$tail
  store i64 %C5K$_37wind_45stack, i64* %eptr75263                                    ; *eptr75263 = %C5K$_37wind_45stack
  %eptr75259 = getelementptr inbounds i64, i64* %cloptr75258, i64 0                  ; &cloptr75258[0]
  %f75264 = ptrtoint void(i64,i64,i64)* @lam73690 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75264, i64* %eptr75259                                                 ; store fptr
  %arg73164 = ptrtoint i64* %cloptr75258 to i64                                      ; closure cast; i64* -> i64
  %arg73163 = add i64 0, 0                                                           ; quoted ()
  %cloptr75265 = inttoptr i64 %arg73164 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75266 = getelementptr inbounds i64, i64* %cloptr75265, i64 0                 ; &cloptr75265[0]
  %f75268 = load i64, i64* %i0ptr75266, align 8                                      ; load; *i0ptr75266
  %fptr75267 = inttoptr i64 %f75268 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75267(i64 %arg73164, i64 %arg73163, i64 %retprim72570); tail call
  ret void
}


define void @lam73690(i64 %env73691, i64 %_9572563, i64 %VB5$f) {
  %envptr75269 = inttoptr i64 %env73691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75270 = getelementptr inbounds i64, i64* %envptr75269, i64 4                ; &envptr75269[4]
  %C5K$_37wind_45stack = load i64, i64* %envptr75270, align 8                        ; load; *envptr75270
  %envptr75271 = inttoptr i64 %env73691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75272 = getelementptr inbounds i64, i64* %envptr75271, i64 3                ; &envptr75271[3]
  %Wdt$tail = load i64, i64* %envptr75272, align 8                                   ; load; *envptr75272
  %envptr75273 = inttoptr i64 %env73691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75274 = getelementptr inbounds i64, i64* %envptr75273, i64 2                ; &envptr75273[2]
  %cont72550 = load i64, i64* %envptr75274, align 8                                  ; load; *envptr75274
  %envptr75275 = inttoptr i64 %env73691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75276 = getelementptr inbounds i64, i64* %envptr75275, i64 1                ; &envptr75275[1]
  %j2m$new = load i64, i64* %envptr75276, align 8                                    ; load; *envptr75276
  %arg73166 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr75277 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75279 = getelementptr inbounds i64, i64* %cloptr75277, i64 1                  ; &eptr75279[1]
  %eptr75280 = getelementptr inbounds i64, i64* %cloptr75277, i64 2                  ; &eptr75280[2]
  %eptr75281 = getelementptr inbounds i64, i64* %cloptr75277, i64 3                  ; &eptr75281[3]
  store i64 %VB5$f, i64* %eptr75279                                                  ; *eptr75279 = %VB5$f
  store i64 %Wdt$tail, i64* %eptr75280                                               ; *eptr75280 = %Wdt$tail
  store i64 %C5K$_37wind_45stack, i64* %eptr75281                                    ; *eptr75281 = %C5K$_37wind_45stack
  %eptr75278 = getelementptr inbounds i64, i64* %cloptr75277, i64 0                  ; &cloptr75277[0]
  %f75282 = ptrtoint void(i64,i64,i64)* @lam73687 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75282, i64* %eptr75278                                                 ; store fptr
  %arg73165 = ptrtoint i64* %cloptr75277 to i64                                      ; closure cast; i64* -> i64
  %UB7$_9572343 = call i64 @prim_vector_45set_33(i64 %VB5$f, i64 %arg73166, i64 %arg73165); call prim_vector_45set_33
  %arg73191 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72458 = call i64 @prim_vector_45ref(i64 %VB5$f, i64 %arg73191)                   ; call prim_vector_45ref
  %arg73193 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72459 = call i64 @prim_vector_45ref(i64 %C5K$_37wind_45stack, i64 %arg73193)     ; call prim_vector_45ref
  %cloptr75283 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75285 = getelementptr inbounds i64, i64* %cloptr75283, i64 1                  ; &eptr75285[1]
  %eptr75286 = getelementptr inbounds i64, i64* %cloptr75283, i64 2                  ; &eptr75286[2]
  %eptr75287 = getelementptr inbounds i64, i64* %cloptr75283, i64 3                  ; &eptr75287[3]
  %eptr75288 = getelementptr inbounds i64, i64* %cloptr75283, i64 4                  ; &eptr75288[4]
  store i64 %j2m$new, i64* %eptr75285                                                ; *eptr75285 = %j2m$new
  store i64 %cont72550, i64* %eptr75286                                              ; *eptr75286 = %cont72550
  store i64 %Wdt$tail, i64* %eptr75287                                               ; *eptr75287 = %Wdt$tail
  store i64 %C5K$_37wind_45stack, i64* %eptr75288                                    ; *eptr75288 = %C5K$_37wind_45stack
  %eptr75284 = getelementptr inbounds i64, i64* %cloptr75283, i64 0                  ; &cloptr75283[0]
  %f75289 = ptrtoint void(i64,i64,i64)* @lam73675 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75289, i64* %eptr75284                                                 ; store fptr
  %arg73196 = ptrtoint i64* %cloptr75283 to i64                                      ; closure cast; i64* -> i64
  %cloptr75290 = inttoptr i64 %a72458 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75291 = getelementptr inbounds i64, i64* %cloptr75290, i64 0                 ; &cloptr75290[0]
  %f75293 = load i64, i64* %i0ptr75291, align 8                                      ; load; *i0ptr75291
  %fptr75292 = inttoptr i64 %f75293 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75292(i64 %a72458, i64 %arg73196, i64 %a72459)      ; tail call
  ret void
}


define void @lam73687(i64 %env73688, i64 %cont72564, i64 %LWL$l) {
  %envptr75294 = inttoptr i64 %env73688 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75295 = getelementptr inbounds i64, i64* %envptr75294, i64 3                ; &envptr75294[3]
  %C5K$_37wind_45stack = load i64, i64* %envptr75295, align 8                        ; load; *envptr75295
  %envptr75296 = inttoptr i64 %env73688 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75297 = getelementptr inbounds i64, i64* %envptr75296, i64 2                ; &envptr75296[2]
  %Wdt$tail = load i64, i64* %envptr75297, align 8                                   ; load; *envptr75297
  %envptr75298 = inttoptr i64 %env73688 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75299 = getelementptr inbounds i64, i64* %envptr75298, i64 1                ; &envptr75298[1]
  %VB5$f = load i64, i64* %envptr75299, align 8                                      ; load; *envptr75299
  %a72451 = call i64 @prim_eq_63(i64 %LWL$l, i64 %Wdt$tail)                          ; call prim_eq_63
  %a72452 = call i64 @prim_not(i64 %a72451)                                          ; call prim_not
  %cmp75300 = icmp eq i64 %a72452, 15                                                ; false?
  br i1 %cmp75300, label %else75302, label %then75301                                ; if

then75301:
  %a72453 = call i64 @prim_cdr(i64 %LWL$l)                                           ; call prim_cdr
  %arg73173 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72567 = call i64 @prim_vector_45set_33(i64 %C5K$_37wind_45stack, i64 %arg73173, i64 %a72453); call prim_vector_45set_33
  %cloptr75303 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75305 = getelementptr inbounds i64, i64* %cloptr75303, i64 1                  ; &eptr75305[1]
  %eptr75306 = getelementptr inbounds i64, i64* %cloptr75303, i64 2                  ; &eptr75306[2]
  %eptr75307 = getelementptr inbounds i64, i64* %cloptr75303, i64 3                  ; &eptr75307[3]
  store i64 %cont72564, i64* %eptr75305                                              ; *eptr75305 = %cont72564
  store i64 %VB5$f, i64* %eptr75306                                                  ; *eptr75306 = %VB5$f
  store i64 %LWL$l, i64* %eptr75307                                                  ; *eptr75307 = %LWL$l
  %eptr75304 = getelementptr inbounds i64, i64* %cloptr75303, i64 0                  ; &cloptr75303[0]
  %f75308 = ptrtoint void(i64,i64,i64)* @lam73683 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75308, i64* %eptr75304                                                 ; store fptr
  %arg73177 = ptrtoint i64* %cloptr75303 to i64                                      ; closure cast; i64* -> i64
  %arg73176 = add i64 0, 0                                                           ; quoted ()
  %cloptr75309 = inttoptr i64 %arg73177 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75310 = getelementptr inbounds i64, i64* %cloptr75309, i64 0                 ; &cloptr75309[0]
  %f75312 = load i64, i64* %i0ptr75310, align 8                                      ; load; *i0ptr75310
  %fptr75311 = inttoptr i64 %f75312 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75311(i64 %arg73177, i64 %arg73176, i64 %retprim72567); tail call
  ret void

else75302:
  %retprim72568 = call i64 @prim_void()                                              ; call prim_void
  %arg73189 = add i64 0, 0                                                           ; quoted ()
  %cloptr75313 = inttoptr i64 %cont72564 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75314 = getelementptr inbounds i64, i64* %cloptr75313, i64 0                 ; &cloptr75313[0]
  %f75316 = load i64, i64* %i0ptr75314, align 8                                      ; load; *i0ptr75314
  %fptr75315 = inttoptr i64 %f75316 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75315(i64 %cont72564, i64 %arg73189, i64 %retprim72568); tail call
  ret void
}


define void @lam73683(i64 %env73684, i64 %_9572565, i64 %RQd$_9572344) {
  %envptr75317 = inttoptr i64 %env73684 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75318 = getelementptr inbounds i64, i64* %envptr75317, i64 3                ; &envptr75317[3]
  %LWL$l = load i64, i64* %envptr75318, align 8                                      ; load; *envptr75318
  %envptr75319 = inttoptr i64 %env73684 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75320 = getelementptr inbounds i64, i64* %envptr75319, i64 2                ; &envptr75319[2]
  %VB5$f = load i64, i64* %envptr75320, align 8                                      ; load; *envptr75320
  %envptr75321 = inttoptr i64 %env73684 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75322 = getelementptr inbounds i64, i64* %envptr75321, i64 1                ; &envptr75321[1]
  %cont72564 = load i64, i64* %envptr75322, align 8                                  ; load; *envptr75322
  %a72454 = call i64 @prim_car(i64 %LWL$l)                                           ; call prim_car
  %a72455 = call i64 @prim_cdr(i64 %a72454)                                          ; call prim_cdr
  %cloptr75323 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75325 = getelementptr inbounds i64, i64* %cloptr75323, i64 1                  ; &eptr75325[1]
  %eptr75326 = getelementptr inbounds i64, i64* %cloptr75323, i64 2                  ; &eptr75326[2]
  %eptr75327 = getelementptr inbounds i64, i64* %cloptr75323, i64 3                  ; &eptr75327[3]
  store i64 %cont72564, i64* %eptr75325                                              ; *eptr75325 = %cont72564
  store i64 %VB5$f, i64* %eptr75326                                                  ; *eptr75326 = %VB5$f
  store i64 %LWL$l, i64* %eptr75327                                                  ; *eptr75327 = %LWL$l
  %eptr75324 = getelementptr inbounds i64, i64* %cloptr75323, i64 0                  ; &cloptr75323[0]
  %f75328 = ptrtoint void(i64,i64,i64)* @lam73681 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75328, i64* %eptr75324                                                 ; store fptr
  %arg73180 = ptrtoint i64* %cloptr75323 to i64                                      ; closure cast; i64* -> i64
  %cloptr75329 = inttoptr i64 %a72455 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75330 = getelementptr inbounds i64, i64* %cloptr75329, i64 0                 ; &cloptr75329[0]
  %f75332 = load i64, i64* %i0ptr75330, align 8                                      ; load; *i0ptr75330
  %fptr75331 = inttoptr i64 %f75332 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75331(i64 %a72455, i64 %arg73180)                   ; tail call
  ret void
}


define void @lam73681(i64 %env73682, i64 %_9572566, i64 %ff0$_9572345) {
  %envptr75333 = inttoptr i64 %env73682 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75334 = getelementptr inbounds i64, i64* %envptr75333, i64 3                ; &envptr75333[3]
  %LWL$l = load i64, i64* %envptr75334, align 8                                      ; load; *envptr75334
  %envptr75335 = inttoptr i64 %env73682 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75336 = getelementptr inbounds i64, i64* %envptr75335, i64 2                ; &envptr75335[2]
  %VB5$f = load i64, i64* %envptr75336, align 8                                      ; load; *envptr75336
  %envptr75337 = inttoptr i64 %env73682 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75338 = getelementptr inbounds i64, i64* %envptr75337, i64 1                ; &envptr75337[1]
  %cont72564 = load i64, i64* %envptr75338, align 8                                  ; load; *envptr75338
  %arg73182 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72456 = call i64 @prim_vector_45ref(i64 %VB5$f, i64 %arg73182)                   ; call prim_vector_45ref
  %a72457 = call i64 @prim_cdr(i64 %LWL$l)                                           ; call prim_cdr
  %cloptr75339 = inttoptr i64 %a72456 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75340 = getelementptr inbounds i64, i64* %cloptr75339, i64 0                 ; &cloptr75339[0]
  %f75342 = load i64, i64* %i0ptr75340, align 8                                      ; load; *i0ptr75340
  %fptr75341 = inttoptr i64 %f75342 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75341(i64 %a72456, i64 %cont72564, i64 %a72457)     ; tail call
  ret void
}


define void @lam73675(i64 %env73676, i64 %_9572552, i64 %vCL$_9572342) {
  %envptr75343 = inttoptr i64 %env73676 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75344 = getelementptr inbounds i64, i64* %envptr75343, i64 4                ; &envptr75343[4]
  %C5K$_37wind_45stack = load i64, i64* %envptr75344, align 8                        ; load; *envptr75344
  %envptr75345 = inttoptr i64 %env73676 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75346 = getelementptr inbounds i64, i64* %envptr75345, i64 3                ; &envptr75345[3]
  %Wdt$tail = load i64, i64* %envptr75346, align 8                                   ; load; *envptr75346
  %envptr75347 = inttoptr i64 %env73676 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75348 = getelementptr inbounds i64, i64* %envptr75347, i64 2                ; &envptr75347[2]
  %cont72550 = load i64, i64* %envptr75348, align 8                                  ; load; *envptr75348
  %envptr75349 = inttoptr i64 %env73676 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75350 = getelementptr inbounds i64, i64* %envptr75349, i64 1                ; &envptr75349[1]
  %j2m$new = load i64, i64* %envptr75350, align 8                                    ; load; *envptr75350
  %cloptr75351 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75352 = getelementptr inbounds i64, i64* %cloptr75351, i64 0                  ; &cloptr75351[0]
  %f75353 = ptrtoint void(i64,i64)* @lam73673 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f75353, i64* %eptr75352                                                 ; store fptr
  %arg73199 = ptrtoint i64* %cloptr75351 to i64                                      ; closure cast; i64* -> i64
  %cloptr75354 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75356 = getelementptr inbounds i64, i64* %cloptr75354, i64 1                  ; &eptr75356[1]
  %eptr75357 = getelementptr inbounds i64, i64* %cloptr75354, i64 2                  ; &eptr75357[2]
  %eptr75358 = getelementptr inbounds i64, i64* %cloptr75354, i64 3                  ; &eptr75358[3]
  %eptr75359 = getelementptr inbounds i64, i64* %cloptr75354, i64 4                  ; &eptr75359[4]
  store i64 %j2m$new, i64* %eptr75356                                                ; *eptr75356 = %j2m$new
  store i64 %cont72550, i64* %eptr75357                                              ; *eptr75357 = %cont72550
  store i64 %Wdt$tail, i64* %eptr75358                                               ; *eptr75358 = %Wdt$tail
  store i64 %C5K$_37wind_45stack, i64* %eptr75359                                    ; *eptr75359 = %C5K$_37wind_45stack
  %eptr75355 = getelementptr inbounds i64, i64* %cloptr75354, i64 0                  ; &cloptr75354[0]
  %f75360 = ptrtoint void(i64,i64,i64)* @lam73670 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75360, i64* %eptr75355                                                 ; store fptr
  %arg73198 = ptrtoint i64* %cloptr75354 to i64                                      ; closure cast; i64* -> i64
  %cloptr75361 = inttoptr i64 %arg73199 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75362 = getelementptr inbounds i64, i64* %cloptr75361, i64 0                 ; &cloptr75361[0]
  %f75364 = load i64, i64* %i0ptr75362, align 8                                      ; load; *i0ptr75362
  %fptr75363 = inttoptr i64 %f75364 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75363(i64 %arg73199, i64 %arg73198)                 ; tail call
  ret void
}


define void @lam73673(i64 %env73674, i64 %Izw$lst72562) {
  %cont72561 = call i64 @prim_car(i64 %Izw$lst72562)                                 ; call prim_car
  %Izw$lst = call i64 @prim_cdr(i64 %Izw$lst72562)                                   ; call prim_cdr
  %arg73203 = add i64 0, 0                                                           ; quoted ()
  %cloptr75365 = inttoptr i64 %cont72561 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75366 = getelementptr inbounds i64, i64* %cloptr75365, i64 0                 ; &cloptr75365[0]
  %f75368 = load i64, i64* %i0ptr75366, align 8                                      ; load; *i0ptr75366
  %fptr75367 = inttoptr i64 %f75368 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75367(i64 %cont72561, i64 %arg73203, i64 %Izw$lst)  ; tail call
  ret void
}


define void @lam73670(i64 %env73671, i64 %_9572559, i64 %a72460) {
  %envptr75369 = inttoptr i64 %env73671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75370 = getelementptr inbounds i64, i64* %envptr75369, i64 4                ; &envptr75369[4]
  %C5K$_37wind_45stack = load i64, i64* %envptr75370, align 8                        ; load; *envptr75370
  %envptr75371 = inttoptr i64 %env73671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75372 = getelementptr inbounds i64, i64* %envptr75371, i64 3                ; &envptr75371[3]
  %Wdt$tail = load i64, i64* %envptr75372, align 8                                   ; load; *envptr75372
  %envptr75373 = inttoptr i64 %env73671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75374 = getelementptr inbounds i64, i64* %envptr75373, i64 2                ; &envptr75373[2]
  %cont72550 = load i64, i64* %envptr75374, align 8                                  ; load; *envptr75374
  %envptr75375 = inttoptr i64 %env73671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75376 = getelementptr inbounds i64, i64* %envptr75375, i64 1                ; &envptr75375[1]
  %j2m$new = load i64, i64* %envptr75376, align 8                                    ; load; *envptr75376
  %arg73206 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim72560 = call i64 @prim_make_45vector(i64 %arg73206, i64 %a72460)           ; call prim_make_45vector
  %cloptr75377 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75379 = getelementptr inbounds i64, i64* %cloptr75377, i64 1                  ; &eptr75379[1]
  %eptr75380 = getelementptr inbounds i64, i64* %cloptr75377, i64 2                  ; &eptr75380[2]
  %eptr75381 = getelementptr inbounds i64, i64* %cloptr75377, i64 3                  ; &eptr75381[3]
  %eptr75382 = getelementptr inbounds i64, i64* %cloptr75377, i64 4                  ; &eptr75382[4]
  store i64 %j2m$new, i64* %eptr75379                                                ; *eptr75379 = %j2m$new
  store i64 %cont72550, i64* %eptr75380                                              ; *eptr75380 = %cont72550
  store i64 %Wdt$tail, i64* %eptr75381                                               ; *eptr75381 = %Wdt$tail
  store i64 %C5K$_37wind_45stack, i64* %eptr75382                                    ; *eptr75382 = %C5K$_37wind_45stack
  %eptr75378 = getelementptr inbounds i64, i64* %cloptr75377, i64 0                  ; &cloptr75377[0]
  %f75383 = ptrtoint void(i64,i64,i64)* @lam73667 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75383, i64* %eptr75378                                                 ; store fptr
  %arg73209 = ptrtoint i64* %cloptr75377 to i64                                      ; closure cast; i64* -> i64
  %arg73208 = add i64 0, 0                                                           ; quoted ()
  %cloptr75384 = inttoptr i64 %arg73209 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75385 = getelementptr inbounds i64, i64* %cloptr75384, i64 0                 ; &cloptr75384[0]
  %f75387 = load i64, i64* %i0ptr75385, align 8                                      ; load; *i0ptr75385
  %fptr75386 = inttoptr i64 %f75387 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75386(i64 %arg73209, i64 %arg73208, i64 %retprim72560); tail call
  ret void
}


define void @lam73667(i64 %env73668, i64 %_9572553, i64 %N2K$f) {
  %envptr75388 = inttoptr i64 %env73668 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75389 = getelementptr inbounds i64, i64* %envptr75388, i64 4                ; &envptr75388[4]
  %C5K$_37wind_45stack = load i64, i64* %envptr75389, align 8                        ; load; *envptr75389
  %envptr75390 = inttoptr i64 %env73668 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75391 = getelementptr inbounds i64, i64* %envptr75390, i64 3                ; &envptr75390[3]
  %Wdt$tail = load i64, i64* %envptr75391, align 8                                   ; load; *envptr75391
  %envptr75392 = inttoptr i64 %env73668 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75393 = getelementptr inbounds i64, i64* %envptr75392, i64 2                ; &envptr75392[2]
  %cont72550 = load i64, i64* %envptr75393, align 8                                  ; load; *envptr75393
  %envptr75394 = inttoptr i64 %env73668 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75395 = getelementptr inbounds i64, i64* %envptr75394, i64 1                ; &envptr75394[1]
  %j2m$new = load i64, i64* %envptr75395, align 8                                    ; load; *envptr75395
  %arg73211 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr75396 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75398 = getelementptr inbounds i64, i64* %cloptr75396, i64 1                  ; &eptr75398[1]
  %eptr75399 = getelementptr inbounds i64, i64* %cloptr75396, i64 2                  ; &eptr75399[2]
  %eptr75400 = getelementptr inbounds i64, i64* %cloptr75396, i64 3                  ; &eptr75400[3]
  store i64 %Wdt$tail, i64* %eptr75398                                               ; *eptr75398 = %Wdt$tail
  store i64 %C5K$_37wind_45stack, i64* %eptr75399                                    ; *eptr75399 = %C5K$_37wind_45stack
  store i64 %N2K$f, i64* %eptr75400                                                  ; *eptr75400 = %N2K$f
  %eptr75397 = getelementptr inbounds i64, i64* %cloptr75396, i64 0                  ; &cloptr75396[0]
  %f75401 = ptrtoint void(i64,i64,i64)* @lam73664 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75401, i64* %eptr75397                                                 ; store fptr
  %arg73210 = ptrtoint i64* %cloptr75396 to i64                                      ; closure cast; i64* -> i64
  %rKN$_9572346 = call i64 @prim_vector_45set_33(i64 %N2K$f, i64 %arg73211, i64 %arg73210); call prim_vector_45set_33
  %arg73235 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72467 = call i64 @prim_vector_45ref(i64 %N2K$f, i64 %arg73235)                   ; call prim_vector_45ref
  %cloptr75402 = inttoptr i64 %a72467 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75403 = getelementptr inbounds i64, i64* %cloptr75402, i64 0                 ; &cloptr75402[0]
  %f75405 = load i64, i64* %i0ptr75403, align 8                                      ; load; *i0ptr75403
  %fptr75404 = inttoptr i64 %f75405 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75404(i64 %a72467, i64 %cont72550, i64 %j2m$new)    ; tail call
  ret void
}


define void @lam73664(i64 %env73665, i64 %cont72554, i64 %gg5$l) {
  %envptr75406 = inttoptr i64 %env73665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75407 = getelementptr inbounds i64, i64* %envptr75406, i64 3                ; &envptr75406[3]
  %N2K$f = load i64, i64* %envptr75407, align 8                                      ; load; *envptr75407
  %envptr75408 = inttoptr i64 %env73665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75409 = getelementptr inbounds i64, i64* %envptr75408, i64 2                ; &envptr75408[2]
  %C5K$_37wind_45stack = load i64, i64* %envptr75409, align 8                        ; load; *envptr75409
  %envptr75410 = inttoptr i64 %env73665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75411 = getelementptr inbounds i64, i64* %envptr75410, i64 1                ; &envptr75410[1]
  %Wdt$tail = load i64, i64* %envptr75411, align 8                                   ; load; *envptr75411
  %a72461 = call i64 @prim_eq_63(i64 %gg5$l, i64 %Wdt$tail)                          ; call prim_eq_63
  %a72462 = call i64 @prim_not(i64 %a72461)                                          ; call prim_not
  %cmp75412 = icmp eq i64 %a72462, 15                                                ; false?
  br i1 %cmp75412, label %else75414, label %then75413                                ; if

then75413:
  %arg73216 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72463 = call i64 @prim_vector_45ref(i64 %N2K$f, i64 %arg73216)                   ; call prim_vector_45ref
  %a72464 = call i64 @prim_cdr(i64 %gg5$l)                                           ; call prim_cdr
  %cloptr75415 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75417 = getelementptr inbounds i64, i64* %cloptr75415, i64 1                  ; &eptr75417[1]
  %eptr75418 = getelementptr inbounds i64, i64* %cloptr75415, i64 2                  ; &eptr75418[2]
  %eptr75419 = getelementptr inbounds i64, i64* %cloptr75415, i64 3                  ; &eptr75419[3]
  store i64 %gg5$l, i64* %eptr75417                                                  ; *eptr75417 = %gg5$l
  store i64 %cont72554, i64* %eptr75418                                              ; *eptr75418 = %cont72554
  store i64 %C5K$_37wind_45stack, i64* %eptr75419                                    ; *eptr75419 = %C5K$_37wind_45stack
  %eptr75416 = getelementptr inbounds i64, i64* %cloptr75415, i64 0                  ; &cloptr75415[0]
  %f75420 = ptrtoint void(i64,i64,i64)* @lam73660 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75420, i64* %eptr75416                                                 ; store fptr
  %arg73220 = ptrtoint i64* %cloptr75415 to i64                                      ; closure cast; i64* -> i64
  %cloptr75421 = inttoptr i64 %a72463 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75422 = getelementptr inbounds i64, i64* %cloptr75421, i64 0                 ; &cloptr75421[0]
  %f75424 = load i64, i64* %i0ptr75422, align 8                                      ; load; *i0ptr75422
  %fptr75423 = inttoptr i64 %f75424 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75423(i64 %a72463, i64 %arg73220, i64 %a72464)      ; tail call
  ret void

else75414:
  %retprim72558 = call i64 @prim_void()                                              ; call prim_void
  %arg73233 = add i64 0, 0                                                           ; quoted ()
  %cloptr75425 = inttoptr i64 %cont72554 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75426 = getelementptr inbounds i64, i64* %cloptr75425, i64 0                 ; &cloptr75425[0]
  %f75428 = load i64, i64* %i0ptr75426, align 8                                      ; load; *i0ptr75426
  %fptr75427 = inttoptr i64 %f75428 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75427(i64 %cont72554, i64 %arg73233, i64 %retprim72558); tail call
  ret void
}


define void @lam73660(i64 %env73661, i64 %_9572555, i64 %OQg$_9572347) {
  %envptr75429 = inttoptr i64 %env73661 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75430 = getelementptr inbounds i64, i64* %envptr75429, i64 3                ; &envptr75429[3]
  %C5K$_37wind_45stack = load i64, i64* %envptr75430, align 8                        ; load; *envptr75430
  %envptr75431 = inttoptr i64 %env73661 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75432 = getelementptr inbounds i64, i64* %envptr75431, i64 2                ; &envptr75431[2]
  %cont72554 = load i64, i64* %envptr75432, align 8                                  ; load; *envptr75432
  %envptr75433 = inttoptr i64 %env73661 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75434 = getelementptr inbounds i64, i64* %envptr75433, i64 1                ; &envptr75433[1]
  %gg5$l = load i64, i64* %envptr75434, align 8                                      ; load; *envptr75434
  %a72465 = call i64 @prim_car(i64 %gg5$l)                                           ; call prim_car
  %a72466 = call i64 @prim_car(i64 %a72465)                                          ; call prim_car
  %cloptr75435 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75437 = getelementptr inbounds i64, i64* %cloptr75435, i64 1                  ; &eptr75437[1]
  %eptr75438 = getelementptr inbounds i64, i64* %cloptr75435, i64 2                  ; &eptr75438[2]
  %eptr75439 = getelementptr inbounds i64, i64* %cloptr75435, i64 3                  ; &eptr75439[3]
  store i64 %gg5$l, i64* %eptr75437                                                  ; *eptr75437 = %gg5$l
  store i64 %cont72554, i64* %eptr75438                                              ; *eptr75438 = %cont72554
  store i64 %C5K$_37wind_45stack, i64* %eptr75439                                    ; *eptr75439 = %C5K$_37wind_45stack
  %eptr75436 = getelementptr inbounds i64, i64* %cloptr75435, i64 0                  ; &cloptr75435[0]
  %f75440 = ptrtoint void(i64,i64,i64)* @lam73658 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75440, i64* %eptr75436                                                 ; store fptr
  %arg73224 = ptrtoint i64* %cloptr75435 to i64                                      ; closure cast; i64* -> i64
  %cloptr75441 = inttoptr i64 %a72466 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr75442 = getelementptr inbounds i64, i64* %cloptr75441, i64 0                 ; &cloptr75441[0]
  %f75444 = load i64, i64* %i0ptr75442, align 8                                      ; load; *i0ptr75442
  %fptr75443 = inttoptr i64 %f75444 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75443(i64 %a72466, i64 %arg73224)                   ; tail call
  ret void
}


define void @lam73658(i64 %env73659, i64 %_9572556, i64 %dl8$_9572348) {
  %envptr75445 = inttoptr i64 %env73659 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75446 = getelementptr inbounds i64, i64* %envptr75445, i64 3                ; &envptr75445[3]
  %C5K$_37wind_45stack = load i64, i64* %envptr75446, align 8                        ; load; *envptr75446
  %envptr75447 = inttoptr i64 %env73659 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75448 = getelementptr inbounds i64, i64* %envptr75447, i64 2                ; &envptr75447[2]
  %cont72554 = load i64, i64* %envptr75448, align 8                                  ; load; *envptr75448
  %envptr75449 = inttoptr i64 %env73659 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75450 = getelementptr inbounds i64, i64* %envptr75449, i64 1                ; &envptr75449[1]
  %gg5$l = load i64, i64* %envptr75450, align 8                                      ; load; *envptr75450
  %arg73227 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim72557 = call i64 @prim_vector_45set_33(i64 %C5K$_37wind_45stack, i64 %arg73227, i64 %gg5$l); call prim_vector_45set_33
  %arg73230 = add i64 0, 0                                                           ; quoted ()
  %cloptr75451 = inttoptr i64 %cont72554 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75452 = getelementptr inbounds i64, i64* %cloptr75451, i64 0                 ; &cloptr75451[0]
  %f75454 = load i64, i64* %i0ptr75452, align 8                                      ; load; *i0ptr75452
  %fptr75453 = inttoptr i64 %f75454 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75453(i64 %cont72554, i64 %arg73230, i64 %retprim72557); tail call
  ret void
}


define void @lam73649(i64 %env73650, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr75455 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  %i0ptr75456 = getelementptr inbounds i64, i64* %cloptr75455, i64 0                 ; &cloptr75455[0]
  %f75458 = load i64, i64* %i0ptr75456, align 8                                      ; load; *i0ptr75456
  %fptr75457 = inttoptr i64 %f75458 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75457(i64 %_951, i64 %_951)                         ; tail call
  ret void
}


define void @lam73642(i64 %env73643, i64 %cont72584, i64 %DSb$_37foldl) {
  %envptr75459 = inttoptr i64 %env73643 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75460 = getelementptr inbounds i64, i64* %envptr75459, i64 3                ; &envptr75459[3]
  %xFv$_37map1 = load i64, i64* %envptr75460, align 8                                ; load; *envptr75460
  %envptr75461 = inttoptr i64 %env73643 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75462 = getelementptr inbounds i64, i64* %envptr75461, i64 2                ; &envptr75461[2]
  %udL$_37foldr = load i64, i64* %envptr75462, align 8                               ; load; *envptr75462
  %envptr75463 = inttoptr i64 %env73643 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75464 = getelementptr inbounds i64, i64* %envptr75463, i64 1                ; &envptr75463[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75464, align 8                              ; load; *envptr75464
  %arg73249 = add i64 0, 0                                                           ; quoted ()
  %cloptr75465 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75467 = getelementptr inbounds i64, i64* %cloptr75465, i64 1                  ; &eptr75467[1]
  %eptr75468 = getelementptr inbounds i64, i64* %cloptr75465, i64 2                  ; &eptr75468[2]
  %eptr75469 = getelementptr inbounds i64, i64* %cloptr75465, i64 3                  ; &eptr75469[3]
  %eptr75470 = getelementptr inbounds i64, i64* %cloptr75465, i64 4                  ; &eptr75470[4]
  store i64 %F0G$_37foldr1, i64* %eptr75467                                          ; *eptr75467 = %F0G$_37foldr1
  store i64 %udL$_37foldr, i64* %eptr75468                                           ; *eptr75468 = %udL$_37foldr
  store i64 %xFv$_37map1, i64* %eptr75469                                            ; *eptr75469 = %xFv$_37map1
  store i64 %DSb$_37foldl, i64* %eptr75470                                           ; *eptr75470 = %DSb$_37foldl
  %eptr75466 = getelementptr inbounds i64, i64* %cloptr75465, i64 0                  ; &cloptr75465[0]
  %f75471 = ptrtoint void(i64,i64)* @lam73639 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f75471, i64* %eptr75466                                                 ; store fptr
  %arg73248 = ptrtoint i64* %cloptr75465 to i64                                      ; closure cast; i64* -> i64
  %cloptr75472 = inttoptr i64 %cont72584 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75473 = getelementptr inbounds i64, i64* %cloptr75472, i64 0                 ; &cloptr75472[0]
  %f75475 = load i64, i64* %i0ptr75473, align 8                                      ; load; *i0ptr75473
  %fptr75474 = inttoptr i64 %f75475 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75474(i64 %cont72584, i64 %arg73249, i64 %arg73248) ; tail call
  ret void
}


define void @lam73639(i64 %env73640, i64 %gYN$args72586) {
  %envptr75476 = inttoptr i64 %env73640 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75477 = getelementptr inbounds i64, i64* %envptr75476, i64 4                ; &envptr75476[4]
  %DSb$_37foldl = load i64, i64* %envptr75477, align 8                               ; load; *envptr75477
  %envptr75478 = inttoptr i64 %env73640 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75479 = getelementptr inbounds i64, i64* %envptr75478, i64 3                ; &envptr75478[3]
  %xFv$_37map1 = load i64, i64* %envptr75479, align 8                                ; load; *envptr75479
  %envptr75480 = inttoptr i64 %env73640 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75481 = getelementptr inbounds i64, i64* %envptr75480, i64 2                ; &envptr75480[2]
  %udL$_37foldr = load i64, i64* %envptr75481, align 8                               ; load; *envptr75481
  %envptr75482 = inttoptr i64 %env73640 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75483 = getelementptr inbounds i64, i64* %envptr75482, i64 1                ; &envptr75482[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75483, align 8                              ; load; *envptr75483
  %cont72585 = call i64 @prim_car(i64 %gYN$args72586)                                ; call prim_car
  %gYN$args = call i64 @prim_cdr(i64 %gYN$args72586)                                 ; call prim_cdr
  %d3J$f = call i64 @prim_car(i64 %gYN$args)                                         ; call prim_car
  %a72389 = call i64 @prim_cdr(i64 %gYN$args)                                        ; call prim_cdr
  %retprim72605 = call i64 @prim_car(i64 %a72389)                                    ; call prim_car
  %cloptr75484 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75486 = getelementptr inbounds i64, i64* %cloptr75484, i64 1                  ; &eptr75486[1]
  %eptr75487 = getelementptr inbounds i64, i64* %cloptr75484, i64 2                  ; &eptr75487[2]
  %eptr75488 = getelementptr inbounds i64, i64* %cloptr75484, i64 3                  ; &eptr75488[3]
  %eptr75489 = getelementptr inbounds i64, i64* %cloptr75484, i64 4                  ; &eptr75489[4]
  %eptr75490 = getelementptr inbounds i64, i64* %cloptr75484, i64 5                  ; &eptr75490[5]
  %eptr75491 = getelementptr inbounds i64, i64* %cloptr75484, i64 6                  ; &eptr75491[6]
  %eptr75492 = getelementptr inbounds i64, i64* %cloptr75484, i64 7                  ; &eptr75492[7]
  store i64 %gYN$args, i64* %eptr75486                                               ; *eptr75486 = %gYN$args
  store i64 %d3J$f, i64* %eptr75487                                                  ; *eptr75487 = %d3J$f
  store i64 %F0G$_37foldr1, i64* %eptr75488                                          ; *eptr75488 = %F0G$_37foldr1
  store i64 %udL$_37foldr, i64* %eptr75489                                           ; *eptr75489 = %udL$_37foldr
  store i64 %xFv$_37map1, i64* %eptr75490                                            ; *eptr75490 = %xFv$_37map1
  store i64 %cont72585, i64* %eptr75491                                              ; *eptr75491 = %cont72585
  store i64 %DSb$_37foldl, i64* %eptr75492                                           ; *eptr75492 = %DSb$_37foldl
  %eptr75485 = getelementptr inbounds i64, i64* %cloptr75484, i64 0                  ; &cloptr75484[0]
  %f75493 = ptrtoint void(i64,i64,i64)* @lam73637 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75493, i64* %eptr75485                                                 ; store fptr
  %arg73258 = ptrtoint i64* %cloptr75484 to i64                                      ; closure cast; i64* -> i64
  %arg73257 = add i64 0, 0                                                           ; quoted ()
  %cloptr75494 = inttoptr i64 %arg73258 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75495 = getelementptr inbounds i64, i64* %cloptr75494, i64 0                 ; &cloptr75494[0]
  %f75497 = load i64, i64* %i0ptr75495, align 8                                      ; load; *i0ptr75495
  %fptr75496 = inttoptr i64 %f75497 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75496(i64 %arg73258, i64 %arg73257, i64 %retprim72605); tail call
  ret void
}


define void @lam73637(i64 %env73638, i64 %_9572587, i64 %yx1$acc) {
  %envptr75498 = inttoptr i64 %env73638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75499 = getelementptr inbounds i64, i64* %envptr75498, i64 7                ; &envptr75498[7]
  %DSb$_37foldl = load i64, i64* %envptr75499, align 8                               ; load; *envptr75499
  %envptr75500 = inttoptr i64 %env73638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75501 = getelementptr inbounds i64, i64* %envptr75500, i64 6                ; &envptr75500[6]
  %cont72585 = load i64, i64* %envptr75501, align 8                                  ; load; *envptr75501
  %envptr75502 = inttoptr i64 %env73638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75503 = getelementptr inbounds i64, i64* %envptr75502, i64 5                ; &envptr75502[5]
  %xFv$_37map1 = load i64, i64* %envptr75503, align 8                                ; load; *envptr75503
  %envptr75504 = inttoptr i64 %env73638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75505 = getelementptr inbounds i64, i64* %envptr75504, i64 4                ; &envptr75504[4]
  %udL$_37foldr = load i64, i64* %envptr75505, align 8                               ; load; *envptr75505
  %envptr75506 = inttoptr i64 %env73638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75507 = getelementptr inbounds i64, i64* %envptr75506, i64 3                ; &envptr75506[3]
  %F0G$_37foldr1 = load i64, i64* %envptr75507, align 8                              ; load; *envptr75507
  %envptr75508 = inttoptr i64 %env73638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75509 = getelementptr inbounds i64, i64* %envptr75508, i64 2                ; &envptr75508[2]
  %d3J$f = load i64, i64* %envptr75509, align 8                                      ; load; *envptr75509
  %envptr75510 = inttoptr i64 %env73638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75511 = getelementptr inbounds i64, i64* %envptr75510, i64 1                ; &envptr75510[1]
  %gYN$args = load i64, i64* %envptr75511, align 8                                   ; load; *envptr75511
  %a72390 = call i64 @prim_cdr(i64 %gYN$args)                                        ; call prim_cdr
  %retprim72604 = call i64 @prim_cdr(i64 %a72390)                                    ; call prim_cdr
  %cloptr75512 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75514 = getelementptr inbounds i64, i64* %cloptr75512, i64 1                  ; &eptr75514[1]
  %eptr75515 = getelementptr inbounds i64, i64* %cloptr75512, i64 2                  ; &eptr75515[2]
  %eptr75516 = getelementptr inbounds i64, i64* %cloptr75512, i64 3                  ; &eptr75516[3]
  %eptr75517 = getelementptr inbounds i64, i64* %cloptr75512, i64 4                  ; &eptr75517[4]
  %eptr75518 = getelementptr inbounds i64, i64* %cloptr75512, i64 5                  ; &eptr75518[5]
  %eptr75519 = getelementptr inbounds i64, i64* %cloptr75512, i64 6                  ; &eptr75519[6]
  %eptr75520 = getelementptr inbounds i64, i64* %cloptr75512, i64 7                  ; &eptr75520[7]
  store i64 %d3J$f, i64* %eptr75514                                                  ; *eptr75514 = %d3J$f
  store i64 %F0G$_37foldr1, i64* %eptr75515                                          ; *eptr75515 = %F0G$_37foldr1
  store i64 %udL$_37foldr, i64* %eptr75516                                           ; *eptr75516 = %udL$_37foldr
  store i64 %xFv$_37map1, i64* %eptr75517                                            ; *eptr75517 = %xFv$_37map1
  store i64 %cont72585, i64* %eptr75518                                              ; *eptr75518 = %cont72585
  store i64 %yx1$acc, i64* %eptr75519                                                ; *eptr75519 = %yx1$acc
  store i64 %DSb$_37foldl, i64* %eptr75520                                           ; *eptr75520 = %DSb$_37foldl
  %eptr75513 = getelementptr inbounds i64, i64* %cloptr75512, i64 0                  ; &cloptr75512[0]
  %f75521 = ptrtoint void(i64,i64,i64)* @lam73635 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75521, i64* %eptr75513                                                 ; store fptr
  %arg73263 = ptrtoint i64* %cloptr75512 to i64                                      ; closure cast; i64* -> i64
  %arg73262 = add i64 0, 0                                                           ; quoted ()
  %cloptr75522 = inttoptr i64 %arg73263 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75523 = getelementptr inbounds i64, i64* %cloptr75522, i64 0                 ; &cloptr75522[0]
  %f75525 = load i64, i64* %i0ptr75523, align 8                                      ; load; *i0ptr75523
  %fptr75524 = inttoptr i64 %f75525 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75524(i64 %arg73263, i64 %arg73262, i64 %retprim72604); tail call
  ret void
}


define void @lam73635(i64 %env73636, i64 %_9572588, i64 %REs$lsts) {
  %envptr75526 = inttoptr i64 %env73636 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75527 = getelementptr inbounds i64, i64* %envptr75526, i64 7                ; &envptr75526[7]
  %DSb$_37foldl = load i64, i64* %envptr75527, align 8                               ; load; *envptr75527
  %envptr75528 = inttoptr i64 %env73636 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75529 = getelementptr inbounds i64, i64* %envptr75528, i64 6                ; &envptr75528[6]
  %yx1$acc = load i64, i64* %envptr75529, align 8                                    ; load; *envptr75529
  %envptr75530 = inttoptr i64 %env73636 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75531 = getelementptr inbounds i64, i64* %envptr75530, i64 5                ; &envptr75530[5]
  %cont72585 = load i64, i64* %envptr75531, align 8                                  ; load; *envptr75531
  %envptr75532 = inttoptr i64 %env73636 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75533 = getelementptr inbounds i64, i64* %envptr75532, i64 4                ; &envptr75532[4]
  %xFv$_37map1 = load i64, i64* %envptr75533, align 8                                ; load; *envptr75533
  %envptr75534 = inttoptr i64 %env73636 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75535 = getelementptr inbounds i64, i64* %envptr75534, i64 3                ; &envptr75534[3]
  %udL$_37foldr = load i64, i64* %envptr75535, align 8                               ; load; *envptr75535
  %envptr75536 = inttoptr i64 %env73636 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75537 = getelementptr inbounds i64, i64* %envptr75536, i64 2                ; &envptr75536[2]
  %F0G$_37foldr1 = load i64, i64* %envptr75537, align 8                              ; load; *envptr75537
  %envptr75538 = inttoptr i64 %env73636 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75539 = getelementptr inbounds i64, i64* %envptr75538, i64 1                ; &envptr75538[1]
  %d3J$f = load i64, i64* %envptr75539, align 8                                      ; load; *envptr75539
  %cloptr75540 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75542 = getelementptr inbounds i64, i64* %cloptr75540, i64 1                  ; &eptr75542[1]
  %eptr75543 = getelementptr inbounds i64, i64* %cloptr75540, i64 2                  ; &eptr75543[2]
  %eptr75544 = getelementptr inbounds i64, i64* %cloptr75540, i64 3                  ; &eptr75544[3]
  %eptr75545 = getelementptr inbounds i64, i64* %cloptr75540, i64 4                  ; &eptr75545[4]
  %eptr75546 = getelementptr inbounds i64, i64* %cloptr75540, i64 5                  ; &eptr75546[5]
  %eptr75547 = getelementptr inbounds i64, i64* %cloptr75540, i64 6                  ; &eptr75547[6]
  %eptr75548 = getelementptr inbounds i64, i64* %cloptr75540, i64 7                  ; &eptr75548[7]
  store i64 %d3J$f, i64* %eptr75542                                                  ; *eptr75542 = %d3J$f
  store i64 %udL$_37foldr, i64* %eptr75543                                           ; *eptr75543 = %udL$_37foldr
  store i64 %xFv$_37map1, i64* %eptr75544                                            ; *eptr75544 = %xFv$_37map1
  store i64 %REs$lsts, i64* %eptr75545                                               ; *eptr75545 = %REs$lsts
  store i64 %cont72585, i64* %eptr75546                                              ; *eptr75546 = %cont72585
  store i64 %yx1$acc, i64* %eptr75547                                                ; *eptr75547 = %yx1$acc
  store i64 %DSb$_37foldl, i64* %eptr75548                                           ; *eptr75548 = %DSb$_37foldl
  %eptr75541 = getelementptr inbounds i64, i64* %cloptr75540, i64 0                  ; &cloptr75540[0]
  %f75549 = ptrtoint void(i64,i64,i64)* @lam73633 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75549, i64* %eptr75541                                                 ; store fptr
  %arg73267 = ptrtoint i64* %cloptr75540 to i64                                      ; closure cast; i64* -> i64
  %cloptr75550 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75551 = getelementptr inbounds i64, i64* %cloptr75550, i64 0                  ; &cloptr75550[0]
  %f75552 = ptrtoint void(i64,i64,i64,i64)* @lam73612 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f75552, i64* %eptr75551                                                 ; store fptr
  %arg73266 = ptrtoint i64* %cloptr75550 to i64                                      ; closure cast; i64* -> i64
  %arg73265 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr75553 = inttoptr i64 %F0G$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr75554 = getelementptr inbounds i64, i64* %cloptr75553, i64 0                 ; &cloptr75553[0]
  %f75556 = load i64, i64* %i0ptr75554, align 8                                      ; load; *i0ptr75554
  %fptr75555 = inttoptr i64 %f75556 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75555(i64 %F0G$_37foldr1, i64 %arg73267, i64 %arg73266, i64 %arg73265, i64 %REs$lsts); tail call
  ret void
}


define void @lam73633(i64 %env73634, i64 %_9572589, i64 %a72391) {
  %envptr75557 = inttoptr i64 %env73634 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75558 = getelementptr inbounds i64, i64* %envptr75557, i64 7                ; &envptr75557[7]
  %DSb$_37foldl = load i64, i64* %envptr75558, align 8                               ; load; *envptr75558
  %envptr75559 = inttoptr i64 %env73634 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75560 = getelementptr inbounds i64, i64* %envptr75559, i64 6                ; &envptr75559[6]
  %yx1$acc = load i64, i64* %envptr75560, align 8                                    ; load; *envptr75560
  %envptr75561 = inttoptr i64 %env73634 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75562 = getelementptr inbounds i64, i64* %envptr75561, i64 5                ; &envptr75561[5]
  %cont72585 = load i64, i64* %envptr75562, align 8                                  ; load; *envptr75562
  %envptr75563 = inttoptr i64 %env73634 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75564 = getelementptr inbounds i64, i64* %envptr75563, i64 4                ; &envptr75563[4]
  %REs$lsts = load i64, i64* %envptr75564, align 8                                   ; load; *envptr75564
  %envptr75565 = inttoptr i64 %env73634 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75566 = getelementptr inbounds i64, i64* %envptr75565, i64 3                ; &envptr75565[3]
  %xFv$_37map1 = load i64, i64* %envptr75566, align 8                                ; load; *envptr75566
  %envptr75567 = inttoptr i64 %env73634 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75568 = getelementptr inbounds i64, i64* %envptr75567, i64 2                ; &envptr75567[2]
  %udL$_37foldr = load i64, i64* %envptr75568, align 8                               ; load; *envptr75568
  %envptr75569 = inttoptr i64 %env73634 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75570 = getelementptr inbounds i64, i64* %envptr75569, i64 1                ; &envptr75569[1]
  %d3J$f = load i64, i64* %envptr75570, align 8                                      ; load; *envptr75570
  %cmp75571 = icmp eq i64 %a72391, 15                                                ; false?
  br i1 %cmp75571, label %else75573, label %then75572                                ; if

then75572:
  %arg73270 = add i64 0, 0                                                           ; quoted ()
  %cloptr75574 = inttoptr i64 %cont72585 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75575 = getelementptr inbounds i64, i64* %cloptr75574, i64 0                 ; &cloptr75574[0]
  %f75577 = load i64, i64* %i0ptr75575, align 8                                      ; load; *i0ptr75575
  %fptr75576 = inttoptr i64 %f75577 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75576(i64 %cont72585, i64 %arg73270, i64 %yx1$acc)  ; tail call
  ret void

else75573:
  %cloptr75578 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75580 = getelementptr inbounds i64, i64* %cloptr75578, i64 1                  ; &eptr75580[1]
  %eptr75581 = getelementptr inbounds i64, i64* %cloptr75578, i64 2                  ; &eptr75581[2]
  %eptr75582 = getelementptr inbounds i64, i64* %cloptr75578, i64 3                  ; &eptr75582[3]
  %eptr75583 = getelementptr inbounds i64, i64* %cloptr75578, i64 4                  ; &eptr75583[4]
  %eptr75584 = getelementptr inbounds i64, i64* %cloptr75578, i64 5                  ; &eptr75584[5]
  %eptr75585 = getelementptr inbounds i64, i64* %cloptr75578, i64 6                  ; &eptr75585[6]
  %eptr75586 = getelementptr inbounds i64, i64* %cloptr75578, i64 7                  ; &eptr75586[7]
  store i64 %d3J$f, i64* %eptr75580                                                  ; *eptr75580 = %d3J$f
  store i64 %udL$_37foldr, i64* %eptr75581                                           ; *eptr75581 = %udL$_37foldr
  store i64 %xFv$_37map1, i64* %eptr75582                                            ; *eptr75582 = %xFv$_37map1
  store i64 %REs$lsts, i64* %eptr75583                                               ; *eptr75583 = %REs$lsts
  store i64 %cont72585, i64* %eptr75584                                              ; *eptr75584 = %cont72585
  store i64 %yx1$acc, i64* %eptr75585                                                ; *eptr75585 = %yx1$acc
  store i64 %DSb$_37foldl, i64* %eptr75586                                           ; *eptr75586 = %DSb$_37foldl
  %eptr75579 = getelementptr inbounds i64, i64* %cloptr75578, i64 0                  ; &cloptr75578[0]
  %f75587 = ptrtoint void(i64,i64,i64)* @lam73631 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75587, i64* %eptr75579                                                 ; store fptr
  %arg73274 = ptrtoint i64* %cloptr75578 to i64                                      ; closure cast; i64* -> i64
  %cloptr75588 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75589 = getelementptr inbounds i64, i64* %cloptr75588, i64 0                  ; &cloptr75588[0]
  %f75590 = ptrtoint void(i64,i64,i64)* @lam73616 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75590, i64* %eptr75589                                                 ; store fptr
  %arg73273 = ptrtoint i64* %cloptr75588 to i64                                      ; closure cast; i64* -> i64
  %cloptr75591 = inttoptr i64 %xFv$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr75592 = getelementptr inbounds i64, i64* %cloptr75591, i64 0                 ; &cloptr75591[0]
  %f75594 = load i64, i64* %i0ptr75592, align 8                                      ; load; *i0ptr75592
  %fptr75593 = inttoptr i64 %f75594 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75593(i64 %xFv$_37map1, i64 %arg73274, i64 %arg73273, i64 %REs$lsts); tail call
  ret void
}


define void @lam73631(i64 %env73632, i64 %_9572590, i64 %tvh$lsts_43) {
  %envptr75595 = inttoptr i64 %env73632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75596 = getelementptr inbounds i64, i64* %envptr75595, i64 7                ; &envptr75595[7]
  %DSb$_37foldl = load i64, i64* %envptr75596, align 8                               ; load; *envptr75596
  %envptr75597 = inttoptr i64 %env73632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75598 = getelementptr inbounds i64, i64* %envptr75597, i64 6                ; &envptr75597[6]
  %yx1$acc = load i64, i64* %envptr75598, align 8                                    ; load; *envptr75598
  %envptr75599 = inttoptr i64 %env73632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75600 = getelementptr inbounds i64, i64* %envptr75599, i64 5                ; &envptr75599[5]
  %cont72585 = load i64, i64* %envptr75600, align 8                                  ; load; *envptr75600
  %envptr75601 = inttoptr i64 %env73632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75602 = getelementptr inbounds i64, i64* %envptr75601, i64 4                ; &envptr75601[4]
  %REs$lsts = load i64, i64* %envptr75602, align 8                                   ; load; *envptr75602
  %envptr75603 = inttoptr i64 %env73632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75604 = getelementptr inbounds i64, i64* %envptr75603, i64 3                ; &envptr75603[3]
  %xFv$_37map1 = load i64, i64* %envptr75604, align 8                                ; load; *envptr75604
  %envptr75605 = inttoptr i64 %env73632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75606 = getelementptr inbounds i64, i64* %envptr75605, i64 2                ; &envptr75605[2]
  %udL$_37foldr = load i64, i64* %envptr75606, align 8                               ; load; *envptr75606
  %envptr75607 = inttoptr i64 %env73632 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75608 = getelementptr inbounds i64, i64* %envptr75607, i64 1                ; &envptr75607[1]
  %d3J$f = load i64, i64* %envptr75608, align 8                                      ; load; *envptr75608
  %cloptr75609 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr75611 = getelementptr inbounds i64, i64* %cloptr75609, i64 1                  ; &eptr75611[1]
  %eptr75612 = getelementptr inbounds i64, i64* %cloptr75609, i64 2                  ; &eptr75612[2]
  %eptr75613 = getelementptr inbounds i64, i64* %cloptr75609, i64 3                  ; &eptr75613[3]
  %eptr75614 = getelementptr inbounds i64, i64* %cloptr75609, i64 4                  ; &eptr75614[4]
  %eptr75615 = getelementptr inbounds i64, i64* %cloptr75609, i64 5                  ; &eptr75615[5]
  %eptr75616 = getelementptr inbounds i64, i64* %cloptr75609, i64 6                  ; &eptr75616[6]
  store i64 %d3J$f, i64* %eptr75611                                                  ; *eptr75611 = %d3J$f
  store i64 %udL$_37foldr, i64* %eptr75612                                           ; *eptr75612 = %udL$_37foldr
  store i64 %cont72585, i64* %eptr75613                                              ; *eptr75613 = %cont72585
  store i64 %yx1$acc, i64* %eptr75614                                                ; *eptr75614 = %yx1$acc
  store i64 %tvh$lsts_43, i64* %eptr75615                                            ; *eptr75615 = %tvh$lsts_43
  store i64 %DSb$_37foldl, i64* %eptr75616                                           ; *eptr75616 = %DSb$_37foldl
  %eptr75610 = getelementptr inbounds i64, i64* %cloptr75609, i64 0                  ; &cloptr75609[0]
  %f75617 = ptrtoint void(i64,i64,i64)* @lam73629 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75617, i64* %eptr75610                                                 ; store fptr
  %arg73278 = ptrtoint i64* %cloptr75609 to i64                                      ; closure cast; i64* -> i64
  %cloptr75618 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75619 = getelementptr inbounds i64, i64* %cloptr75618, i64 0                  ; &cloptr75618[0]
  %f75620 = ptrtoint void(i64,i64,i64)* @lam73619 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75620, i64* %eptr75619                                                 ; store fptr
  %arg73277 = ptrtoint i64* %cloptr75618 to i64                                      ; closure cast; i64* -> i64
  %cloptr75621 = inttoptr i64 %xFv$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr75622 = getelementptr inbounds i64, i64* %cloptr75621, i64 0                 ; &cloptr75621[0]
  %f75624 = load i64, i64* %i0ptr75622, align 8                                      ; load; *i0ptr75622
  %fptr75623 = inttoptr i64 %f75624 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75623(i64 %xFv$_37map1, i64 %arg73278, i64 %arg73277, i64 %REs$lsts); tail call
  ret void
}


define void @lam73629(i64 %env73630, i64 %_9572591, i64 %JD3$vs) {
  %envptr75625 = inttoptr i64 %env73630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75626 = getelementptr inbounds i64, i64* %envptr75625, i64 6                ; &envptr75625[6]
  %DSb$_37foldl = load i64, i64* %envptr75626, align 8                               ; load; *envptr75626
  %envptr75627 = inttoptr i64 %env73630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75628 = getelementptr inbounds i64, i64* %envptr75627, i64 5                ; &envptr75627[5]
  %tvh$lsts_43 = load i64, i64* %envptr75628, align 8                                ; load; *envptr75628
  %envptr75629 = inttoptr i64 %env73630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75630 = getelementptr inbounds i64, i64* %envptr75629, i64 4                ; &envptr75629[4]
  %yx1$acc = load i64, i64* %envptr75630, align 8                                    ; load; *envptr75630
  %envptr75631 = inttoptr i64 %env73630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75632 = getelementptr inbounds i64, i64* %envptr75631, i64 3                ; &envptr75631[3]
  %cont72585 = load i64, i64* %envptr75632, align 8                                  ; load; *envptr75632
  %envptr75633 = inttoptr i64 %env73630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75634 = getelementptr inbounds i64, i64* %envptr75633, i64 2                ; &envptr75633[2]
  %udL$_37foldr = load i64, i64* %envptr75634, align 8                               ; load; *envptr75634
  %envptr75635 = inttoptr i64 %env73630 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75636 = getelementptr inbounds i64, i64* %envptr75635, i64 1                ; &envptr75635[1]
  %d3J$f = load i64, i64* %envptr75636, align 8                                      ; load; *envptr75636
  %arg73280 = add i64 0, 0                                                           ; quoted ()
  %a72392 = call i64 @prim_cons(i64 %yx1$acc, i64 %arg73280)                         ; call prim_cons
  %cloptr75637 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75639 = getelementptr inbounds i64, i64* %cloptr75637, i64 1                  ; &eptr75639[1]
  %eptr75640 = getelementptr inbounds i64, i64* %cloptr75637, i64 2                  ; &eptr75640[2]
  %eptr75641 = getelementptr inbounds i64, i64* %cloptr75637, i64 3                  ; &eptr75641[3]
  %eptr75642 = getelementptr inbounds i64, i64* %cloptr75637, i64 4                  ; &eptr75642[4]
  store i64 %d3J$f, i64* %eptr75639                                                  ; *eptr75639 = %d3J$f
  store i64 %cont72585, i64* %eptr75640                                              ; *eptr75640 = %cont72585
  store i64 %tvh$lsts_43, i64* %eptr75641                                            ; *eptr75641 = %tvh$lsts_43
  store i64 %DSb$_37foldl, i64* %eptr75642                                           ; *eptr75642 = %DSb$_37foldl
  %eptr75638 = getelementptr inbounds i64, i64* %cloptr75637, i64 0                  ; &cloptr75637[0]
  %f75643 = ptrtoint void(i64,i64,i64)* @lam73626 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75643, i64* %eptr75638                                                 ; store fptr
  %arg73285 = ptrtoint i64* %cloptr75637 to i64                                      ; closure cast; i64* -> i64
  %cloptr75644 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75645 = getelementptr inbounds i64, i64* %cloptr75644, i64 0                  ; &cloptr75644[0]
  %f75646 = ptrtoint void(i64,i64,i64,i64)* @lam73622 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f75646, i64* %eptr75645                                                 ; store fptr
  %arg73284 = ptrtoint i64* %cloptr75644 to i64                                      ; closure cast; i64* -> i64
  %cloptr75647 = inttoptr i64 %udL$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr75648 = getelementptr inbounds i64, i64* %cloptr75647, i64 0                 ; &cloptr75647[0]
  %f75650 = load i64, i64* %i0ptr75648, align 8                                      ; load; *i0ptr75648
  %fptr75649 = inttoptr i64 %f75650 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75649(i64 %udL$_37foldr, i64 %arg73285, i64 %arg73284, i64 %a72392, i64 %JD3$vs); tail call
  ret void
}


define void @lam73626(i64 %env73627, i64 %_9572594, i64 %a72393) {
  %envptr75651 = inttoptr i64 %env73627 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75652 = getelementptr inbounds i64, i64* %envptr75651, i64 4                ; &envptr75651[4]
  %DSb$_37foldl = load i64, i64* %envptr75652, align 8                               ; load; *envptr75652
  %envptr75653 = inttoptr i64 %env73627 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75654 = getelementptr inbounds i64, i64* %envptr75653, i64 3                ; &envptr75653[3]
  %tvh$lsts_43 = load i64, i64* %envptr75654, align 8                                ; load; *envptr75654
  %envptr75655 = inttoptr i64 %env73627 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75656 = getelementptr inbounds i64, i64* %envptr75655, i64 2                ; &envptr75655[2]
  %cont72585 = load i64, i64* %envptr75656, align 8                                  ; load; *envptr75656
  %envptr75657 = inttoptr i64 %env73627 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75658 = getelementptr inbounds i64, i64* %envptr75657, i64 1                ; &envptr75657[1]
  %d3J$f = load i64, i64* %envptr75658, align 8                                      ; load; *envptr75658
  %cloptr75659 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75661 = getelementptr inbounds i64, i64* %cloptr75659, i64 1                  ; &eptr75661[1]
  %eptr75662 = getelementptr inbounds i64, i64* %cloptr75659, i64 2                  ; &eptr75662[2]
  %eptr75663 = getelementptr inbounds i64, i64* %cloptr75659, i64 3                  ; &eptr75663[3]
  %eptr75664 = getelementptr inbounds i64, i64* %cloptr75659, i64 4                  ; &eptr75664[4]
  store i64 %d3J$f, i64* %eptr75661                                                  ; *eptr75661 = %d3J$f
  store i64 %cont72585, i64* %eptr75662                                              ; *eptr75662 = %cont72585
  store i64 %tvh$lsts_43, i64* %eptr75663                                            ; *eptr75663 = %tvh$lsts_43
  store i64 %DSb$_37foldl, i64* %eptr75664                                           ; *eptr75664 = %DSb$_37foldl
  %eptr75660 = getelementptr inbounds i64, i64* %cloptr75659, i64 0                  ; &cloptr75659[0]
  %f75665 = ptrtoint void(i64,i64,i64)* @lam73624 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75665, i64* %eptr75660                                                 ; store fptr
  %arg73288 = ptrtoint i64* %cloptr75659 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst72595 = call i64 @prim_cons(i64 %arg73288, i64 %a72393)                  ; call prim_cons
  %cloptr75666 = inttoptr i64 %d3J$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr75667 = getelementptr inbounds i64, i64* %cloptr75666, i64 0                 ; &cloptr75666[0]
  %f75669 = load i64, i64* %i0ptr75667, align 8                                      ; load; *i0ptr75667
  %fptr75668 = inttoptr i64 %f75669 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75668(i64 %d3J$f, i64 %cps_45lst72595)              ; tail call
  ret void
}


define void @lam73624(i64 %env73625, i64 %_9572592, i64 %AWm$acc_43) {
  %envptr75670 = inttoptr i64 %env73625 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75671 = getelementptr inbounds i64, i64* %envptr75670, i64 4                ; &envptr75670[4]
  %DSb$_37foldl = load i64, i64* %envptr75671, align 8                               ; load; *envptr75671
  %envptr75672 = inttoptr i64 %env73625 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75673 = getelementptr inbounds i64, i64* %envptr75672, i64 3                ; &envptr75672[3]
  %tvh$lsts_43 = load i64, i64* %envptr75673, align 8                                ; load; *envptr75673
  %envptr75674 = inttoptr i64 %env73625 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75675 = getelementptr inbounds i64, i64* %envptr75674, i64 2                ; &envptr75674[2]
  %cont72585 = load i64, i64* %envptr75675, align 8                                  ; load; *envptr75675
  %envptr75676 = inttoptr i64 %env73625 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75677 = getelementptr inbounds i64, i64* %envptr75676, i64 1                ; &envptr75676[1]
  %d3J$f = load i64, i64* %envptr75677, align 8                                      ; load; *envptr75677
  %a72394 = call i64 @prim_cons(i64 %AWm$acc_43, i64 %tvh$lsts_43)                   ; call prim_cons
  %a72395 = call i64 @prim_cons(i64 %d3J$f, i64 %a72394)                             ; call prim_cons
  %cps_45lst72593 = call i64 @prim_cons(i64 %cont72585, i64 %a72395)                 ; call prim_cons
  %cloptr75678 = inttoptr i64 %DSb$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr75679 = getelementptr inbounds i64, i64* %cloptr75678, i64 0                 ; &cloptr75678[0]
  %f75681 = load i64, i64* %i0ptr75679, align 8                                      ; load; *i0ptr75679
  %fptr75680 = inttoptr i64 %f75681 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75680(i64 %DSb$_37foldl, i64 %cps_45lst72593)       ; tail call
  ret void
}


define void @lam73622(i64 %env73623, i64 %cont72596, i64 %uTJ$a, i64 %fpW$b) {
  %retprim72597 = call i64 @prim_cons(i64 %uTJ$a, i64 %fpW$b)                        ; call prim_cons
  %arg73298 = add i64 0, 0                                                           ; quoted ()
  %cloptr75682 = inttoptr i64 %cont72596 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75683 = getelementptr inbounds i64, i64* %cloptr75682, i64 0                 ; &cloptr75682[0]
  %f75685 = load i64, i64* %i0ptr75683, align 8                                      ; load; *i0ptr75683
  %fptr75684 = inttoptr i64 %f75685 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75684(i64 %cont72596, i64 %arg73298, i64 %retprim72597); tail call
  ret void
}


define void @lam73619(i64 %env73620, i64 %cont72598, i64 %kUy$x) {
  %retprim72599 = call i64 @prim_car(i64 %kUy$x)                                     ; call prim_car
  %arg73302 = add i64 0, 0                                                           ; quoted ()
  %cloptr75686 = inttoptr i64 %cont72598 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75687 = getelementptr inbounds i64, i64* %cloptr75686, i64 0                 ; &cloptr75686[0]
  %f75689 = load i64, i64* %i0ptr75687, align 8                                      ; load; *i0ptr75687
  %fptr75688 = inttoptr i64 %f75689 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75688(i64 %cont72598, i64 %arg73302, i64 %retprim72599); tail call
  ret void
}


define void @lam73616(i64 %env73617, i64 %cont72600, i64 %JEc$x) {
  %retprim72601 = call i64 @prim_cdr(i64 %JEc$x)                                     ; call prim_cdr
  %arg73306 = add i64 0, 0                                                           ; quoted ()
  %cloptr75690 = inttoptr i64 %cont72600 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75691 = getelementptr inbounds i64, i64* %cloptr75690, i64 0                 ; &cloptr75690[0]
  %f75693 = load i64, i64* %i0ptr75691, align 8                                      ; load; *i0ptr75691
  %fptr75692 = inttoptr i64 %f75693 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75692(i64 %cont72600, i64 %arg73306, i64 %retprim72601); tail call
  ret void
}


define void @lam73612(i64 %env73613, i64 %cont72602, i64 %FrZ$lst, i64 %D0K$b) {
  %cmp75694 = icmp eq i64 %D0K$b, 15                                                 ; false?
  br i1 %cmp75694, label %else75696, label %then75695                                ; if

then75695:
  %arg73309 = add i64 0, 0                                                           ; quoted ()
  %cloptr75697 = inttoptr i64 %cont72602 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75698 = getelementptr inbounds i64, i64* %cloptr75697, i64 0                 ; &cloptr75697[0]
  %f75700 = load i64, i64* %i0ptr75698, align 8                                      ; load; *i0ptr75698
  %fptr75699 = inttoptr i64 %f75700 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75699(i64 %cont72602, i64 %arg73309, i64 %D0K$b)    ; tail call
  ret void

else75696:
  %retprim72603 = call i64 @prim_null_63(i64 %FrZ$lst)                               ; call prim_null_63
  %arg73313 = add i64 0, 0                                                           ; quoted ()
  %cloptr75701 = inttoptr i64 %cont72602 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75702 = getelementptr inbounds i64, i64* %cloptr75701, i64 0                 ; &cloptr75701[0]
  %f75704 = load i64, i64* %i0ptr75702, align 8                                      ; load; *i0ptr75702
  %fptr75703 = inttoptr i64 %f75704 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75703(i64 %cont72602, i64 %arg73313, i64 %retprim72603); tail call
  ret void
}


define void @lam73605(i64 %env73606, i64 %cont72606, i64 %NRn$_37foldr) {
  %envptr75705 = inttoptr i64 %env73606 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75706 = getelementptr inbounds i64, i64* %envptr75705, i64 2                ; &envptr75705[2]
  %CGi$_37map1 = load i64, i64* %envptr75706, align 8                                ; load; *envptr75706
  %envptr75707 = inttoptr i64 %env73606 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75708 = getelementptr inbounds i64, i64* %envptr75707, i64 1                ; &envptr75707[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75708, align 8                              ; load; *envptr75708
  %arg73316 = add i64 0, 0                                                           ; quoted ()
  %cloptr75709 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr75711 = getelementptr inbounds i64, i64* %cloptr75709, i64 1                  ; &eptr75711[1]
  %eptr75712 = getelementptr inbounds i64, i64* %cloptr75709, i64 2                  ; &eptr75712[2]
  %eptr75713 = getelementptr inbounds i64, i64* %cloptr75709, i64 3                  ; &eptr75713[3]
  store i64 %F0G$_37foldr1, i64* %eptr75711                                          ; *eptr75711 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr75712                                            ; *eptr75712 = %CGi$_37map1
  store i64 %NRn$_37foldr, i64* %eptr75713                                           ; *eptr75713 = %NRn$_37foldr
  %eptr75710 = getelementptr inbounds i64, i64* %cloptr75709, i64 0                  ; &cloptr75709[0]
  %f75714 = ptrtoint void(i64,i64)* @lam73602 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f75714, i64* %eptr75710                                                 ; store fptr
  %arg73315 = ptrtoint i64* %cloptr75709 to i64                                      ; closure cast; i64* -> i64
  %cloptr75715 = inttoptr i64 %cont72606 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75716 = getelementptr inbounds i64, i64* %cloptr75715, i64 0                 ; &cloptr75715[0]
  %f75718 = load i64, i64* %i0ptr75716, align 8                                      ; load; *i0ptr75716
  %fptr75717 = inttoptr i64 %f75718 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75717(i64 %cont72606, i64 %arg73316, i64 %arg73315) ; tail call
  ret void
}


define void @lam73602(i64 %env73603, i64 %PSv$args72608) {
  %envptr75719 = inttoptr i64 %env73603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75720 = getelementptr inbounds i64, i64* %envptr75719, i64 3                ; &envptr75719[3]
  %NRn$_37foldr = load i64, i64* %envptr75720, align 8                               ; load; *envptr75720
  %envptr75721 = inttoptr i64 %env73603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75722 = getelementptr inbounds i64, i64* %envptr75721, i64 2                ; &envptr75721[2]
  %CGi$_37map1 = load i64, i64* %envptr75722, align 8                                ; load; *envptr75722
  %envptr75723 = inttoptr i64 %env73603 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75724 = getelementptr inbounds i64, i64* %envptr75723, i64 1                ; &envptr75723[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75724, align 8                              ; load; *envptr75724
  %cont72607 = call i64 @prim_car(i64 %PSv$args72608)                                ; call prim_car
  %PSv$args = call i64 @prim_cdr(i64 %PSv$args72608)                                 ; call prim_cdr
  %g2F$f = call i64 @prim_car(i64 %PSv$args)                                         ; call prim_car
  %a72375 = call i64 @prim_cdr(i64 %PSv$args)                                        ; call prim_cdr
  %retprim72627 = call i64 @prim_car(i64 %a72375)                                    ; call prim_car
  %cloptr75725 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr75727 = getelementptr inbounds i64, i64* %cloptr75725, i64 1                  ; &eptr75727[1]
  %eptr75728 = getelementptr inbounds i64, i64* %cloptr75725, i64 2                  ; &eptr75728[2]
  %eptr75729 = getelementptr inbounds i64, i64* %cloptr75725, i64 3                  ; &eptr75729[3]
  %eptr75730 = getelementptr inbounds i64, i64* %cloptr75725, i64 4                  ; &eptr75730[4]
  %eptr75731 = getelementptr inbounds i64, i64* %cloptr75725, i64 5                  ; &eptr75731[5]
  %eptr75732 = getelementptr inbounds i64, i64* %cloptr75725, i64 6                  ; &eptr75732[6]
  store i64 %F0G$_37foldr1, i64* %eptr75727                                          ; *eptr75727 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr75728                                            ; *eptr75728 = %CGi$_37map1
  store i64 %NRn$_37foldr, i64* %eptr75729                                           ; *eptr75729 = %NRn$_37foldr
  store i64 %cont72607, i64* %eptr75730                                              ; *eptr75730 = %cont72607
  store i64 %PSv$args, i64* %eptr75731                                               ; *eptr75731 = %PSv$args
  store i64 %g2F$f, i64* %eptr75732                                                  ; *eptr75732 = %g2F$f
  %eptr75726 = getelementptr inbounds i64, i64* %cloptr75725, i64 0                  ; &cloptr75725[0]
  %f75733 = ptrtoint void(i64,i64,i64)* @lam73600 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75733, i64* %eptr75726                                                 ; store fptr
  %arg73325 = ptrtoint i64* %cloptr75725 to i64                                      ; closure cast; i64* -> i64
  %arg73324 = add i64 0, 0                                                           ; quoted ()
  %cloptr75734 = inttoptr i64 %arg73325 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75735 = getelementptr inbounds i64, i64* %cloptr75734, i64 0                 ; &cloptr75734[0]
  %f75737 = load i64, i64* %i0ptr75735, align 8                                      ; load; *i0ptr75735
  %fptr75736 = inttoptr i64 %f75737 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75736(i64 %arg73325, i64 %arg73324, i64 %retprim72627); tail call
  ret void
}


define void @lam73600(i64 %env73601, i64 %_9572609, i64 %OPA$acc) {
  %envptr75738 = inttoptr i64 %env73601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75739 = getelementptr inbounds i64, i64* %envptr75738, i64 6                ; &envptr75738[6]
  %g2F$f = load i64, i64* %envptr75739, align 8                                      ; load; *envptr75739
  %envptr75740 = inttoptr i64 %env73601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75741 = getelementptr inbounds i64, i64* %envptr75740, i64 5                ; &envptr75740[5]
  %PSv$args = load i64, i64* %envptr75741, align 8                                   ; load; *envptr75741
  %envptr75742 = inttoptr i64 %env73601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75743 = getelementptr inbounds i64, i64* %envptr75742, i64 4                ; &envptr75742[4]
  %cont72607 = load i64, i64* %envptr75743, align 8                                  ; load; *envptr75743
  %envptr75744 = inttoptr i64 %env73601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75745 = getelementptr inbounds i64, i64* %envptr75744, i64 3                ; &envptr75744[3]
  %NRn$_37foldr = load i64, i64* %envptr75745, align 8                               ; load; *envptr75745
  %envptr75746 = inttoptr i64 %env73601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75747 = getelementptr inbounds i64, i64* %envptr75746, i64 2                ; &envptr75746[2]
  %CGi$_37map1 = load i64, i64* %envptr75747, align 8                                ; load; *envptr75747
  %envptr75748 = inttoptr i64 %env73601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75749 = getelementptr inbounds i64, i64* %envptr75748, i64 1                ; &envptr75748[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75749, align 8                              ; load; *envptr75749
  %a72376 = call i64 @prim_cdr(i64 %PSv$args)                                        ; call prim_cdr
  %retprim72626 = call i64 @prim_cdr(i64 %a72376)                                    ; call prim_cdr
  %cloptr75750 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr75752 = getelementptr inbounds i64, i64* %cloptr75750, i64 1                  ; &eptr75752[1]
  %eptr75753 = getelementptr inbounds i64, i64* %cloptr75750, i64 2                  ; &eptr75753[2]
  %eptr75754 = getelementptr inbounds i64, i64* %cloptr75750, i64 3                  ; &eptr75754[3]
  %eptr75755 = getelementptr inbounds i64, i64* %cloptr75750, i64 4                  ; &eptr75755[4]
  %eptr75756 = getelementptr inbounds i64, i64* %cloptr75750, i64 5                  ; &eptr75756[5]
  %eptr75757 = getelementptr inbounds i64, i64* %cloptr75750, i64 6                  ; &eptr75757[6]
  store i64 %F0G$_37foldr1, i64* %eptr75752                                          ; *eptr75752 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr75753                                            ; *eptr75753 = %CGi$_37map1
  store i64 %NRn$_37foldr, i64* %eptr75754                                           ; *eptr75754 = %NRn$_37foldr
  store i64 %cont72607, i64* %eptr75755                                              ; *eptr75755 = %cont72607
  store i64 %OPA$acc, i64* %eptr75756                                                ; *eptr75756 = %OPA$acc
  store i64 %g2F$f, i64* %eptr75757                                                  ; *eptr75757 = %g2F$f
  %eptr75751 = getelementptr inbounds i64, i64* %cloptr75750, i64 0                  ; &cloptr75750[0]
  %f75758 = ptrtoint void(i64,i64,i64)* @lam73598 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75758, i64* %eptr75751                                                 ; store fptr
  %arg73330 = ptrtoint i64* %cloptr75750 to i64                                      ; closure cast; i64* -> i64
  %arg73329 = add i64 0, 0                                                           ; quoted ()
  %cloptr75759 = inttoptr i64 %arg73330 to i64*                                      ; closure/env cast; i64 -> i64*
  %i0ptr75760 = getelementptr inbounds i64, i64* %cloptr75759, i64 0                 ; &cloptr75759[0]
  %f75762 = load i64, i64* %i0ptr75760, align 8                                      ; load; *i0ptr75760
  %fptr75761 = inttoptr i64 %f75762 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75761(i64 %arg73330, i64 %arg73329, i64 %retprim72626); tail call
  ret void
}


define void @lam73598(i64 %env73599, i64 %_9572610, i64 %r0F$lsts) {
  %envptr75763 = inttoptr i64 %env73599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75764 = getelementptr inbounds i64, i64* %envptr75763, i64 6                ; &envptr75763[6]
  %g2F$f = load i64, i64* %envptr75764, align 8                                      ; load; *envptr75764
  %envptr75765 = inttoptr i64 %env73599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75766 = getelementptr inbounds i64, i64* %envptr75765, i64 5                ; &envptr75765[5]
  %OPA$acc = load i64, i64* %envptr75766, align 8                                    ; load; *envptr75766
  %envptr75767 = inttoptr i64 %env73599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75768 = getelementptr inbounds i64, i64* %envptr75767, i64 4                ; &envptr75767[4]
  %cont72607 = load i64, i64* %envptr75768, align 8                                  ; load; *envptr75768
  %envptr75769 = inttoptr i64 %env73599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75770 = getelementptr inbounds i64, i64* %envptr75769, i64 3                ; &envptr75769[3]
  %NRn$_37foldr = load i64, i64* %envptr75770, align 8                               ; load; *envptr75770
  %envptr75771 = inttoptr i64 %env73599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75772 = getelementptr inbounds i64, i64* %envptr75771, i64 2                ; &envptr75771[2]
  %CGi$_37map1 = load i64, i64* %envptr75772, align 8                                ; load; *envptr75772
  %envptr75773 = inttoptr i64 %env73599 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75774 = getelementptr inbounds i64, i64* %envptr75773, i64 1                ; &envptr75773[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75774, align 8                              ; load; *envptr75774
  %cloptr75775 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75777 = getelementptr inbounds i64, i64* %cloptr75775, i64 1                  ; &eptr75777[1]
  %eptr75778 = getelementptr inbounds i64, i64* %cloptr75775, i64 2                  ; &eptr75778[2]
  %eptr75779 = getelementptr inbounds i64, i64* %cloptr75775, i64 3                  ; &eptr75779[3]
  %eptr75780 = getelementptr inbounds i64, i64* %cloptr75775, i64 4                  ; &eptr75780[4]
  %eptr75781 = getelementptr inbounds i64, i64* %cloptr75775, i64 5                  ; &eptr75781[5]
  %eptr75782 = getelementptr inbounds i64, i64* %cloptr75775, i64 6                  ; &eptr75782[6]
  %eptr75783 = getelementptr inbounds i64, i64* %cloptr75775, i64 7                  ; &eptr75783[7]
  store i64 %F0G$_37foldr1, i64* %eptr75777                                          ; *eptr75777 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr75778                                            ; *eptr75778 = %CGi$_37map1
  store i64 %NRn$_37foldr, i64* %eptr75779                                           ; *eptr75779 = %NRn$_37foldr
  store i64 %cont72607, i64* %eptr75780                                              ; *eptr75780 = %cont72607
  store i64 %OPA$acc, i64* %eptr75781                                                ; *eptr75781 = %OPA$acc
  store i64 %g2F$f, i64* %eptr75782                                                  ; *eptr75782 = %g2F$f
  store i64 %r0F$lsts, i64* %eptr75783                                               ; *eptr75783 = %r0F$lsts
  %eptr75776 = getelementptr inbounds i64, i64* %cloptr75775, i64 0                  ; &cloptr75775[0]
  %f75784 = ptrtoint void(i64,i64,i64)* @lam73596 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75784, i64* %eptr75776                                                 ; store fptr
  %arg73334 = ptrtoint i64* %cloptr75775 to i64                                      ; closure cast; i64* -> i64
  %cloptr75785 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75786 = getelementptr inbounds i64, i64* %cloptr75785, i64 0                  ; &cloptr75785[0]
  %f75787 = ptrtoint void(i64,i64,i64,i64)* @lam73575 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f75787, i64* %eptr75786                                                 ; store fptr
  %arg73333 = ptrtoint i64* %cloptr75785 to i64                                      ; closure cast; i64* -> i64
  %arg73332 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr75788 = inttoptr i64 %F0G$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr75789 = getelementptr inbounds i64, i64* %cloptr75788, i64 0                 ; &cloptr75788[0]
  %f75791 = load i64, i64* %i0ptr75789, align 8                                      ; load; *i0ptr75789
  %fptr75790 = inttoptr i64 %f75791 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75790(i64 %F0G$_37foldr1, i64 %arg73334, i64 %arg73333, i64 %arg73332, i64 %r0F$lsts); tail call
  ret void
}


define void @lam73596(i64 %env73597, i64 %_9572611, i64 %a72377) {
  %envptr75792 = inttoptr i64 %env73597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75793 = getelementptr inbounds i64, i64* %envptr75792, i64 7                ; &envptr75792[7]
  %r0F$lsts = load i64, i64* %envptr75793, align 8                                   ; load; *envptr75793
  %envptr75794 = inttoptr i64 %env73597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75795 = getelementptr inbounds i64, i64* %envptr75794, i64 6                ; &envptr75794[6]
  %g2F$f = load i64, i64* %envptr75795, align 8                                      ; load; *envptr75795
  %envptr75796 = inttoptr i64 %env73597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75797 = getelementptr inbounds i64, i64* %envptr75796, i64 5                ; &envptr75796[5]
  %OPA$acc = load i64, i64* %envptr75797, align 8                                    ; load; *envptr75797
  %envptr75798 = inttoptr i64 %env73597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75799 = getelementptr inbounds i64, i64* %envptr75798, i64 4                ; &envptr75798[4]
  %cont72607 = load i64, i64* %envptr75799, align 8                                  ; load; *envptr75799
  %envptr75800 = inttoptr i64 %env73597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75801 = getelementptr inbounds i64, i64* %envptr75800, i64 3                ; &envptr75800[3]
  %NRn$_37foldr = load i64, i64* %envptr75801, align 8                               ; load; *envptr75801
  %envptr75802 = inttoptr i64 %env73597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75803 = getelementptr inbounds i64, i64* %envptr75802, i64 2                ; &envptr75802[2]
  %CGi$_37map1 = load i64, i64* %envptr75803, align 8                                ; load; *envptr75803
  %envptr75804 = inttoptr i64 %env73597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75805 = getelementptr inbounds i64, i64* %envptr75804, i64 1                ; &envptr75804[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75805, align 8                              ; load; *envptr75805
  %cmp75806 = icmp eq i64 %a72377, 15                                                ; false?
  br i1 %cmp75806, label %else75808, label %then75807                                ; if

then75807:
  %arg73337 = add i64 0, 0                                                           ; quoted ()
  %cloptr75809 = inttoptr i64 %cont72607 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75810 = getelementptr inbounds i64, i64* %cloptr75809, i64 0                 ; &cloptr75809[0]
  %f75812 = load i64, i64* %i0ptr75810, align 8                                      ; load; *i0ptr75810
  %fptr75811 = inttoptr i64 %f75812 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75811(i64 %cont72607, i64 %arg73337, i64 %OPA$acc)  ; tail call
  ret void

else75808:
  %cloptr75813 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr75815 = getelementptr inbounds i64, i64* %cloptr75813, i64 1                  ; &eptr75815[1]
  %eptr75816 = getelementptr inbounds i64, i64* %cloptr75813, i64 2                  ; &eptr75816[2]
  %eptr75817 = getelementptr inbounds i64, i64* %cloptr75813, i64 3                  ; &eptr75817[3]
  %eptr75818 = getelementptr inbounds i64, i64* %cloptr75813, i64 4                  ; &eptr75818[4]
  %eptr75819 = getelementptr inbounds i64, i64* %cloptr75813, i64 5                  ; &eptr75819[5]
  %eptr75820 = getelementptr inbounds i64, i64* %cloptr75813, i64 6                  ; &eptr75820[6]
  %eptr75821 = getelementptr inbounds i64, i64* %cloptr75813, i64 7                  ; &eptr75821[7]
  store i64 %F0G$_37foldr1, i64* %eptr75815                                          ; *eptr75815 = %F0G$_37foldr1
  store i64 %CGi$_37map1, i64* %eptr75816                                            ; *eptr75816 = %CGi$_37map1
  store i64 %NRn$_37foldr, i64* %eptr75817                                           ; *eptr75817 = %NRn$_37foldr
  store i64 %cont72607, i64* %eptr75818                                              ; *eptr75818 = %cont72607
  store i64 %OPA$acc, i64* %eptr75819                                                ; *eptr75819 = %OPA$acc
  store i64 %g2F$f, i64* %eptr75820                                                  ; *eptr75820 = %g2F$f
  store i64 %r0F$lsts, i64* %eptr75821                                               ; *eptr75821 = %r0F$lsts
  %eptr75814 = getelementptr inbounds i64, i64* %cloptr75813, i64 0                  ; &cloptr75813[0]
  %f75822 = ptrtoint void(i64,i64,i64)* @lam73594 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75822, i64* %eptr75814                                                 ; store fptr
  %arg73341 = ptrtoint i64* %cloptr75813 to i64                                      ; closure cast; i64* -> i64
  %cloptr75823 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75824 = getelementptr inbounds i64, i64* %cloptr75823, i64 0                  ; &cloptr75823[0]
  %f75825 = ptrtoint void(i64,i64,i64)* @lam73579 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75825, i64* %eptr75824                                                 ; store fptr
  %arg73340 = ptrtoint i64* %cloptr75823 to i64                                      ; closure cast; i64* -> i64
  %cloptr75826 = inttoptr i64 %CGi$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr75827 = getelementptr inbounds i64, i64* %cloptr75826, i64 0                 ; &cloptr75826[0]
  %f75829 = load i64, i64* %i0ptr75827, align 8                                      ; load; *i0ptr75827
  %fptr75828 = inttoptr i64 %f75829 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75828(i64 %CGi$_37map1, i64 %arg73341, i64 %arg73340, i64 %r0F$lsts); tail call
  ret void
}


define void @lam73594(i64 %env73595, i64 %_9572612, i64 %fDH$lsts_43) {
  %envptr75830 = inttoptr i64 %env73595 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75831 = getelementptr inbounds i64, i64* %envptr75830, i64 7                ; &envptr75830[7]
  %r0F$lsts = load i64, i64* %envptr75831, align 8                                   ; load; *envptr75831
  %envptr75832 = inttoptr i64 %env73595 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75833 = getelementptr inbounds i64, i64* %envptr75832, i64 6                ; &envptr75832[6]
  %g2F$f = load i64, i64* %envptr75833, align 8                                      ; load; *envptr75833
  %envptr75834 = inttoptr i64 %env73595 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75835 = getelementptr inbounds i64, i64* %envptr75834, i64 5                ; &envptr75834[5]
  %OPA$acc = load i64, i64* %envptr75835, align 8                                    ; load; *envptr75835
  %envptr75836 = inttoptr i64 %env73595 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75837 = getelementptr inbounds i64, i64* %envptr75836, i64 4                ; &envptr75836[4]
  %cont72607 = load i64, i64* %envptr75837, align 8                                  ; load; *envptr75837
  %envptr75838 = inttoptr i64 %env73595 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75839 = getelementptr inbounds i64, i64* %envptr75838, i64 3                ; &envptr75838[3]
  %NRn$_37foldr = load i64, i64* %envptr75839, align 8                               ; load; *envptr75839
  %envptr75840 = inttoptr i64 %env73595 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75841 = getelementptr inbounds i64, i64* %envptr75840, i64 2                ; &envptr75840[2]
  %CGi$_37map1 = load i64, i64* %envptr75841, align 8                                ; load; *envptr75841
  %envptr75842 = inttoptr i64 %env73595 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75843 = getelementptr inbounds i64, i64* %envptr75842, i64 1                ; &envptr75842[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75843, align 8                              ; load; *envptr75843
  %cloptr75844 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr75846 = getelementptr inbounds i64, i64* %cloptr75844, i64 1                  ; &eptr75846[1]
  %eptr75847 = getelementptr inbounds i64, i64* %cloptr75844, i64 2                  ; &eptr75847[2]
  %eptr75848 = getelementptr inbounds i64, i64* %cloptr75844, i64 3                  ; &eptr75848[3]
  %eptr75849 = getelementptr inbounds i64, i64* %cloptr75844, i64 4                  ; &eptr75849[4]
  %eptr75850 = getelementptr inbounds i64, i64* %cloptr75844, i64 5                  ; &eptr75850[5]
  %eptr75851 = getelementptr inbounds i64, i64* %cloptr75844, i64 6                  ; &eptr75851[6]
  store i64 %F0G$_37foldr1, i64* %eptr75846                                          ; *eptr75846 = %F0G$_37foldr1
  store i64 %fDH$lsts_43, i64* %eptr75847                                            ; *eptr75847 = %fDH$lsts_43
  store i64 %NRn$_37foldr, i64* %eptr75848                                           ; *eptr75848 = %NRn$_37foldr
  store i64 %cont72607, i64* %eptr75849                                              ; *eptr75849 = %cont72607
  store i64 %OPA$acc, i64* %eptr75850                                                ; *eptr75850 = %OPA$acc
  store i64 %g2F$f, i64* %eptr75851                                                  ; *eptr75851 = %g2F$f
  %eptr75845 = getelementptr inbounds i64, i64* %cloptr75844, i64 0                  ; &cloptr75844[0]
  %f75852 = ptrtoint void(i64,i64,i64)* @lam73592 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75852, i64* %eptr75845                                                 ; store fptr
  %arg73345 = ptrtoint i64* %cloptr75844 to i64                                      ; closure cast; i64* -> i64
  %cloptr75853 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75854 = getelementptr inbounds i64, i64* %cloptr75853, i64 0                  ; &cloptr75853[0]
  %f75855 = ptrtoint void(i64,i64,i64)* @lam73582 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75855, i64* %eptr75854                                                 ; store fptr
  %arg73344 = ptrtoint i64* %cloptr75853 to i64                                      ; closure cast; i64* -> i64
  %cloptr75856 = inttoptr i64 %CGi$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr75857 = getelementptr inbounds i64, i64* %cloptr75856, i64 0                 ; &cloptr75856[0]
  %f75859 = load i64, i64* %i0ptr75857, align 8                                      ; load; *i0ptr75857
  %fptr75858 = inttoptr i64 %f75859 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75858(i64 %CGi$_37map1, i64 %arg73345, i64 %arg73344, i64 %r0F$lsts); tail call
  ret void
}


define void @lam73592(i64 %env73593, i64 %_9572613, i64 %H4j$vs) {
  %envptr75860 = inttoptr i64 %env73593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75861 = getelementptr inbounds i64, i64* %envptr75860, i64 6                ; &envptr75860[6]
  %g2F$f = load i64, i64* %envptr75861, align 8                                      ; load; *envptr75861
  %envptr75862 = inttoptr i64 %env73593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75863 = getelementptr inbounds i64, i64* %envptr75862, i64 5                ; &envptr75862[5]
  %OPA$acc = load i64, i64* %envptr75863, align 8                                    ; load; *envptr75863
  %envptr75864 = inttoptr i64 %env73593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75865 = getelementptr inbounds i64, i64* %envptr75864, i64 4                ; &envptr75864[4]
  %cont72607 = load i64, i64* %envptr75865, align 8                                  ; load; *envptr75865
  %envptr75866 = inttoptr i64 %env73593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75867 = getelementptr inbounds i64, i64* %envptr75866, i64 3                ; &envptr75866[3]
  %NRn$_37foldr = load i64, i64* %envptr75867, align 8                               ; load; *envptr75867
  %envptr75868 = inttoptr i64 %env73593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75869 = getelementptr inbounds i64, i64* %envptr75868, i64 2                ; &envptr75868[2]
  %fDH$lsts_43 = load i64, i64* %envptr75869, align 8                                ; load; *envptr75869
  %envptr75870 = inttoptr i64 %env73593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75871 = getelementptr inbounds i64, i64* %envptr75870, i64 1                ; &envptr75870[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75871, align 8                              ; load; *envptr75871
  %a72378 = call i64 @prim_cons(i64 %OPA$acc, i64 %fDH$lsts_43)                      ; call prim_cons
  %a72379 = call i64 @prim_cons(i64 %g2F$f, i64 %a72378)                             ; call prim_cons
  %cloptr75872 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75874 = getelementptr inbounds i64, i64* %cloptr75872, i64 1                  ; &eptr75874[1]
  %eptr75875 = getelementptr inbounds i64, i64* %cloptr75872, i64 2                  ; &eptr75875[2]
  %eptr75876 = getelementptr inbounds i64, i64* %cloptr75872, i64 3                  ; &eptr75876[3]
  %eptr75877 = getelementptr inbounds i64, i64* %cloptr75872, i64 4                  ; &eptr75877[4]
  store i64 %F0G$_37foldr1, i64* %eptr75874                                          ; *eptr75874 = %F0G$_37foldr1
  store i64 %H4j$vs, i64* %eptr75875                                                 ; *eptr75875 = %H4j$vs
  store i64 %cont72607, i64* %eptr75876                                              ; *eptr75876 = %cont72607
  store i64 %g2F$f, i64* %eptr75877                                                  ; *eptr75877 = %g2F$f
  %eptr75873 = getelementptr inbounds i64, i64* %cloptr75872, i64 0                  ; &cloptr75872[0]
  %f75878 = ptrtoint void(i64,i64,i64)* @lam73590 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75878, i64* %eptr75873                                                 ; store fptr
  %arg73352 = ptrtoint i64* %cloptr75872 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst72619 = call i64 @prim_cons(i64 %arg73352, i64 %a72379)                  ; call prim_cons
  %cloptr75879 = inttoptr i64 %NRn$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  %i0ptr75880 = getelementptr inbounds i64, i64* %cloptr75879, i64 0                 ; &cloptr75879[0]
  %f75882 = load i64, i64* %i0ptr75880, align 8                                      ; load; *i0ptr75880
  %fptr75881 = inttoptr i64 %f75882 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75881(i64 %NRn$_37foldr, i64 %cps_45lst72619)       ; tail call
  ret void
}


define void @lam73590(i64 %env73591, i64 %_9572614, i64 %a72380) {
  %envptr75883 = inttoptr i64 %env73591 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75884 = getelementptr inbounds i64, i64* %envptr75883, i64 4                ; &envptr75883[4]
  %g2F$f = load i64, i64* %envptr75884, align 8                                      ; load; *envptr75884
  %envptr75885 = inttoptr i64 %env73591 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75886 = getelementptr inbounds i64, i64* %envptr75885, i64 3                ; &envptr75885[3]
  %cont72607 = load i64, i64* %envptr75886, align 8                                  ; load; *envptr75886
  %envptr75887 = inttoptr i64 %env73591 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75888 = getelementptr inbounds i64, i64* %envptr75887, i64 2                ; &envptr75887[2]
  %H4j$vs = load i64, i64* %envptr75888, align 8                                     ; load; *envptr75888
  %envptr75889 = inttoptr i64 %env73591 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75890 = getelementptr inbounds i64, i64* %envptr75889, i64 1                ; &envptr75889[1]
  %F0G$_37foldr1 = load i64, i64* %envptr75890, align 8                              ; load; *envptr75890
  %arg73353 = add i64 0, 0                                                           ; quoted ()
  %a72381 = call i64 @prim_cons(i64 %a72380, i64 %arg73353)                          ; call prim_cons
  %cloptr75891 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr75893 = getelementptr inbounds i64, i64* %cloptr75891, i64 1                  ; &eptr75893[1]
  %eptr75894 = getelementptr inbounds i64, i64* %cloptr75891, i64 2                  ; &eptr75894[2]
  store i64 %cont72607, i64* %eptr75893                                              ; *eptr75893 = %cont72607
  store i64 %g2F$f, i64* %eptr75894                                                  ; *eptr75894 = %g2F$f
  %eptr75892 = getelementptr inbounds i64, i64* %cloptr75891, i64 0                  ; &cloptr75891[0]
  %f75895 = ptrtoint void(i64,i64,i64)* @lam73587 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75895, i64* %eptr75892                                                 ; store fptr
  %arg73358 = ptrtoint i64* %cloptr75891 to i64                                      ; closure cast; i64* -> i64
  %cloptr75896 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr75897 = getelementptr inbounds i64, i64* %cloptr75896, i64 0                  ; &cloptr75896[0]
  %f75898 = ptrtoint void(i64,i64,i64,i64)* @lam73585 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f75898, i64* %eptr75897                                                 ; store fptr
  %arg73357 = ptrtoint i64* %cloptr75896 to i64                                      ; closure cast; i64* -> i64
  %cloptr75899 = inttoptr i64 %F0G$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr75900 = getelementptr inbounds i64, i64* %cloptr75899, i64 0                 ; &cloptr75899[0]
  %f75902 = load i64, i64* %i0ptr75900, align 8                                      ; load; *i0ptr75900
  %fptr75901 = inttoptr i64 %f75902 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75901(i64 %F0G$_37foldr1, i64 %arg73358, i64 %arg73357, i64 %a72381, i64 %H4j$vs); tail call
  ret void
}


define void @lam73587(i64 %env73588, i64 %_9572615, i64 %a72382) {
  %envptr75903 = inttoptr i64 %env73588 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75904 = getelementptr inbounds i64, i64* %envptr75903, i64 2                ; &envptr75903[2]
  %g2F$f = load i64, i64* %envptr75904, align 8                                      ; load; *envptr75904
  %envptr75905 = inttoptr i64 %env73588 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75906 = getelementptr inbounds i64, i64* %envptr75905, i64 1                ; &envptr75905[1]
  %cont72607 = load i64, i64* %envptr75906, align 8                                  ; load; *envptr75906
  %cps_45lst72616 = call i64 @prim_cons(i64 %cont72607, i64 %a72382)                 ; call prim_cons
  %cloptr75907 = inttoptr i64 %g2F$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr75908 = getelementptr inbounds i64, i64* %cloptr75907, i64 0                 ; &cloptr75907[0]
  %f75910 = load i64, i64* %i0ptr75908, align 8                                      ; load; *i0ptr75908
  %fptr75909 = inttoptr i64 %f75910 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75909(i64 %g2F$f, i64 %cps_45lst72616)              ; tail call
  ret void
}


define void @lam73585(i64 %env73586, i64 %cont72617, i64 %Cx4$a, i64 %NPD$b) {
  %retprim72618 = call i64 @prim_cons(i64 %Cx4$a, i64 %NPD$b)                        ; call prim_cons
  %arg73365 = add i64 0, 0                                                           ; quoted ()
  %cloptr75911 = inttoptr i64 %cont72617 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75912 = getelementptr inbounds i64, i64* %cloptr75911, i64 0                 ; &cloptr75911[0]
  %f75914 = load i64, i64* %i0ptr75912, align 8                                      ; load; *i0ptr75912
  %fptr75913 = inttoptr i64 %f75914 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75913(i64 %cont72617, i64 %arg73365, i64 %retprim72618); tail call
  ret void
}


define void @lam73582(i64 %env73583, i64 %cont72620, i64 %YNp$x) {
  %retprim72621 = call i64 @prim_car(i64 %YNp$x)                                     ; call prim_car
  %arg73369 = add i64 0, 0                                                           ; quoted ()
  %cloptr75915 = inttoptr i64 %cont72620 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75916 = getelementptr inbounds i64, i64* %cloptr75915, i64 0                 ; &cloptr75915[0]
  %f75918 = load i64, i64* %i0ptr75916, align 8                                      ; load; *i0ptr75916
  %fptr75917 = inttoptr i64 %f75918 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75917(i64 %cont72620, i64 %arg73369, i64 %retprim72621); tail call
  ret void
}


define void @lam73579(i64 %env73580, i64 %cont72622, i64 %xHP$x) {
  %retprim72623 = call i64 @prim_cdr(i64 %xHP$x)                                     ; call prim_cdr
  %arg73373 = add i64 0, 0                                                           ; quoted ()
  %cloptr75919 = inttoptr i64 %cont72622 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75920 = getelementptr inbounds i64, i64* %cloptr75919, i64 0                 ; &cloptr75919[0]
  %f75922 = load i64, i64* %i0ptr75920, align 8                                      ; load; *i0ptr75920
  %fptr75921 = inttoptr i64 %f75922 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75921(i64 %cont72622, i64 %arg73373, i64 %retprim72623); tail call
  ret void
}


define void @lam73575(i64 %env73576, i64 %cont72624, i64 %U1C$lst, i64 %tf4$b) {
  %cmp75923 = icmp eq i64 %tf4$b, 15                                                 ; false?
  br i1 %cmp75923, label %else75925, label %then75924                                ; if

then75924:
  %arg73376 = add i64 0, 0                                                           ; quoted ()
  %cloptr75926 = inttoptr i64 %cont72624 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75927 = getelementptr inbounds i64, i64* %cloptr75926, i64 0                 ; &cloptr75926[0]
  %f75929 = load i64, i64* %i0ptr75927, align 8                                      ; load; *i0ptr75927
  %fptr75928 = inttoptr i64 %f75929 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75928(i64 %cont72624, i64 %arg73376, i64 %tf4$b)    ; tail call
  ret void

else75925:
  %retprim72625 = call i64 @prim_null_63(i64 %U1C$lst)                               ; call prim_null_63
  %arg73380 = add i64 0, 0                                                           ; quoted ()
  %cloptr75930 = inttoptr i64 %cont72624 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75931 = getelementptr inbounds i64, i64* %cloptr75930, i64 0                 ; &cloptr75930[0]
  %f75933 = load i64, i64* %i0ptr75931, align 8                                      ; load; *i0ptr75931
  %fptr75932 = inttoptr i64 %f75933 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75932(i64 %cont72624, i64 %arg73380, i64 %retprim72625); tail call
  ret void
}


define void @lam73568(i64 %env73569, i64 %cont72628, i64 %DG3$_37foldl1) {
  %arg73383 = add i64 0, 0                                                           ; quoted ()
  %cloptr75934 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr75936 = getelementptr inbounds i64, i64* %cloptr75934, i64 1                  ; &eptr75936[1]
  store i64 %DG3$_37foldl1, i64* %eptr75936                                          ; *eptr75936 = %DG3$_37foldl1
  %eptr75935 = getelementptr inbounds i64, i64* %cloptr75934, i64 0                  ; &cloptr75934[0]
  %f75937 = ptrtoint void(i64,i64,i64,i64,i64)* @lam73565 to i64                     ; fptr cast; i64(...)* -> i64
  store i64 %f75937, i64* %eptr75935                                                 ; store fptr
  %arg73382 = ptrtoint i64* %cloptr75934 to i64                                      ; closure cast; i64* -> i64
  %cloptr75938 = inttoptr i64 %cont72628 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75939 = getelementptr inbounds i64, i64* %cloptr75938, i64 0                 ; &cloptr75938[0]
  %f75941 = load i64, i64* %i0ptr75939, align 8                                      ; load; *i0ptr75939
  %fptr75940 = inttoptr i64 %f75941 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75940(i64 %cont72628, i64 %arg73383, i64 %arg73382) ; tail call
  ret void
}


define void @lam73565(i64 %env73566, i64 %cont72629, i64 %hj6$f, i64 %Aoi$acc, i64 %Z1x$lst) {
  %envptr75942 = inttoptr i64 %env73566 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75943 = getelementptr inbounds i64, i64* %envptr75942, i64 1                ; &envptr75942[1]
  %DG3$_37foldl1 = load i64, i64* %envptr75943, align 8                              ; load; *envptr75943
  %a72369 = call i64 @prim_null_63(i64 %Z1x$lst)                                     ; call prim_null_63
  %cmp75944 = icmp eq i64 %a72369, 15                                                ; false?
  br i1 %cmp75944, label %else75946, label %then75945                                ; if

then75945:
  %arg73387 = add i64 0, 0                                                           ; quoted ()
  %cloptr75947 = inttoptr i64 %cont72629 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75948 = getelementptr inbounds i64, i64* %cloptr75947, i64 0                 ; &cloptr75947[0]
  %f75950 = load i64, i64* %i0ptr75948, align 8                                      ; load; *i0ptr75948
  %fptr75949 = inttoptr i64 %f75950 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75949(i64 %cont72629, i64 %arg73387, i64 %Aoi$acc)  ; tail call
  ret void

else75946:
  %a72370 = call i64 @prim_car(i64 %Z1x$lst)                                         ; call prim_car
  %cloptr75951 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr75953 = getelementptr inbounds i64, i64* %cloptr75951, i64 1                  ; &eptr75953[1]
  %eptr75954 = getelementptr inbounds i64, i64* %cloptr75951, i64 2                  ; &eptr75954[2]
  %eptr75955 = getelementptr inbounds i64, i64* %cloptr75951, i64 3                  ; &eptr75955[3]
  %eptr75956 = getelementptr inbounds i64, i64* %cloptr75951, i64 4                  ; &eptr75956[4]
  store i64 %Z1x$lst, i64* %eptr75953                                                ; *eptr75953 = %Z1x$lst
  store i64 %cont72629, i64* %eptr75954                                              ; *eptr75954 = %cont72629
  store i64 %hj6$f, i64* %eptr75955                                                  ; *eptr75955 = %hj6$f
  store i64 %DG3$_37foldl1, i64* %eptr75956                                          ; *eptr75956 = %DG3$_37foldl1
  %eptr75952 = getelementptr inbounds i64, i64* %cloptr75951, i64 0                  ; &cloptr75951[0]
  %f75957 = ptrtoint void(i64,i64,i64)* @lam73563 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75957, i64* %eptr75952                                                 ; store fptr
  %arg73392 = ptrtoint i64* %cloptr75951 to i64                                      ; closure cast; i64* -> i64
  %cloptr75958 = inttoptr i64 %hj6$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr75959 = getelementptr inbounds i64, i64* %cloptr75958, i64 0                 ; &cloptr75958[0]
  %f75961 = load i64, i64* %i0ptr75959, align 8                                      ; load; *i0ptr75959
  %fptr75960 = inttoptr i64 %f75961 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75960(i64 %hj6$f, i64 %arg73392, i64 %a72370, i64 %Aoi$acc); tail call
  ret void
}


define void @lam73563(i64 %env73564, i64 %_9572630, i64 %a72371) {
  %envptr75962 = inttoptr i64 %env73564 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75963 = getelementptr inbounds i64, i64* %envptr75962, i64 4                ; &envptr75962[4]
  %DG3$_37foldl1 = load i64, i64* %envptr75963, align 8                              ; load; *envptr75963
  %envptr75964 = inttoptr i64 %env73564 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75965 = getelementptr inbounds i64, i64* %envptr75964, i64 3                ; &envptr75964[3]
  %hj6$f = load i64, i64* %envptr75965, align 8                                      ; load; *envptr75965
  %envptr75966 = inttoptr i64 %env73564 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75967 = getelementptr inbounds i64, i64* %envptr75966, i64 2                ; &envptr75966[2]
  %cont72629 = load i64, i64* %envptr75967, align 8                                  ; load; *envptr75967
  %envptr75968 = inttoptr i64 %env73564 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75969 = getelementptr inbounds i64, i64* %envptr75968, i64 1                ; &envptr75968[1]
  %Z1x$lst = load i64, i64* %envptr75969, align 8                                    ; load; *envptr75969
  %a72372 = call i64 @prim_cdr(i64 %Z1x$lst)                                         ; call prim_cdr
  %cloptr75970 = inttoptr i64 %DG3$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr75971 = getelementptr inbounds i64, i64* %cloptr75970, i64 0                 ; &cloptr75970[0]
  %f75973 = load i64, i64* %i0ptr75971, align 8                                      ; load; *i0ptr75971
  %fptr75972 = inttoptr i64 %f75973 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75972(i64 %DG3$_37foldl1, i64 %cont72629, i64 %hj6$f, i64 %a72371, i64 %a72372); tail call
  ret void
}


define void @lam73560(i64 %env73561, i64 %cont72631, i64 %GWM$_37length) {
  %arg73401 = add i64 0, 0                                                           ; quoted ()
  %cloptr75974 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr75976 = getelementptr inbounds i64, i64* %cloptr75974, i64 1                  ; &eptr75976[1]
  store i64 %GWM$_37length, i64* %eptr75976                                          ; *eptr75976 = %GWM$_37length
  %eptr75975 = getelementptr inbounds i64, i64* %cloptr75974, i64 0                  ; &cloptr75974[0]
  %f75977 = ptrtoint void(i64,i64,i64)* @lam73557 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75977, i64* %eptr75975                                                 ; store fptr
  %arg73400 = ptrtoint i64* %cloptr75974 to i64                                      ; closure cast; i64* -> i64
  %cloptr75978 = inttoptr i64 %cont72631 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75979 = getelementptr inbounds i64, i64* %cloptr75978, i64 0                 ; &cloptr75978[0]
  %f75981 = load i64, i64* %i0ptr75979, align 8                                      ; load; *i0ptr75979
  %fptr75980 = inttoptr i64 %f75981 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75980(i64 %cont72631, i64 %arg73401, i64 %arg73400) ; tail call
  ret void
}


define void @lam73557(i64 %env73558, i64 %cont72632, i64 %RT5$lst) {
  %envptr75982 = inttoptr i64 %env73558 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr75983 = getelementptr inbounds i64, i64* %envptr75982, i64 1                ; &envptr75982[1]
  %GWM$_37length = load i64, i64* %envptr75983, align 8                              ; load; *envptr75983
  %a72366 = call i64 @prim_null_63(i64 %RT5$lst)                                     ; call prim_null_63
  %cmp75984 = icmp eq i64 %a72366, 15                                                ; false?
  br i1 %cmp75984, label %else75986, label %then75985                                ; if

then75985:
  %arg73405 = add i64 0, 0                                                           ; quoted ()
  %arg73404 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr75987 = inttoptr i64 %cont72632 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr75988 = getelementptr inbounds i64, i64* %cloptr75987, i64 0                 ; &cloptr75987[0]
  %f75990 = load i64, i64* %i0ptr75988, align 8                                      ; load; *i0ptr75988
  %fptr75989 = inttoptr i64 %f75990 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75989(i64 %cont72632, i64 %arg73405, i64 %arg73404) ; tail call
  ret void

else75986:
  %a72367 = call i64 @prim_cdr(i64 %RT5$lst)                                         ; call prim_cdr
  %cloptr75991 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr75993 = getelementptr inbounds i64, i64* %cloptr75991, i64 1                  ; &eptr75993[1]
  store i64 %cont72632, i64* %eptr75993                                              ; *eptr75993 = %cont72632
  %eptr75992 = getelementptr inbounds i64, i64* %cloptr75991, i64 0                  ; &cloptr75991[0]
  %f75994 = ptrtoint void(i64,i64,i64)* @lam73555 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f75994, i64* %eptr75992                                                 ; store fptr
  %arg73409 = ptrtoint i64* %cloptr75991 to i64                                      ; closure cast; i64* -> i64
  %cloptr75995 = inttoptr i64 %GWM$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr75996 = getelementptr inbounds i64, i64* %cloptr75995, i64 0                 ; &cloptr75995[0]
  %f75998 = load i64, i64* %i0ptr75996, align 8                                      ; load; *i0ptr75996
  %fptr75997 = inttoptr i64 %f75998 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr75997(i64 %GWM$_37length, i64 %arg73409, i64 %a72367); tail call
  ret void
}


define void @lam73555(i64 %env73556, i64 %_9572633, i64 %a72368) {
  %envptr75999 = inttoptr i64 %env73556 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76000 = getelementptr inbounds i64, i64* %envptr75999, i64 1                ; &envptr75999[1]
  %cont72632 = load i64, i64* %envptr76000, align 8                                  ; load; *envptr76000
  %arg73412 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim72634 = call i64 @prim__43(i64 %arg73412, i64 %a72368)                     ; call prim__43
  %arg73414 = add i64 0, 0                                                           ; quoted ()
  %cloptr76001 = inttoptr i64 %cont72632 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76002 = getelementptr inbounds i64, i64* %cloptr76001, i64 0                 ; &cloptr76001[0]
  %f76004 = load i64, i64* %i0ptr76002, align 8                                      ; load; *i0ptr76002
  %fptr76003 = inttoptr i64 %f76004 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76003(i64 %cont72632, i64 %arg73414, i64 %retprim72634); tail call
  ret void
}


define void @lam73549(i64 %env73550, i64 %cont72635, i64 %BLw$_37take) {
  %arg73417 = add i64 0, 0                                                           ; quoted ()
  %cloptr76005 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr76007 = getelementptr inbounds i64, i64* %cloptr76005, i64 1                  ; &eptr76007[1]
  store i64 %BLw$_37take, i64* %eptr76007                                            ; *eptr76007 = %BLw$_37take
  %eptr76006 = getelementptr inbounds i64, i64* %cloptr76005, i64 0                  ; &cloptr76005[0]
  %f76008 = ptrtoint void(i64,i64,i64,i64)* @lam73546 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f76008, i64* %eptr76006                                                 ; store fptr
  %arg73416 = ptrtoint i64* %cloptr76005 to i64                                      ; closure cast; i64* -> i64
  %cloptr76009 = inttoptr i64 %cont72635 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76010 = getelementptr inbounds i64, i64* %cloptr76009, i64 0                 ; &cloptr76009[0]
  %f76012 = load i64, i64* %i0ptr76010, align 8                                      ; load; *i0ptr76010
  %fptr76011 = inttoptr i64 %f76012 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76011(i64 %cont72635, i64 %arg73417, i64 %arg73416) ; tail call
  ret void
}


define void @lam73546(i64 %env73547, i64 %cont72636, i64 %Qai$lst, i64 %pl3$n) {
  %envptr76013 = inttoptr i64 %env73547 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76014 = getelementptr inbounds i64, i64* %envptr76013, i64 1                ; &envptr76013[1]
  %BLw$_37take = load i64, i64* %envptr76014, align 8                                ; load; *envptr76014
  %arg73419 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a72360 = call i64 @prim__61(i64 %pl3$n, i64 %arg73419)                            ; call prim__61
  %cmp76015 = icmp eq i64 %a72360, 15                                                ; false?
  br i1 %cmp76015, label %else76017, label %then76016                                ; if

then76016:
  %arg73422 = add i64 0, 0                                                           ; quoted ()
  %arg73421 = add i64 0, 0                                                           ; quoted ()
  %cloptr76018 = inttoptr i64 %cont72636 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76019 = getelementptr inbounds i64, i64* %cloptr76018, i64 0                 ; &cloptr76018[0]
  %f76021 = load i64, i64* %i0ptr76019, align 8                                      ; load; *i0ptr76019
  %fptr76020 = inttoptr i64 %f76021 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76020(i64 %cont72636, i64 %arg73422, i64 %arg73421) ; tail call
  ret void

else76017:
  %a72361 = call i64 @prim_null_63(i64 %Qai$lst)                                     ; call prim_null_63
  %cmp76022 = icmp eq i64 %a72361, 15                                                ; false?
  br i1 %cmp76022, label %else76024, label %then76023                                ; if

then76023:
  %arg73426 = add i64 0, 0                                                           ; quoted ()
  %arg73425 = add i64 0, 0                                                           ; quoted ()
  %cloptr76025 = inttoptr i64 %cont72636 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76026 = getelementptr inbounds i64, i64* %cloptr76025, i64 0                 ; &cloptr76025[0]
  %f76028 = load i64, i64* %i0ptr76026, align 8                                      ; load; *i0ptr76026
  %fptr76027 = inttoptr i64 %f76028 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76027(i64 %cont72636, i64 %arg73426, i64 %arg73425) ; tail call
  ret void

else76024:
  %a72362 = call i64 @prim_car(i64 %Qai$lst)                                         ; call prim_car
  %a72363 = call i64 @prim_cdr(i64 %Qai$lst)                                         ; call prim_cdr
  %arg73430 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a72364 = call i64 @prim__45(i64 %pl3$n, i64 %arg73430)                            ; call prim__45
  %cloptr76029 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr76031 = getelementptr inbounds i64, i64* %cloptr76029, i64 1                  ; &eptr76031[1]
  %eptr76032 = getelementptr inbounds i64, i64* %cloptr76029, i64 2                  ; &eptr76032[2]
  store i64 %a72362, i64* %eptr76031                                                 ; *eptr76031 = %a72362
  store i64 %cont72636, i64* %eptr76032                                              ; *eptr76032 = %cont72636
  %eptr76030 = getelementptr inbounds i64, i64* %cloptr76029, i64 0                  ; &cloptr76029[0]
  %f76033 = ptrtoint void(i64,i64,i64)* @lam73542 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f76033, i64* %eptr76030                                                 ; store fptr
  %arg73434 = ptrtoint i64* %cloptr76029 to i64                                      ; closure cast; i64* -> i64
  %cloptr76034 = inttoptr i64 %BLw$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  %i0ptr76035 = getelementptr inbounds i64, i64* %cloptr76034, i64 0                 ; &cloptr76034[0]
  %f76037 = load i64, i64* %i0ptr76035, align 8                                      ; load; *i0ptr76035
  %fptr76036 = inttoptr i64 %f76037 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76036(i64 %BLw$_37take, i64 %arg73434, i64 %a72363, i64 %a72364); tail call
  ret void
}


define void @lam73542(i64 %env73543, i64 %_9572637, i64 %a72365) {
  %envptr76038 = inttoptr i64 %env73543 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76039 = getelementptr inbounds i64, i64* %envptr76038, i64 2                ; &envptr76038[2]
  %cont72636 = load i64, i64* %envptr76039, align 8                                  ; load; *envptr76039
  %envptr76040 = inttoptr i64 %env73543 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76041 = getelementptr inbounds i64, i64* %envptr76040, i64 1                ; &envptr76040[1]
  %a72362 = load i64, i64* %envptr76041, align 8                                     ; load; *envptr76041
  %retprim72638 = call i64 @prim_cons(i64 %a72362, i64 %a72365)                      ; call prim_cons
  %arg73439 = add i64 0, 0                                                           ; quoted ()
  %cloptr76042 = inttoptr i64 %cont72636 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76043 = getelementptr inbounds i64, i64* %cloptr76042, i64 0                 ; &cloptr76042[0]
  %f76045 = load i64, i64* %i0ptr76043, align 8                                      ; load; *i0ptr76043
  %fptr76044 = inttoptr i64 %f76045 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76044(i64 %cont72636, i64 %arg73439, i64 %retprim72638); tail call
  ret void
}


define void @lam73535(i64 %env73536, i64 %cont72639, i64 %srT$_37map) {
  %arg73442 = add i64 0, 0                                                           ; quoted ()
  %cloptr76046 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr76048 = getelementptr inbounds i64, i64* %cloptr76046, i64 1                  ; &eptr76048[1]
  store i64 %srT$_37map, i64* %eptr76048                                             ; *eptr76048 = %srT$_37map
  %eptr76047 = getelementptr inbounds i64, i64* %cloptr76046, i64 0                  ; &cloptr76046[0]
  %f76049 = ptrtoint void(i64,i64,i64,i64)* @lam73532 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f76049, i64* %eptr76047                                                 ; store fptr
  %arg73441 = ptrtoint i64* %cloptr76046 to i64                                      ; closure cast; i64* -> i64
  %cloptr76050 = inttoptr i64 %cont72639 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76051 = getelementptr inbounds i64, i64* %cloptr76050, i64 0                 ; &cloptr76050[0]
  %f76053 = load i64, i64* %i0ptr76051, align 8                                      ; load; *i0ptr76051
  %fptr76052 = inttoptr i64 %f76053 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76052(i64 %cont72639, i64 %arg73442, i64 %arg73441) ; tail call
  ret void
}


define void @lam73532(i64 %env73533, i64 %cont72640, i64 %klG$f, i64 %VNN$lst) {
  %envptr76054 = inttoptr i64 %env73533 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76055 = getelementptr inbounds i64, i64* %envptr76054, i64 1                ; &envptr76054[1]
  %srT$_37map = load i64, i64* %envptr76055, align 8                                 ; load; *envptr76055
  %a72355 = call i64 @prim_null_63(i64 %VNN$lst)                                     ; call prim_null_63
  %cmp76056 = icmp eq i64 %a72355, 15                                                ; false?
  br i1 %cmp76056, label %else76058, label %then76057                                ; if

then76057:
  %arg73446 = add i64 0, 0                                                           ; quoted ()
  %arg73445 = add i64 0, 0                                                           ; quoted ()
  %cloptr76059 = inttoptr i64 %cont72640 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76060 = getelementptr inbounds i64, i64* %cloptr76059, i64 0                 ; &cloptr76059[0]
  %f76062 = load i64, i64* %i0ptr76060, align 8                                      ; load; *i0ptr76060
  %fptr76061 = inttoptr i64 %f76062 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76061(i64 %cont72640, i64 %arg73446, i64 %arg73445) ; tail call
  ret void

else76058:
  %a72356 = call i64 @prim_car(i64 %VNN$lst)                                         ; call prim_car
  %cloptr76063 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr76065 = getelementptr inbounds i64, i64* %cloptr76063, i64 1                  ; &eptr76065[1]
  %eptr76066 = getelementptr inbounds i64, i64* %cloptr76063, i64 2                  ; &eptr76066[2]
  %eptr76067 = getelementptr inbounds i64, i64* %cloptr76063, i64 3                  ; &eptr76067[3]
  %eptr76068 = getelementptr inbounds i64, i64* %cloptr76063, i64 4                  ; &eptr76068[4]
  store i64 %klG$f, i64* %eptr76065                                                  ; *eptr76065 = %klG$f
  store i64 %VNN$lst, i64* %eptr76066                                                ; *eptr76066 = %VNN$lst
  store i64 %srT$_37map, i64* %eptr76067                                             ; *eptr76067 = %srT$_37map
  store i64 %cont72640, i64* %eptr76068                                              ; *eptr76068 = %cont72640
  %eptr76064 = getelementptr inbounds i64, i64* %cloptr76063, i64 0                  ; &cloptr76063[0]
  %f76069 = ptrtoint void(i64,i64,i64)* @lam73530 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f76069, i64* %eptr76064                                                 ; store fptr
  %arg73450 = ptrtoint i64* %cloptr76063 to i64                                      ; closure cast; i64* -> i64
  %cloptr76070 = inttoptr i64 %klG$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr76071 = getelementptr inbounds i64, i64* %cloptr76070, i64 0                 ; &cloptr76070[0]
  %f76073 = load i64, i64* %i0ptr76071, align 8                                      ; load; *i0ptr76071
  %fptr76072 = inttoptr i64 %f76073 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76072(i64 %klG$f, i64 %arg73450, i64 %a72356)       ; tail call
  ret void
}


define void @lam73530(i64 %env73531, i64 %_9572641, i64 %a72357) {
  %envptr76074 = inttoptr i64 %env73531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76075 = getelementptr inbounds i64, i64* %envptr76074, i64 4                ; &envptr76074[4]
  %cont72640 = load i64, i64* %envptr76075, align 8                                  ; load; *envptr76075
  %envptr76076 = inttoptr i64 %env73531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76077 = getelementptr inbounds i64, i64* %envptr76076, i64 3                ; &envptr76076[3]
  %srT$_37map = load i64, i64* %envptr76077, align 8                                 ; load; *envptr76077
  %envptr76078 = inttoptr i64 %env73531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76079 = getelementptr inbounds i64, i64* %envptr76078, i64 2                ; &envptr76078[2]
  %VNN$lst = load i64, i64* %envptr76079, align 8                                    ; load; *envptr76079
  %envptr76080 = inttoptr i64 %env73531 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76081 = getelementptr inbounds i64, i64* %envptr76080, i64 1                ; &envptr76080[1]
  %klG$f = load i64, i64* %envptr76081, align 8                                      ; load; *envptr76081
  %a72358 = call i64 @prim_cdr(i64 %VNN$lst)                                         ; call prim_cdr
  %cloptr76082 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr76084 = getelementptr inbounds i64, i64* %cloptr76082, i64 1                  ; &eptr76084[1]
  %eptr76085 = getelementptr inbounds i64, i64* %cloptr76082, i64 2                  ; &eptr76085[2]
  store i64 %a72357, i64* %eptr76084                                                 ; *eptr76084 = %a72357
  store i64 %cont72640, i64* %eptr76085                                              ; *eptr76085 = %cont72640
  %eptr76083 = getelementptr inbounds i64, i64* %cloptr76082, i64 0                  ; &cloptr76082[0]
  %f76086 = ptrtoint void(i64,i64,i64)* @lam73528 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f76086, i64* %eptr76083                                                 ; store fptr
  %arg73455 = ptrtoint i64* %cloptr76082 to i64                                      ; closure cast; i64* -> i64
  %cloptr76087 = inttoptr i64 %srT$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  %i0ptr76088 = getelementptr inbounds i64, i64* %cloptr76087, i64 0                 ; &cloptr76087[0]
  %f76090 = load i64, i64* %i0ptr76088, align 8                                      ; load; *i0ptr76088
  %fptr76089 = inttoptr i64 %f76090 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76089(i64 %srT$_37map, i64 %arg73455, i64 %klG$f, i64 %a72358); tail call
  ret void
}


define void @lam73528(i64 %env73529, i64 %_9572642, i64 %a72359) {
  %envptr76091 = inttoptr i64 %env73529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76092 = getelementptr inbounds i64, i64* %envptr76091, i64 2                ; &envptr76091[2]
  %cont72640 = load i64, i64* %envptr76092, align 8                                  ; load; *envptr76092
  %envptr76093 = inttoptr i64 %env73529 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76094 = getelementptr inbounds i64, i64* %envptr76093, i64 1                ; &envptr76093[1]
  %a72357 = load i64, i64* %envptr76094, align 8                                     ; load; *envptr76094
  %retprim72643 = call i64 @prim_cons(i64 %a72357, i64 %a72359)                      ; call prim_cons
  %arg73460 = add i64 0, 0                                                           ; quoted ()
  %cloptr76095 = inttoptr i64 %cont72640 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76096 = getelementptr inbounds i64, i64* %cloptr76095, i64 0                 ; &cloptr76095[0]
  %f76098 = load i64, i64* %i0ptr76096, align 8                                      ; load; *i0ptr76096
  %fptr76097 = inttoptr i64 %f76098 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76097(i64 %cont72640, i64 %arg73460, i64 %retprim72643); tail call
  ret void
}


define void @lam73523(i64 %env73524, i64 %cont72644, i64 %bf2$_37foldr1) {
  %arg73463 = add i64 0, 0                                                           ; quoted ()
  %cloptr76099 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr76101 = getelementptr inbounds i64, i64* %cloptr76099, i64 1                  ; &eptr76101[1]
  store i64 %bf2$_37foldr1, i64* %eptr76101                                          ; *eptr76101 = %bf2$_37foldr1
  %eptr76100 = getelementptr inbounds i64, i64* %cloptr76099, i64 0                  ; &cloptr76099[0]
  %f76102 = ptrtoint void(i64,i64,i64,i64,i64)* @lam73520 to i64                     ; fptr cast; i64(...)* -> i64
  store i64 %f76102, i64* %eptr76100                                                 ; store fptr
  %arg73462 = ptrtoint i64* %cloptr76099 to i64                                      ; closure cast; i64* -> i64
  %cloptr76103 = inttoptr i64 %cont72644 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76104 = getelementptr inbounds i64, i64* %cloptr76103, i64 0                 ; &cloptr76103[0]
  %f76106 = load i64, i64* %i0ptr76104, align 8                                      ; load; *i0ptr76104
  %fptr76105 = inttoptr i64 %f76106 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76105(i64 %cont72644, i64 %arg73463, i64 %arg73462) ; tail call
  ret void
}


define void @lam73520(i64 %env73521, i64 %cont72645, i64 %QJA$f, i64 %fBk$acc, i64 %Eop$lst) {
  %envptr76107 = inttoptr i64 %env73521 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76108 = getelementptr inbounds i64, i64* %envptr76107, i64 1                ; &envptr76107[1]
  %bf2$_37foldr1 = load i64, i64* %envptr76108, align 8                              ; load; *envptr76108
  %a72351 = call i64 @prim_null_63(i64 %Eop$lst)                                     ; call prim_null_63
  %cmp76109 = icmp eq i64 %a72351, 15                                                ; false?
  br i1 %cmp76109, label %else76111, label %then76110                                ; if

then76110:
  %arg73467 = add i64 0, 0                                                           ; quoted ()
  %cloptr76112 = inttoptr i64 %cont72645 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76113 = getelementptr inbounds i64, i64* %cloptr76112, i64 0                 ; &cloptr76112[0]
  %f76115 = load i64, i64* %i0ptr76113, align 8                                      ; load; *i0ptr76113
  %fptr76114 = inttoptr i64 %f76115 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76114(i64 %cont72645, i64 %arg73467, i64 %fBk$acc)  ; tail call
  ret void

else76111:
  %a72352 = call i64 @prim_car(i64 %Eop$lst)                                         ; call prim_car
  %a72353 = call i64 @prim_cdr(i64 %Eop$lst)                                         ; call prim_cdr
  %cloptr76116 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr76118 = getelementptr inbounds i64, i64* %cloptr76116, i64 1                  ; &eptr76118[1]
  %eptr76119 = getelementptr inbounds i64, i64* %cloptr76116, i64 2                  ; &eptr76119[2]
  %eptr76120 = getelementptr inbounds i64, i64* %cloptr76116, i64 3                  ; &eptr76120[3]
  store i64 %QJA$f, i64* %eptr76118                                                  ; *eptr76118 = %QJA$f
  store i64 %cont72645, i64* %eptr76119                                              ; *eptr76119 = %cont72645
  store i64 %a72352, i64* %eptr76120                                                 ; *eptr76120 = %a72352
  %eptr76117 = getelementptr inbounds i64, i64* %cloptr76116, i64 0                  ; &cloptr76116[0]
  %f76121 = ptrtoint void(i64,i64,i64)* @lam73518 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f76121, i64* %eptr76117                                                 ; store fptr
  %arg73474 = ptrtoint i64* %cloptr76116 to i64                                      ; closure cast; i64* -> i64
  %cloptr76122 = inttoptr i64 %bf2$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  %i0ptr76123 = getelementptr inbounds i64, i64* %cloptr76122, i64 0                 ; &cloptr76122[0]
  %f76125 = load i64, i64* %i0ptr76123, align 8                                      ; load; *i0ptr76123
  %fptr76124 = inttoptr i64 %f76125 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76124(i64 %bf2$_37foldr1, i64 %arg73474, i64 %QJA$f, i64 %fBk$acc, i64 %a72353); tail call
  ret void
}


define void @lam73518(i64 %env73519, i64 %_9572646, i64 %a72354) {
  %envptr76126 = inttoptr i64 %env73519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76127 = getelementptr inbounds i64, i64* %envptr76126, i64 3                ; &envptr76126[3]
  %a72352 = load i64, i64* %envptr76127, align 8                                     ; load; *envptr76127
  %envptr76128 = inttoptr i64 %env73519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76129 = getelementptr inbounds i64, i64* %envptr76128, i64 2                ; &envptr76128[2]
  %cont72645 = load i64, i64* %envptr76129, align 8                                  ; load; *envptr76129
  %envptr76130 = inttoptr i64 %env73519 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76131 = getelementptr inbounds i64, i64* %envptr76130, i64 1                ; &envptr76130[1]
  %QJA$f = load i64, i64* %envptr76131, align 8                                      ; load; *envptr76131
  %cloptr76132 = inttoptr i64 %QJA$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr76133 = getelementptr inbounds i64, i64* %cloptr76132, i64 0                 ; &cloptr76132[0]
  %f76135 = load i64, i64* %i0ptr76133, align 8                                      ; load; *i0ptr76133
  %fptr76134 = inttoptr i64 %f76135 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76134(i64 %QJA$f, i64 %cont72645, i64 %a72352, i64 %a72354); tail call
  ret void
}


define void @lam73515(i64 %env73516, i64 %cont72648, i64 %T55$y) {
  %arg73481 = add i64 0, 0                                                           ; quoted ()
  %cloptr76136 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr76138 = getelementptr inbounds i64, i64* %cloptr76136, i64 1                  ; &eptr76138[1]
  store i64 %T55$y, i64* %eptr76138                                                  ; *eptr76138 = %T55$y
  %eptr76137 = getelementptr inbounds i64, i64* %cloptr76136, i64 0                  ; &cloptr76136[0]
  %f76139 = ptrtoint void(i64,i64,i64)* @lam73512 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f76139, i64* %eptr76137                                                 ; store fptr
  %arg73480 = ptrtoint i64* %cloptr76136 to i64                                      ; closure cast; i64* -> i64
  %cloptr76140 = inttoptr i64 %cont72648 to i64*                                     ; closure/env cast; i64 -> i64*
  %i0ptr76141 = getelementptr inbounds i64, i64* %cloptr76140, i64 0                 ; &cloptr76140[0]
  %f76143 = load i64, i64* %i0ptr76141, align 8                                      ; load; *i0ptr76141
  %fptr76142 = inttoptr i64 %f76143 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76142(i64 %cont72648, i64 %arg73481, i64 %arg73480) ; tail call
  ret void
}


define void @lam73512(i64 %env73513, i64 %cont72649, i64 %ZFx$f) {
  %envptr76144 = inttoptr i64 %env73513 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76145 = getelementptr inbounds i64, i64* %envptr76144, i64 1                ; &envptr76144[1]
  %T55$y = load i64, i64* %envptr76145, align 8                                      ; load; *envptr76145
  %cloptr76146 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr76148 = getelementptr inbounds i64, i64* %cloptr76146, i64 1                  ; &eptr76148[1]
  %eptr76149 = getelementptr inbounds i64, i64* %cloptr76146, i64 2                  ; &eptr76149[2]
  store i64 %T55$y, i64* %eptr76148                                                  ; *eptr76148 = %T55$y
  store i64 %ZFx$f, i64* %eptr76149                                                  ; *eptr76149 = %ZFx$f
  %eptr76147 = getelementptr inbounds i64, i64* %cloptr76146, i64 0                  ; &cloptr76146[0]
  %f76150 = ptrtoint void(i64,i64)* @lam73510 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f76150, i64* %eptr76147                                                 ; store fptr
  %arg73483 = ptrtoint i64* %cloptr76146 to i64                                      ; closure cast; i64* -> i64
  %cloptr76151 = inttoptr i64 %ZFx$f to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr76152 = getelementptr inbounds i64, i64* %cloptr76151, i64 0                 ; &cloptr76151[0]
  %f76154 = load i64, i64* %i0ptr76152, align 8                                      ; load; *i0ptr76152
  %fptr76153 = inttoptr i64 %f76154 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76153(i64 %ZFx$f, i64 %cont72649, i64 %arg73483)    ; tail call
  ret void
}


define void @lam73510(i64 %env73511, i64 %u2i$args72651) {
  %envptr76155 = inttoptr i64 %env73511 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76156 = getelementptr inbounds i64, i64* %envptr76155, i64 2                ; &envptr76155[2]
  %ZFx$f = load i64, i64* %envptr76156, align 8                                      ; load; *envptr76156
  %envptr76157 = inttoptr i64 %env73511 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76158 = getelementptr inbounds i64, i64* %envptr76157, i64 1                ; &envptr76157[1]
  %T55$y = load i64, i64* %envptr76158, align 8                                      ; load; *envptr76158
  %cont72650 = call i64 @prim_car(i64 %u2i$args72651)                                ; call prim_car
  %u2i$args = call i64 @prim_cdr(i64 %u2i$args72651)                                 ; call prim_cdr
  %cloptr76159 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr76161 = getelementptr inbounds i64, i64* %cloptr76159, i64 1                  ; &eptr76161[1]
  %eptr76162 = getelementptr inbounds i64, i64* %cloptr76159, i64 2                  ; &eptr76162[2]
  %eptr76163 = getelementptr inbounds i64, i64* %cloptr76159, i64 3                  ; &eptr76163[3]
  store i64 %ZFx$f, i64* %eptr76161                                                  ; *eptr76161 = %ZFx$f
  store i64 %cont72650, i64* %eptr76162                                              ; *eptr76162 = %cont72650
  store i64 %u2i$args, i64* %eptr76163                                               ; *eptr76163 = %u2i$args
  %eptr76160 = getelementptr inbounds i64, i64* %cloptr76159, i64 0                  ; &cloptr76159[0]
  %f76164 = ptrtoint void(i64,i64,i64)* @lam73508 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f76164, i64* %eptr76160                                                 ; store fptr
  %arg73489 = ptrtoint i64* %cloptr76159 to i64                                      ; closure cast; i64* -> i64
  %cloptr76165 = inttoptr i64 %T55$y to i64*                                         ; closure/env cast; i64 -> i64*
  %i0ptr76166 = getelementptr inbounds i64, i64* %cloptr76165, i64 0                 ; &cloptr76165[0]
  %f76168 = load i64, i64* %i0ptr76166, align 8                                      ; load; *i0ptr76166
  %fptr76167 = inttoptr i64 %f76168 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76167(i64 %T55$y, i64 %arg73489, i64 %T55$y)        ; tail call
  ret void
}


define void @lam73508(i64 %env73509, i64 %_9572652, i64 %a72349) {
  %envptr76169 = inttoptr i64 %env73509 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76170 = getelementptr inbounds i64, i64* %envptr76169, i64 3                ; &envptr76169[3]
  %u2i$args = load i64, i64* %envptr76170, align 8                                   ; load; *envptr76170
  %envptr76171 = inttoptr i64 %env73509 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76172 = getelementptr inbounds i64, i64* %envptr76171, i64 2                ; &envptr76171[2]
  %cont72650 = load i64, i64* %envptr76172, align 8                                  ; load; *envptr76172
  %envptr76173 = inttoptr i64 %env73509 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76174 = getelementptr inbounds i64, i64* %envptr76173, i64 1                ; &envptr76173[1]
  %ZFx$f = load i64, i64* %envptr76174, align 8                                      ; load; *envptr76174
  %cloptr76175 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr76177 = getelementptr inbounds i64, i64* %cloptr76175, i64 1                  ; &eptr76177[1]
  %eptr76178 = getelementptr inbounds i64, i64* %cloptr76175, i64 2                  ; &eptr76178[2]
  store i64 %cont72650, i64* %eptr76177                                              ; *eptr76177 = %cont72650
  store i64 %u2i$args, i64* %eptr76178                                               ; *eptr76178 = %u2i$args
  %eptr76176 = getelementptr inbounds i64, i64* %cloptr76175, i64 0                  ; &cloptr76175[0]
  %f76179 = ptrtoint void(i64,i64,i64)* @lam73506 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f76179, i64* %eptr76176                                                 ; store fptr
  %arg73492 = ptrtoint i64* %cloptr76175 to i64                                      ; closure cast; i64* -> i64
  %cloptr76180 = inttoptr i64 %a72349 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr76181 = getelementptr inbounds i64, i64* %cloptr76180, i64 0                 ; &cloptr76180[0]
  %f76183 = load i64, i64* %i0ptr76181, align 8                                      ; load; *i0ptr76181
  %fptr76182 = inttoptr i64 %f76183 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76182(i64 %a72349, i64 %arg73492, i64 %ZFx$f)       ; tail call
  ret void
}


define void @lam73506(i64 %env73507, i64 %_9572653, i64 %a72350) {
  %envptr76184 = inttoptr i64 %env73507 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76185 = getelementptr inbounds i64, i64* %envptr76184, i64 2                ; &envptr76184[2]
  %u2i$args = load i64, i64* %envptr76185, align 8                                   ; load; *envptr76185
  %envptr76186 = inttoptr i64 %env73507 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr76187 = getelementptr inbounds i64, i64* %envptr76186, i64 1                ; &envptr76186[1]
  %cont72650 = load i64, i64* %envptr76187, align 8                                  ; load; *envptr76187
  %cps_45lst72654 = call i64 @prim_cons(i64 %cont72650, i64 %u2i$args)               ; call prim_cons
  %cloptr76188 = inttoptr i64 %a72350 to i64*                                        ; closure/env cast; i64 -> i64*
  %i0ptr76189 = getelementptr inbounds i64, i64* %cloptr76188, i64 0                 ; &cloptr76188[0]
  %f76191 = load i64, i64* %i0ptr76189, align 8                                      ; load; *i0ptr76189
  %fptr76190 = inttoptr i64 %f76191 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr76190(i64 %a72350, i64 %cps_45lst72654)             ; tail call
  ret void
}





@sym74768 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
