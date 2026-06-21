.class public Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final MOK:I = 0x0

.field private static final SEARCH_STAR_FAILED:I = 0x7007

.field private static final SKY_AREA_TOO_SMALL:I = 0x7006

.field private static final TAG:Ljava/lang/String; = "ArcsoftStellarTrack"

.field private static sIsInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "as-stellar-track"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "error loading as-stellar-track"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native deinit()I
.end method

.method public static deinitSt()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->deinit()I

    return-void
.end method

.method private static native getPhoto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
.end method

.method public static getPhotoSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->getPhoto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method private static native getPreview(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method public static getPreviewSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->getPreview(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private static native init(IILjava/lang/String;DDDIIIIIIDD[DIIIII)I
.end method

.method public static initParams(IILcom/motorola/camera/arcsoft/StellarTrackParams;)V
    .locals 21

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->latitude:D

    iget-wide v4, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->longitude:D

    iget-wide v6, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->altitude:D

    iget v8, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->year:I

    iget v9, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->month:I

    iget v10, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->day:I

    iget v11, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->hour:I

    iget v12, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->minute:I

    iget v13, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->second:I

    iget-wide v14, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->horFov:D

    move-wide/from16 v16, v2

    iget-wide v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->verFov:D

    iget-object v0, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mRotationMatrix:[D

    move-wide/from16 v19, v16

    move-wide/from16 v16, v1

    move-wide/from16 v2, v19

    move/from16 v1, p1

    move-object/from16 v18, v0

    move/from16 v0, p0

    invoke-static/range {v0 .. v18}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->initSt(IIDDDIIIIIIDD[D)V

    return-void
.end method

.method public static initSt(IIDDDIIIIIIDD[D)V
    .locals 26

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mStarTrailsLib:Ljava/lang/String;

    const/16 v24, 0xf0

    const/16 v25, 0x5

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    move-object/from16 v20, p18

    invoke-static/range {v1 .. v25}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->init(IILjava/lang/String;DDDIIIIIIDD[DIIIII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->sIsInitialized:Z

    return-void
.end method

.method private static native interpolate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFFFFIDZFDDDIIIIIIDD[D)I
.end method

.method public static interpolateParams(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/motorola/camera/arcsoft/StellarTrackParams;Z)I
    .locals 34

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastExp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v5

    iget-object v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIso:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastLuxIdx:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget v8, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastAdrc:F

    iget v9, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastSensorGain:F

    iget v10, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastIspGain:F

    iget-object v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastFocal:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iget-object v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastEv:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v12, v1

    iget v13, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastOrientation:I

    iget-wide v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mLastTimestamp:J

    long-to-double v14, v1

    iget-wide v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->latitude:D

    iget-wide v3, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->longitude:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->altitude:D

    move-wide/from16 v20, v1

    iget v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->year:I

    iget v2, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->month:I

    move/from16 v22, v1

    iget v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->day:I

    move/from16 v24, v1

    iget v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->hour:I

    move/from16 v25, v1

    iget v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->minute:I

    move/from16 v26, v1

    iget v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->second:I

    move/from16 v27, v1

    move/from16 v23, v2

    iget-wide v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->horFov:D

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->verFov:D

    iget-object v0, v0, Lcom/motorola/camera/arcsoft/StellarTrackParams;->mRotationMatrix:[D

    move/from16 v33, p3

    move-object/from16 v32, v0

    move-wide/from16 v30, v1

    move-wide/from16 v18, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v3 .. v33}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->interpolateSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFFFFFIDDDDIIIIIIDD[DZ)I

    move-result v0

    return v0
.end method

.method public static interpolateSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFFFFFIDDDDIIIIIIDD[DZ)I
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v14, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v15, p13

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move/from16 v25, p23

    move/from16 v26, p24

    move-wide/from16 v27, p25

    move-wide/from16 v29, p27

    move-object/from16 v31, p29

    move/from16 v13, p30

    invoke-static/range {v1 .. v31}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->interpolate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFFFFIDZFDDDIIIIIIDD[D)I

    move-result v0

    const/16 v1, 0x7007

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "Star Trails Failed processing: SEARCH_STAR_FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/16 v1, 0x7006

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "Star Trails Failed processing: SKY_AREA_TOO_SMALL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "Star Trails Failed processing: unknown issue!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->sIsInitialized:Z

    return v0
.end method
