.class public final Lcom/google/android/play/core/appupdate/zzm;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic zzc:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 9

    iget v0, p0, Lcom/google/android/play/core/appupdate/zzm;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v2, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    new-instance v4, Lcom/motorola/camera/CameraKpi;

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/zzw;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/common/base/Joiner;

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzn;

    invoke-static {v1, p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzp(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/play/core/appupdate/internal/zzn;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/zzr;

    :try_start_1
    iget-object v2, v1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Lcom/google/android/play/core/appupdate/internal/zzf;

    iget-object v3, v1, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/play/core/appupdate/zzr;->zzi()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/google/android/play/core/appupdate/zzp;

    new-instance v6, Lcom/google/common/base/Joiner;

    const-string v7, "OnCompleteUpdateCallback"

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;I)V

    invoke-direct {v5, v1, v6, v0}, Lcom/google/android/play/core/appupdate/zzo;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/common/base/Joiner;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/play/core/appupdate/internal/zzf;->zzc(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/zzp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/common/base/Joiner;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "completeUpdate(%s)"

    invoke-virtual {v2, v1, v3, p0}, Lcom/google/common/base/Joiner;->zzc(Landroid/os/RemoteException;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzm;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/zzm;->zzc:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/zzr;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzm;->zza:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    :try_start_2
    iget-object v2, v1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v2, v2, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Lcom/google/android/play/core/appupdate/internal/zzf;

    iget-object v3, v1, Lcom/google/android/play/core/appupdate/zzr;->zzd:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/google/android/play/core/appupdate/zzr;->zzb(Lcom/google/android/play/core/appupdate/zzr;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Lcom/google/android/play/core/appupdate/zzq;

    invoke-direct {v5, v1, v0, p0}, Lcom/google/android/play/core/appupdate/zzq;-><init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/play/core/appupdate/internal/zzf;->zzd(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/appupdate/zzq;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    sget-object v2, Lcom/google/android/play/core/appupdate/zzr;->zzb:Lcom/google/common/base/Joiner;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v3, "requestUpdateInfo(%s)"

    invoke-virtual {v2, v1, v3, p0}, Lcom/google/common/base/Joiner;->zzc(Landroid/os/RemoteException;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
