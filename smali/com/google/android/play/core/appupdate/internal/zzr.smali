.class public final Lcom/google/android/play/core/appupdate/internal/zzr;
.super Lcom/google/android/play/core/appupdate/internal/zzn;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->$r8$classId:I

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/play/core/appupdate/internal/zzn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzw;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/common/base/Joiner;

    const-string/jumbo v1, "unlinkToDeath"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Lcom/google/android/play/core/appupdate/internal/zzf;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzk:Lcom/google/android/play/core/appupdate/internal/zzp;

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Lcom/google/android/play/core/appupdate/internal/zzf;

    iput-boolean v2, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, v0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzl:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/common/base/Joiner;

    const-string v1, "Leaving the connection open for other ongoing calls."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v3, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Lcom/google/android/play/core/appupdate/internal/zzf;

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc:Lcom/google/common/base/Joiner;

    const-string v3, "Unbind from service."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v3, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzb:Landroid/content/Context;

    iget-object v1, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/appupdate/internal/zzx;

    iput-boolean v2, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzh:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzn:Lcom/google/android/play/core/appupdate/internal/zzf;

    iput-object v2, v1, Lcom/google/android/play/core/appupdate/internal/zzx;->zzm:Lcom/google/android/play/core/appupdate/internal/zzw;

    :cond_2
    iget-object p0, p0, Lcom/google/android/play/core/appupdate/internal/zzr;->zza:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzw()V

    monitor-exit v0

    :goto_1
    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
