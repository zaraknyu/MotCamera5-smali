.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

.field public final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default instance must be immutable."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-object v0
.end method

.method public final zzad()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzX(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Z)Z

    move-result p0

    return p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzX(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzgr;-><init>()V

    throw p0
.end method

.method public zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;->zzf(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzU()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-object p0
.end method

.method public bridge zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object p0

    return-object p0
.end method

.method public final zzm()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzn()V

    :cond_0
    return-void
.end method

.method public zzn()V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzg(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfu;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzge;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    return-void
.end method
