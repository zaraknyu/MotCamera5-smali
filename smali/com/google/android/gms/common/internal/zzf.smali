.class public final Lcom/google/android/gms/common/internal/zzf;
.super Lcom/google/android/gms/common/internal/zza;
.source "SourceFile"


# instance fields
.field public final zze:Landroid/os/IBinder;

.field public final synthetic zzf:Lcom/google/android/gms/common/internal/GmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/GmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/zza;-><init>(Lcom/google/android/gms/common/internal/GmsClient;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzf;->zze:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/GmsClient;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzx:Lcom/google/android/gms/common/internal/zah;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final zzd()Z
    .locals 5

    const-string v0, "GmsClient"

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zze:Landroid/os/IBinder;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzah;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Lcom/google/android/gms/common/internal/GmsClient;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "service descriptor mismatch: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/GmsClient;->createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    const/4 v3, 0x4

    invoke-static {p0, v1, v3, v0}, Lcom/google/android/gms/common/internal/GmsClient;->zzn(Lcom/google/android/gms/common/internal/GmsClient;IILandroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {p0, v1, v3, v0}, Lcom/google/android/gms/common/internal/GmsClient;->zzn(Lcom/google/android/gms/common/internal/GmsClient;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzB:Lcom/google/android/gms/common/ConnectionResult;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/GmsClient;->zzw:Lcom/google/android/gms/common/internal/zah;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zah;->zaa:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;->onConnected()V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v2

    :catch_0
    const-string/jumbo p0, "service probably died"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
