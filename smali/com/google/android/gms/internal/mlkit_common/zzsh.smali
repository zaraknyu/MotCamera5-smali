.class public final Lcom/google/android/gms/internal/mlkit_common/zzsh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;


# instance fields
.field public final zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.android.gms.vision.barcode"

    const-string v1, "optional-module-barcode"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzg(I[Ljava/lang/Object;Lcom/google/common/base/Splitter;)Lcom/google/android/gms/internal/mlkit_common/zzaq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;)V
    .locals 4

    const-string v0, "common"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/dynamite/zzf;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/dynamite/zzf;->zza:Lcom/google/android/gms/dynamite/zzf;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/dynamite/zzf;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/google/android/gms/dynamite/zzf;->zza:Lcom/google/android/gms/dynamite/zzf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->zzi:Ljava/lang/String;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/mlkit_common/zzse;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/google/android/gms/internal/mlkit_common/zzse;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzsf;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzsf;-><init>(Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->scheduleCallable(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/zzw;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_common/zzsh;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
