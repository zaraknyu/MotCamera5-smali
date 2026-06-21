.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfn;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;->$r8$classId:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;)V

    return-void
.end method


# virtual methods
.method public zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzg()V

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    return-object p0
.end method

.method public bridge synthetic zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzk()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcq;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public zzn()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zze;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzn()V

    return-void

    :pswitch_0
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zzn()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    if-eq v0, v1, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;->zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzdx;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
