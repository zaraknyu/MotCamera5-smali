.class public abstract Lcom/google/android/gms/common/api/internal/zac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zac:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zac;->zac:I

    return-void
.end method

.method public static zah(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    return-object v0
.end method


# virtual methods
.method public abstract zaa(Lcom/google/android/gms/common/api/internal/zabq;)Z
.end method

.method public abstract zab(Lcom/google/android/gms/common/api/internal/zabq;)[Lcom/google/android/gms/common/Feature;
.end method

.method public abstract zad(Lcom/google/android/gms/common/api/Status;)V
.end method

.method public abstract zae(Ljava/lang/Exception;)V
.end method

.method public abstract zaf(Lcom/google/android/gms/common/api/internal/zabq;)V
.end method

.method public abstract zag(Landroidx/room/concurrent/FileLock;Z)V
.end method
