.class public final Lcom/google/mlkit/common/sdkinternal/MlKitContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# instance fields
.field public zzc:Lcom/google/firebase/components/ComponentRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 4

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "MlKitContext has not been initialized"

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zzb(Lcom/motorola/camera/CameraApp;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;
    .locals 8

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "MlKitContext is already initialized"

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object p0, v4

    :cond_1
    new-instance v4, Lcom/google/android/play/core/appupdate/zzi;

    new-instance v5, Lcom/google/firebase/components/OptionalProvider$$Lambda$4;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/google/android/play/core/appupdate/zzi;-><init>(Landroid/content/Context;Lcom/google/firebase/components/OptionalProvider$$Lambda$4;)V

    invoke-virtual {v4}, Lcom/google/android/play/core/appupdate/zzi;->discoverLazy()Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-class v4, Landroid/content/Context;

    new-array v7, v3, [Ljava/lang/Class;

    invoke-static {p0, v4, v7}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    new-array v3, v3, [Ljava/lang/Class;

    invoke-static {v1, p0, v3}, Lcom/google/firebase/components/Component;->of(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/Component;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/firebase/components/ComponentRuntime;

    invoke-direct {p0, v5, v6}, Lcom/google/firebase/components/ComponentRuntime;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p0, v1, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzc:Lcom/google/firebase/components/ComponentRuntime;

    iget-object v1, p0, Lcom/google/firebase/components/ComponentRuntime;->eagerComponentsInitializedWith:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/firebase/components/ComponentRuntime;->components:Ljava/util/HashMap;

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/components/ComponentRuntime;->doInitializeEagerComponents(Ljava/util/HashMap;Z)V

    :goto_1
    sget-object p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzb:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzc:Lcom/google/firebase/components/ComponentRuntime;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->zzc:Lcom/google/firebase/components/ComponentRuntime;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhm;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MlKitContext has been deleted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method
