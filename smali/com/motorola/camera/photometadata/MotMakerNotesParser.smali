.class public final Lcom/motorola/camera/photometadata/MotMakerNotesParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AF_STATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

.field public static final VENDOR_SIGNATURE:[B


# instance fields
.field public final mByteOrder:Ljava/nio/ByteOrder;

.field public final mMakerNotesMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->VENDOR_SIGNATURE:[B

    const-string v0, "\\(state:pos\\): [0-9]+:(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->AF_STATE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 1
        0x4dt
        0x4ft
        0x54t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method public static appendAppInfoToMetadata(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_MAKERNOTE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p0, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAMERA_APP_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    sget-object v4, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CONTENT_AI_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    sget-object v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_IMAGER_TUNING_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_PREVIEW_SCENE_INFO:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    filled-new-array {v3, v4, v5, v6}, [Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v3, v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v4, v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, 0x4d

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v4

    new-instance v5, Lcom/motorola/camera/photometadata/MotMakerNotesParser$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$$ExternalSyntheticLambda0;-><init>(S)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v4

    invoke-virtual {v3}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    aget v4, v6, v4

    mul-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Entry doesn\'t begin with \"EM\""

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/Latch;->getInstance()Landroidx/compose/runtime/Latch;

    move-result-object v0

    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CAMERA_APP_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "com.motorola.camera5"

    if-eqz v4, :cond_5

    :try_start_2
    iget-object v4, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v3, v4, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->writeMarkerUsingEngineFormat(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_5
    :goto_2
    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_CONTENT_AI_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v3, v4, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->writeMarkerUsingEngineFormat(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_7
    :goto_3
    sget-object v3, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_IMAGER_TUNING_VERSION:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Landroidx/compose/runtime/Latch;->getImagerTuningName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v0, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v3, v0, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->writeMarkerUsingEngineFormat(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_9
    :goto_4
    sget-object v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_PREVIEW_SCENE_INFO:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/motorola/camera/mcf/Mcf;->mAcc_values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_a

    const-string v2, "Orientation_ABOVE"

    goto :goto_5

    :cond_a
    const-string v2, "Orientation_UNDER"

    :goto_5
    sget v4, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    const-wide v5, 0x4056800000000000L    # 90.0

    if-eqz v4, :cond_c

    const/16 v7, 0xb4

    if-ne v4, v7, :cond_b

    goto :goto_7

    :cond_b
    sget-object v4, Lcom/motorola/camera/mcf/Mcf;->mOri_degrees:[D

    aget-wide v3, v4, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    :goto_6
    sub-double/2addr v5, v3

    goto :goto_8

    :cond_c
    :goto_7
    sget-object v3, Lcom/motorola/camera/mcf/Mcf;->mOri_degrees:[D

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    goto :goto_6

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOutDoorScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sIsOutDoorScene:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; moonChooseScene: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/motorola/camera/mcfmanagers/SceneModeManager;->sMoonChooseScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; lightLuxF,R:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getLightLuxValueFront()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getLightLuxValueRear()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] ; bYHistAva: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->getBYHistAva()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "; degree: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->writeMarkerUsingEngineFormat(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    :cond_d
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->SNAPSHOT_MAKERNOTE_REQUEST_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->setValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    const-string p1, "MotMakerNotesParser"

    const-string v0, "Error: unable to write app info to output stream"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-void
.end method

.method public static readInt(IZ[B)I
    .locals 3

    aget-byte v0, p2, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p0, 0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p1, :cond_0

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_0
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    goto :goto_0
.end method

.method public static readShort(IZ[B)S
    .locals 1

    aget-byte v0, p2, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p1, :cond_0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    :goto_0
    int-to-short p0, p0

    return p0

    :cond_0
    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    goto :goto_0
.end method

.method public static readUint(IZ[B)J
    .locals 3

    aget-byte v0, p2, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p0, 0x2

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p1, :cond_0

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p2, v2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    :goto_0
    or-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0

    :cond_0
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    goto :goto_0
.end method

.method public static readUshort(IZ[B)C
    .locals 1

    aget-byte v0, p2, p0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, p2, p0

    and-int/lit16 p0, p0, 0xff

    if-eqz p1, :cond_0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_0
    shl-int/lit8 p1, v0, 0x8

    or-int/2addr p0, p1

    goto :goto_0
.end method

.method public static writeMarkerUsingEngineFormat(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    iget p0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    new-instance v0, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, p2, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p2, p1

    const/16 v1, 0x7fff

    if-gt p2, v1, :cond_1

    if-gt p0, v1, :cond_0

    const/16 p2, -0x8000

    if-lt p0, p2, :cond_0

    const/16 p2, 0x45

    invoke-virtual {v0, p2}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 p2, 0x4d

    invoke-virtual {v0, p2}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeByte(I)V

    array-length p0, p1

    int-to-short p0, p0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    invoke-virtual {v0, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->write([B)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag code value is not in Short type range."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Payload length value is not in Short type range."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final addEntryMarkerData([B)V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    :goto_0
    iget-object v2, v1, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_8

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->read()I

    move-result v2

    const/16 v3, 0x45

    const-string v4, "MotMakerNotesParser"

    if-ne v2, v3, :cond_7

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->read()I

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->read()I

    move-result v3

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    sget-object v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    aget v6, v6, v3

    mul-int/2addr v6, v5

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v8, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v8, v7, :cond_1

    new-array v4, v6, [B

    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    goto/16 :goto_6

    :cond_1
    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v6, 0x0

    goto/16 :goto_3

    :pswitch_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    :goto_1
    if-ge v7, v5, :cond_4

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readLong()J

    move-result-wide v10

    iget-object v8, v9, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v16, 0x20

    const/16 v17, 0x18

    const/16 v18, 0x10

    const/16 v19, 0x8

    const/16 p1, 0x38

    iget-object v13, v9, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-ne v8, v12, :cond_2

    long-to-int v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    const/16 v12, 0x30

    const/16 v20, 0x28

    ushr-long v14, v10, v19

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v18

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v17

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v16

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v20

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v12

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v10, v10, p1

    long-to-int v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_2
    const/16 v12, 0x30

    const/16 v20, 0x28

    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v14, :cond_3

    ushr-long v14, v10, p1

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v12

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v20

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v16

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v17

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v18

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    ushr-long v14, v10, v19

    long-to-int v8, v14

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    long-to-int v8, v10

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v13, v8}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    :goto_2
    iget v8, v9, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    add-int/lit8 v8, v8, 0x8

    iput v8, v9, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->pos:I

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    :goto_3
    const-string v7, "Unknown type, update the parser"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    goto :goto_6

    :pswitch_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v9, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    :goto_4
    if-ge v7, v5, :cond_5

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_6

    :pswitch_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;

    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v9, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    :goto_5
    if-ge v7, v5, :cond_6

    invoke-virtual {v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readShort()S

    move-result v8

    invoke-virtual {v6, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataOutputStream;->writeShort(S)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_6

    :pswitch_3
    new-array v4, v6, [B

    invoke-virtual {v1, v4}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    :goto_6
    new-instance v6, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    invoke-direct {v6, v3, v5, v4}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;-><init>(II[B)V

    iget-object v3, v0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    :goto_7
    const-string v0, "Unable to parse, bad entry markers"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;->getStringValue(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final parse([B)V
    .locals 13

    new-instance v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mByteOrder:Ljava/nio/ByteOrder;

    iput-object v1, v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->mByteOrder:Ljava/nio/ByteOrder;

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readFully([B)V

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v2, "MOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v7

    sget-object v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mLookup:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    const/16 v9, 0xd

    if-lt v5, v9, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_0
    sget-object v9, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->MOT_MAKERNOTES_BYTES_PER_FORMAT:[I

    aget v9, v9, v5

    mul-int/2addr v9, v7

    new-array v10, v9, [B

    if-le v9, v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readInt()I

    move-result v11

    :try_start_0
    invoke-static {p1, v11, v10, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error parsing "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " tag:"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "MotMakerNotesParser"

    invoke-static {v11, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    move v8, v6

    :goto_1
    if-ge v8, v9, :cond_2

    invoke-virtual {v0}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->readByte()B

    move-result v11

    aput-byte v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    rsub-int/lit8 v8, v8, 0x4

    invoke-virtual {v0, v8}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->skipBytes(I)I

    :goto_2
    new-instance v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;

    invoke-direct {v8, v5, v7, v10}, Lcom/motorola/camera/photometadata/MotMakerNotesParser$MakerNoteContainer;-><init>(II[B)V

    iget-object v5, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser;->mMakerNotesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Not Motorola MakerNotes Format: "

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
