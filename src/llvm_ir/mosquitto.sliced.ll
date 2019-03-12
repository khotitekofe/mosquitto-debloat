; ModuleID = 'mosquitto.sliced'
source_filename = "mosquitto.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mosquitto_db = type { i64, %struct.mosquitto__subhier*, %struct.mosquitto__unpwd*, %struct.mosquitto__unpwd*, %struct.mosquitto*, %struct.mosquitto*, %struct.mosquitto*, %struct.mosquitto**, %struct.clientid__index_hash*, %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store_load*, i32, i32, i64, i8*, %struct.mosquitto__config*, i32, i8, i32, i32, i32, %struct.mosquitto*, i32 }
%struct.mosquitto__subhier = type { %struct.UT_hash_handle, %struct.mosquitto__subhier*, %struct.mosquitto__subhier*, %struct.mosquitto__subleaf*, %struct.mosquitto_msg_store*, %union.mosquitto__topic_element_uhpa, i16 }
%struct.UT_hash_handle = type { %struct.UT_hash_table*, i8*, i8*, %struct.UT_hash_handle*, %struct.UT_hash_handle*, i8*, i32, i32 }
%struct.UT_hash_table = type { %struct.UT_hash_bucket*, i32, i32, i32, %struct.UT_hash_handle*, i64, i32, i32, i32, i32, i32 }
%struct.UT_hash_bucket = type { %struct.UT_hash_handle*, i32, i32 }
%struct.mosquitto__subleaf = type { %struct.mosquitto__subleaf*, %struct.mosquitto__subleaf*, %struct.mosquitto*, i32 }
%union.mosquitto__topic_element_uhpa = type { i8* }
%struct.mosquitto__unpwd = type { i8*, i8*, i32, i32, i8*, %struct.UT_hash_handle }
%struct.clientid__index_hash = type opaque
%struct.mosquitto_msg_store = type { %struct.mosquitto_msg_store*, %struct.mosquitto_msg_store*, i64, i8*, i8*, %struct.mosquitto__listener*, i8**, i32, i32, i8*, %union.mosquitto__payload_uhpa, i32, i16, i16, i8, i8 }
%struct.mosquitto__listener = type { i32, i16, i8*, i32, i8*, i32*, i32, i32, i32, i32, i8, i8*, i8*, i8*, i8*, i8*, i8*, %struct.ssl_ctx_st*, i8*, i8, i8, i8, i8*, %struct.mosquitto__security_options, %struct.mosquitto__unpwd*, %struct.mosquitto__unpwd* }
%struct.ssl_ctx_st = type opaque
%struct.mosquitto__security_options = type { %struct.mosquitto__acl_user*, %struct.mosquitto__acl*, i8*, i8*, i8*, %struct.mosquitto__auth_plugin_config*, i32, i8, i8, i8*, i32 }
%struct.mosquitto__acl_user = type { %struct.mosquitto__acl_user*, i8*, %struct.mosquitto__acl* }
%struct.mosquitto__acl = type { %struct.mosquitto__acl*, i8*, i32, i32, i32 }
%struct.mosquitto__auth_plugin_config = type { i8*, %struct.mosquitto_opt*, i32, i8, %struct.mosquitto__auth_plugin }
%struct.mosquitto_opt = type { i8*, i8* }
%struct.mosquitto__auth_plugin = type { i8*, i8*, i32 ()*, i32 (i8**, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_opt*, i32, i1)*, i32 (i8*, i32, %struct.mosquitto*, %struct.mosquitto_acl_msg*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*)*, i32 (i8*, %struct.mosquitto*, i8*, i8*, i8*, i32)*, i32 (i8**, %struct.mosquitto_auth_opt*, i32)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32, i1)*, i32 (i8*, %struct.mosquitto_auth_opt*, i32, i1)*, i32 (i8*, i8*, i8*, i8*, i32)*, i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*, i32)*, i32 }
%struct.mosquitto_acl_msg = type { i8*, i8*, i64, i32, i8 }
%struct.mosquitto_auth_opt = type { i8*, i8* }
%union.mosquitto__payload_uhpa = type { i8* }
%struct.mosquitto_msg_store_load = type { %struct.UT_hash_handle, i64, %struct.mosquitto_msg_store* }
%struct.mosquitto__config = type { i8, i32, i8, i8, i8*, i8, i8, %struct.mosquitto__listener, %struct.mosquitto__listener*, i32, i32, i32, i32, i8, i8*, %struct._IO_FILE*, i32, i8, i8*, i8*, i8*, i64, i8*, i8, i8, i8, i32, i8, i8*, %struct.mosquitto__bridge*, i32, %struct.mosquitto__security_options }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mosquitto__bridge = type { i8*, %struct.bridge_address*, i32, i32, i64, i32, i8, i8, i8, i8, i32, %struct.mosquitto__bridge_topic*, i32, i8, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.bridge_address = type { i8*, i32 }
%struct.mosquitto__bridge_topic = type { i8*, i32, i32, i8*, i8*, i8*, i8* }
%struct.mosquitto = type { i32, i32, i8*, i8*, i8*, i8*, i16, i16, i32, i64, i64, i64, %struct.mosquitto__packet, %struct.mosquitto__packet*, %struct.mosquitto__packet*, %struct.mosquitto_message*, %struct.ssl_st*, %struct.ssl_ctx_st*, i8*, i8*, i8*, i8*, i32 (i8*, i32, i32, i8*)*, i8*, i8*, i8*, i8*, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.mosquitto__bridge*, %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg*, %struct.mosquitto_client_msg*, i64, i64, i32, i32, %struct.mosquitto__acl_user*, %struct.mosquitto__listener*, i64, %struct.mosquitto__packet*, %struct.mosquitto__subhier**, i32, i32, i8, %struct.UT_hash_handle, %struct.UT_hash_handle, %struct.mosquitto*, i32 }
%struct.mosquitto__packet = type { i8*, %struct.mosquitto__packet*, i32, i32, i32, i32, i32, i16, i8, i8 }
%struct.mosquitto_message = type { i32, i8*, i8*, i32, i32, i8 }
%struct.ssl_st = type opaque
%struct.mosquitto_client_msg = type { %struct.mosquitto_client_msg*, %struct.mosquitto_msg_store*, i64, i16, i8, i8, i32, i32, i8 }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@int_db = common global %struct.mosquitto_db zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"SNAP_NAME\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mosquitto\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Error: Invalid user '%s'.\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Error setting groups whilst dropping privileges: %s.\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Error setting gid whilst dropping privileges: %s.\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Error setting uid whilst dropping privileges: %s.\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Warning: Mosquitto should not be run as root/administrator.\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Error setting gid whilst restoring privileges: %s.\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Error setting uid whilst restoring privileges: %s.\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Error in fork: %s\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Error in setsid: %s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [33 x i8] c"freopen(\22/dev/null\22, \22r\22, stdin)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"mosquitto.c\00", align 1
@__PRETTY_FUNCTION__.mosquitto__daemonise = private unnamed_addr constant [32 x i8] c"void mosquitto__daemonise(void)\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c"freopen(\22/dev/null\22, \22w\22, stdout)\00", align 1
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [34 x i8] c"freopen(\22/dev/null\22, \22w\22, stderr)\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Error: Unable to write pid file.\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"Error: Couldn't open database.\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"mosquitto version %s starting\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"1.5.7\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"Config loaded from %s.\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Using default config.\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Warning: Unable to connect to bridge %s.\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"mosquitto version %s terminating\00", align 1
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer, align 16
@__llvm_gcov_ctr.29 = internal global [39 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [128 x i64] zeroinitializer
@0 = private unnamed_addr constant [52 x i8] c"/home/ryan/git/mosquitto-debloat/src/mosquitto.gcda\00"
@1 = private unnamed_addr constant [5 x i8] c"*204\00"
@2 = private unnamed_addr constant [18 x i8] c"mosquitto__get_db\00"
@3 = private unnamed_addr constant [16 x i8] c"drop_privileges\00"
@4 = private unnamed_addr constant [19 x i8] c"restore_privileges\00"
@5 = private unnamed_addr constant [21 x i8] c"mosquitto__daemonise\00"
@6 = private unnamed_addr constant [5 x i8] c"main\00"

; Function Attrs: nounwind uwtable
define i32 @drop_privileges(%struct.mosquitto__config* nocapture readonly, i1 zeroext) local_unnamed_addr #0 !dbg !688 {
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)) #7, !dbg !711
  %4 = icmp ne i8* %3, null, !dbg !712
  br i1 %4, label %5, label %9, !dbg !714

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* nonnull %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !715
  %7 = icmp ne i32 %6, 0, !dbg !715
  br i1 %7, label %9, label %8, !dbg !716

; <label>:8:                                      ; preds = %5
  br label %52, !dbg !717

; <label>:9:                                      ; preds = %5, %2
  %10 = tail call i32 @geteuid() #7, !dbg !719
  %11 = icmp eq i32 %10, 0, !dbg !721
  br i1 %11, label %12, label %51, !dbg !722

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %0, i64 0, i32 28, !dbg !723
  %14 = load i8*, i8** %13, align 8, !dbg !723, !tbaa !726
  %15 = icmp ne i8* %14, null, !dbg !737
  br i1 %15, label %16, label %51, !dbg !738

; <label>:16:                                     ; preds = %12
  %17 = tail call i32 @strcmp(i8* nonnull %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !739
  %18 = icmp ne i32 %17, 0, !dbg !739
  br i1 %18, label %19, label %51, !dbg !740

; <label>:19:                                     ; preds = %16
  %20 = tail call %struct.passwd* @getpwnam(i8* nonnull %14), !dbg !741
  %21 = icmp ne %struct.passwd* %20, null, !dbg !743
  %22 = load i8*, i8** %13, align 8, !tbaa !726
  br i1 %21, label %24, label %23, !dbg !745

; <label>:23:                                     ; preds = %19
  br label %52, !dbg !746

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i64 0, i32 3, !dbg !748
  %26 = load i32, i32* %25, align 4, !dbg !748, !tbaa !750
  %27 = tail call i32 @initgroups(i8* %22, i32 %26) #7, !dbg !752
  %28 = icmp eq i32 %27, -1, !dbg !753
  br i1 %28, label %29, label %30, !dbg !754

; <label>:29:                                     ; preds = %24
  br label %52, !dbg !755

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %25, align 4, !tbaa !750
  br i1 %1, label %32, label %34, !dbg !757

; <label>:32:                                     ; preds = %30
  %33 = tail call i32 @setegid(i32 %31) #7, !dbg !758
  br label %36, !dbg !761

; <label>:34:                                     ; preds = %30
  %35 = tail call i32 @setgid(i32 %31) #7, !dbg !762
  br label %36

; <label>:36:                                     ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = icmp eq i32 %37, -1, !dbg !764
  br i1 %38, label %39, label %40, !dbg !766

; <label>:39:                                     ; preds = %36
  br label %52, !dbg !767

; <label>:40:                                     ; preds = %36
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %20, i64 0, i32 2
  %42 = load i32, i32* %41, align 8, !tbaa !769
  br i1 %1, label %43, label %45, !dbg !770

; <label>:43:                                     ; preds = %40
  %44 = tail call i32 @seteuid(i32 %42) #7, !dbg !771
  br label %47, !dbg !774

; <label>:45:                                     ; preds = %40
  %46 = tail call i32 @setuid(i32 %42) #7, !dbg !775
  br label %47

; <label>:47:                                     ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = icmp eq i32 %48, -1, !dbg !777
  br i1 %49, label %50, label %51, !dbg !779

; <label>:50:                                     ; preds = %47
  br label %52, !dbg !780

; <label>:51:                                     ; preds = %47, %16, %12, %9
  br label %52, !dbg !782

; <label>:52:                                     ; preds = %51, %50, %39, %29, %23, %8
  %53 = phi i32 [ 1, %29 ], [ 1, %39 ], [ 1, %50 ], [ 0, %51 ], [ 1, %23 ], [ 0, %8 ]
  ret i32 %53, !dbg !783
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare %struct.passwd* @getpwnam(i8* nocapture readonly) local_unnamed_addr #2

declare i32 @initgroups(i8*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setegid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setgid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @seteuid(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setuid(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @mosquitto__daemonise() local_unnamed_addr #0 !dbg !784 {
  %1 = tail call i32 @fork() #7, !dbg !793
  %2 = icmp slt i32 %1, 0, !dbg !794
  br i1 %2, label %3, label %4, !dbg !796

; <label>:3:                                      ; preds = %0
  tail call void @exit(i32 1) #9, !dbg !797
  unreachable, !dbg !797

; <label>:4:                                      ; preds = %0
  %5 = icmp ne i32 %1, 0, !dbg !799
  br i1 %5, label %6, label %7, !dbg !801

; <label>:6:                                      ; preds = %4
  tail call void @exit(i32 0) #9, !dbg !802
  unreachable, !dbg !802

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @setsid() #7, !dbg !804
  %9 = icmp slt i32 %8, 0, !dbg !806
  br i1 %9, label %10, label %11, !dbg !807

; <label>:10:                                     ; preds = %7
  tail call void @exit(i32 1) #9, !dbg !808
  unreachable, !dbg !808

; <label>:11:                                     ; preds = %7
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !810, !tbaa !813
  %13 = tail call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %12) #7, !dbg !810
  %14 = icmp ne %struct._IO_FILE* %13, null, !dbg !810
  br i1 %14, label %16, label %15, !dbg !814

; <label>:15:                                     ; preds = %11
  tail call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.mosquitto__daemonise, i64 0, i64 0)) #9, !dbg !810
  unreachable, !dbg !810

; <label>:16:                                     ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !815, !tbaa !813
  %18 = tail call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* %17) #7, !dbg !815
  %19 = icmp ne %struct._IO_FILE* %18, null, !dbg !815
  br i1 %19, label %21, label %20, !dbg !818

