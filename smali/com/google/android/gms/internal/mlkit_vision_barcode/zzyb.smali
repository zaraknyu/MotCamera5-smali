.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;",
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

.field public final zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;

.field public final zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;

.field public final zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;

.field public final zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;

.field public final zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;

.field public final zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;

.field public final zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;

.field public final zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;

.field public final zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zze:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;

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

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zza:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzb:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzc:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzd:[B

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeByteArray(Landroid/os/Parcel;I[B)V

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zze:[Landroid/graphics/Point;

    invoke-static {p1, v1, v3, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    const/4 v1, 0x6

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzf:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    const/16 v1, 0xf

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;->zzo:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;

    invoke-static {p1, v1, p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
