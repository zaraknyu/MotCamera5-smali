.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:I

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:[B

.field public final zze:[Landroid/graphics/Point;

.field public final zzf:I

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zza:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzc:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzd:[B

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeByteArray(Landroid/os/Parcel;I[B)V

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zze:[Landroid/graphics/Point;

    invoke-static {p1, v1, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x6

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzf:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xf

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    invoke-static {p1, v1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
