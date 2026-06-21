.class public Lcom/motorola/camera/arcsoft/StellarTrackParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final DEBUG_INPUT:Z = false

.field private static final DEBUG_MAX_INPUT_INDEX:I = 0x183

.field private static final DEBUG_TIME:Ljava/lang/String; = "20231025105004"

.field private static final MTK_ISP_GAIN_BASE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "StellarTrackParams"


# instance fields
.field public altitude:D

.field public day:I

.field public horFov:D

.field public hour:I

.field public latitude:D

.field public longitude:D

.field public mDebugInputIndex:I

.field public mDebugLastIndex:I

.field public mLastAdrc:F

.field public mLastEv:Ljava/lang/Integer;

.field public mLastExp:Ljava/lang/Long;

.field public mLastFocal:Ljava/lang/Float;

.field public mLastIso:Ljava/lang/Integer;

.field public mLastIspGain:F

.field public mLastLuxIdx:Ljava/lang/Float;

.field public mLastOrientation:I

.field public mLastSensorGain:F

.field private mLastSensorTimestamp:J

.field public mLastTimestamp:J

.field public final mResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;",
            ">;"
        }
    .end annotation
.end field

.field public final mRotationMatrix:[D

.field private mStartTimestamp:J

.field public minute:I

.field public month:I

.field public second:I

.field private final sensorEventListener:Landroid/hardware/SensorEventListener;

.field public verFov:D

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mRotationMatrix:[D

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->year:I

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->month:I

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->day:I

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->hour:I

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->minute:I

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->second:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->latitude:D

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->longitude:D

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->altitude:D

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->horFov:D

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->verFov:D

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mResults:Ljava/util/HashMap;

    new-instance v0, Lcom/motorola/camera/Controller$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/Controller$2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->sensorEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private handleTimestamp(J)J
    .locals 6

    iget-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastSensorTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mStartTimestamp:J

    sub-long v0, p1, v0

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mStartTimestamp:J

    :cond_0
    iput-wide p1, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastSensorTimestamp:J

    new-instance p1, Ljava/util/Date;

    iget-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mStartTimestamp:J

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p2, "yyyyMMddHHmmssSSS"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p2, "GMT"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private loadDebug(Landroid/media/Image;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    const-string/jumbo v4, "timestamp:"

    const-string v5, "focus:"

    const-string v6, "device_orientation:"

    const-string v7, "adrc_gain:"

    const-string v8, "luxIndex:"

    const-string v9, "ISO:"

    const-string/jumbo v10, "shutter:"

    const-string v11, "EV:"

    const-string v12, "ispGain:"

    const-string/jumbo v13, "sensorGain:"

    const-string/jumbo v14, "totalGain:"

    const-string v15, "HorFov="

    move-object/from16 v16, v4

    const-string v4, "RotateMat="

    move-object/from16 v17, v5

    const-string v5, "Lat="

    move-object/from16 v18, v6

    const/16 v6, 0xa

    if-ge v3, v6, :cond_0

    move/from16 v19, v6

    const-string v6, "/data/data/com.motorola.camera5/files/20231025105004_4096x3072_00000"

    invoke-static {v3, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object/from16 v20, v7

    goto :goto_1

    :cond_0
    move/from16 v19, v6

    const/16 v6, 0x64

    if-ge v3, v6, :cond_1

    const-string v6, "/data/data/com.motorola.camera5/files/20231025105004_4096x3072_0000"

    invoke-static {v3, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string v6, "/data/data/com.motorola.camera5/files/20231025105004_4096x3072_000"

    invoke-static {v3, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :goto_1
    const-string v7, ".nv21"

    invoke-static {v6, v7}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v21, v8

    const-string v8, ".txt"

    invoke-static {v6, v8}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_2

    sget-object v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->TAG:Ljava/lang/String;

    const-string v1, "loadDebug error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v7, v8}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iput v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mDebugLastIndex:I

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    if-eqz v6, :cond_15

    const/16 p4, 0x0

    const-string v7, "ArcSoft"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v7, "year"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "year="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    const-string v8, ",month="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->year:I

    const-string v7, "month="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    const-string v8, ",day="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->month:I

    const-string v7, "day="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    const-string v8, ",hour="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->day:I

    const-string v7, "hour="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    const-string v8, ",minute="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->hour:I

    const-string v7, "minute="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    const-string v8, ",second="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->minute:I

    const-string/jumbo v7, "second="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->second:I

    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    const/16 v22, 0x9

    const-string v8, ",Long="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->latitude:D

    const-string v7, "Long="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    const-string v8, ",Altitude="

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->longitude:D

    const-string v7, "Altitude="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->altitude:D

    goto :goto_3

    :cond_6
    const/16 v22, 0x9

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move-object/from16 v23, v3

    move/from16 v3, v22

    if-ne v8, v3, :cond_7

    move/from16 v3, p4

    :goto_4
    array-length v8, v7

    if-ge v3, v8, :cond_7

    iget-object v8, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mRotationMatrix:[D

    aget-object v24, v7, v3

    move/from16 p4, v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v24, v4

    float-to-double v3, v3

    aput-wide v3, v8, p4

    add-int/lit8 v3, p4, 0x1

    move-object/from16 v4, v24

    goto :goto_4

    :cond_7
    :goto_5
    move-object/from16 v24, v4

    goto :goto_6

    :cond_8
    move-object/from16 v23, v3

    goto :goto_5

    :goto_6
    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    const-string v4, ",VerFov="

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->horFov:D

    const-string v3, "VerFov="

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->verFov:D

    :cond_9
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastSensorGain:F

    :goto_7
    move-object/from16 v3, v23

    move-object/from16 v4, v24

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastSensorGain:F

    goto :goto_7

    :cond_b
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIspGain:F

    goto :goto_7

    :cond_c
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastEv:Ljava/lang/Integer;

    goto :goto_7

    :cond_d
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastExp:Ljava/lang/Long;

    goto :goto_7

    :cond_e
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIso:Ljava/lang/Integer;

    goto :goto_7

    :cond_f
    move-object/from16 v3, v21

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v22, 0x9

    add-int/lit8 v4, v4, 0x9

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastLuxIdx:Ljava/lang/Float;

    move-object/from16 v21, v3

    goto/16 :goto_7

    :cond_10
    move-object/from16 v4, v20

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastAdrc:F

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    goto/16 :goto_7

    :cond_11
    move-object/from16 v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x13

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastOrientation:I

    move-object/from16 v21, v3

    move-object/from16 v20, v4

    move-object/from16 v18, v7

    goto/16 :goto_7

    :cond_12
    move-object/from16 v8, v17

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v21, v3

    add-int/lit8 v3, v17, 0x6

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastFocal:Ljava/lang/Float;

    :goto_8
    move-object/from16 v20, v4

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    goto/16 :goto_7

    :cond_13
    move-object/from16 v21, v3

    move-object/from16 v3, v16

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_14

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v17, v3

    add-int/lit8 v3, v16, 0xa

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastTimestamp:J

    move-object/from16 v18, v7

    move-object/from16 v16, v17

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v17, v8

    goto/16 :goto_2

    :cond_14
    move-object/from16 v16, v3

    goto :goto_8

    :cond_15
    const/16 p4, 0x0

    if-eqz p1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, p4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, p4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, p4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/motorola/camera/arcsoft/StellarTrackParams;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_9
    return-void

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V
    .locals 5

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastExp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastExp:Ljava/lang/Long;

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIso:Ljava/lang/Integer;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastEv:Ljava/lang/Integer;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    iget-object v1, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastEv:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastEv:Ljava/lang/Integer;

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->LUX_IDX_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastLuxIdx:Ljava/lang/Float;

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ANALOG_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    invoke-static {}, Lcom/motorola/camera/Util;->isHardwareMtk()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->MTK_ISP_GAIN:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x45800000    # 4096.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIspGain:F

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->QTI_SENSOR_BPS_GAIN:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIspGain:F

    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastFocal:Ljava/lang/Float;

    sget v0, Lcom/motorola/camera/shared/OrientationEvent;->mCurrentOrientation:I

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastOrientation:I

    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ADRC_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastAdrc:F

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/CustomKeyHelper;->ISO100_GAIN_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    invoke-virtual {v0, p2, p1}, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->getValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_4
    iget-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIso:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const p2, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p2

    iget p1, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIspGain:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastSensorGain:F

    return-void
.end method

.method private registerSensor(Z)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iget-object p0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public addResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;->result:Landroid/hardware/camera2/CaptureResult;

    iput-object p2, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;->cameraId:Ljava/lang/String;

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mResults:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public beginCapture()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mDebugInputIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mDebugLastIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastTimestamp:J

    iget-object v2, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mResults:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mStartTimestamp:J

    iput-wide v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastSensorTimestamp:J

    return-void
.end method

.method public getTag(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mResults:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;->result:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "-1"

    return-object p0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->registerSensor(Z)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->registerSensor(Z)V

    return-void
.end method

.method public updateGpsDateFovParams()V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastFocal:Ljava/lang/Float;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/panorama/PanoHelper;->getAov(F)[F

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->horFov:D

    aget v0, v0, v1

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->verFov:D

    :cond_0
    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftLocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    :goto_0
    iput-wide v5, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->latitude:D

    if-nez v0, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    :goto_1
    iput-wide v5, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->longitude:D

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    :goto_2
    iput-wide v3, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->altitude:D

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->year:I

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->month:I

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->day:I

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->hour:I

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->minute:I

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->second:I

    return-void
.end method

.method public updateParams(Landroid/media/Image;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object p2, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mResults:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;->result:Landroid/hardware/camera2/CaptureResult;

    iget-object p2, p2, Lcom/motorola/camera/arcsoft/StellarTrackParams$ResultParams;->cameraId:Ljava/lang/String;

    invoke-direct {p0, p3, p2}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->parseResult(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/arcsoft/StellarTrackParams;->handleTimestamp(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastTimestamp:J

    return-void
.end method
