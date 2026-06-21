.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Z

.field public zzb:Z

.field public zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/encoders/ObjectEncoderContext;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    .line 3
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfg;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0

    .line 7
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    .line 15
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzfg;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 19
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    .line 21
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzd$1(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-object p0

    .line 22
    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
