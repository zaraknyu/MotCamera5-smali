.class public final Lcom/google/android/gms/common/internal/zzv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzc:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public record(Landroid/os/Bundle;Ljava/lang/Long;)V
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/zzv;->zzc:Z

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzv;->zza:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
