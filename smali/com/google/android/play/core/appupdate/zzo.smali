.class public abstract Lcom/google/android/play/core/appupdate/zzo;
.super Lcom/google/android/gms/internal/base/zab;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/appupdate/internal/zzh;


# instance fields
.field public final zza:Lcom/google/common/base/Joiner;

.field public final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic zzc:Lcom/google/android/play/core/appupdate/zzr;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/appupdate/zzr;Lcom/google/common/base/Joiner;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/base/zab;-><init>(I)V

    const-string p1, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/google/common/base/Joiner;

    iput-object p3, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/google/common/base/Joiner;

    const-string v0, "onCompleteUpdate"

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public zzc(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/zzo;->zzc:Lcom/google/android/play/core/appupdate/zzr;

    iget-object p1, p1, Lcom/google/android/play/core/appupdate/zzr;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzo;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/play/core/appupdate/zzo;->zza:Lcom/google/common/base/Joiner;

    const-string v0, "onRequestInfo"

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/Joiner;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
