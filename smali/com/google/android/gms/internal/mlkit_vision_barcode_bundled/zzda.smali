.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;
.source "SourceFile"


# instance fields
.field public final zzc:I

.field public final zzd:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;-><init>([B)V

    add-int v0, p1, p2

    array-length p3, p3

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzo(III)I

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzd:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdf;->zzu(II)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzc:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    aget-byte p0, p0, v0

    return p0
.end method

.method public final zzb(I)B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzc:I

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public final zzc()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzc:I

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzd:I

    return p0
.end method

.method public final zze([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzde;->zza:[B

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzda;->zzc:I

    add-int/2addr p0, p2

    invoke-static {v0, p0, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
