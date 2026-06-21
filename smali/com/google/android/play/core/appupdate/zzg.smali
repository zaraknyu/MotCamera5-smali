.class public final Lcom/google/android/play/core/appupdate/zzg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/play/core/appupdate/zzr;

.field public final zzb:Lcom/google/android/play/core/appupdate/zzc;

.field public final zzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/play/core/appupdate/zzc;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzg;->zza:Lcom/google/android/play/core/appupdate/zzr;

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzg;->zzb:Lcom/google/android/play/core/appupdate/zzc;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzg;->zzc:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getAppUpdateInfo()Lcom/google/android/gms/tasks/zzw;
    .locals 7

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzg;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzg;->zza:Lcom/google/android/play/core/appupdate/zzr;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    if-nez v2, :cond_1

    sget-object p0, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/common/base/Joiner;

    const/16 v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    const-string v3, "PlayCore"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    const-string v2, "onError(%d)"

    invoke-static {p0, v2, v1}, Lcom/google/common/base/Joiner;->zzf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/google/android/play/core/install/InstallException;

    invoke-direct {p0, v0}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    new-instance v0, Lcom/google/android/gms/tasks/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzw;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/zzw;->zza(Ljava/lang/Exception;)V

    return-object v0

    :cond_1
    sget-object v1, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/common/base/Joiner;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "requestUpdateInfo(%s)"

    invoke-virtual {v1, v4, v3}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v5, Lcom/google/android/play/core/appupdate/zzm;

    invoke-direct {v5, p0, v3, v0, v3}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v1, Lcom/google/android/play/core/appupdate/zzm;

    const/4 v6, 0x2

    move-object v4, v3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/appupdate/zzm;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;I)V

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, v3, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    return-object p0
.end method
