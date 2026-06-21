.class public final Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zaa:Z

.field public final zab:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/zzb;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/zzb;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zaa:Z

    iput p1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zab:I

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

    iget-boolean v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zaa:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzc(Landroid/os/Parcel;II)V

    iget p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->zab:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvq;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method
