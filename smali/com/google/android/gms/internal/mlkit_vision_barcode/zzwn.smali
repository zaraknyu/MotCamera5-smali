.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/motorola/camera/SecureDataHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;JLcom/motorola/camera/SecureDataHelper;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    iput-wide p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzd:J

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zze:Lcom/motorola/camera/SecureDataHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;->zzbe:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;

    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzl:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    invoke-direct {v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;-><init>()V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzft;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "New Collection violated the Collection spec"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzrc;J)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;->zzk:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$8;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwn;->zze:Lcom/motorola/camera/SecureDataHelper;

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/mcf/Mcf$8;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzwp;Lcom/motorola/camera/SecureDataHelper;)V

    sget-object p0, Lcom/google/mlkit/common/sdkinternal/zzh;->zza:Lcom/google/mlkit/common/sdkinternal/zzh;

    invoke-virtual {p0, v0}, Lcom/google/mlkit/common/sdkinternal/zzh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
