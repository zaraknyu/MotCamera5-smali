.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object/from16 p0, v2

    move-object/from16 v3, p0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ge v15, v0, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v16, v14

    int-to-char v14, v15

    packed-switch v14, :pswitch_data_1

    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    :goto_1
    move-object/from16 v14, v16

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 p0, v14

    goto :goto_1

    :pswitch_1
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :pswitch_2
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :pswitch_3
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :pswitch_4
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :pswitch_5
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :pswitch_6
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :pswitch_7
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_8
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :pswitch_9
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_a
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_b
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :pswitch_c
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_d
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object/from16 v16, v14

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zza:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzb:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzc:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzd:Ljava/lang/String;

    iput-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zze:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzf:Ljava/lang/String;

    iput-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzg:Ljava/lang/String;

    iput-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzh:Ljava/lang/String;

    iput-object v10, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzi:Ljava/lang/String;

    iput-object v11, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzj:Ljava/lang/String;

    iput-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzk:Ljava/lang/String;

    iput-object v13, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzl:Ljava/lang/String;

    iput-object v14, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzm:Ljava/lang/String;

    move-object/from16 v14, p0

    iput-object v14, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->zzn:Ljava/lang/String;

    return-object v0

    :pswitch_e
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_4

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_1
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :pswitch_f
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_7

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_5
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_10
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_a

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_8
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_11
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_c

    const/4 v6, 0x2

    if-eq v5, v6, :cond_b

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_b
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_c
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_5

    :cond_d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_12
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_6
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_e

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_6

    :pswitch_13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :pswitch_14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :pswitch_15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :pswitch_16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :pswitch_17
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :pswitch_18
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :pswitch_19
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_e
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxw;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_1a
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_11

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_10

    const/4 v8, 0x2

    if-eq v7, v8, :cond_f

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_f
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v4

    goto :goto_7

    :cond_10
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v2

    goto :goto_7

    :cond_11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;-><init>(DD)V

    return-object v0

    :pswitch_1b
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_8
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_16

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_15

    const/4 v8, 0x2

    if-eq v7, v8, :cond_14

    const/4 v8, 0x3

    if-eq v7, v8, :cond_13

    const/4 v8, 0x4

    if-eq v7, v8, :cond_12

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_12
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_13
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_14
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_15
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_8

    :cond_16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_1c
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_17

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_9

    :pswitch_1d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    :pswitch_1e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_9

    :pswitch_1f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_9

    :pswitch_20
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_9

    :pswitch_21
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :pswitch_22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :pswitch_23
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :pswitch_24
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :pswitch_25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :pswitch_26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :pswitch_27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :pswitch_28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :pswitch_29
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :pswitch_2a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_2b
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_18

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_a

    :pswitch_2c
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxp;

    goto :goto_a

    :pswitch_2d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_a

    :pswitch_2e
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;

    goto :goto_a

    :pswitch_2f
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;

    goto :goto_a

    :pswitch_30
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :pswitch_31
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :pswitch_32
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxw;

    goto :goto_a

    :cond_18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxw;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxp;)V

    return-object v3

    :pswitch_33
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_19

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_5

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_b

    :pswitch_34
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;

    goto :goto_b

    :pswitch_35
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;

    goto :goto_b

    :pswitch_36
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :pswitch_37
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :pswitch_38
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :pswitch_39
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :pswitch_3a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_19
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;)V

    return-object v3

    :pswitch_3b
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v12, v2

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1a

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_6

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_c

    :pswitch_3c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    :pswitch_3d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_c

    :pswitch_3e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_c

    :pswitch_3f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_c

    :pswitch_40
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_c

    :pswitch_41
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_c

    :pswitch_42
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_c

    :pswitch_43
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_c

    :cond_1a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;-><init>(IIIIIIZLjava/lang/String;)V

    return-object v4

    :pswitch_44
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move v5, v3

    move v10, v5

    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_1b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_45
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;

    goto :goto_d

    :pswitch_46
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;

    goto :goto_d

    :pswitch_47
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;

    goto :goto_d

    :pswitch_48
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;

    goto :goto_d

    :pswitch_49
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;

    goto :goto_d

    :pswitch_4a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;

    goto :goto_d

    :pswitch_4b
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;

    goto :goto_d

    :pswitch_4c
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;

    goto :goto_d

    :pswitch_4d
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;

    goto :goto_d

    :pswitch_4e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_d

    :pswitch_4f
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/graphics/Point;

    goto :goto_d

    :pswitch_50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createByteArray(Landroid/os/Parcel;I)[B

    move-result-object v8

    goto/16 :goto_d

    :pswitch_51
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_d

    :pswitch_52
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_d

    :pswitch_53
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto/16 :goto_d

    :cond_1b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    invoke-direct/range {v4 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;)V

    return-object v4

    :pswitch_54
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_1c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_8

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_55
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    goto :goto_e

    :pswitch_56
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v7

    goto :goto_e

    :pswitch_57
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    goto :goto_e

    :pswitch_58
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    goto :goto_e

    :pswitch_59
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :pswitch_5a
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :pswitch_5b
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    goto :goto_e

    :cond_1c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzb:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzc:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzd:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iput-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zze:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    iput-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzf:[Ljava/lang/String;

    iput-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->zzg:[Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    return-object v0

    :pswitch_5c
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_1f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1d

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_1d
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_1e
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_f

    :cond_1f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxp;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxp;-><init>([Ljava/lang/String;I)V

    return-object v0

    :pswitch_5d
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_20

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_9

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_5e
    sget-object v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v8}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    goto :goto_10

    :pswitch_5f
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    goto :goto_10

    :pswitch_60
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :pswitch_61
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_10

    :pswitch_62
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :pswitch_63
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_10

    :pswitch_64
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zza:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zzb:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zzc:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zzd:Ljava/lang/String;

    iput-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zze:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    iput-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    return-object v0

    :pswitch_65
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_11
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v10

    if-ge v10, v0, :cond_21

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    int-to-char v11, v10

    packed-switch v11, :pswitch_data_a

    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_11

    :pswitch_66
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :pswitch_67
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v9

    goto :goto_11

    :pswitch_68
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_11

    :pswitch_69
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_11

    :pswitch_6a
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_11

    :pswitch_6b
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_11

    :pswitch_6c
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_11

    :pswitch_6d
    invoke-static {v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_11

    :cond_21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zza:I

    iput v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzb:I

    iput v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzc:I

    iput v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzd:I

    iput v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zze:I

    iput v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzf:I

    iput-boolean v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzg:Z

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;->zzh:Ljava/lang/String;

    return-object v0

    :pswitch_6e
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v20, v17

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move v5, v6

    :goto_12
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-ge v14, v0, :cond_22

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v18, v13

    int-to-char v13, v14

    packed-switch v13, :pswitch_data_b

    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    :goto_13
    move-object/from16 v13, v18

    goto :goto_12

    :pswitch_6f
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v2

    goto :goto_13

    :pswitch_70
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_13

    :pswitch_71
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createByteArray(Landroid/os/Parcel;I)[B

    move-result-object v13

    move-object v15, v13

    goto :goto_13

    :pswitch_72
    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    move-object/from16 v22, v13

    goto :goto_13

    :pswitch_73
    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    move-object/from16 v21, v13

    goto :goto_13

    :pswitch_74
    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    move-object/from16 v20, v13

    goto :goto_13

    :pswitch_75
    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    move-object/from16 v16, v13

    goto :goto_13

    :pswitch_76
    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzs;

    move-object/from16 v17, v13

    goto :goto_13

    :pswitch_77
    sget-object v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v13}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;

    goto :goto_12

    :pswitch_78
    sget-object v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzr;

    goto :goto_13

    :pswitch_79
    sget-object v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    goto :goto_13

    :pswitch_7a
    sget-object v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    goto :goto_13

    :pswitch_7b
    sget-object v9, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v14, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/Point;

    goto :goto_13

    :pswitch_7c
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_13

    :pswitch_7d
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_13

    :pswitch_7e
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_13

    :pswitch_7f
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto/16 :goto_13

    :cond_22
    move-object/from16 v18, v13

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zza:I

    iput-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzb:Ljava/lang/String;

    iput-object v15, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzo:[B

    iput-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzc:Ljava/lang/String;

    iput v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzd:I

    iput-object v9, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zze:[Landroid/graphics/Point;

    iput-boolean v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzp:Z

    iput-wide v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzq:D

    iput-object v10, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzf:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    iput-object v11, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzg:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    iput-object v12, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzh:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzr;

    move-object/from16 v5, v18

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzi:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;

    move-object/from16 v5, v17

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzj:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzs;

    move-object/from16 v5, v16

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzk:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    move-object/from16 v5, v20

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzl:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    move-object/from16 v5, v21

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzm:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    move-object/from16 v5, v22

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;->zzn:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    return-object v0

    :pswitch_80
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v8, v2

    move v9, v8

    move v10, v9

    move v11, v10

    move-wide v6, v3

    :goto_14
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_28

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    const/4 v4, 0x3

    if-eq v3, v4, :cond_26

    const/4 v4, 0x4

    if-eq v3, v4, :cond_25

    const/4 v4, 0x5

    if-eq v3, v4, :cond_24

    const/4 v4, 0x6

    if-eq v3, v4, :cond_23

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_14

    :cond_23
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v11, v2

    goto :goto_14

    :cond_24
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_14

    :cond_25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v10, v2

    goto :goto_14

    :cond_26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v9, v2

    goto :goto_14

    :cond_27
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v8, v2

    goto :goto_14

    :cond_28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;-><init>(JIIII)V

    return-object v5

    :pswitch_81
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_2b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2a

    const/4 v6, 0x3

    if-eq v5, v6, :cond_29

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_15

    :cond_29
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_15

    :cond_2a
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_15

    :cond_2b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;->zza:I

    iput-boolean v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;->zzb:Z

    return-object v0

    :pswitch_82
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_16
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2e

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2d

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2c

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_16

    :cond_2c
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_16

    :cond_2d
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_2e
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_16

    :cond_2f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;->zza:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;->zzb:Ljava/lang/String;

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;->zzc:I

    return-object v0

    :pswitch_83
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_17
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_32

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_31

    const/4 v6, 0x3

    if-eq v5, v6, :cond_30

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_17

    :cond_30
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_17

    :cond_31
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_32
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzs;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzs;->zza:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzs;->zzb:Ljava/lang/String;

    return-object v0

    :pswitch_84
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_18
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_35

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_34

    const/4 v6, 0x3

    if-eq v5, v6, :cond_33

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_33
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_34
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_35
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzr;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzr;->zza:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzr;->zzb:Ljava/lang/String;

    return-object v0

    :pswitch_85
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_38

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_37

    const/4 v6, 0x3

    if-eq v5, v6, :cond_36

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_19

    :cond_36
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_37
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_19

    :cond_38
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zza:I

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;->zzb:Ljava/lang/String;

    return-object v0

    :pswitch_86
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    :goto_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v9

    if-ge v9, v0, :cond_39

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    int-to-char v10, v9

    packed-switch v10, :pswitch_data_c

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1a

    :pswitch_87
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1a

    :pswitch_88
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1a

    :pswitch_89
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1a

    :pswitch_8a
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    :pswitch_8b
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1a

    :pswitch_8c
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :pswitch_8d
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_39
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zza:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zzb:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zzc:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zzd:Ljava/lang/String;

    iput-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zze:Ljava/lang/String;

    iput-object v7, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zzf:Ljava/lang/String;

    iput-object v8, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;->zzg:Ljava/lang/String;

    return-object v0

    :pswitch_8e
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_1b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_3c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3a

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_3a
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v4

    goto :goto_1b

    :cond_3b
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v2

    goto :goto_1b

    :cond_3c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;->zza:D

    iput-wide v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;->zzb:D

    return-object v0

    :pswitch_8f
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_41

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_40

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3f

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3e

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3d

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1c

    :cond_3d
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_3e
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_3f
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_40
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_1c

    :cond_41
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->zza:I

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->zzc:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;->zzd:Ljava/lang/String;

    return-object v0

    :pswitch_90
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_44

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_43

    const/4 v6, 0x3

    if-eq v5, v6, :cond_42

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_42
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_43
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_1d

    :cond_44
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v3, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zza:I

    iput-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;->zzb:[Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_6e
        :pswitch_65
        :pswitch_5d
        :pswitch_5c
        :pswitch_54
        :pswitch_44
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x2
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzh;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzm;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzya;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxz;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxy;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxx;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxw;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxv;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxu;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxt;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxs;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxr;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxq;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzyb;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzl;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzxp;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzk;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzj;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzu;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzan;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzah;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzt;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzs;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzr;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzq;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzp;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzo;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzn;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode/zzi;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