; <label>:20:                                     ; preds = %16
  tail call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.mosquitto__daemonise, i64 0, i64 0)) #9, !dbg !815
  unreachable, !dbg !815

; <label>:21:                                     ; preds = %16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !819, !tbaa !813
  %23 = tail call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* %22) #7, !dbg !819
  %24 = icmp ne %struct._IO_FILE* %23, null, !dbg !819
  br i1 %24, label %safe_return, label %25, !dbg !822

; <label>:25:                                     ; preds = %21
  tail call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.mosquitto__daemonise, i64 0, i64 0)) #9, !dbg !819
  unreachable, !dbg !819

safe_return:                                      ; preds = %21
  ret void
}

; Function Attrs: nounwind
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @setsid() local_unnamed_addr #2

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i32 @main(i32, i8**) local_unnamed_addr #0 !dbg !823 {
  %3 = alloca %struct.mosquitto__config, align 8
  tail call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.mosquitto_db* @int_db to i8*), i8 0, i64 160, i32 8, i1 false), !dbg !847
  call void @config__init(%struct.mosquitto_db* nonnull @int_db, %struct.mosquitto__config* nonnull %3) #7, !dbg !848
  %4 = call i32 @config__parse_args(%struct.mosquitto_db* nonnull @int_db, %struct.mosquitto__config* nonnull %3, i32 %0, i8** %1) #7, !dbg !849
  %5 = icmp ne i32 %4, 0, !dbg !850
  br i1 %5, label %6, label %7, !dbg !852

; <label>:6:                                      ; preds = %2
  br label %140, !dbg !853

; <label>:7:                                      ; preds = %2
  store %struct.mosquitto__config* %3, %struct.mosquitto__config** getelementptr inbounds (%struct.mosquitto_db, %struct.mosquitto_db* @int_db, i64 0, i32 15), align 8, !dbg !854, !tbaa !855
  %8 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %3, i64 0, i32 6, !dbg !857
  %9 = load i8, i8* %8, align 1, !dbg !857, !tbaa !859, !range !860
  %10 = icmp ne i8 %9, 0, !dbg !857
  br i1 %10, label %11, label %22, !dbg !861

; <label>:11:                                     ; preds = %7
  call void @mosquitto__daemonise(), !dbg !862
  %12 = load i8, i8* %8, align 1, !dbg !864, !tbaa !859, !range !860
  %13 = icmp ne i8 %12, 0, !dbg !864
  br i1 %13, label %14, label %22, !dbg !866

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %3, i64 0, i32 22, !dbg !867
  %16 = load i8*, i8** %15, align 8, !dbg !867, !tbaa !868
  %17 = icmp ne i8* %16, null, !dbg !869
  br i1 %17, label %18, label %22, !dbg !870

; <label>:18:                                     ; preds = %14
  %19 = call %struct._IO_FILE* @mosquitto__fopen(i8* nonnull %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i1 zeroext false) #7, !dbg !871
  %20 = icmp ne %struct._IO_FILE* %19, null, !dbg !873
  br i1 %20, label %22, label %21, !dbg !875

; <label>:21:                                     ; preds = %18
  br label %140, !dbg !876

; <label>:22:                                     ; preds = %18, %14, %11, %7
  %23 = call i32 @db__open(%struct.mosquitto__config* nonnull %3, %struct.mosquitto_db* nonnull @int_db) #7, !dbg !878
  %24 = icmp ne i32 %23, 0, !dbg !879
  br i1 %24, label %25, label %26, !dbg !881

; <label>:25:                                     ; preds = %22
  br label %140, !dbg !882

; <label>:26:                                     ; preds = %22
  %27 = call i32 @log__init(%struct.mosquitto__config* nonnull %3) #7, !dbg !884
  %28 = icmp ne i32 %27, 0, !dbg !884
  br i1 %28, label %29, label %30, !dbg !886

; <label>:29:                                     ; preds = %26
  br label %140, !dbg !887

; <label>:30:                                     ; preds = %26
  %31 = call i32 @mosquitto_security_module_init(%struct.mosquitto_db* nonnull @int_db) #7, !dbg !889
  %32 = icmp ne i32 %31, 0, !dbg !890
  br i1 %32, label %33, label %34, !dbg !892

; <label>:33:                                     ; preds = %30
  br label %140, !dbg !893

; <label>:34:                                     ; preds = %30
  %35 = call i32 @mosquitto_security_init(%struct.mosquitto_db* nonnull @int_db, i1 zeroext false) #7, !dbg !894
  %36 = icmp ne i32 %35, 0, !dbg !895
  br i1 %36, label %37, label %38, !dbg !897

; <label>:37:                                     ; preds = %34
  br label %140, !dbg !898

; <label>:38:                                     ; preds = %34
  call void @sys_tree__init(%struct.mosquitto_db* nonnull @int_db) #7, !dbg !899
  %39 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %3, i64 0, i32 9, !dbg !900
  %40 = load i32, i32* %39, align 8, !dbg !900, !tbaa !903
  %41 = icmp sgt i32 %40, 0, !dbg !904
  br i1 %41, label %42, label %114, !dbg !905

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %3, i64 0, i32 8
  %44 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %43, align 8, !dbg !906, !tbaa !909
  br label %45, !dbg !905

; <label>:45:                                     ; preds = %103, %42
  %46 = phi %struct.mosquitto__listener* [ %44, %42 ], [ %104, %103 ], !dbg !906
  %47 = phi i64 [ 0, %42 ], [ %110, %103 ]
  %48 = phi i32 [ -1, %42 ], [ %109, %103 ]
  %49 = phi i32 [ 0, %42 ], [ %108, %103 ]
  %50 = phi i32 [ 0, %42 ], [ %107, %103 ]
  %51 = phi i32* [ null, %42 ], [ %106, %103 ]
  %52 = phi i8* [ null, %42 ], [ %105, %103 ]
  %53 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %46, i64 %47, i32 8, !dbg !910
  %54 = load i32, i32* %53, align 8, !dbg !910, !tbaa !911
  %55 = icmp eq i32 %54, 0, !dbg !912
  br i1 %55, label %56, label %100, !dbg !913

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %46, i64 %47, !dbg !914
  %58 = call i32 @net__socket_listen(%struct.mosquitto__listener* %57) #7, !dbg !915
  %59 = icmp ne i32 %58, 0, !dbg !915
  br i1 %59, label %60, label %61, !dbg !918

; <label>:60:                                     ; preds = %56
  br label %140, !dbg !919

; <label>:61:                                     ; preds = %56
  %62 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %43, align 8, !dbg !921, !tbaa !909
  %63 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %62, i64 %47, i32 6, !dbg !922
  %64 = load i32, i32* %63, align 8, !dbg !922, !tbaa !923
  %65 = add nsw i32 %64, %50, !dbg !924
  %66 = sext i32 %65 to i64, !dbg !925
  %67 = shl nsw i64 %66, 2, !dbg !926
  %68 = call i8* @mosquitto__realloc(i8* %52, i64 %67) #7, !dbg !927
  %69 = bitcast i8* %68 to i32*, !dbg !927
  %70 = icmp ne i8* %68, null, !dbg !928
  br i1 %70, label %72, label %71, !dbg !930

; <label>:71:                                     ; preds = %61
  br label %140, !dbg !931

; <label>:72:                                     ; preds = %61
  %73 = load %struct.mosquitto__listener*, %struct.mosquitto__listener** %43, align 8, !dbg !933, !tbaa !909
  %74 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %73, i64 %47, i32 6, !dbg !936
  %75 = load i32, i32* %74, align 8, !dbg !936, !tbaa !923
  %76 = icmp sgt i32 %75, 0, !dbg !937
  br i1 %76, label %77, label %103, !dbg !938

; <label>:77:                                     ; preds = %72
  %78 = sext i32 %49 to i64, !dbg !938
  %79 = getelementptr inbounds %struct.mosquitto__listener, %struct.mosquitto__listener* %73, i64 %47, i32 5
  br label %80, !dbg !938

; <label>:80:                                     ; preds = %93, %77
  %81 = phi i64 [ %78, %77 ], [ %95, %93 ]
  %82 = phi i64 [ 0, %77 ], [ %96, %93 ]
  %83 = phi i32 [ %48, %77 ], [ %94, %93 ]
  %84 = load i32*, i32** %79, align 8, !dbg !939, !tbaa !942
  %85 = getelementptr inbounds i32, i32* %84, i64 %82, !dbg !943
  %86 = load i32, i32* %85, align 4, !dbg !943, !tbaa !944
  %87 = icmp eq i32 %86, -1, !dbg !945
  br i1 %87, label %88, label %89, !dbg !946

; <label>:88:                                     ; preds = %80
  br label %140, !dbg !947

; <label>:89:                                     ; preds = %80
  %90 = getelementptr inbounds i32, i32* %69, i64 %81, !dbg !949
  store i32 %86, i32* %90, align 4, !dbg !950, !tbaa !944
  %91 = icmp sgt i32 %86, %83, !dbg !951
  br i1 %91, label %92, label %93, !dbg !953

; <label>:92:                                     ; preds = %89
  br label %93, !dbg !954

; <label>:93:                                     ; preds = %92, %89
  %94 = phi i32 [ %86, %92 ], [ %83, %89 ]
  %95 = add nsw i64 %81, 1, !dbg !956
  %96 = add nuw nsw i64 %82, 1, !dbg !957
  %97 = load i32, i32* %74, align 8, !dbg !936, !tbaa !923
  %98 = sext i32 %97 to i64, !dbg !937
  %99 = icmp slt i64 %96, %98, !dbg !937
  br i1 %99, label %80, label %101, !dbg !938, !llvm.loop !958

; <label>:100:                                    ; preds = %45
  br label %103

; <label>:101:                                    ; preds = %93
  %102 = trunc i64 %95 to i32, !dbg !960
  br label %103, !dbg !960

