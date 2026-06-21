.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->zza:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
