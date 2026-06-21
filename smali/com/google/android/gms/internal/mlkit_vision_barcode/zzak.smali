.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzak;
.super Lcom/google/android/gms/internal/base/zaa;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode/zzam;


# virtual methods
.method public final zzd(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaa;->zza()Landroid/os/Parcel;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzc;->$r8$clinit:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/base/zaa;->zzb(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzaj;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/base/zaa;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
