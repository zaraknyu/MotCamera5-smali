.class public final Lcom/google/mlkit/vision/barcode/internal/zzl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static zza:Z = true


# instance fields
.field public final taskQueue:Landroidx/compose/runtime/Latch;

.field public final zza$1:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

.field public final zzd:Lcom/google/mlkit/vision/barcode/internal/zzm;

.field public final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

.field public final zzf:Lcom/tinder/StateMachine;

.field public final zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

.field public zzh:Z


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;Lcom/google/mlkit/vision/barcode/internal/zzm;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza$1:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/compose/runtime/Latch;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/Latch;-><init>(IB)V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->taskQueue:Landroidx/compose/runtime/Latch;

    new-instance v0, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-direct {v0}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    const-string v0, "MlKitContext can not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzm;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Lcom/tinder/StateMachine;

    invoke-direct {p2, p1}, Lcom/tinder/StateMachine;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf:Lcom/tinder/StateMachine;

    return-void
.end method


# virtual methods
.method public final callAfterLoad(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/zzb;)Lcom/google/android/gms/tasks/zzw;
    .locals 7

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p3, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->zzc()V

    return-object p0

    :cond_0
    new-instance v3, Lcom/google/android/gms/tasks/zzs;

    const/16 v0, 0x19

    invoke-direct {v3, v0}, Lcom/google/android/gms/tasks/zzs;-><init>(I)V

    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, v3, Lcom/google/android/gms/tasks/zzs;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {v5, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/zzb;)V

    new-instance v6, Lcom/google/mlkit/common/sdkinternal/zzm;

    invoke-direct {v6, p1, p3, v3, v5}, Lcom/google/mlkit/common/sdkinternal/zzm;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/zzb;Lcom/google/android/gms/tasks/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zzn;

    move-object v1, p0

    move-object v4, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/zzn;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzl;Lcom/google/android/gms/tasks/zzb;Lcom/google/android/gms/tasks/zzs;Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p0, v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->taskQueue:Landroidx/compose/runtime/Latch;

    invoke-virtual {p0, v0, v6}, Landroidx/compose/runtime/Latch;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p0, v5, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final run(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/List;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzg:Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, p1}, Lcom/google/mlkit/vision/common/internal/BitmapInStreamingChecker;->check(Lcom/google/mlkit/vision/common/InputImage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzm;

    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zza(Lcom/google/mlkit/vision/common/InputImage;)Ljava/util/ArrayList;

    move-result-object v6

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, p0

    move-object v5, p1

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Z
    :try_end_2
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v6

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_5

    :catch_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    move-object v5, p1

    goto :goto_1

    :goto_2
    :try_start_3
    iget p1, p0, Lcom/google/mlkit/common/MlKitException;->zza:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    :goto_3
    move-object v2, p1

    goto :goto_4

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zzab:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V

    throw p0

    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;JLcom/google/mlkit/vision/common/InputImage;Ljava/util/List;)V
    .locals 24

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(I)V

    new-instance v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;-><init>(I)V

    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/barcode/common/Barcode;

    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v2}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getFormat()I

    move-result v2

    const/16 v3, 0x1000

    if-gt v2, v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    :cond_1
    sget-object v3, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzb:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrn;

    :cond_2
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzcl(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/common/Barcode;->zza:Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;

    invoke-interface {v1}, Lcom/google/mlkit/vision/barcode/common/internal/BarcodeSource;->getValueType()I

    move-result v1

    sget-object v2, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzro;

    if-nez v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzro;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzro;

    :cond_3
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zza$com$google$android$gms$internal$mlkit_vision_barcode$zzcl(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v10, v0, p2

    new-instance v0, Lcom/google/mlkit/vision/barcode/internal/zzj;

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    move-wide v2, v10

    invoke-direct/range {v0 .. v7}, Lcom/google/mlkit/vision/barcode/internal/zzj;-><init>(Lcom/google/mlkit/vision/barcode/internal/zzl;JLcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;)V

    new-instance v0, Lcom/motorola/camera/AppFeatures;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lcom/motorola/camera/AppFeatures;-><init>(I)V

    iput-object v4, v0, Lcom/motorola/camera/AppFeatures;->mDevice:Ljava/lang/Object;

    sget-boolean v2, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-static {v2}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/AppFeatures;->mSupportedFeatureSet:Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/AppFeatures;->mArrayFeatureMap:Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcp;->zzf()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdk;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/camera/AppFeatures;->mValueFeatureMap:Ljava/lang/Object;

    new-instance v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    invoke-direct {v9, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;-><init>(Lcom/motorola/camera/AppFeatures;)V

    new-instance v12, Lcom/motorola/camera/SecureDataHelper;

    const/4 v0, 0x4

    invoke-direct {v12, v0, v1}, Lcom/motorola/camera/SecureDataHelper;-><init>(ILjava/lang/Object;)V

    iget-object v8, v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;JLcom/motorola/camera/SecureDataHelper;)V

    invoke-virtual {v0, v7}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-boolean v0, v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Z

    sub-long v16, v18, v10

    iget-object v1, v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzf:Lcom/tinder/StateMachine;

    const/4 v2, 0x1

    if-eq v2, v0, :cond_5

    const/16 v0, 0x5eed

    :goto_1
    move v13, v0

    goto :goto_2

    :cond_5
    const/16 v0, 0x5eee

    goto :goto_1

    :goto_2
    iget v14, v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrb;->zzad:I

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/tinder/StateMachine;->graph:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_7

    monitor-exit v1

    return-void

    :cond_7
    :goto_3
    :try_start_1
    iget-object v0, v1, Lcom/tinder/StateMachine;->stateRef:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/service/zao;

    new-instance v4, Lcom/google/android/gms/common/internal/TelemetryData;

    new-instance v12, Lcom/google/android/gms/common/internal/MethodInvocation;

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    filled-new-array {v12}, [Lcom/google/android/gms/common/internal/MethodInvocation;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/internal/service/zao;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0

    new-instance v4, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v2, v3, v5}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->MAIN_THREAD:Lcom/google/android/gms/tasks/zzu;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
