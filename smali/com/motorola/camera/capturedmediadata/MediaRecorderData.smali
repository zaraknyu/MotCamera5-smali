.class public final Lcom/motorola/camera/capturedmediadata/MediaRecorderData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/motorola/camera/capturedmediadata/MediaRecorderData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAudioBitRate:I

.field public mAudioChannels:I

.field public final mAudioCodec:I

.field public mAudioSampleRate:I

.field public final mCamcorderProfileQuality:I

.field public final mFileFormat:I

.field public mLocation:Landroid/location/Location;

.field public mMaxFileSize:J

.field public mOrientation:I

.field public mSurface:Landroid/view/Surface;

.field public mVideoBitRate:I

.field public mVideoCodec:I

.field public mVideoDuration:I

.field public mVideoEncoderProfile:I

.field public mVideoFlip:Z

.field public mVideoFrameRateCapture:F

.field public mVideoFrameRateRecord:Landroid/util/Range;

.field public mVideoFrameSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F$1;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/CamcorderProfile;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    .line 3
    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    .line 4
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    .line 5
    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    .line 6
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    .line 7
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    .line 8
    iput p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    .line 9
    new-instance p2, Landroid/util/Range;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    .line 10
    new-instance p2, Landroid/util/Size;

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p2, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    .line 11
    iget p2, p1, Landroid/media/CamcorderProfile;->quality:I

    iput p2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    .line 12
    iget p1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iput p1, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    .line 43
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    .line 44
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    .line 51
    const-class v0, Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/capturedmediadata/MediaRecorderData;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    .line 15
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    .line 16
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    .line 17
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    .line 18
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    .line 19
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    .line 20
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    .line 21
    new-instance v0, Landroid/util/Range;

    iget-object v1, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    .line 22
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    .line 23
    new-instance v0, Landroid/util/Size;

    iget-object v1, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    .line 24
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    .line 25
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    .line 26
    iget-boolean v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    iput-boolean v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    .line 27
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    .line 28
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    .line 29
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    .line 30
    iget v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    iput v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    .line 31
    iget-wide v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    iput-wide v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    .line 32
    iget-object v0, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    .line 33
    iget-object p1, p1, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    iget v2, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    iget-object v3, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    iget v4, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    iget-wide v5, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    iget v7, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    iget v8, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    iget v9, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    iget v10, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    iget-boolean v11, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    iget-object v12, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "RecorderData [profileQuality="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",video={size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",codec="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",frameRateRecord="

    const-string v14, ",bitRate="

    invoke-static {v13, v1, v14, v2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",frameRateCapture="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ",format="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",sizeLimit="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",duration="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "},audio={codec="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",sampleRate="

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",channels="

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "},ori="

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",videoFlip="

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",gps="

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioBitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioChannels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioCodec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mAudioSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoBitRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoCodec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateCapture:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameRateRecord:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFrameSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoEncoderProfile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mCamcorderProfileQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mFileFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mMaxFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mVideoFlip:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/MediaRecorderData;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
