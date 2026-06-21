.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcs;
.source "SourceFile"


# instance fields
.field public final transient zza:[Ljava/lang/Object;

.field public final transient zzb:I

.field public final transient zzc:I


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zza:[Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzb:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxa;->zza(II)V

    add-int/2addr p1, p1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzb:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zza:[Ljava/lang/Object;

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdo;->zzc:I

    return p0
.end method