; <label>:103:                                    ; preds = %101, %100, %72
  %104 = phi %struct.mosquitto__listener* [ %46, %100 ], [ %73, %72 ], [ %73, %101 ]
  %105 = phi i8* [ %52, %100 ], [ %68, %72 ], [ %68, %101 ]
  %106 = phi i32* [ %51, %100 ], [ %69, %72 ], [ %69, %101 ]
  %107 = phi i32 [ %50, %100 ], [ %65, %72 ], [ %65, %101 ]
  %108 = phi i32 [ %49, %100 ], [ %49, %72 ], [ %102, %101 ]
  %109 = phi i32 [ %48, %100 ], [ %48, %72 ], [ %94, %101 ]
  %110 = add nuw nsw i64 %47, 1, !dbg !961
  %111 = load i32, i32* %39, align 8, !dbg !900, !tbaa !903
  %112 = sext i32 %111 to i64, !dbg !904
  %113 = icmp slt i64 %110, %112, !dbg !904
  br i1 %113, label %45, label %114, !dbg !905, !llvm.loop !962

; <label>:114:                                    ; preds = %103, %38
  %115 = phi i32* [ null, %38 ], [ %106, %103 ]
  %116 = phi i32 [ 0, %38 ], [ %107, %103 ]
  %117 = phi i32 [ -1, %38 ], [ %109, %103 ]
  %118 = call i32 @drop_privileges(%struct.mosquitto__config* nonnull %3, i1 zeroext false), !dbg !964
  %119 = icmp ne i32 %118, 0, !dbg !965
  br i1 %119, label %120, label %121, !dbg !967

; <label>:120:                                    ; preds = %114
  br label %140, !dbg !968

; <label>:121:                                    ; preds = %114
  %122 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %3, i64 0, i32 30, !dbg !969
  %123 = load i32, i32* %122, align 8, !dbg !969, !tbaa !972
  %124 = icmp sgt i32 %123, 0, !dbg !973
  br i1 %124, label %125, label %137, !dbg !974

; <label>:125:                                    ; preds = %121
  %126 = getelementptr inbounds %struct.mosquitto__config, %struct.mosquitto__config* %3, i64 0, i32 29
  br label %127, !dbg !974

; <label>:127:                                    ; preds = %132, %125
  %128 = phi i64 [ 0, %125 ], [ %133, %132 ]
  %129 = load %struct.mosquitto__bridge*, %struct.mosquitto__bridge** %126, align 8, !dbg !975, !tbaa !978
  %130 = getelementptr inbounds %struct.mosquitto__bridge, %struct.mosquitto__bridge* %129, i64 %128, !dbg !979
  %131 = call i32 @bridge__new(%struct.mosquitto_db* nonnull @int_db, %struct.mosquitto__bridge* %130) #7, !dbg !980
  br label %132

; <label>:132:                                    ; preds = %127
  %133 = add nuw nsw i64 %128, 1, !dbg !981
  %134 = load i32, i32* %122, align 8, !dbg !969, !tbaa !972
  %135 = sext i32 %134 to i64, !dbg !973
  %136 = icmp slt i64 %133, %135, !dbg !973
  br i1 %136, label %127, label %137, !dbg !974, !llvm.loop !982

; <label>:137:                                    ; preds = %132, %121
  %138 = call i32 @mosquitto_main_loop(%struct.mosquitto_db* nonnull @int_db, i32* %115, i32 %116, i32 %117) #7, !dbg !984
  br label %139

; <label>:139:                                    ; preds = %137
  br label %140, !dbg !985

; <label>:140:                                    ; preds = %139, %120, %88, %71, %60, %37, %33, %29, %25, %21, %6
  %141 = phi i32 [ %4, %6 ], [ %23, %25 ], [ 1, %29 ], [ %31, %33 ], [ %35, %37 ], [ 1, %60 ], [ 1, %88 ], [ 1, %71 ], [ %118, %120 ], [ %138, %139 ], [ 1, %21 ]
  ret i32 %141, !dbg !986
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare void @config__init(%struct.mosquitto_db*, %struct.mosquitto__config*) local_unnamed_addr #3

declare i32 @config__parse_args(%struct.mosquitto_db*, %struct.mosquitto__config*, i32, i8**) local_unnamed_addr #3

declare %struct._IO_FILE* @mosquitto__fopen(i8*, i8*, i1 zeroext) local_unnamed_addr #3

declare i32 @db__open(%struct.mosquitto__config*, %struct.mosquitto_db*) local_unnamed_addr #3

declare i32 @log__init(%struct.mosquitto__config*) local_unnamed_addr #3

declare i32 @mosquitto_security_module_init(%struct.mosquitto_db*) local_unnamed_addr #3

declare i32 @mosquitto_security_init(%struct.mosquitto_db*, i1 zeroext) local_unnamed_addr #3

declare void @sys_tree__init(%struct.mosquitto_db*) local_unnamed_addr #3

declare i32 @net__socket_listen(%struct.mosquitto__listener*) local_unnamed_addr #3

declare i8* @mosquitto__realloc(i8*, i64) local_unnamed_addr #3

declare i32 @bridge__new(%struct.mosquitto_db*, %struct.mosquitto__bridge*) local_unnamed_addr #3

declare i32 @mosquitto_main_loop(%struct.mosquitto_db*, i32*, i32, i32) local_unnamed_addr #3

; Function Attrs: noinline
define internal void @__llvm_gcov_writeout() unnamed_addr #6 {
  tail call void @llvm_gcda_start_file(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @1, i64 0, i64 0), i32 771091098)
  tail call void @llvm_gcda_emit_function(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @2, i64 0, i64 0), i32 1845362685, i8 0, i32 771091098)
  tail call void @llvm_gcda_emit_arcs(i32 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @__llvm_gcov_ctr, i64 0, i64 0))
  tail call void @llvm_gcda_emit_function(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @3, i64 0, i64 0), i32 225988490, i8 0, i32 771091098)
  tail call void @llvm_gcda_emit_arcs(i32 39, i64* getelementptr inbounds ([39 x i64], [39 x i64]* @__llvm_gcov_ctr.29, i64 0, i64 0))
  tail call void @llvm_gcda_emit_function(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @4, i64 0, i64 0), i32 -1982495888, i8 0, i32 771091098)
  tail call void @llvm_gcda_emit_arcs(i32 11, i64* getelementptr inbounds ([11 x i64], [11 x i64]* @__llvm_gcov_ctr.30, i64 0, i64 0))
  tail call void @llvm_gcda_emit_function(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @5, i64 0, i64 0), i32 1950852150, i8 0, i32 771091098)
  tail call void @llvm_gcda_emit_arcs(i32 14, i64* getelementptr inbounds ([14 x i64], [14 x i64]* @__llvm_gcov_ctr.31, i64 0, i64 0))
  tail call void @llvm_gcda_emit_function(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i64 0, i64 0), i32 640241715, i8 0, i32 771091098)
  tail call void @llvm_gcda_emit_arcs(i32 128, i64* getelementptr inbounds ([128 x i64], [128 x i64]* @__llvm_gcov_ctr.32, i64 0, i64 0))
  tail call void @llvm_gcda_summary_info()
  tail call void @llvm_gcda_end_file()
  ret void
}

declare void @llvm_gcda_start_file(i8*, i8*, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i8*, i32, i8, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, i64*) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: noinline
define internal void @__llvm_gcov_flush() unnamed_addr #6 {
  tail call void @__llvm_gcov_writeout()
  call void @llvm.memset.p0i8.i64(i8* bitcast ([2 x i64]* @__llvm_gcov_ctr to i8*), i8 0, i64 16, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([39 x i64]* @__llvm_gcov_ctr.29 to i8*), i8 0, i64 312, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([11 x i64]* @__llvm_gcov_ctr.30 to i8*), i8 0, i64 88, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([14 x i64]* @__llvm_gcov_ctr.31 to i8*), i8 0, i64 112, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([128 x i64]* @__llvm_gcov_ctr.32 to i8*), i8 0, i64 1024, i32 16, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @__llvm_gcov_init() unnamed_addr #6 {
  tail call void @llvm_gcov_init(void ()* nonnull @__llvm_gcov_writeout, void ()* nonnull @__llvm_gcov_flush)
  ret void
}

