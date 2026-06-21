.class public Lcom/motorola/camera/saving/CaptureHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCameraId:Ljava/lang/String;

.field public mCanRelease:Z

.field public mCanReleaseImage:Z

.field public mCaptureTimestamp:J

.field public mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

.field public mIsQcfa:Z

.field public mIsStarTrail:Z

.field public mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

.field public mRequest:Landroid/hardware/camera2/CaptureRequest;

.field public mResult:Landroid/hardware/camera2/TotalCaptureResult;

.field public mSensorTimestamp:J

.field public mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public mSwJpegAppX:[B

.field public mSwJpegMakerNote:[B

.field public mSwJpegOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCanRelease:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCanReleaseImage:Z

    iput-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegOnly:Z

    iput-boolean v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsStarTrail:Z

    iput-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    iput-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/motorola/camera/saving/CaptureHolder;

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    iget-wide v2, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    iget-wide v2, p1, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    iget-boolean v1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object p1, p1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getDataSize()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegAppX:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSwJpegMakerNote:[B

    if-eqz p0, :cond_1

    array-length p0, p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getImageData()Lcom/motorola/camera/saving/ImageDataHolder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/motorola/camera/saving/CaptureHolder;->getImageData(Z)Lcom/motorola/camera/saving/ImageDataHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getImageData(Z)Lcom/motorola/camera/saving/ImageDataHolder;
    .locals 19

    move-object/from16 v1, p0

    .line 2
    const-string v2, "CaptureHolder"

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v5, v1, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 4
    iget-object v5, v5, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 5
    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 6
    iget-object v6, v1, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 7
    iget-object v6, v6, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 8
    invoke-virtual {v6}, Landroid/media/Image;->getHeight()I

    move-result v6

    .line 9
    iget-object v7, v1, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 10
    iget-object v7, v7, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 11
    invoke-virtual {v7}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    .line 12
    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    new-array v8, v8, [B

    .line 15
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 16
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    move v9, v0

    move-object v15, v3

    move/from16 v16, v4

    move v11, v5

    move v13, v11

    move v12, v6

    move v14, v12

    move-object v10, v7

    goto/16 :goto_4

    .line 17
    :cond_0
    iget-object v5, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 18
    iget-object v5, v5, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 19
    invoke-virtual {v5}, Landroid/media/Image;->getWidth()I

    move-result v5

    .line 20
    iget-object v7, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 21
    iget-object v7, v7, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 22
    invoke-virtual {v7}, Landroid/media/Image;->getHeight()I

    move-result v7

    .line 23
    iget-object v8, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 24
    iget-object v8, v8, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 25
    invoke-virtual {v8}, Landroid/media/Image;->getFormat()I

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_2

    .line 26
    new-array v3, v0, [I

    iget-object v8, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 27
    iget-object v8, v8, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 28
    invoke-virtual {v8}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 29
    aget-object v8, v8, v4

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aput v8, v3, v4

    iget-object v8, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 30
    iget-object v8, v8, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 31
    invoke-virtual {v8}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    .line 32
    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aput v8, v3, v6

    .line 33
    iget-object v8, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    sget-object v9, Lcom/motorola/camera/utility/AndroidImageUtils;->mImageCopy:Ljava/lang/reflect/Method;

    .line 34
    iget-object v9, v8, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 35
    invoke-virtual {v9}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v9

    .line 36
    aget-object v9, v9, v4

    .line 37
    iget-object v8, v8, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    invoke-virtual {v8}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v10

    .line 38
    aget-object v10, v10, v6

    .line 39
    invoke-virtual {v8}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v11

    .line 40
    aget-object v0, v11, v0

    .line 41
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    .line 42
    invoke-virtual {v8}, Landroid/media/Image;->getHeight()I

    move-result v8

    mul-int/2addr v8, v11

    .line 43
    invoke-static {v9, v10, v0, v8}, Lcom/motorola/camera/utility/AndroidImageUtils;->getNV21ByteArrayFromYUV_420_888(Landroid/media/Image$Plane;Landroid/media/Image$Plane;Landroid/media/Image$Plane;I)[B

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    sget-object v8, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v8}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v8

    .line 46
    iget-object v8, v8, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 47
    check-cast v8, Landroid/util/Size;

    .line 48
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    .line 49
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 50
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentFrontMainCamera()Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->FRONT_MIRROR:Lcom/motorola/camera/settings/SettingsManager$Key;

    .line 51
    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    .line 52
    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 53
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    move v4, v6

    :cond_1
    const/4 v6, 0x3

    move-object v10, v0

    move-object v15, v3

    move/from16 v16, v4

    move v11, v5

    move v12, v7

    move v14, v8

    move v13, v9

    :goto_0
    move v9, v6

    goto/16 :goto_4

    .line 54
    :cond_2
    iget-boolean v0, v1, Lcom/motorola/camera/saving/CaptureHolder;->mIsStarTrail:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v0, v0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget-object v0, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 56
    iget-object v0, v0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 57
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 58
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 60
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v9

    new-array v9, v9, [B

    .line 61
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 62
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    :try_start_0
    new-instance v9, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 64
    new-instance v10, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v10, v11}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    .line 66
    invoke-virtual {v9, v10}, Lcom/motorola/camera/photometadata/PhotoMetadata;->copyPhotoMetadata(Lcom/motorola/camera/photometadata/PhotoMetadata;)V

    .line 67
    invoke-virtual {v9, v4}, Lcom/motorola/camera/photometadata/PhotoMetadata;->saveAttributesToByteArray(Z)[B

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 68
    const-string v9, "ExifUtility"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v8, :cond_3

    .line 69
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    .line 70
    :cond_3
    const-string v0, "exif is null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 71
    :goto_2
    iget-object v8, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v8, v8, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_3

    .line 72
    :cond_4
    iget-object v0, v1, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    .line 73
    iget-object v0, v0, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->mImage:Landroid/media/Image;

    .line 74
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 75
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 77
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    new-array v8, v8, [B

    .line 78
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_3
    move-object v10, v0

    move-object v15, v3

    move/from16 v16, v4

    move v11, v5

    move v13, v11

    move v9, v6

    move v12, v7

    move v14, v12

    goto :goto_4

    :cond_5
    move-object v10, v3

    move-object v15, v10

    move v11, v4

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v16, v14

    goto/16 :goto_0

    :goto_4
    if-nez v10, :cond_7

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Capture "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    const-string v3, "RAW"

    goto :goto_5

    :cond_6
    const-string v3, "JPEG"

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is empty!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_7
    new-instance v8, Lcom/motorola/camera/saving/ImageDataHolder;

    iget-object v0, v1, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-object v1, v1, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v8 .. v18}, Lcom/motorola/camera/saving/ImageDataHolder;-><init>(ILjava/nio/ByteBuffer;IIII[IZLjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-object v8
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    iget-wide v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object v5, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v6, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v7, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    iget-object v8, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CaptureHolder{mCameraId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSensorTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSensorTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCaptureTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mCaptureTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRawImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/saving/CaptureHolder;->mRawImage:Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIsQcfa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/saving/CaptureHolder;->mIsQcfa:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
