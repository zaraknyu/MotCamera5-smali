.class public final Lcom/google/android/gms/common/internal/zzk;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/zzk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:Landroid/os/Bundle;

.field public zzb:[Lcom/google/android/gms/common/Feature;

.field public zzc:I

.field public zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzb;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzb;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/internal/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzk;->zza:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzk;->zzb:[Lcom/google/android/gms/common/Feature;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget v1, p0, Lcom/google/android/gms/common/internal/zzk;->zzc:I

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzk;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    invoke-static {p1, v3, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
