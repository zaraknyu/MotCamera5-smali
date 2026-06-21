.class public final Lcom/motorola/camera/mcf/Mcf$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public val$obj1:Ljava/lang/Object;

.field public val$obj2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/motorola/camera/SecureDataHelper;)V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/16 p3, 0xf

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/internal/zzb;[Lcom/motorola/camera/thumbnail/ThumbnailKey;)V
    .locals 1

    const/16 v0, 0x19

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;)V
    .locals 1

    const/16 v0, 0x1b

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/utility/WifiConnection;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    .line 10
    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 3
    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    return-void
.end method

.method private final run$com$google$android$gms$tasks$zzi()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzh;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/OnCompleteListener;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/zzw;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$google$android$gms$tasks$zzk()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzh;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/OnFailureListener;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$google$android$gms$tasks$zzm()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/tasks/zzh;

    iget-object v0, v0, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzh;

    iget-object v1, v1, Lcom/google/android/gms/tasks/zzh;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/OnSuccessListener;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$google$firebase$components$ComponentRuntime$$Lambda$3()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/OptionalProvider;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Provider;

    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    sget-object v2, Lcom/google/firebase/components/ComponentRuntime$$Lambda$5;->instance$1:Lcom/google/firebase/components/ComponentRuntime$$Lambda$5;

    if-ne v1, v2, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/firebase/components/OptionalProvider;->handler:Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    iput-object p0, v0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "provide() can be called only once."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final run$com$google$firebase$components$ComponentRuntime$$Lambda$4()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/components/LazySet;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inject/Provider;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final run$com$google$mlkit$common$sdkinternal$zzl()V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/mlkit/vision/barcode/internal/zzl;

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza$1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-ltz v1, :cond_2

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzd:Lcom/google/mlkit/vision/barcode/internal/zzm;

    invoke-interface {v1}, Lcom/google/mlkit/vision/barcode/internal/zzm;->zzb()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/mlkit/vision/barcode/internal/zzl;->zza:Z

    new-instance v1, Lcom/motorola/camera/fsm/Fsm;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/Fsm;-><init>(IZ)V

    iget-boolean v2, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    :goto_0
    iget-object v3, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iput-object v2, v1, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    new-instance v2, Lcom/motorola/camera/AppFeatures;

    const/16 v4, 0xf

    invoke-direct {v2, v4}, Lcom/motorola/camera/AppFeatures;-><init>(I)V

    iget-object v4, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzc:Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;

    invoke-static {v4}, Lcom/google/mlkit/vision/barcode/internal/zzb;->zzc(Lcom/google/mlkit/vision/barcode/BarcodeScannerOptions;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvz;

    move-result-object v4

    iput-object v4, v2, Lcom/motorola/camera/AppFeatures;->mCountry:Ljava/lang/Object;

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrr;-><init>(Lcom/motorola/camera/AppFeatures;)V

    iput-object v4, v1, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    new-instance v2, Lcom/google/common/base/Splitter;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/google/common/base/Splitter;-><init>(Lcom/motorola/camera/fsm/Fsm;I)V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzj()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v7, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;

    invoke-direct {v7, v3, v2, v1, v5}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/common/base/Splitter;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, v0, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzrq;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzsu;->zza:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private final run$com$motorola$camera$instrumentreport$CalibrationData$UpdateDBRunnable()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mBuildUpdated:Z

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3}, Lcom/motorola/camera/instrumentreport/CalibrationData;->groupDBquery(Ljava/lang/Boolean;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto/16 :goto_11

    :catch_0
    move-exception v3

    goto :goto_3

    :cond_0
    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalibrationBackCam"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-nez v6, :cond_1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v6, "CalibrationFrontCam"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v5, :cond_2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {v2}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_11

    :catch_1
    move-exception v3

    move-object v2, v1

    :goto_3
    :try_start_3
    const-string v4, "CalibrationData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_4
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-boolean v3, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    if-eqz v3, :cond_4

    const-string v3, "CalibrationFrontCam"

    goto :goto_6

    :cond_4
    const-string v3, "CalibrationBackCam"

    :goto_6
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "RAW_SQL"

    const-string/jumbo v6, "select keytag from events WHERE keytype = ? "

    invoke-virtual {v2, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SELECTION_ARGS"

    invoke-virtual {v2, v5, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-boolean v5, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationNotUpdated:Z

    if-eqz v5, :cond_b

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string v6, "com.motorola.camera_debug_report"

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "CALIBRATION_BUILD_STRING"

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    const-string v0, "WHERE_CLAUSE"

    const-string v5, "keytype = ?"

    invoke-virtual {v2, v0, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WHERE_ARGS"

    invoke-virtual {v2, v0, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    invoke-virtual {v0, v2}, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->deleteData(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_SENSOR_NAME:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SENSOR_NAME"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_MNF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MNF Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_LS_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "LS Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_PDAF_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PDAF Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_DUAL_STATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "DUAL Calibration Status"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CAL_VERSION"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MANUFACTURE_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_DATE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MANUFACTURE_DATE"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MANUFACTURE_LINE:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MANUFACTURE_LINE"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_SENSOR_SERIAL_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SENSOR_SERIAL_NUM"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_MOT_PART_NUM:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "MOT_PART_NUM"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_LENS_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "LENS_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_FACTORY_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "FACTORY_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_OTP_IR_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "IR_FILTER"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_X_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CIE_LIL_X_SOURCE_1"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_LIL_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CIE_LIL_Y_SOURCE_1"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CIE_BIG_Y_SOURCE_1:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CIE_BIG_Y_SOURCE_1"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_R"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_Gr"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_Gb"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_B"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_R"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_Gr"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_Gb"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GOLDEN_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GOLDEN_B"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_R:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_R"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gr:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_Gr"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_Gb:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_Gb"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_BLACK_LEVEL_B:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLACK_LEVEL_B"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_RG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_RG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_BG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_BG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_AWB_SOURCE_1_GRGB:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AWB_SOURCE_1_GRGB"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_CAL_VER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_CAL_VER"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_HW_REV:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_HW_REV"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_INF_DAC"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_MACRO_DAC"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_INF_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_INF_DAC_ORG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_MACRO_DAC_ORG:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_MACRO_DAC_ORG"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_ACTUATOR_ACTUATOR_ID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_ACTUATOR_ID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CALSTATUS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_7

    :cond_6
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Lcom/motorola/camera/instrumentreport/CalibrationData;->mCalibrationStatusMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    const-string v2, "Parse Error"

    :goto_7
    const-string v4, "CALSTATUS"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_COLOR_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetOldCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "COLOR_ENABLED"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_ROLLOFF_ENABLED:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetOldCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROLLOFF_ENABLED"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/instrumentreport/CalibrationData;

    iget-object v4, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_AF_CAL_INFO_VALID:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v4, v5}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$mgetOldCalibrationString(Lcom/motorola/camera/instrumentreport/CalibrationData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "AF_CAL_INFO_VALID"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_CIE_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CHECK_CIE_OTP"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAL_CHECK_AWB_OTP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "CHECK_AWB_OTP"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_BLUR_INTENSITY:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BLUR_INTENSITY"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_LEFT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROI_LEFT"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_TOP:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROI_TOP"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_WIDTH:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ROI_WIDTH"

    invoke-static {v2, v0, v3, v4, v2}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    sget-object v2, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_BOKEH_ROI_HEIGHT:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {p0, v2}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "ROI_HEIGHT"

    invoke-static {p0, v0, v3, v2, p0}, Lcom/motorola/camera/instrumentreport/CalibrationData;->-$$Nest$smfillContentValues(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor$LazyLoader;->INSTANCE:Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;

    const-string v2, "Exception getting DB connection:"

    monitor-enter p0

    :try_start_5
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v3, :cond_8

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :cond_7
    :goto_8
    :try_start_6
    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mInstrumentReportDBHelper:Lcom/motorola/camera/provider/photos/TypeIDDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_8
    :try_start_7
    iget-object v2, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "events"

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_9

    :catchall_3
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    :goto_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_c

    :goto_b
    :try_start_9
    const-string v1, "InstrumentReportDBAccessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting DB connection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iget-object v0, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_a

    :goto_c
    monitor-exit p0

    goto :goto_e

    :goto_d
    :try_start_b
    iget-object v1, p0, Lcom/motorola/camera/instrumentreport/InstrumentReportDBAccessor;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catch_4
    move-exception v0

    const-string v1, "InstrumentReportDBAccessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    monitor-exit p0

    :goto_e
    sget-boolean p0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mFrontCamUsed:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedFront:Z

    goto :goto_10

    :cond_a
    sput-boolean v0, Lcom/motorola/camera/instrumentreport/CalibrationData;->mOneTimeCalibrationUpdatedBack:Z

    goto :goto_10

    :goto_f
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :cond_b
    :goto_10
    return-void

    :goto_11
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private final run$com$motorola$camera$ui$widgets$gl$FaceUiComponent$1()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mLoaded:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;->ALLOW_UPDATES:Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent$Flag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFaceTextureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->isCliDisplay()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsManager;->getDisplayOrientation(Ljava/lang/String;Z)I

    move-result v2

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    if-ne v3, v1, :cond_1

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    if-eq v3, v2, :cond_2

    :cond_1
    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraFacing:I

    iput v2, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mCameraToDisplayOrientation:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->updateFaceMatrix()V

    :cond_2
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->mFacePolicy:Landroidx/room/concurrent/FileLock;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0, v1}, Landroidx/room/concurrent/FileLock;->handleFaceData([Landroid/hardware/camera2/params/Face;)V

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;

    iget-object v1, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/FaceUiComponent;->sendFaceDetected([Landroid/hardware/camera2/params/Face;)V

    :cond_3
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$motorola$camera$ui$widgets$gl$textures$ModeMenuTexture$CheckStopMovingPress()V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;->SLIDER_BG:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell$CellFlag;

    iget-object v0, v0, Lcom/motorola/camera/utility/Flags;->mFlags:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSlider:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v3, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mSliderRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateSliderCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Landroid/view/MotionEvent;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMenu:Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mMoveCell:Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-object v3, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->clickPos:Landroid/graphics/PointF;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->mPhotoRow:Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;

    monitor-enter v1

    :try_start_0
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->mTag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v5, :cond_1

    monitor-exit v1

    goto/16 :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v4

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->isAnimation:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->addCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {v1, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->updateCellPosition(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V

    :cond_4
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;->mCols:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->mapPoint(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;->getSortRect()Lcom/motorola/camera/SecureDataHelper;

    move-result-object v7

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v6}, Lcom/motorola/camera/SecureDataHelper;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v4, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/modes/ModeLayoutTexture;->moveMenuCell(Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/BitmapTextCell;Lcom/motorola/camera/ui/widgets/gl/textures/modes/TableRow;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->setDirty()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit v1

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast p0, Landroid/view/MotionEvent;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private final run$com$motorola$camera$utility$SynchronizedRunnable()V
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v1, p0

    iget v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->$r8$classId:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/utility/WifiConnection;

    iget-object v2, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    iget v2, v0, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/motorola/camera/utility/WifiConnection;->mAttempts:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    iget-object v0, v0, Lcom/motorola/camera/utility/WifiConnection;->mEvent:Lcom/google/zxing/Result;

    iget-object v0, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/FsmContext;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_1
    iget v1, v0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    if-eq v1, v7, :cond_2

    iget-object v1, v0, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    iget-object v6, v0, Lcom/motorola/camera/utility/WifiConnection;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    iget-boolean v6, v0, Lcom/motorola/camera/utility/WifiConnection;->mIsHidden:Z

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsHiddenSsid(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    iget v6, v0, Lcom/motorola/camera/utility/WifiConnection;->mType:I

    invoke-static {v6}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v6

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/motorola/camera/utility/WifiConnection;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    :goto_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_5

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    new-instance v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;

    sget-object v3, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v4, 0x7f1200aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;-><init>(Ljava/lang/String;)V

    iput v5, v2, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;->mToastStyle:I

    invoke-static {v2, v0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeatureBuilder;Lcom/motorola/camera/Notifier;Lcom/motorola/camera/Notifier$TYPE;)V

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->removeNetworkSuggestions(Ljava/util/List;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_ADD_NETWORKS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.provider.extra.WIFI_NETWORK_LIST"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/motorola/camera/utility/WifiConnection;->mEventListener:Lcom/motorola/camera/EventListener;

    new-instance v1, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/motorola/camera/ActivityStarter;->startActivity(Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_0
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$motorola$camera$utility$SynchronizedRunnable()V

    return-void

    :pswitch_1
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$motorola$camera$ui$widgets$gl$textures$ModeMenuTexture$CheckStopMovingPress()V

    return-void

    :pswitch_2
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$motorola$camera$ui$widgets$gl$FaceUiComponent$1()V

    return-void

    :pswitch_3
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/thumbnail/ThumbnailKey;

    iget-object v4, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v4, Lcom/google/mlkit/common/internal/zzb;

    invoke-static {v3, v4}, Lcom/motorola/camera/thumbnail/wrapper/DecoderWrapper;->decode(Lcom/motorola/camera/thumbnail/ThumbnailKey;Lcom/google/mlkit/common/internal/zzb;)Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v8, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    return-void

    :pswitch_4
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$motorola$camera$instrumentreport$CalibrationData$UpdateDBRunnable()V

    return-void

    :pswitch_5
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$BracketingCaptureRequestRunnable;->playShutterAndSendComplete(Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$McfJobHolder;)V

    return-void

    :pswitch_6
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;

    iget-object v2, v1, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->mLockMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    iget-boolean v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mIsComplete:Z

    if-nez v3, :cond_a

    sget v3, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->$r8$clinit:I

    const-string v3, "FocusExposureLockRunnable"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  lock focus timeout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;->mFlags:Lcom/motorola/camera/utility/Flags;

    sget-object v4, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;->FOCUS_TIMEOUT:Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$Flag;

    invoke-virtual {v3, v4}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)V

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable;->checkLockComplete(Ljava/lang/String;Lcom/motorola/camera/fsm/camera/states/runnables/FocusExposureLockRunnable$LockHolder;)V

    :cond_a
    :goto_4
    return-void

    :pswitch_7
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/Latch;

    iget-object v0, v2, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/Latch;->zzc()V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/runtime/Latch;->zzc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_8
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$google$mlkit$common$sdkinternal$zzl()V

    return-void

    :pswitch_9
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->zzb(Ljava/lang/Object;)V

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const-string v3, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v2, v3, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    :goto_6
    return-void

    :pswitch_a
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/ReferenceQueue;

    :catch_2
    :goto_7
    iget-object v2, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lcom/google/mlkit/common/sdkinternal/zzd;

    iget-object v3, v2, Lcom/google/mlkit/common/sdkinternal/zzd;->zza:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    iget-object v2, v2, Lcom/google/mlkit/common/sdkinternal/zzd;->zzb:Lcom/google/mlkit/common/sdkinternal/zza;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :cond_d
    return-void

    :pswitch_b
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$google$firebase$components$ComponentRuntime$$Lambda$4()V

    return-void

    :pswitch_c
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$google$firebase$components$ComponentRuntime$$Lambda$3()V

    return-void

    :pswitch_d
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_e
    return-void

    :pswitch_e
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/tasks/zzh;

    :try_start_4
    iget-object v0, v2, Lcom/google/android/gms/tasks/zzh;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/PermissionCallback;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/zzw;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/PermissionCallback;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/zzw;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->zza:Lcom/google/android/gms/tasks/zzt;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/zzw;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/zzw;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V

    new-instance v3, Lcom/google/android/gms/tasks/zzh;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/tasks/zzh;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V

    iget-object v1, v0, Lcom/google/android/gms/tasks/zzw;->zzb:Lcom/google/android/gms/tasks/zzr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/zzr;->zza(Lcom/google/android/gms/tasks/zzh;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzw;->zzi()V

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :goto_8
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/zzh;->onFailure(Ljava/lang/Exception;)V

    goto :goto_a

    :catch_5
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/zzh;->onCanceled()V

    goto :goto_a

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/zzh;->onFailure(Ljava/lang/Exception;)V

    goto :goto_a

    :cond_f
    invoke-virtual {v2, v0}, Lcom/google/android/gms/tasks/zzh;->onFailure(Ljava/lang/Exception;)V

    :goto_a
    return-void

    :pswitch_f
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$google$android$gms$tasks$zzm()V

    return-void

    :pswitch_10
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$google$android$gms$tasks$zzk()V

    return-void

    :pswitch_11
    invoke-direct {v1}, Lcom/motorola/camera/mcf/Mcf$8;->run$com$google$android$gms$tasks$zzi()V

    return-void

    :pswitch_12
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzbe:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/SecureDataHelper;

    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzl:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;->zzw()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbg;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    if-nez v11, :cond_10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_10
    check-cast v11, Ljava/util/List;

    instance-of v12, v11, Ljava/util/RandomAccess;

    if-eqz v12, :cond_11

    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbm;

    invoke-direct {v12, v5, v9, v11, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    goto :goto_c

    :cond_11
    new-instance v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;

    invoke-direct {v12, v5, v9, v11, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbq;)V

    :goto_c
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v11, Lcom/motorola/camera/fsm/Fsm;

    const/4 v12, 0x7

    invoke-direct {v11, v12, v6}, Lcom/motorola/camera/fsm/Fsm;-><init>(IZ)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const-wide/16 v13, 0x0

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    add-long/2addr v13, v15

    goto :goto_d

    :cond_12
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    move-object/from16 p0, v9

    int-to-long v8, v12

    div-long/2addr v13, v8

    const-wide v8, 0x7fffffffffffffffL

    and-long v12, v13, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    invoke-static {v10, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v12

    and-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/motorola/camera/fsm/Fsm;->mCurrentState:Ljava/lang/Object;

    const-wide v12, 0x4052c00000000000L    # 75.0

    invoke-static {v10, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v12

    and-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    invoke-static {v10, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v12

    and-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/motorola/camera/fsm/Fsm;->mAutoTransEvent:Ljava/lang/Object;

    const-wide/high16 v12, 0x4039000000000000L    # 25.0

    invoke-static {v10, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v12

    and-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lcom/motorola/camera/fsm/Fsm;->mFsmContext:Ljava/lang/Object;

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zza(Ljava/util/ArrayList;D)J

    move-result-wide v12

    and-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v11, Lcom/motorola/camera/fsm/Fsm;->mChangeListenersMap:Ljava/lang/Object;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;

    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzqd;-><init>(Lcom/motorola/camera/fsm/Fsm;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, v1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast v10, Lcom/google/mlkit/vision/barcode/internal/zzl;

    move-object/from16 v11, p0

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    new-instance v12, Lcom/motorola/camera/fsm/Fsm;

    const/16 v13, 0x8

    invoke-direct {v12, v13, v6}, Lcom/motorola/camera/fsm/Fsm;-><init>(IZ)V

    iget-boolean v10, v10, Lcom/google/mlkit/vision/barcode/internal/zzl;->zzh:Z

    if-eqz v10, :cond_13

    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    goto :goto_e

    :cond_13
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzra;

    :goto_e
    iput-object v10, v12, Lcom/motorola/camera/fsm/Fsm;->mStates:Ljava/lang/Object;

    new-instance v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const v13, 0x7fffffff

    and-int/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzd:Ljava/io/Serializable;

    iput-object v11, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zzc:Ljava/lang/Object;

    iput-object v8, v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;->zze:Ljava/lang/Object;

    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfv;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfi;)V

    iput-object v8, v12, Lcom/motorola/camera/fsm/Fsm;->mFsmLoader:Ljava/lang/Object;

    new-instance v8, Lcom/google/common/base/Splitter;

    invoke-direct {v8, v12, v6}, Lcom/google/common/base/Splitter;-><init>(Lcom/motorola/camera/fsm/Fsm;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzj()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    new-instance v11, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;

    invoke-direct {v11, v0, v8, v2, v9}, Landroidx/appcompat/view/menu/CascadingMenuPopup$3$1;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/common/base/Splitter;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    goto/16 :goto_b

    :cond_14
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void

    :pswitch_13
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zact;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/signin/internal/zak;

    iget-object v2, v1, Lcom/google/android/gms/signin/internal/zak;->zab:Lcom/google/android/gms/common/ConnectionResult;

    iget v3, v2, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v3, :cond_1b

    iget-object v1, v1, Lcom/google/android/gms/signin/internal/zak;->zac:Lcom/google/android/gms/common/internal/zav;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/common/internal/zav;->zac:Lcom/google/android/gms/common/ConnectionResult;

    iget v3, v2, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v3, :cond_1a

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v1, v1, Lcom/google/android/gms/common/internal/zav;->zab:Landroid/os/IBinder;

    if-nez v1, :cond_16

    const/4 v8, 0x0

    goto :goto_f

    :cond_16
    sget v3, Lcom/google/android/gms/common/internal/AccountAccessor;->$r8$clinit:I

    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v6, v4, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v6, :cond_17

    move-object v8, v4

    check-cast v8, Lcom/google/android/gms/common/internal/IAccountAccessor;

    goto :goto_f

    :cond_17
    new-instance v8, Lcom/google/android/gms/common/internal/zzw;

    invoke-direct {v8, v1, v3, v7}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_f
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zact;->zae:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v8, :cond_19

    if-nez v1, :cond_18

    goto :goto_10

    :cond_18
    iput-object v8, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    iget-boolean v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-eqz v3, :cond_1c

    iget-object v2, v2, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v2, v8, v1}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_11

    :cond_19
    :goto_10
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiManager"

    const-string v4, "Received null response from onSignInSuccess"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v2, v1}, Landroidx/profileinstaller/DeviceProfileWriter;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_11

    :cond_1a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    const-string v4, "Sign-in succeeded with resolve account failure: "

    const-string v5, "SignInCoordinator"

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/internal/SignInClientImpl;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    goto :goto_12

    :cond_1b
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zact;->zah:Landroidx/profileinstaller/DeviceProfileWriter;

    invoke-virtual {v1, v2}, Landroidx/profileinstaller/DeviceProfileWriter;->zae(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1c
    :goto_11
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zact;->zag:Lcom/google/android/gms/signin/internal/SignInClientImpl;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect()V

    :goto_12
    return-void

    :pswitch_14
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Landroidx/profileinstaller/DeviceProfileWriter;

    iget-object v2, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDiagnostics:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    iget-object v3, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mTranscodedProfile:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mCurProfile:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zabq;

    if-nez v3, :cond_1d

    goto :goto_13

    :cond_1d
    iget v4, v0, Lcom/google/android/gms/common/ConnectionResult;->zzb:I

    if-nez v4, :cond_1f

    iput-boolean v7, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mDeviceSupportsAotProfile:Z

    if-eqz v0, :cond_20

    iget-object v0, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mApkName:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v0, :cond_20

    iget-object v1, v1, Landroidx/profileinstaller/DeviceProfileWriter;->mProfile:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_13

    :cond_1e
    :try_start_5
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    move-result-object v0

    const/4 v15, 0x0

    invoke-interface {v2, v15, v0}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_13

    :catch_6
    move-exception v0

    const-string v1, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Failed to get service from broker."

    invoke-interface {v2, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    const/4 v15, 0x0

    invoke-virtual {v3, v0, v15}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    goto :goto_13

    :cond_1f
    const/4 v15, 0x0

    invoke-virtual {v3, v0, v15}, Lcom/google/android/gms/common/api/internal/zabq;->zar(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    :cond_20
    :goto_13
    return-void

    :pswitch_15
    :try_start_6
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Landroidx/room/TransactionExecutor;

    iget-object v2, v0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Landroidx/room/TransactionExecutor;

    invoke-virtual {v0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    iget-object v2, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Landroidx/room/TransactionExecutor;

    iget-object v2, v2, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v1, Landroidx/room/TransactionExecutor;

    invoke-virtual {v1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :pswitch_16
    move-object v15, v8

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->mProcessor:Landroidx/work/impl/Processor;

    iget-object v2, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    invoke-virtual {v0, v2}, Landroidx/work/impl/Processor;->getWorkerWrapperUnsafe(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v8, v0, Landroidx/work/impl/WorkerWrapper;->workSpec:Landroidx/work/impl/model/WorkSpec;

    monitor-exit v3

    goto :goto_14

    :catchall_5
    move-exception v0

    goto :goto_16

    :cond_21
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object v8, v15

    :goto_14
    if-eqz v8, :cond_22

    invoke-virtual {v8}, Landroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v2, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mWorkSpecById:Ljava/util/HashMap;

    invoke-static {v8}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v3, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mConstraintsTracker:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v4, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTaskExecutor:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mNameValues:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, v8, v4, v0}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->listen(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object v0

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->mTrackedWorkSpecs:Ljava/util/HashMap;

    invoke-static {v8}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_15

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    :cond_22
    :goto_15
    return-void

    :goto_16
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    :pswitch_17
    invoke-static {}, Landroidx/work/Logger$LogcatLogger;->get()Landroidx/work/Logger$LogcatLogger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling work "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/model/WorkSpec;

    iget-object v5, v4, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger$LogcatLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;

    iget-object v0, v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mImmediateScheduler:Landroidx/work/impl/background/greedy/GreedyScheduler;

    filled-new-array {v4}, [Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/background/greedy/GreedyScheduler;->schedule([Landroidx/work/impl/model/WorkSpec;)V

    return-void

    :pswitch_18
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/FragmentTransitionImpl$1;

    iget-object v3, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$outNames:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/AsyncListDiffer;

    iget v5, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    iget v8, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$numSharedElements:I

    if-ne v5, v8, :cond_2e

    iget-object v5, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$inNames:Ljava/util/List;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iget-object v0, v0, Landroidx/fragment/app/FragmentTransitionImpl$1;->val$sharedElementsOut:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v8, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iput-object v5, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    iget-object v5, v3, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/OpReorderer;

    iget-object v9, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    iget-object v10, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/ArrayList;

    iget v11, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget-object v12, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/OpReorderer;

    new-instance v13, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v13, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    iget v14, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v7

    move v2, v15

    const/16 v16, 0xf

    move v15, v14

    move v14, v11

    :goto_17
    if-ltz v2, :cond_2d

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    move/from16 v17, v7

    iget v7, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v6, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    move/from16 p0, v2

    add-int v2, v7, v6

    iget v4, v4, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    move/from16 v19, v4

    add-int v4, v19, v6

    :goto_18
    if-le v14, v2, :cond_26

    add-int/lit8 v14, v14, -0x1

    aget v20, v9, v14

    and-int/lit8 v21, v20, 0xc

    if-eqz v21, :cond_25

    move/from16 v21, v2

    shr-int/lit8 v2, v20, 0x4

    move/from16 v22, v7

    move-object/from16 v23, v9

    const/4 v7, 0x0

    invoke-static {v5, v2, v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v9

    if-eqz v9, :cond_24

    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v7, v11, v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v13, v14, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v9, v20, 0x4

    if-eqz v9, :cond_23

    invoke-virtual {v12, v14, v2}, Landroidx/recyclerview/widget/OpReorderer;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v2

    move/from16 v9, v17

    invoke-virtual {v13, v7, v9, v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_19

    :cond_23
    move/from16 v9, v17

    goto :goto_19

    :cond_24
    move/from16 v9, v17

    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v7, v11, v14

    sub-int/2addr v7, v9

    invoke-direct {v2, v14, v7, v9}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_25
    move/from16 v21, v2

    move/from16 v22, v7

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-virtual {v13, v14, v9}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v11, v11, -0x1

    :goto_19
    move/from16 v2, v21

    move/from16 v7, v22

    move-object/from16 v9, v23

    const/16 v17, 0x1

    goto :goto_18

    :cond_26
    move/from16 v22, v7

    move-object/from16 v23, v9

    :goto_1a
    if-le v15, v4, :cond_2a

    add-int/lit8 v15, v15, -0x1

    iget-object v2, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v2, v2, v15

    and-int/lit8 v7, v2, 0xc

    if-eqz v7, :cond_28

    shr-int/lit8 v7, v2, 0x4

    move-object/from16 v17, v1

    const/4 v9, 0x1

    invoke-static {v5, v7, v9}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v1

    if-nez v1, :cond_27

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v2, v11, v14

    const/4 v7, 0x0

    invoke-direct {v1, v15, v2, v7}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move/from16 v18, v7

    goto :goto_1b

    :cond_27
    const/16 v18, 0x0

    iget v1, v1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v1, v11, v1

    sub-int/2addr v1, v9

    invoke-virtual {v13, v1, v14}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v1, v2, 0x4

    if-eqz v1, :cond_29

    invoke-virtual {v12, v7, v15}, Landroidx/recyclerview/widget/OpReorderer;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v14, v9, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_1b

    :cond_28
    move-object/from16 v17, v1

    const/4 v9, 0x1

    const/16 v18, 0x0

    invoke-virtual {v13, v14, v9}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v11, v11, 0x1

    :cond_29
    :goto_1b
    move-object/from16 v1, v17

    goto :goto_1a

    :cond_2a
    move-object/from16 v17, v1

    const/4 v9, 0x1

    const/16 v18, 0x0

    move/from16 v7, v18

    move/from16 v2, v19

    move/from16 v1, v22

    :goto_1c
    if-ge v7, v6, :cond_2c

    aget v4, v23, v1

    and-int/lit8 v4, v4, 0xf

    const/4 v14, 0x2

    if-ne v4, v14, :cond_2b

    invoke-virtual {v12, v1, v2}, Landroidx/recyclerview/widget/OpReorderer;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v1, v9, v4}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v14, 0x2

    add-int/lit8 v2, p0, -0x1

    move v7, v9

    move v4, v14

    move-object/from16 v1, v17

    move/from16 v6, v18

    move/from16 v15, v19

    move/from16 v14, v22

    move-object/from16 v9, v23

    goto/16 :goto_17

    :cond_2d
    invoke-virtual {v13}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    invoke-virtual {v3, v8, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    :cond_2e
    return-void

    :pswitch_19
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Landroidx/preference/Preference;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/settings/fragment/GeneralSettingsFragment;

    iget-object v2, v1, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    instance-of v3, v2, Landroidx/preference/PreferenceGroupAdapter;

    if-nez v3, :cond_30

    if-nez v2, :cond_2f

    goto :goto_1d

    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    iget-object v0, v1, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1d

    :cond_31
    new-instance v3, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    iget-object v1, v1, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    move-object v4, v2

    check-cast v4, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v3, v4, v1, v0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroidx/preference/PreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :goto_1d
    return-void

    :pswitch_1a
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v0, Landroidx/core/provider/FontRequestWorker$2;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/core/provider/FontRequestWorker$2;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_1b
    iget-object v0, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v0, Landroidx/room/ObservedTableVersions;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    iget-object v0, v0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast v0, Landroidx/core/content/res/CamUtils;

    if-eqz v0, :cond_32

    invoke-virtual {v0, v1}, Landroidx/core/content/res/CamUtils;->onFontRetrieved(Landroid/graphics/Typeface;)V

    :cond_32
    return-void

    :pswitch_1c
    const/16 v16, 0xf

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_33

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing listener WeakReference for notify event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_33
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$smgetInstance()Lcom/motorola/camera/mcf/Mcf;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$fgetmFullFrameListener(Lcom/motorola/camera/mcf/Mcf;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/mcf/Mcf$OnFullFrameListener;

    if-eqz v0, :cond_36

    iget-object v2, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj1:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/mcf/McfCallback;

    iget-object v1, v1, Lcom/motorola/camera/mcf/Mcf$8;->val$obj2:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    sget-object v3, Lcom/motorola/camera/mcf/McfCallback;->JSON:Lcom/motorola/camera/mcf/McfCallback$Key;

    invoke-virtual {v2, v3}, Lcom/motorola/camera/mcf/McfCallback;->get(Lcom/motorola/camera/mcf/McfCallback$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackType()Lcom/motorola/camera/mcf/McfCallback$CallbackType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_35

    move/from16 v6, v16

    if-eq v5, v6, :cond_34

    goto :goto_1e

    :cond_34
    invoke-virtual {v2, v4}, Lcom/motorola/camera/mcf/McfCallback;->getCallbackObject(Lcom/motorola/camera/mcf/McfCallback$CallbackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;

    :try_start_d
    check-cast v0, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;

    invoke-virtual {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/states/runnables/McfCaptureRequestRunnable$1;->onProcessTimeEstimate(Lcom/motorola/camera/mcf/McfInstanceIdentifier;Lcom/motorola/camera/mcf/McfCallbackProcessTimeEstimate;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_1e

    :catch_7
    move-exception v0

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postFullFrameEventFromNative: McfCallbackProcessTimeEstimate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :cond_35
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "postFullFrameEventFromNative: undefined: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_1e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
