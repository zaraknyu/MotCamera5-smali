.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzx;
.super Lcom/google/android/gms/internal/mlkit_vision_common/zzs;
.source "SourceFile"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

.field public final transient zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzz;Lcom/google/android/gms/internal/mlkit_vision_common/zzy;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zzk(I)Lcom/google/android/gms/internal/mlkit_vision_common/zzn;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzz;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final zza([Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzy;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->zza([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
