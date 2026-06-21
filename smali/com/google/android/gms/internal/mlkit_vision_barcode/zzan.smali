.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:J

.field public final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zza:I

    iput p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zzb:I

    iput p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zzd:J

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zze:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zza:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zzb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, v1, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zzc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v0, 0x8

    const/4 v2, 0x5

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zzd:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x6

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;->zze:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
