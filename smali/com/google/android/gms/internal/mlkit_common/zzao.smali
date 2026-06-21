.class public final Lcom/google/android/gms/internal/mlkit_common/zzao;
.super Lcom/google/android/gms/internal/mlkit_common/zzaj;
.source "SourceFile"


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

.field public final transient zzb:Lcom/google/android/gms/internal/mlkit_common/zzap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzaq;Lcom/google/android/gms/internal/mlkit_common/zzap;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzao;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzao;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzap;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzao;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzaq;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzao;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzap;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zzj(I)Lcom/google/android/gms/internal/mlkit_common/zzad;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzao;->zza:Lcom/google/android/gms/internal/mlkit_common/zzaq;

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzaq;->zzd:I

    return p0
.end method

.method public final zza([Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzao;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzap;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzaf;->zza([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
