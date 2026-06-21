.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;
.super Lcom/google/common/collect/CompactHashMap$Itr;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$Itr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzd:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzC()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcg;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;I)V

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzd:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzci;->zzB()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
