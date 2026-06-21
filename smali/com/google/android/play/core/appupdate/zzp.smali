.class public final Lcom/google/android/play/core/appupdate/zzp;
.super Lcom/google/android/play/core/appupdate/zzo;
.source "SourceFile"


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/google/android/play/core/appupdate/zzo;->zzb(Landroid/os/Bundle;)V

    const-string v0, "error.code"

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/android/play/core/install/InstallException;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v2, p1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    iget-object p0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->zza:Lcom/google/android/gms/tasks/zzw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/zzw;->zze(Ljava/lang/Object;)Z

    return-void
.end method
