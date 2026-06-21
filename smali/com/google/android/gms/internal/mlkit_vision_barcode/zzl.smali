.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

.field public zzb:Ljava/lang/String;

.field public zzc:Ljava/lang/String;

.field public zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

.field public zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

.field public zzf:[Ljava/lang/String;

.field public zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzc:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzf:[Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;)V

    const/16 v1, 0x8

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    invoke-static {p1, v1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
