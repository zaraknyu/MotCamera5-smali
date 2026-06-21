.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v8, v4

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_5

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v2

    move-wide v6, v2

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v11, v2

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v10, v2

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v9, v2

    goto :goto_0

    :cond_4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    move v8, v2

    goto :goto_0

    :cond_5
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcc;

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcc;-><init>(JIIII)V

    return-object v5

    :pswitch_0
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_9

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_8

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_6
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_1

    :cond_7
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_8
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :pswitch_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_a
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e

    const/4 v6, 0x2

    if-eq v5, v6, :cond_d

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_d
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_e
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_3
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_12

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_11

    const/4 v6, 0x2

    if-eq v5, v6, :cond_10

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_10
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_11
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_4

    :cond_12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_4
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

    :goto_5
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_13

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_5

    :pswitch_5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5

    :pswitch_6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :pswitch_7
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :pswitch_8
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :pswitch_9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :pswitch_a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :pswitch_b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_13
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_c
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_6
    move-object v3, v2

    :goto_7
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_16

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_14
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v3

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-nez v3, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v3, v5

    goto :goto_7

    :cond_16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbv;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbv;-><init>([F)V

    return-object v0

    :pswitch_d
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_8
    move-object v5, v3

    :goto_9
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_1b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_19

    const/4 v8, 0x2

    if-eq v7, v8, :cond_18

    const/4 v8, 0x3

    if-eq v7, v8, :cond_17

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_17
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v4

    goto :goto_9

    :cond_18
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_9

    :cond_19
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readSize(Landroid/os/Parcel;I)I

    move-result v5

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-nez v5, :cond_1a

    goto :goto_8

    :cond_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v7

    add-int/2addr v6, v5

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    move-object v5, v7

    goto :goto_9

    :cond_1b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbt;

    invoke-direct {v0, v5, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbt;-><init>([FIZ)V

    return-object v0

    :pswitch_e
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v2

    move v8, v6

    move v10, v8

    move v9, v3

    move-object v7, v4

    :goto_a
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_21

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_20

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1e

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1d

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1c

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_1c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_a

    :cond_1d
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->zzb(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    goto :goto_a

    :cond_1e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_a

    :cond_1f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createByteArray(Landroid/os/Parcel;I)[B

    move-result-object v7

    goto :goto_a

    :cond_20
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v6

    goto :goto_a

    :cond_21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbr;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbr;-><init>(Z[BZFZ)V

    return-object v5

    :pswitch_f
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_b
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_24

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_23

    const/4 v8, 0x2

    if-eq v7, v8, :cond_22

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_22
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v4

    goto :goto_b

    :cond_23
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readDouble(Landroid/os/Parcel;I)D

    move-result-wide v2

    goto :goto_b

    :cond_24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;-><init>(DD)V

    return-object v0

    :pswitch_10
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_c
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_29

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_28

    const/4 v8, 0x2

    if-eq v7, v8, :cond_27

    const/4 v8, 0x3

    if-eq v7, v8, :cond_26

    const/4 v8, 0x4

    if-eq v7, v8, :cond_25

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_c

    :cond_25
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_26
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_27
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_28
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_c

    :cond_29
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_11
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

    :goto_d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2a

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_d

    :pswitch_12
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v17

    goto :goto_d

    :pswitch_13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v16

    goto :goto_d

    :pswitch_14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    goto :goto_d

    :pswitch_15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_d

    :pswitch_16
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_d

    :pswitch_17
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :pswitch_18
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    :pswitch_19
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    :pswitch_1a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :pswitch_1b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    :pswitch_1c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :pswitch_1d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :pswitch_1e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :pswitch_1f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_2a
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :pswitch_20
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

    :goto_e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_e

    :pswitch_21
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;

    goto :goto_e

    :pswitch_22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v9

    goto :goto_e

    :pswitch_23
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    goto :goto_e

    :pswitch_24
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    goto :goto_e

    :pswitch_25
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :pswitch_26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    :pswitch_27
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    goto :goto_e

    :cond_2b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;[Ljava/lang/String;[Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;)V

    return-object v3

    :pswitch_28
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

    :goto_f
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2c

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_f

    :pswitch_29
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;

    goto :goto_f

    :pswitch_2a
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;

    goto :goto_f

    :pswitch_2b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :pswitch_2c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :pswitch_2d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :pswitch_2e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :pswitch_2f
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_2c
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;)V

    return-object v3

    :pswitch_30
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

    :goto_10
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_2d

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_5

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_10

    :pswitch_31
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    goto :goto_10

    :pswitch_32
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_10

    :pswitch_33
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_10

    :pswitch_34
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_10

    :pswitch_35
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v8

    goto :goto_10

    :pswitch_36
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_10

    :pswitch_37
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_10

    :pswitch_38
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto :goto_10

    :cond_2d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;-><init>(IIIIIIZLjava/lang/String;)V

    return-object v4

    :pswitch_39
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_2f

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2e

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_11

    :cond_2e
    sget-object v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbr;

    goto :goto_11

    :cond_2f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbe;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbe;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbr;)V

    return-object v0

    :pswitch_3a
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_12
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_34

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_33

    const/4 v7, 0x2

    if-eq v6, v7, :cond_32

    const/4 v7, 0x3

    if-eq v6, v7, :cond_31

    const/4 v7, 0x4

    if-eq v6, v7, :cond_30

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_30
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v2

    goto :goto_12

    :cond_31
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    goto :goto_12

    :cond_32
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbv;

    goto :goto_12

    :cond_33
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbt;

    goto :goto_12

    :cond_34
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbc;

    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbt;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbv;Z)V

    return-object v0

    :pswitch_3b
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_37

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_36

    const/4 v6, 0x2

    if-eq v5, v6, :cond_35

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_35
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readBoolean(Landroid/os/Parcel;I)Z

    move-result v3

    goto :goto_13

    :cond_36
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_13

    :cond_37
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;-><init>(IZ)V

    return-object v0

    :pswitch_3c
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

    :goto_14
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_38

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_6

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_14

    :pswitch_3d
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    goto :goto_14

    :pswitch_3e
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    goto :goto_14

    :pswitch_3f
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    goto :goto_14

    :pswitch_40
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    goto :goto_14

    :pswitch_41
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    goto :goto_14

    :pswitch_42
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    goto :goto_14

    :pswitch_43
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    goto :goto_14

    :pswitch_44
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    goto :goto_14

    :pswitch_45
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    goto :goto_14

    :pswitch_46
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v10

    goto :goto_14

    :pswitch_47
    sget-object v3, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createTypedArray(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [Landroid/graphics/Point;

    goto :goto_14

    :pswitch_48
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createByteArray(Landroid/os/Parcel;I)[B

    move-result-object v8

    goto/16 :goto_14

    :pswitch_49
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_14

    :pswitch_4a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_14

    :pswitch_4b
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v5

    goto/16 :goto_14

    :cond_38
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    invoke-direct/range {v4 .. v19}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;-><init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;)V

    return-object v4

    :pswitch_4c
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_3b

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_39

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_15

    :cond_39
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->createStringArray(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_3a
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->readInt(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_15

    :cond_3b
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzvp;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;-><init>([Ljava/lang/String;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_30
        :pswitch_28
        :pswitch_20
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzal;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzcc;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzax;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaw;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzav;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzau;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzat;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbv;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbt;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbr;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzas;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzar;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzaq;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzap;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzao;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzan;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbe;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzbc;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzba;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzay;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzam;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
