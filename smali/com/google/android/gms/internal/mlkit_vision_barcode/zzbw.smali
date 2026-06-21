.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbv;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