declare void @llvm_gcov_init(void ()*, void ()*) local_unnamed_addr

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noinline }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!683, !684, !685}
!llvm.gcov = !{!686}
!llvm.ident = !{!687}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "int_db", scope: !2, file: !3, line: 56, type: !561, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !552)
!3 = !DIFile(filename: "mosquitto.c", directory: "/home/ryan/git/mosquitto-debloat/src")
!4 = !{!5, !12, !32, !38, !44, !50, !54, !68}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto__protocol", file: !6, line: 114, size: 32, elements: !7)
!6 = !DIFile(filename: "../lib/mosquitto_internal.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "mosq_p_invalid", value: 0)
!9 = !DIEnumerator(name: "mosq_p_mqtt31", value: 1)
!10 = !DIEnumerator(name: "mosq_p_mqtt311", value: 2)
!11 = !DIEnumerator(name: "mosq_p_mqtts", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_client_state", file: !6, line: 93, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!14 = !DIEnumerator(name: "mosq_cs_new", value: 0)
!15 = !DIEnumerator(name: "mosq_cs_connected", value: 1)
!16 = !DIEnumerator(name: "mosq_cs_disconnecting", value: 2)
!17 = !DIEnumerator(name: "mosq_cs_connect_async", value: 3)
!18 = !DIEnumerator(name: "mosq_cs_connect_pending", value: 4)
!19 = !DIEnumerator(name: "mosq_cs_connect_srv", value: 5)
!20 = !DIEnumerator(name: "mosq_cs_disconnect_ws", value: 6)
!21 = !DIEnumerator(name: "mosq_cs_disconnected", value: 7)
!22 = !DIEnumerator(name: "mosq_cs_socks5_new", value: 8)
!23 = !DIEnumerator(name: "mosq_cs_socks5_start", value: 9)
!24 = !DIEnumerator(name: "mosq_cs_socks5_request", value: 10)
!25 = !DIEnumerator(name: "mosq_cs_socks5_reply", value: 11)
!26 = !DIEnumerator(name: "mosq_cs_socks5_auth_ok", value: 12)
!27 = !DIEnumerator(name: "mosq_cs_socks5_userpass_reply", value: 13)
!28 = !DIEnumerator(name: "mosq_cs_socks5_send_userpass", value: 14)
!29 = !DIEnumerator(name: "mosq_cs_expiring", value: 15)
!30 = !DIEnumerator(name: "mosq_cs_connecting", value: 16)
!31 = !DIEnumerator(name: "mosq_cs_duplicate", value: 17)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto__bridge_direction", file: !33, line: 401, size: 32, elements: !34)
!33 = !DIFile(filename: "./mosquitto_broker_internal.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "bd_out", value: 0)
!36 = !DIEnumerator(name: "bd_in", value: 1)
!37 = !DIEnumerator(name: "bd_both", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_bridge_start_type", file: !33, line: 407, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "bst_automatic", value: 0)
!41 = !DIEnumerator(name: "bst_lazy", value: 1)
!42 = !DIEnumerator(name: "bst_manual", value: 2)
!43 = !DIEnumerator(name: "bst_once", value: 3)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_protocol", file: !45, line: 24, size: 32, elements: !46)
!45 = !DIFile(filename: "./mosquitto_broker.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "mp_mqtt", value: 0)
!48 = !DIEnumerator(name: "mp_mqttsn", value: 1)
!49 = !DIEnumerator(name: "mp_websockets", value: 2)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_msg_direction", file: !6, line: 73, size: 32, elements: !51)
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "mosq_md_in", value: 0)
!53 = !DIEnumerator(name: "mosq_md_out", value: 1)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosquitto_msg_state", file: !6, line: 78, size: 32, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!56 = !DIEnumerator(name: "mosq_ms_invalid", value: 0)
!57 = !DIEnumerator(name: "mosq_ms_publish_qos0", value: 1)
!58 = !DIEnumerator(name: "mosq_ms_publish_qos1", value: 2)
!59 = !DIEnumerator(name: "mosq_ms_wait_for_puback", value: 3)
!60 = !DIEnumerator(name: "mosq_ms_publish_qos2", value: 4)
!61 = !DIEnumerator(name: "mosq_ms_wait_for_pubrec", value: 5)
!62 = !DIEnumerator(name: "mosq_ms_resend_pubrel", value: 6)
!63 = !DIEnumerator(name: "mosq_ms_wait_for_pubrel", value: 7)
!64 = !DIEnumerator(name: "mosq_ms_resend_pubcomp", value: 8)
!65 = !DIEnumerator(name: "mosq_ms_wait_for_pubcomp", value: 9)
!66 = !DIEnumerator(name: "mosq_ms_send_pubrec", value: 10)
!67 = !DIEnumerator(name: "mosq_ms_queued", value: 11)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mosq_err_t", file: !69, line: 67, size: 32, elements: !70)
!69 = !DIFile(filename: "../lib/mosquitto.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!71 = !DIEnumerator(name: "MOSQ_ERR_CONN_PENDING", value: -1)
!72 = !DIEnumerator(name: "MOSQ_ERR_SUCCESS", value: 0)
!73 = !DIEnumerator(name: "MOSQ_ERR_NOMEM", value: 1)
!74 = !DIEnumerator(name: "MOSQ_ERR_PROTOCOL", value: 2)
!75 = !DIEnumerator(name: "MOSQ_ERR_INVAL", value: 3)
!76 = !DIEnumerator(name: "MOSQ_ERR_NO_CONN", value: 4)
!77 = !DIEnumerator(name: "MOSQ_ERR_CONN_REFUSED", value: 5)
!78 = !DIEnumerator(name: "MOSQ_ERR_NOT_FOUND", value: 6)
!79 = !DIEnumerator(name: "MOSQ_ERR_CONN_LOST", value: 7)
!80 = !DIEnumerator(name: "MOSQ_ERR_TLS", value: 8)
!81 = !DIEnumerator(name: "MOSQ_ERR_PAYLOAD_SIZE", value: 9)
!82 = !DIEnumerator(name: "MOSQ_ERR_NOT_SUPPORTED", value: 10)
!83 = !DIEnumerator(name: "MOSQ_ERR_AUTH", value: 11)
!84 = !DIEnumerator(name: "MOSQ_ERR_ACL_DENIED", value: 12)
!85 = !DIEnumerator(name: "MOSQ_ERR_UNKNOWN", value: 13)
!86 = !DIEnumerator(name: "MOSQ_ERR_ERRNO", value: 14)
!87 = !DIEnumerator(name: "MOSQ_ERR_EAI", value: 15)
!88 = !DIEnumerator(name: "MOSQ_ERR_PROXY", value: 16)
!89 = !DIEnumerator(name: "MOSQ_ERR_PLUGIN_DEFER", value: 17)
!90 = !DIEnumerator(name: "MOSQ_ERR_MALFORMED_UTF8", value: 18)
!91 = !DIEnumerator(name: "MOSQ_ERR_KEEPALIVE", value: 19)
!92 = !DIEnumerator(name: "MOSQ_ERR_LOOKUP", value: 20)
!93 = !{!94, !100, !161}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !95, line: 72, baseType: !96)
!95 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99}
!99 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto", file: !6, line: 156, size: 3904, elements: !102)
!102 = !{!103, !105, !106, !109, !110, !111, !112, !118, !119, !120, !125, !126, !127, !152, !153, !154, !166, !171, !175, !176, !177, !178, !179, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !255, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !545, !546, !547, !548, !549, !550, !551}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !101, file: !6, line: 157, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosq_sock_t", file: !6, line: 70, baseType: !99)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !101, file: !6, line: 164, baseType: !5, size: 32, offset: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !101, file: !6, line: 165, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !101, file: !6, line: 166, baseType: !107, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !101, file: !6, line: 167, baseType: !107, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !101, file: !6, line: 168, baseType: !107, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !101, file: !6, line: 169, baseType: !113, size: 16, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !114, line: 25, baseType: !115)
!114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !116, line: 39, baseType: !117)
!116 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "last_mid", scope: !101, file: !6, line: 170, baseType: !113, size: 16, offset: 336)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !101, file: !6, line: 171, baseType: !12, size: 32, offset: 352)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "last_msg_in", scope: !101, file: !6, line: 172, baseType: !121, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !122, line: 7, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !116, line: 148, baseType: !124)
!124 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_msg_out", scope: !101, file: !6, line: 173, baseType: !121, size: 64, offset: 448)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ping_t", scope: !101, file: !6, line: 174, baseType: !121, size: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "in_packet", scope: !101, file: !6, line: 175, baseType: !128, size: 320, offset: 576)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__packet", file: !6, line: 134, size: 320, elements: !129)
!129 = !{!130, !135, !137, !141, !142, !143, !144, !145, !146, !147}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !128, file: !6, line: 135, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !114, line: 24, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !116, line: 37, baseType: !134)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !6, line: 136, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_mult", scope: !128, file: !6, line: 137, baseType: !138, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 26, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !116, line: 41, baseType: !140)
!140 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_length", scope: !128, file: !6, line: 138, baseType: !138, size: 32, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !128, file: !6, line: 139, baseType: !138, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "to_process", scope: !128, file: !6, line: 140, baseType: !138, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !128, file: !6, line: 141, baseType: !138, size: 32, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !128, file: !6, line: 142, baseType: !113, size: 16, offset: 288)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !128, file: !6, line: 143, baseType: !132, size: 8, offset: 304)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "remaining_count", scope: !128, file: !6, line: 144, baseType: !148, size: 8, offset: 312)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !149, line: 24, baseType: !150)
!149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !116, line: 36, baseType: !151)
!151 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "current_out_packet", scope: !101, file: !6, line: 176, baseType: !136, size: 64, offset: 896)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet", scope: !101, file: !6, line: 177, baseType: !136, size: 64, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "will", scope: !101, file: !6, line: 178, baseType: !155, size: 64, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_message", file: !69, line: 105, size: 320, elements: !157)
!157 = !{!158, !159, !160, !162, !163, !164}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !156, file: !69, line: 106, baseType: !99, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !156, file: !69, line: 107, baseType: !107, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !156, file: !69, line: 108, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !156, file: !69, line: 109, baseType: !99, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !156, file: !69, line: 110, baseType: !99, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !156, file: !69, line: 111, baseType: !165, size: 8, offset: 256)
!165 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !101, file: !6, line: 180, baseType: !167, size: 64, offset: 1088)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !169, line: 144, baseType: !170)
!169 = !DIFile(filename: "/usr/include/openssl/ossl_typ.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !169, line: 144, flags: DIFlagFwdDecl)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx", scope: !101, file: !6, line: 181, baseType: !172, size: 64, offset: 1152)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !169, line: 145, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !169, line: 145, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !101, file: !6, line: 182, baseType: !107, size: 64, offset: 1216)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !101, file: !6, line: 183, baseType: !107, size: 64, offset: 1280)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tls_certfile", scope: !101, file: !6, line: 184, baseType: !107, size: 64, offset: 1344)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tls_keyfile", scope: !101, file: !6, line: 185, baseType: !107, size: 64, offset: 1408)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pw_callback", scope: !101, file: !6, line: 186, baseType: !180, size: 64, offset: 1472)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!99, !107, !99, !99, !161}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tls_version", scope: !101, file: !6, line: 187, baseType: !107, size: 64, offset: 1536)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !101, file: !6, line: 188, baseType: !107, size: 64, offset: 1600)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tls_psk", scope: !101, file: !6, line: 189, baseType: !107, size: 64, offset: 1664)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tls_psk_identity", scope: !101, file: !6, line: 190, baseType: !107, size: 64, offset: 1728)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert_reqs", scope: !101, file: !6, line: 191, baseType: !99, size: 32, offset: 1792)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tls_insecure", scope: !101, file: !6, line: 192, baseType: !165, size: 8, offset: 1824)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx_defaults", scope: !101, file: !6, line: 193, baseType: !165, size: 8, offset: 1832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "want_write", scope: !101, file: !6, line: 195, baseType: !165, size: 8, offset: 1840)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "want_connect", scope: !101, file: !6, line: 196, baseType: !165, size: 8, offset: 1848)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "clean_session", scope: !101, file: !6, line: 209, baseType: !165, size: 8, offset: 1856)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "removed_from_by_id", scope: !101, file: !6, line: 211, baseType: !165, size: 8, offset: 1864)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "is_dropping", scope: !101, file: !6, line: 212, baseType: !165, size: 8, offset: 1872)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "is_bridge", scope: !101, file: !6, line: 213, baseType: !165, size: 8, offset: 1880)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !101, file: !6, line: 214, baseType: !197, size: 64, offset: 1920)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__bridge", file: !33, line: 429, size: 1728, elements: !199)
!199 = !{!200, !201, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !33, line: 430, baseType: !107, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "addresses", scope: !198, file: !33, line: 431, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bridge_address", file: !33, line: 424, size: 128, elements: !204)
!204 = !{!205, !206}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !203, file: !33, line: 425, baseType: !107, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !203, file: !33, line: 426, baseType: !99, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cur_address", scope: !198, file: !33, line: 432, baseType: !99, size: 32, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "address_count", scope: !198, file: !33, line: 433, baseType: !99, size: 32, offset: 160)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "primary_retry", scope: !198, file: !33, line: 434, baseType: !121, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "primary_retry_sock", scope: !198, file: !33, line: 435, baseType: !104, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !198, file: !33, line: 436, baseType: !165, size: 8, offset: 288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "try_private", scope: !198, file: !33, line: 437, baseType: !165, size: 8, offset: 296)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "try_private_accepted", scope: !198, file: !33, line: 438, baseType: !165, size: 8, offset: 304)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "clean_session", scope: !198, file: !33, line: 439, baseType: !165, size: 8, offset: 312)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "keepalive", scope: !198, file: !33, line: 440, baseType: !99, size: 32, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "topics", scope: !198, file: !33, line: 441, baseType: !217, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__bridge_topic", file: !33, line: 414, size: 384, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !218, file: !33, line: 415, baseType: !107, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !218, file: !33, line: 416, baseType: !99, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !218, file: !33, line: 417, baseType: !32, size: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "local_prefix", scope: !218, file: !33, line: 418, baseType: !107, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "remote_prefix", scope: !218, file: !33, line: 419, baseType: !107, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "local_topic", scope: !218, file: !33, line: 420, baseType: !107, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "remote_topic", scope: !218, file: !33, line: 421, baseType: !107, size: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "topic_count", scope: !198, file: !33, line: 442, baseType: !99, size: 32, offset: 448)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "topic_remapping", scope: !198, file: !33, line: 443, baseType: !165, size: 8, offset: 480)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !198, file: !33, line: 444, baseType: !5, size: 32, offset: 512)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "restart_t", scope: !198, file: !33, line: 445, baseType: !121, size: 64, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "remote_clientid", scope: !198, file: !33, line: 446, baseType: !107, size: 64, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "remote_username", scope: !198, file: !33, line: 447, baseType: !107, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "remote_password", scope: !198, file: !33, line: 448, baseType: !107, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "local_clientid", scope: !198, file: !33, line: 449, baseType: !107, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "local_username", scope: !198, file: !33, line: 450, baseType: !107, size: 64, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "local_password", scope: !198, file: !33, line: 451, baseType: !107, size: 64, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "notification_topic", scope: !198, file: !33, line: 452, baseType: !107, size: 64, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "notifications", scope: !198, file: !33, line: 453, baseType: !165, size: 8, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "notifications_local_only", scope: !198, file: !33, line: 454, baseType: !165, size: 8, offset: 1096)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "start_type", scope: !198, file: !33, line: 455, baseType: !38, size: 32, offset: 1120)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "idle_timeout", scope: !198, file: !33, line: 456, baseType: !99, size: 32, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "restart_timeout", scope: !198, file: !33, line: 457, baseType: !99, size: 32, offset: 1184)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "threshold", scope: !198, file: !33, line: 458, baseType: !99, size: 32, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_reconnect", scope: !198, file: !33, line: 459, baseType: !165, size: 8, offset: 1248)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "attempt_unsubscribe", scope: !198, file: !33, line: 460, baseType: !165, size: 8, offset: 1256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "initial_notification_done", scope: !198, file: !33, line: 461, baseType: !165, size: 8, offset: 1264)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tls_insecure", scope: !198, file: !33, line: 463, baseType: !165, size: 8, offset: 1272)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !198, file: !33, line: 464, baseType: !107, size: 64, offset: 1280)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !198, file: !33, line: 465, baseType: !107, size: 64, offset: 1344)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tls_certfile", scope: !198, file: !33, line: 466, baseType: !107, size: 64, offset: 1408)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tls_keyfile", scope: !198, file: !33, line: 467, baseType: !107, size: 64, offset: 1472)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tls_version", scope: !198, file: !33, line: 468, baseType: !107, size: 64, offset: 1536)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tls_psk_identity", scope: !198, file: !33, line: 470, baseType: !107, size: 64, offset: 1600)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tls_psk", scope: !198, file: !33, line: 471, baseType: !107, size: 64, offset: 1664)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "inflight_msgs", scope: !101, file: !6, line: 215, baseType: !256, size: 64, offset: 1984)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_client_msg", file: !33, line: 330, size: 320, elements: !258)
!258 = !{!259, !260, !503, !504, !505, !506, !507, !508, !509}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !33, line: 331, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !257, file: !33, line: 332, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_store", file: !33, line: 311, size: 768, elements: !263)
!263 = !{!264, !265, !266, !271, !272, !273, !484, !486, !487, !488, !489, !498, !499, !500, !501, !502}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !33, line: 312, baseType: !261, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !262, file: !33, line: 313, baseType: !261, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "db_id", scope: !262, file: !33, line: 314, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "dbid_t", file: !33, line: 142, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !114, line: 27, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !116, line: 44, baseType: !270)
!270 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !262, file: !33, line: 315, baseType: !107, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "source_username", scope: !262, file: !33, line: 316, baseType: !107, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "source_listener", scope: !262, file: !33, line: 317, baseType: !274, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__listener", file: !33, line: 211, size: 1856, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !436, !483}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !275, file: !33, line: 212, baseType: !99, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !275, file: !33, line: 213, baseType: !113, size: 16, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !275, file: !33, line: 214, baseType: !107, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "max_connections", scope: !275, file: !33, line: 215, baseType: !99, size: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mount_point", scope: !275, file: !33, line: 216, baseType: !107, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "socks", scope: !275, file: !33, line: 217, baseType: !283, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sock_count", scope: !275, file: !33, line: 218, baseType: !99, size: 32, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "client_count", scope: !275, file: !33, line: 219, baseType: !99, size: 32, offset: 352)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !275, file: !33, line: 220, baseType: !44, size: 32, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "socket_domain", scope: !275, file: !33, line: 221, baseType: !99, size: 32, offset: 416)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "use_username_as_clientid", scope: !275, file: !33, line: 222, baseType: !165, size: 8, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "cafile", scope: !275, file: !33, line: 224, baseType: !107, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "capath", scope: !275, file: !33, line: 225, baseType: !107, size: 64, offset: 576)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "certfile", scope: !275, file: !33, line: 226, baseType: !107, size: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "keyfile", scope: !275, file: !33, line: 227, baseType: !107, size: 64, offset: 704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ciphers", scope: !275, file: !33, line: 228, baseType: !107, size: 64, offset: 768)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "psk_hint", scope: !275, file: !33, line: 229, baseType: !107, size: 64, offset: 832)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ctx", scope: !275, file: !33, line: 230, baseType: !172, size: 64, offset: 896)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "crlfile", scope: !275, file: !33, line: 231, baseType: !107, size: 64, offset: 960)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "use_identity_as_username", scope: !275, file: !33, line: 232, baseType: !165, size: 8, offset: 1024)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "use_subject_as_username", scope: !275, file: !33, line: 233, baseType: !165, size: 8, offset: 1032)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "require_certificate", scope: !275, file: !33, line: 234, baseType: !165, size: 8, offset: 1040)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tls_version", scope: !275, file: !33, line: 235, baseType: !107, size: 64, offset: 1088)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "security_options", scope: !275, file: !33, line: 242, baseType: !302, size: 576, offset: 1152)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__security_options", file: !33, line: 193, size: 576, elements: !303)
!303 = !{!304, !319, !320, !321, !322, !323, !431, !432, !433, !434, !435}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "acl_list", scope: !302, file: !33, line: 198, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__acl_user", file: !33, line: 361, size: 192, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !33, line: 362, baseType: !305, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !306, file: !33, line: 363, baseType: !107, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !306, file: !33, line: 364, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__acl", file: !33, line: 353, size: 256, elements: !313)
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !33, line: 354, baseType: !311, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !312, file: !33, line: 355, baseType: !107, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !312, file: !33, line: 356, baseType: !99, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !312, file: !33, line: 357, baseType: !99, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ccount", scope: !312, file: !33, line: 358, baseType: !99, size: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "acl_patterns", scope: !302, file: !33, line: 199, baseType: !311, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !302, file: !33, line: 200, baseType: !107, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "psk_file", scope: !302, file: !33, line: 201, baseType: !107, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "acl_file", scope: !302, file: !33, line: 202, baseType: !107, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_configs", scope: !302, file: !33, line: 203, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__auth_plugin_config", file: !33, line: 183, size: 1344, elements: !326)
!326 = !{!327, !328, !335, !336, !337}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !325, file: !33, line: 185, baseType: !107, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !325, file: !33, line: 186, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_opt", file: !331, line: 31, size: 128, elements: !332)
!331 = !DIFile(filename: "./mosquitto_plugin.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !330, file: !331, line: 32, baseType: !107, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !331, line: 33, baseType: !107, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "option_count", scope: !325, file: !33, line: 187, baseType: !99, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "deny_special_chars", scope: !325, file: !33, line: 188, baseType: !165, size: 8, offset: 160)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "plugin", scope: !325, file: !33, line: 190, baseType: !338, size: 1152, offset: 192)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__auth_plugin", file: !33, line: 160, size: 1152, elements: !339)
!339 = !{!340, !341, !342, !346, !352, !357, !362, !364, !383, !388, !393, !403, !408, !413, !415, !420, !425, !430}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "lib", scope: !338, file: !33, line: 161, baseType: !161, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !338, file: !33, line: 162, baseType: !161, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_version", scope: !338, file: !33, line: 163, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!99}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v3", scope: !338, file: !33, line: 165, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v3", file: !33, line: 144, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!99, !351, !329, !99}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v3", scope: !338, file: !33, line: 166, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v3", file: !33, line: 145, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!99, !161, !329, !99}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v3", scope: !338, file: !33, line: 167, baseType: !358, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v3", file: !33, line: 146, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!99, !161, !329, !99, !165}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v3", scope: !338, file: !33, line: 168, baseType: !363, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v3", file: !33, line: 147, baseType: !359)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v3", scope: !338, file: !33, line: 169, baseType: !365, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v3", file: !33, line: 148, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!99, !161, !99, !369, !371}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_acl_msg", file: !331, line: 41, size: 256, elements: !373)
!373 = !{!374, !377, !380, !381, !382}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !372, file: !331, line: 42, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !372, file: !331, line: 43, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !372, file: !331, line: 44, baseType: !124, size: 64, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !372, file: !331, line: 45, baseType: !99, size: 32, offset: 192)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !372, file: !331, line: 46, baseType: !165, size: 8, offset: 224)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v3", scope: !338, file: !33, line: 170, baseType: !384, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v3", file: !33, line: 149, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!99, !161, !369, !375, !375}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v3", scope: !338, file: !33, line: 171, baseType: !389, size: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v3", file: !33, line: 150, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!99, !161, !369, !375, !375, !107, !99}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_init_v2", scope: !338, file: !33, line: 173, baseType: !394, size: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_init_v2", file: !33, line: 152, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!99, !351, !398, !99}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_auth_opt", file: !331, line: 36, size: 128, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !399, file: !331, line: 37, baseType: !107, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !399, file: !331, line: 38, baseType: !107, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "plugin_cleanup_v2", scope: !338, file: !33, line: 174, baseType: !404, size: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_cleanup_v2", file: !33, line: 153, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!99, !161, !398, !99}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "security_init_v2", scope: !338, file: !33, line: 175, baseType: !409, size: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_init_v2", file: !33, line: 154, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!99, !161, !398, !99, !165}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "security_cleanup_v2", scope: !338, file: !33, line: 176, baseType: !414, size: 64, offset: 832)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_security_cleanup_v2", file: !33, line: 155, baseType: !410)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "acl_check_v2", scope: !338, file: !33, line: 177, baseType: !416, size: 64, offset: 896)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_acl_check_v2", file: !33, line: 156, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!99, !161, !375, !375, !375, !99}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd_check_v2", scope: !338, file: !33, line: 178, baseType: !421, size: 64, offset: 960)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_unpwd_check_v2", file: !33, line: 157, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!99, !161, !375, !375}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "psk_key_get_v2", scope: !338, file: !33, line: 179, baseType: !426, size: 64, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FUNC_auth_plugin_psk_key_get_v2", file: !33, line: 158, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!99, !161, !375, !375, !107, !99}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !338, file: !33, line: 180, baseType: !99, size: 32, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_config_count", scope: !302, file: !33, line: 204, baseType: !99, size: 32, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "allow_anonymous", scope: !302, file: !33, line: 205, baseType: !148, size: 8, offset: 416)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "allow_zero_length_clientid", scope: !302, file: !33, line: 206, baseType: !165, size: 8, offset: 424)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "auto_id_prefix", scope: !302, file: !33, line: 207, baseType: !107, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "auto_id_prefix_len", scope: !302, file: !33, line: 208, baseType: !99, size: 32, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd", scope: !275, file: !33, line: 243, baseType: !437, size: 64, offset: 1728)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__unpwd", file: !33, line: 342, size: 704, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !446}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !438, file: !33, line: 343, baseType: !107, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !438, file: !33, line: 344, baseType: !107, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "password_len", scope: !438, file: !33, line: 346, baseType: !140, size: 32, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "salt_len", scope: !438, file: !33, line: 347, baseType: !140, size: 32, offset: 160)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "salt", scope: !438, file: !33, line: 348, baseType: !445, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !438, file: !33, line: 350, baseType: !447, size: 448, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "UT_hash_handle", file: !448, line: 946, baseType: !449)
!448 = !DIFile(filename: "deps/uthash.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_handle", file: !448, line: 937, size: 448, elements: !450)
!450 = !{!451, !476, !477, !478, !479, !480, !481, !482}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !449, file: !448, line: 938, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_table", file: !448, line: 904, size: 512, elements: !454)
!454 = !{!455, !464, !465, !466, !467, !468, !471, !472, !473, !474, !475}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !453, file: !448, line: 905, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "UT_hash_bucket", file: !448, line: 898, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "UT_hash_bucket", file: !448, line: 880, size: 128, elements: !459)
!459 = !{!460, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "hh_head", scope: !458, file: !448, line: 881, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !458, file: !448, line: 882, baseType: !140, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "expand_mult", scope: !458, file: !448, line: 896, baseType: !140, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !453, file: !448, line: 906, baseType: !140, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "log2_num_buckets", scope: !453, file: !448, line: 906, baseType: !140, size: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "num_items", scope: !453, file: !448, line: 907, baseType: !140, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !453, file: !448, line: 908, baseType: !461, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hho", scope: !453, file: !448, line: 909, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !470, line: 51, baseType: !124)
!470 = !DIFile(filename: "/usr/lib/llvm-6.0/lib/clang/6.0.0/include/stddef.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ideal_chain_maxlen", scope: !453, file: !448, line: 913, baseType: !140, size: 32, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nonideal_items", scope: !453, file: !448, line: 918, baseType: !140, size: 32, offset: 352)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ineff_expands", scope: !453, file: !448, line: 926, baseType: !140, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "noexpand", scope: !453, file: !448, line: 926, baseType: !140, size: 32, offset: 416)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !453, file: !448, line: 928, baseType: !138, size: 32, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !449, file: !448, line: 939, baseType: !161, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !448, line: 940, baseType: !161, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "hh_prev", scope: !449, file: !448, line: 941, baseType: !461, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hh_next", scope: !449, file: !448, line: 942, baseType: !461, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !449, file: !448, line: 943, baseType: !161, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "keylen", scope: !449, file: !448, line: 944, baseType: !140, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hashv", scope: !449, file: !448, line: 945, baseType: !140, size: 32, offset: 416)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "psk_id", scope: !275, file: !33, line: 244, baseType: !437, size: 64, offset: 1792)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dest_ids", scope: !262, file: !33, line: 318, baseType: !485, size: 64, offset: 384)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dest_id_count", scope: !262, file: !33, line: 319, baseType: !99, size: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !262, file: !33, line: 320, baseType: !99, size: 32, offset: 480)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !262, file: !33, line: 321, baseType: !107, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !262, file: !33, line: 322, baseType: !490, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosquitto__payload_uhpa", file: !33, line: 122, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 119, size: 64, elements: !492)
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !491, file: !33, line: 120, baseType: !161, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !491, file: !33, line: 121, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 8)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "payloadlen", scope: !262, file: !33, line: 323, baseType: !138, size: 32, offset: 640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "source_mid", scope: !262, file: !33, line: 324, baseType: !113, size: 16, offset: 672)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !262, file: !33, line: 325, baseType: !113, size: 16, offset: 688)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !262, file: !33, line: 326, baseType: !132, size: 8, offset: 704)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !262, file: !33, line: 327, baseType: !165, size: 8, offset: 712)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !257, file: !33, line: 333, baseType: !121, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !257, file: !33, line: 334, baseType: !113, size: 16, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !257, file: !33, line: 335, baseType: !132, size: 8, offset: 208)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "retain", scope: !257, file: !33, line: 336, baseType: !165, size: 8, offset: 216)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !257, file: !33, line: 337, baseType: !50, size: 32, offset: 224)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !33, line: 338, baseType: !54, size: 32, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !257, file: !33, line: 339, baseType: !165, size: 8, offset: 288)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "last_inflight_msg", scope: !101, file: !6, line: 216, baseType: !256, size: 64, offset: 2048)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "queued_msgs", scope: !101, file: !6, line: 217, baseType: !256, size: 64, offset: 2112)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued_msg", scope: !101, file: !6, line: 218, baseType: !256, size: 64, offset: 2176)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "msg_bytes", scope: !101, file: !6, line: 219, baseType: !270, size: 64, offset: 2240)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "msg_bytes12", scope: !101, file: !6, line: 220, baseType: !270, size: 64, offset: 2304)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count", scope: !101, file: !6, line: 221, baseType: !99, size: 32, offset: 2368)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "msg_count12", scope: !101, file: !6, line: 222, baseType: !99, size: 32, offset: 2400)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "acl_list", scope: !101, file: !6, line: 223, baseType: !305, size: 64, offset: 2432)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !101, file: !6, line: 224, baseType: !274, size: 64, offset: 2496)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect_t", scope: !101, file: !6, line: 225, baseType: !121, size: 64, offset: 2560)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "out_packet_last", scope: !101, file: !6, line: 226, baseType: !136, size: 64, offset: 2624)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !101, file: !6, line: 227, baseType: !522, size: 64, offset: 2688)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subhier", file: !33, line: 295, size: 832, elements: !525)
!525 = !{!526, !527, !528, !529, !537, !538, !544}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !524, file: !33, line: 296, baseType: !447, size: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !524, file: !33, line: 297, baseType: !523, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !524, file: !33, line: 298, baseType: !523, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !524, file: !33, line: 299, baseType: !530, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__subleaf", file: !33, line: 288, size: 256, elements: !532)
!532 = !{!533, !534, !535, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !531, file: !33, line: 289, baseType: !530, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !33, line: 290, baseType: !530, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !531, file: !33, line: 291, baseType: !100, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !531, file: !33, line: 292, baseType: !99, size: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "retained", scope: !524, file: !33, line: 300, baseType: !261, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !524, file: !33, line: 301, baseType: !539, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "mosquitto__topic_element_uhpa", file: !33, line: 132, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 129, size: 64, elements: !541)
!541 = !{!542, !543}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !540, file: !33, line: 130, baseType: !107, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !540, file: !33, line: 131, baseType: !495, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "topic_len", scope: !524, file: !33, line: 302, baseType: !113, size: 16, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sub_count", scope: !101, file: !6, line: 228, baseType: !99, size: 32, offset: 2752)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pollfd_index", scope: !101, file: !6, line: 229, baseType: !99, size: 32, offset: 2784)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ws_want_write", scope: !101, file: !6, line: 238, baseType: !165, size: 8, offset: 2816)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hh_id", scope: !101, file: !6, line: 279, baseType: !447, size: 448, offset: 2880)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "hh_sock", scope: !101, file: !6, line: 280, baseType: !447, size: 448, offset: 3328)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "for_free_next", scope: !101, file: !6, line: 281, baseType: !100, size: 64, offset: 3776)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !101, file: !6, line: 284, baseType: !138, size: 32, offset: 3840)
!552 = !{!553, !555, !557, !0, !559}
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "flag_reload", scope: !2, file: !3, line: 58, type: !165, isLocal: false, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "flag_db_backup", scope: !2, file: !3, line: 60, type: !165, isLocal: false, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "flag_tree_print", scope: !2, file: !3, line: 62, type: !165, isLocal: false, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "run", scope: !2, file: !3, line: 63, type: !99, isLocal: false, isDefinition: true)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_db", file: !33, line: 367, size: 1280, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !572, !575, !576, !583, !584, !585, !586, !587, !676, !677, !678, !679, !680, !681, !682}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "last_db_id", scope: !561, file: !33, line: 368, baseType: !267, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "subs", scope: !561, file: !33, line: 369, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "unpwd", scope: !561, file: !33, line: 370, baseType: !437, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "psk_id", scope: !561, file: !33, line: 371, baseType: !437, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "contexts_by_id", scope: !561, file: !33, line: 372, baseType: !100, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "contexts_by_sock", scope: !561, file: !33, line: 373, baseType: !100, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "contexts_for_free", scope: !561, file: !33, line: 374, baseType: !100, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "bridges", scope: !561, file: !33, line: 376, baseType: !571, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "clientid_index_hash", scope: !561, file: !33, line: 378, baseType: !573, size: 64, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "clientid__index_hash", file: !33, line: 378, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store", scope: !561, file: !33, line: 379, baseType: !261, size: 64, offset: 576)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store_load", scope: !561, file: !33, line: 380, baseType: !577, size: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto_msg_store_load", file: !33, line: 305, size: 576, elements: !579)
!579 = !{!580, !581, !582}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hh", scope: !578, file: !33, line: 306, baseType: !447, size: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "db_id", scope: !578, file: !33, line: 307, baseType: !267, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !578, file: !33, line: 308, baseType: !261, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_count", scope: !561, file: !33, line: 382, baseType: !99, size: 32, offset: 704)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store_count", scope: !561, file: !33, line: 384, baseType: !99, size: 32, offset: 736)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "msg_store_bytes", scope: !561, file: !33, line: 385, baseType: !270, size: 64, offset: 768)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "config_file", scope: !561, file: !33, line: 386, baseType: !107, size: 64, offset: 832)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !561, file: !33, line: 387, baseType: !588, size: 64, offset: 896)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mosquitto__config", file: !33, line: 247, size: 3776, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "allow_duplicate_messages", scope: !589, file: !33, line: 248, baseType: !165, size: 8)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "autosave_interval", scope: !589, file: !33, line: 249, baseType: !99, size: 32, offset: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "autosave_on_changes", scope: !589, file: !33, line: 250, baseType: !165, size: 8, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "check_retain_source", scope: !589, file: !33, line: 251, baseType: !165, size: 8, offset: 72)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "clientid_prefixes", scope: !589, file: !33, line: 252, baseType: !107, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "connection_messages", scope: !589, file: !33, line: 253, baseType: !165, size: 8, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "daemon", scope: !589, file: !33, line: 254, baseType: !165, size: 8, offset: 200)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "default_listener", scope: !589, file: !33, line: 255, baseType: !275, size: 1856, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "listeners", scope: !589, file: !33, line: 256, baseType: !274, size: 64, offset: 2112)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "listener_count", scope: !589, file: !33, line: 257, baseType: !99, size: 32, offset: 2176)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "log_dest", scope: !589, file: !33, line: 258, baseType: !99, size: 32, offset: 2208)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "log_facility", scope: !589, file: !33, line: 259, baseType: !99, size: 32, offset: 2240)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "log_type", scope: !589, file: !33, line: 260, baseType: !99, size: 32, offset: 2272)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "log_timestamp", scope: !589, file: !33, line: 261, baseType: !165, size: 8, offset: 2304)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "log_file", scope: !589, file: !33, line: 262, baseType: !107, size: 64, offset: 2368)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "log_fptr", scope: !589, file: !33, line: 263, baseType: !607, size: 64, offset: 2432)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !609, line: 7, baseType: !610)
!609 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !611, line: 245, size: 1728, elements: !612)
!611 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !633, !634, !635, !636, !638, !639, !640, !644, !647, !649, !650, !651, !652, !653, !655, !656}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !610, file: !611, line: 246, baseType: !99, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !610, file: !611, line: 251, baseType: !107, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !610, file: !611, line: 252, baseType: !107, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !610, file: !611, line: 253, baseType: !107, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !610, file: !611, line: 254, baseType: !107, size: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !610, file: !611, line: 255, baseType: !107, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !610, file: !611, line: 256, baseType: !107, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !610, file: !611, line: 257, baseType: !107, size: 64, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !610, file: !611, line: 258, baseType: !107, size: 64, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !610, file: !611, line: 260, baseType: !107, size: 64, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !610, file: !611, line: 261, baseType: !107, size: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !610, file: !611, line: 262, baseType: !107, size: 64, offset: 704)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !610, file: !611, line: 264, baseType: !626, size: 64, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !611, line: 160, size: 192, elements: !628)
!628 = !{!629, !630, !632}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !627, file: !611, line: 161, baseType: !626, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !627, file: !611, line: 162, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !627, file: !611, line: 166, baseType: !99, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !610, file: !611, line: 266, baseType: !631, size: 64, offset: 832)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !610, file: !611, line: 268, baseType: !99, size: 32, offset: 896)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !610, file: !611, line: 272, baseType: !99, size: 32, offset: 928)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !610, file: !611, line: 274, baseType: !637, size: 64, offset: 960)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !116, line: 140, baseType: !124)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !610, file: !611, line: 278, baseType: !117, size: 16, offset: 1024)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !610, file: !611, line: 279, baseType: !151, size: 8, offset: 1040)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !610, file: !611, line: 280, baseType: !641, size: 8, offset: 1048)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 8, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 1)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !610, file: !611, line: 284, baseType: !645, size: 64, offset: 1088)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !611, line: 154, baseType: null)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !610, file: !611, line: 293, baseType: !648, size: 64, offset: 1152)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !116, line: 141, baseType: !124)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !610, file: !611, line: 301, baseType: !161, size: 64, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !610, file: !611, line: 302, baseType: !161, size: 64, offset: 1280)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !610, file: !611, line: 303, baseType: !161, size: 64, offset: 1344)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !610, file: !611, line: 304, baseType: !161, size: 64, offset: 1408)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !610, file: !611, line: 306, baseType: !654, size: 64, offset: 1472)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !470, line: 62, baseType: !270)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !610, file: !611, line: 307, baseType: !99, size: 32, offset: 1536)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !610, file: !611, line: 309, baseType: !657, size: 160, offset: 1568)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 160, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 20)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "message_size_limit", scope: !589, file: !33, line: 264, baseType: !138, size: 32, offset: 2496)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "persistence", scope: !589, file: !33, line: 265, baseType: !165, size: 8, offset: 2528)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_location", scope: !589, file: !33, line: 266, baseType: !107, size: 64, offset: 2560)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_file", scope: !589, file: !33, line: 267, baseType: !107, size: 64, offset: 2624)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_filepath", scope: !589, file: !33, line: 268, baseType: !107, size: 64, offset: 2688)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "persistent_client_expiration", scope: !589, file: !33, line: 269, baseType: !121, size: 64, offset: 2752)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "pid_file", scope: !589, file: !33, line: 270, baseType: !107, size: 64, offset: 2816)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "queue_qos0_messages", scope: !589, file: !33, line: 271, baseType: !165, size: 8, offset: 2880)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "per_listener_settings", scope: !589, file: !33, line: 272, baseType: !165, size: 8, offset: 2888)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "set_tcp_nodelay", scope: !589, file: !33, line: 273, baseType: !165, size: 8, offset: 2896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sys_interval", scope: !589, file: !33, line: 274, baseType: !99, size: 32, offset: 2912)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "upgrade_outgoing_qos", scope: !589, file: !33, line: 275, baseType: !165, size: 8, offset: 2944)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !589, file: !33, line: 276, baseType: !107, size: 64, offset: 3008)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bridges", scope: !589, file: !33, line: 282, baseType: !197, size: 64, offset: 3072)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_count", scope: !589, file: !33, line: 283, baseType: !99, size: 32, offset: 3136)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "security_options", scope: !589, file: !33, line: 285, baseType: !302, size: 576, offset: 3200)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "auth_plugin_count", scope: !561, file: !33, line: 388, baseType: !99, size: 32, offset: 960)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !561, file: !33, line: 389, baseType: !165, size: 8, offset: 992)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "subscription_count", scope: !561, file: !33, line: 391, baseType: !99, size: 32, offset: 1024)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "retained_count", scope: !561, file: !33, line: 392, baseType: !99, size: 32, offset: 1056)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_changes", scope: !561, file: !33, line: 394, baseType: !99, size: 32, offset: 1088)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "ll_for_free", scope: !561, file: !33, line: 395, baseType: !100, size: 64, offset: 1152)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "epollfd", scope: !561, file: !33, line: 397, baseType: !99, size: 32, offset: 1216)
!683 = !{i32 2, !"Dwarf Version", i32 4}
!684 = !{i32 2, !"Debug Info Version", i32 3}
!685 = !{i32 1, !"wchar_size", i32 4}
!686 = !{!"/home/ryan/git/mosquitto-debloat/src/mosquitto.gcno", !"/home/ryan/git/mosquitto-debloat/src/mosquitto.gcda", !2}
!687 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!688 = distinct !DISubprogram(name: "drop_privileges", scope: !3, file: !3, line: 90, type: !689, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!99, !588, !165}
!691 = !{!692, !693, !694, !708, !709, !710}
!692 = !DILocalVariable(name: "config", arg: 1, scope: !688, file: !3, line: 90, type: !588)
!693 = !DILocalVariable(name: "temporary", arg: 2, scope: !688, file: !3, line: 90, type: !165)
!694 = !DILocalVariable(name: "pwd", scope: !688, file: !3, line: 93, type: !695)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !697, line: 49, size: 384, elements: !698)
!697 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!698 = !{!699, !700, !701, !703, !705, !706, !707}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !696, file: !697, line: 51, baseType: !107, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !696, file: !697, line: 52, baseType: !107, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !696, file: !697, line: 53, baseType: !702, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !116, line: 134, baseType: !140)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !696, file: !697, line: 54, baseType: !704, size: 32, offset: 160)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !116, line: 135, baseType: !140)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !696, file: !697, line: 55, baseType: !107, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !696, file: !697, line: 56, baseType: !107, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !696, file: !697, line: 57, baseType: !107, size: 64, offset: 320)
!708 = !DILocalVariable(name: "err", scope: !688, file: !3, line: 94, type: !107)
!709 = !DILocalVariable(name: "rc", scope: !688, file: !3, line: 95, type: !99)
!710 = !DILocalVariable(name: "snap", scope: !688, file: !3, line: 97, type: !375)
!711 = !DILocation(line: 97, column: 21, scope: !688)
!712 = !DILocation(line: 98, column: 5, scope: !713)
!713 = distinct !DILexicalBlock(scope: !688, file: !3, line: 98, column: 5)
!714 = !DILocation(line: 98, column: 10, scope: !713)
!715 = !DILocation(line: 98, column: 14, scope: !713)
!716 = !DILocation(line: 98, column: 5, scope: !688)
!717 = !DILocation(line: 100, column: 3, scope: !718)
!718 = distinct !DILexicalBlock(scope: !713, file: !3, line: 98, column: 40)
!719 = !DILocation(line: 103, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !688, file: !3, line: 103, column: 5)
!721 = !DILocation(line: 103, column: 15, scope: !720)
!722 = !DILocation(line: 103, column: 5, scope: !688)
!723 = !DILocation(line: 104, column: 14, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 104, column: 6)
!725 = distinct !DILexicalBlock(scope: !720, file: !3, line: 103, column: 20)
!726 = !{!727, !732, i64 376}
!727 = !{!"mosquitto__config", !728, i64 0, !731, i64 4, !728, i64 8, !728, i64 9, !732, i64 16, !728, i64 24, !728, i64 25, !733, i64 32, !732, i64 264, !731, i64 272, !731, i64 276, !731, i64 280, !731, i64 284, !728, i64 288, !732, i64 296, !732, i64 304, !731, i64 312, !728, i64 316, !732, i64 320, !732, i64 328, !732, i64 336, !736, i64 344, !732, i64 352, !728, i64 360, !728, i64 361, !728, i64 362, !731, i64 364, !728, i64 368, !732, i64 376, !732, i64 384, !731, i64 392, !735, i64 400}
!728 = !{!"_Bool", !729, i64 0}
!729 = !{!"omnipotent char", !730, i64 0}
!730 = !{!"Simple C/C++ TBAA"}
!731 = !{!"int", !729, i64 0}
!732 = !{!"any pointer", !729, i64 0}
!733 = !{!"mosquitto__listener", !731, i64 0, !734, i64 4, !732, i64 8, !731, i64 16, !732, i64 24, !732, i64 32, !731, i64 40, !731, i64 44, !729, i64 48, !731, i64 52, !728, i64 56, !732, i64 64, !732, i64 72, !732, i64 80, !732, i64 88, !732, i64 96, !732, i64 104, !732, i64 112, !732, i64 120, !728, i64 128, !728, i64 129, !728, i64 130, !732, i64 136, !735, i64 144, !732, i64 216, !732, i64 224}
!734 = !{!"short", !729, i64 0}
!735 = !{!"mosquitto__security_options", !732, i64 0, !732, i64 8, !732, i64 16, !732, i64 24, !732, i64 32, !732, i64 40, !731, i64 48, !729, i64 52, !728, i64 53, !732, i64 56, !731, i64 64}
!736 = !{!"long", !729, i64 0}
!737 = !DILocation(line: 104, column: 6, scope: !724)
!738 = !DILocation(line: 104, column: 19, scope: !724)
!739 = !DILocation(line: 104, column: 22, scope: !724)
!740 = !DILocation(line: 104, column: 6, scope: !725)
!741 = !DILocation(line: 105, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !724, file: !3, line: 104, column: 51)
!743 = !DILocation(line: 106, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !742, file: !3, line: 106, column: 7)
!745 = !DILocation(line: 106, column: 7, scope: !742)
!746 = !DILocation(line: 108, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !3, line: 106, column: 12)
!748 = !DILocation(line: 110, column: 37, scope: !749)
!749 = distinct !DILexicalBlock(scope: !742, file: !3, line: 110, column: 7)
!750 = !{!751, !731, i64 20}
!751 = !{!"passwd", !732, i64 0, !732, i64 8, !731, i64 16, !731, i64 20, !732, i64 24, !732, i64 32, !732, i64 40}
!752 = !DILocation(line: 110, column: 7, scope: !749)
!753 = !DILocation(line: 110, column: 45, scope: !749)
!754 = !DILocation(line: 110, column: 7, scope: !742)
!755 = !DILocation(line: 113, column: 5, scope: !756)
!756 = distinct !DILexicalBlock(scope: !749, file: !3, line: 110, column: 51)
!757 = !DILocation(line: 115, column: 7, scope: !742)
!758 = !DILocation(line: 116, column: 10, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 115, column: 17)
!760 = distinct !DILexicalBlock(scope: !742, file: !3, line: 115, column: 7)
!761 = !DILocation(line: 117, column: 4, scope: !759)
!762 = !DILocation(line: 118, column: 10, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !3, line: 117, column: 9)
!764 = !DILocation(line: 120, column: 10, scope: !765)
!765 = distinct !DILexicalBlock(scope: !742, file: !3, line: 120, column: 7)
!766 = !DILocation(line: 120, column: 7, scope: !742)
!767 = !DILocation(line: 123, column: 5, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !3, line: 120, column: 16)
!769 = !{!751, !731, i64 16}
!770 = !DILocation(line: 125, column: 7, scope: !742)
!771 = !DILocation(line: 126, column: 10, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 125, column: 17)
!773 = distinct !DILexicalBlock(scope: !742, file: !3, line: 125, column: 7)
!774 = !DILocation(line: 127, column: 4, scope: !772)
!775 = !DILocation(line: 128, column: 10, scope: !776)
!776 = distinct !DILexicalBlock(scope: !773, file: !3, line: 127, column: 9)
!777 = !DILocation(line: 130, column: 10, scope: !778)
!778 = distinct !DILexicalBlock(scope: !742, file: !3, line: 130, column: 7)
!779 = !DILocation(line: 130, column: 7, scope: !742)
!780 = !DILocation(line: 133, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !778, file: !3, line: 130, column: 16)
!782 = !DILocation(line: 141, column: 2, scope: !688)
!783 = !DILocation(line: 142, column: 1, scope: !688)
!784 = distinct !DISubprogram(name: "mosquitto__daemonise", scope: !3, file: !3, line: 169, type: !785, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{null}
!787 = !{!788, !789}
!788 = !DILocalVariable(name: "err", scope: !784, file: !3, line: 172, type: !107)
!789 = !DILocalVariable(name: "pid", scope: !784, file: !3, line: 173, type: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !791, line: 263, baseType: !792)
!791 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !116, line: 142, baseType: !99)
!793 = !DILocation(line: 175, column: 8, scope: !784)
!794 = !DILocation(line: 176, column: 9, scope: !795)
!795 = distinct !DILexicalBlock(scope: !784, file: !3, line: 176, column: 5)
!796 = !DILocation(line: 176, column: 5, scope: !784)
!797 = !DILocation(line: 179, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !795, file: !3, line: 176, column: 13)
!799 = !DILocation(line: 181, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !784, file: !3, line: 181, column: 5)
!801 = !DILocation(line: 181, column: 5, scope: !784)
!802 = !DILocation(line: 182, column: 3, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 181, column: 13)
!804 = !DILocation(line: 184, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !784, file: !3, line: 184, column: 5)
!806 = !DILocation(line: 184, column: 14, scope: !805)
!807 = !DILocation(line: 184, column: 5, scope: !784)
!808 = !DILocation(line: 187, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !3, line: 184, column: 18)
!810 = !DILocation(line: 190, column: 2, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 190, column: 2)
!812 = distinct !DILexicalBlock(scope: !784, file: !3, line: 190, column: 2)
!813 = !{!732, !732, i64 0}
!814 = !DILocation(line: 190, column: 2, scope: !812)
!815 = !DILocation(line: 191, column: 2, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 191, column: 2)
!817 = distinct !DILexicalBlock(scope: !784, file: !3, line: 191, column: 2)
!818 = !DILocation(line: 191, column: 2, scope: !817)
!819 = !DILocation(line: 192, column: 2, scope: !820)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 192, column: 2)
!821 = distinct !DILexicalBlock(scope: !784, file: !3, line: 192, column: 2)
!822 = !DILocation(line: 192, column: 2, scope: !821)
!823 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 199, type: !824, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !2, variables: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!99, !99, !485}
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !845, !846}
!827 = !DILocalVariable(name: "argc", arg: 1, scope: !823, file: !3, line: 199, type: !99)
!828 = !DILocalVariable(name: "argv", arg: 2, scope: !823, file: !3, line: 199, type: !485)
!829 = !DILocalVariable(name: "listensock", scope: !823, file: !3, line: 201, type: !283)
!830 = !DILocalVariable(name: "listensock_count", scope: !823, file: !3, line: 202, type: !99)
!831 = !DILocalVariable(name: "listensock_index", scope: !823, file: !3, line: 203, type: !99)
!832 = !DILocalVariable(name: "config", scope: !823, file: !3, line: 204, type: !589)
!833 = !DILocalVariable(name: "i", scope: !823, file: !3, line: 205, type: !99)
!834 = !DILocalVariable(name: "j", scope: !823, file: !3, line: 205, type: !99)
!835 = !DILocalVariable(name: "pid", scope: !823, file: !3, line: 206, type: !607)
!836 = !DILocalVariable(name: "listener_max", scope: !823, file: !3, line: 207, type: !99)
!837 = !DILocalVariable(name: "rc", scope: !823, file: !3, line: 208, type: !99)
!838 = !DILocalVariable(name: "tv", scope: !823, file: !3, line: 213, type: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !840, line: 8, size: 128, elements: !841)
!840 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "/home/ryan/git/mosquitto-debloat/src")
!841 = !{!842, !843}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !839, file: !840, line: 10, baseType: !123, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !839, file: !840, line: 11, baseType: !844, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !116, line: 150, baseType: !124)
!845 = !DILocalVariable(name: "ctxt", scope: !823, file: !3, line: 215, type: !100)
!846 = !DILocalVariable(name: "ctxt_tmp", scope: !823, file: !3, line: 215, type: !100)
!847 = !DILocation(line: 245, column: 2, scope: !823)
!848 = !DILocation(line: 249, column: 2, scope: !823)
!849 = !DILocation(line: 250, column: 7, scope: !823)
!850 = !DILocation(line: 251, column: 8, scope: !851)
!851 = distinct !DILexicalBlock(scope: !823, file: !3, line: 251, column: 5)
!852 = !DILocation(line: 251, column: 5, scope: !823)
!853 = !DILocation(line: 251, column: 29, scope: !851)
!854 = !DILocation(line: 252, column: 16, scope: !823)
!855 = !{!856, !732, i64 112}
!856 = !{!"mosquitto_db", !736, i64 0, !732, i64 8, !732, i64 16, !732, i64 24, !732, i64 32, !732, i64 40, !732, i64 48, !732, i64 56, !732, i64 64, !732, i64 72, !732, i64 80, !731, i64 88, !731, i64 92, !736, i64 96, !732, i64 104, !732, i64 112, !731, i64 120, !728, i64 124, !731, i64 128, !731, i64 132, !731, i64 136, !732, i64 144, !731, i64 152}
!857 = !DILocation(line: 254, column: 12, scope: !858)
!858 = distinct !DILexicalBlock(scope: !823, file: !3, line: 254, column: 5)
!859 = !{!727, !728, i64 25}
!860 = !{i8 0, i8 2}
!861 = !DILocation(line: 254, column: 5, scope: !823)
!862 = !DILocation(line: 255, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !858, file: !3, line: 254, column: 19)
!864 = !DILocation(line: 258, column: 12, scope: !865)
!865 = distinct !DILexicalBlock(scope: !823, file: !3, line: 258, column: 5)
!866 = !DILocation(line: 258, column: 19, scope: !865)
!867 = !DILocation(line: 258, column: 29, scope: !865)
!868 = !{!727, !732, i64 352}
!869 = !DILocation(line: 258, column: 22, scope: !865)
!870 = !DILocation(line: 258, column: 5, scope: !823)
!871 = !DILocation(line: 259, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !865, file: !3, line: 258, column: 38)
!873 = !DILocation(line: 260, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !3, line: 260, column: 6)
!875 = !DILocation(line: 260, column: 6, scope: !872)
!876 = !DILocation(line: 265, column: 4, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 263, column: 8)
!878 = !DILocation(line: 269, column: 7, scope: !823)
!879 = !DILocation(line: 270, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !823, file: !3, line: 270, column: 5)
!881 = !DILocation(line: 270, column: 5, scope: !823)
!882 = !DILocation(line: 272, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 270, column: 28)
!884 = !DILocation(line: 277, column: 5, scope: !885)
!885 = distinct !DILexicalBlock(scope: !823, file: !3, line: 277, column: 5)
!886 = !DILocation(line: 277, column: 5, scope: !823)
!887 = !DILocation(line: 279, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 277, column: 24)
!889 = !DILocation(line: 288, column: 7, scope: !823)
!890 = !DILocation(line: 289, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !823, file: !3, line: 289, column: 5)
!892 = !DILocation(line: 289, column: 5, scope: !823)
!893 = !DILocation(line: 289, column: 9, scope: !891)
!894 = !DILocation(line: 290, column: 7, scope: !823)
!895 = !DILocation(line: 291, column: 5, scope: !896)
!896 = distinct !DILexicalBlock(scope: !823, file: !3, line: 291, column: 5)
!897 = !DILocation(line: 291, column: 5, scope: !823)
!898 = !DILocation(line: 291, column: 9, scope: !896)
!899 = !DILocation(line: 294, column: 2, scope: !823)
!900 = !DILocation(line: 299, column: 20, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !3, line: 299, column: 2)
!902 = distinct !DILexicalBlock(scope: !823, file: !3, line: 299, column: 2)
!903 = !{!727, !731, i64 272}
!904 = !DILocation(line: 299, column: 12, scope: !901)
!905 = !DILocation(line: 299, column: 2, scope: !902)
!906 = !DILocation(line: 300, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 300, column: 6)
!908 = distinct !DILexicalBlock(scope: !901, file: !3, line: 299, column: 40)
!909 = !{!727, !732, i64 264}
!910 = !DILocation(line: 300, column: 26, scope: !907)
!911 = !{!733, !729, i64 48}
!912 = !DILocation(line: 300, column: 35, scope: !907)
!913 = !DILocation(line: 300, column: 6, scope: !908)
!914 = !DILocation(line: 300, column: 6, scope: !907)
!915 = !DILocation(line: 301, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 301, column: 7)
!917 = distinct !DILexicalBlock(scope: !907, file: !3, line: 300, column: 46)
!918 = !DILocation(line: 301, column: 7, scope: !917)
!919 = !DILocation(line: 306, column: 5, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !3, line: 301, column: 48)
!921 = !DILocation(line: 308, column: 31, scope: !917)
!922 = !DILocation(line: 308, column: 44, scope: !917)
!923 = !{!733, !731, i64 40}
!924 = !DILocation(line: 308, column: 21, scope: !917)
!925 = !DILocation(line: 309, column: 68, scope: !917)
!926 = !DILocation(line: 309, column: 67, scope: !917)
!927 = !DILocation(line: 309, column: 17, scope: !917)
!928 = !DILocation(line: 310, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !917, file: !3, line: 310, column: 7)
!930 = !DILocation(line: 310, column: 7, scope: !917)
!931 = !DILocation(line: 315, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 310, column: 19)
!933 = !DILocation(line: 317, column: 22, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 317, column: 4)
!935 = distinct !DILexicalBlock(scope: !917, file: !3, line: 317, column: 4)
!936 = !DILocation(line: 317, column: 35, scope: !934)
!937 = !DILocation(line: 317, column: 14, scope: !934)
!938 = !DILocation(line: 317, column: 4, scope: !935)
!939 = !DILocation(line: 318, column: 28, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 318, column: 8)
!941 = distinct !DILexicalBlock(scope: !934, file: !3, line: 317, column: 51)
!942 = !{!733, !732, i64 32}
!943 = !DILocation(line: 318, column: 8, scope: !940)
!944 = !{!731, !731, i64 0}
!945 = !DILocation(line: 318, column: 37, scope: !940)
!946 = !DILocation(line: 318, column: 8, scope: !941)
!947 = !DILocation(line: 323, column: 6, scope: !948)
!948 = distinct !DILexicalBlock(scope: !940, file: !3, line: 318, column: 55)
!949 = !DILocation(line: 325, column: 5, scope: !941)
!950 = !DILocation(line: 325, column: 34, scope: !941)
!951 = !DILocation(line: 326, column: 37, scope: !952)
!952 = distinct !DILexicalBlock(scope: !941, file: !3, line: 326, column: 8)
!953 = !DILocation(line: 326, column: 8, scope: !941)
!954 = !DILocation(line: 328, column: 5, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !3, line: 326, column: 52)
!956 = !DILocation(line: 329, column: 21, scope: !941)
!957 = !DILocation(line: 317, column: 48, scope: !934)
!958 = distinct !{!958, !938, !959}
!959 = !DILocation(line: 330, column: 4, scope: !935)
!960 = !DILocation(line: 207, column: 6, scope: !823)
!961 = !DILocation(line: 299, column: 37, scope: !901)
!962 = distinct !{!962, !905, !963}
!963 = !DILocation(line: 340, column: 2, scope: !902)
!964 = !DILocation(line: 342, column: 7, scope: !823)
!965 = !DILocation(line: 343, column: 8, scope: !966)
!966 = distinct !DILexicalBlock(scope: !823, file: !3, line: 343, column: 5)
!967 = !DILocation(line: 343, column: 5, scope: !823)
!968 = !DILocation(line: 343, column: 29, scope: !966)
!969 = !DILocation(line: 360, column: 20, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 360, column: 2)
!971 = distinct !DILexicalBlock(scope: !823, file: !3, line: 360, column: 2)
!972 = !{!727, !731, i64 392}
!973 = !DILocation(line: 360, column: 12, scope: !970)
!974 = !DILocation(line: 360, column: 2, scope: !971)
!975 = !DILocation(line: 361, column: 36, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 361, column: 6)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 360, column: 38)
!978 = !{!727, !732, i64 384}
!979 = !DILocation(line: 361, column: 29, scope: !976)
!980 = !DILocation(line: 361, column: 6, scope: !976)
!981 = !DILocation(line: 360, column: 35, scope: !970)
!982 = distinct !{!982, !974, !983}
!983 = !DILocation(line: 365, column: 2, scope: !971)
!984 = !DILocation(line: 373, column: 7, scope: !823)
!985 = !DILocation(line: 443, column: 2, scope: !823)
!986 = !DILocation(line: 444, column: 1, scope: !823)
