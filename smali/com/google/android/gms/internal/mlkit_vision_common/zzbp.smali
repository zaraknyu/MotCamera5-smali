.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzbp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 3

    const-class v0, Lkotlin/reflect/jvm/KTypesJvm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lkotlin/reflect/jvm/KTypesJvm;->zza:Lcom/google/android/gms/tasks/zzb;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/play/core/splitinstall/zzac;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitinstall/zzac;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/tasks/zzb;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tasks/zzb;-><init>(Lcom/google/android/play/core/splitinstall/zzac;)V

    sput-object p0, Lkotlin/reflect/jvm/KTypesJvm;->zza:Lcom/google/android/gms/tasks/zzb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/reflect/jvm/KTypesJvm;->zza:Lcom/google/android/gms/tasks/zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzb;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/splitinstall/internal/zzcb;

    invoke-interface {p0}, Lcom/google/android/play/core/splitinstall/internal/zzcb;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
