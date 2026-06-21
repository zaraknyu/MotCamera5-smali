.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/lang/String;

.field public final zzf:Ljava/lang/String;

.field public final zzg:Ljava/lang/String;

.field public final zzh:Ljava/lang/String;

.field public final zzi:Ljava/lang/String;

.field public final zzj:Ljava/lang/String;

.field public final zzk:Ljava/lang/String;

.field public final zzl:Ljava/lang/String;

.field public final zzm:Ljava/lang/String;

.field public final zzn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzf:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzh:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzi:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzj:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzk:Ljava/lang/String;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzl:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzm:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zza(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zza:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzc:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzd:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zze:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzf:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzg:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzh:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzi:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzj:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzk:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzl:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzm:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v0, 0xe

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->zzn:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->writeString(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
