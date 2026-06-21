.class public final Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;
.super Lcom/motorola/camera/fsm/camera/record/CaptureRecord;
.source "SourceFile"


# instance fields
.field public isWatermarkEnabled:Z

.field public mAIPersonalColorToneModuleType:I

.field public mAuxImages:Ljava/util/HashMap;

.field public mCaptureCompletePending:Z

.field public mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

.field public mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

.field public mExifCaptureTimestamp:J

.field public mForceEvList:Z

.field public mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

.field public mIsAIPersonalColorTone:Z

.field public mIsAdobeScan:Z

.field public mIsAdobeScanAutoCapture:Z

.field public mIsAutoEnhance:Z

.field public mIsBgProcessInForeground:Z

.field public mIsBgProcessRequire:Z

.field public mIsFlash:Z

.field public mIsFull:Z

.field public mIsMirror:Z

.field public mIsSlowShot:Z

.field public mIsStarTrail:Z

.field public mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

.field public mMcfCapture:Z

.field public mMsCount:I

.field public mNotifyShutter:Z

.field public mPlayShutterSound:Z

.field public mPostViewRequested:Z

.field public mPriority:I

.field public mRaw:Z

.field public mRawHdrEvList:[I

.field public mSavingSwJpeg:Z

.field public mSavingSwJpegReqSent:Z

.field public mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

.field public mSegmentation:Z

.field public mSetResultListener:Ljava/lang/ref/WeakReference;

.field public mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public mShouldSaveExifJpegAsBackupImage:Z

.field public mShouldSavePostViewAsBackupImage:Z

.field public mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public mSwJpegAppX:[B

.field public mSwJpegMakerNote:[B

.field public mSwJpegOnly:Z

.field public mUltraWideFront:Z


# direct methods
.method public constructor <init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(IZLandroid/os/Bundle;Lcom/motorola/camera/ShotType;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    .line 3
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutterSound:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureCompletePending:Z

    .line 5
    new-instance p2, Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-direct {p2}, Lcom/motorola/camera/mcf/McfAuxiliaryData;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    .line 6
    sget-object p2, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 7
    sget-object p2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 8
    sget-object p2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 9
    sget-object p2, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 10
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    .line 11
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    .line 12
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    .line 13
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    .line 14
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    .line 15
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    .line 16
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    .line 18
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    .line 19
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    .line 20
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-wide/16 p3, 0x0

    .line 21
    iput-wide p3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureTimestamp:J

    .line 22
    iput p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    .line 23
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 25
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsSlowShot:Z

    .line 26
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    .line 27
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    .line 28
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessInForeground:Z

    .line 29
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    .line 30
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    .line 31
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    const/4 p3, -0x1

    .line 32
    iput p3, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    .line 33
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    .line 34
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsStarTrail:Z

    .line 35
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScanAutoCapture:Z

    .line 36
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    .line 37
    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    .line 38
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;)V
    .locals 4

    .line 39
    invoke-direct {p0, p1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;-><init>(Lcom/motorola/camera/fsm/camera/record/CaptureRecord;)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    .line 41
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutterSound:Z

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureCompletePending:Z

    .line 43
    new-instance v1, Lcom/motorola/camera/mcf/McfAuxiliaryData;

    invoke-direct {v1}, Lcom/motorola/camera/mcf/McfAuxiliaryData;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    .line 44
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 45
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShotSlot:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    .line 46
    sget-object v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSnapType:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    .line 47
    sget-object v1, Lcom/motorola/camera/mcf/Mcf$SceneMode;->NORMAL:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 48
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    .line 49
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPostViewRequested:Z

    .line 50
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    .line 51
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpeg:Z

    .line 52
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSavingSwJpegReqSent:Z

    .line 53
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    .line 54
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureHolder:Lcom/motorola/camera/saving/CaptureHolder;

    .line 56
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegMakerNote:[B

    .line 57
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegAppX:[B

    .line 58
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    const-wide/16 v2, 0x0

    .line 59
    iput-wide v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mExifCaptureTimestamp:J

    .line 60
    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPriority:I

    .line 61
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mCaptureHolders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAuxImages:Ljava/util/HashMap;

    .line 63
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsSlowShot:Z

    .line 64
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFull:Z

    .line 65
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    .line 66
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessInForeground:Z

    .line 67
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    .line 68
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    .line 69
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    const/4 v2, -0x1

    .line 70
    iput v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    .line 71
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    .line 72
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsStarTrail:Z

    .line 73
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScanAutoCapture:Z

    .line 74
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    .line 75
    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    .line 76
    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    .line 77
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    .line 78
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutterSound:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutterSound:Z

    .line 79
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    .line 80
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    .line 81
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    .line 82
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    .line 83
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMsCount:I

    .line 84
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSceneMode:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    .line 85
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsFlash:Z

    .line 86
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    .line 87
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsBgProcessRequire:Z

    .line 88
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    .line 89
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSwJpegOnly:Z

    .line 90
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    .line 91
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    .line 92
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    .line 93
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    .line 94
    iget v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    iput v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    .line 95
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsStarTrail:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsStarTrail:Z

    .line 96
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScanAutoCapture:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScanAutoCapture:Z

    .line 97
    iget-boolean v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsMirror:Z

    .line 98
    iget-object v0, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRawHdrEvList:[I

    .line 99
    iget-boolean p1, p1, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mForceEvList:Z

    return-void
.end method


# virtual methods
.method public final notifyShutter()V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsSlowShot:Z

    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->SHUTTER_CLICK:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isNonMcfShotInQcfaMode(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v3, Lcom/motorola/camera/Notifier$TYPE;->SHUTTER:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mPlayShutterSound:Z

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    :cond_0
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_REQUEST_TO_RESPOND:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    const-string p0, "SHOT_REQUEST_TO_RESPOND"

    const/16 v0, 0xd

    invoke-static {v0, p0}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    :cond_1
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraKpi()Lcom/motorola/camera/CameraKpi;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/CameraKpi$KPI;->SHOT_TO_SHOT_UI_O:Lcom/motorola/camera/CameraKpi$KPI;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/CameraKpi;->endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V

    const-string p0, "SHOT_TO_SHOT_UI_O"

    const/16 v0, 0xe

    invoke-static {v0, p0}, Lcom/motorola/camera/shared/MotSysTrace;->endAsync(ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v0, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_3

    invoke-static {v1, v2}, Lcom/google/common/base/Splitter;->play(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;Lcom/motorola/camera/fsm/camera/states/modes/VideoStates$PlayToneRunnable$$ExternalSyntheticLambda0;)V

    :cond_3
    return-void
.end method

.method public final onCaptureStarted()V
    .locals 5

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mNotifyShutter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mInstanceType:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$InstanceType;->UNUSED:Lcom/motorola/camera/mcf/Mcf$InstanceType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v1, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->notifyShutter()V

    :cond_1
    iget-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    sub-long/2addr v1, v3

    const-string v3, "SHUTTER_CB_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mElapsedIntervalStart:J

    return-void
.end method

.method public final populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V
    .locals 10

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0, p1}, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->populateCaptureRecord(Lcom/motorola/camera/fsm/camera/FsmContext;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isActivePhotoSupported()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v6, "ACTIVE_PHOTO_ALLOWED"

    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isFileFormatRaw()Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mRaw:Z

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->ULTRA_WIDE_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mUltraWideFront:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mSegmentation:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isWatermarkEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    sget-object v5, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-eq v2, v5, :cond_3

    iget v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mCaptureMode:I

    const/16 v5, 0x30

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->isWatermarkEnabled:Z

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->REPROC_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->USE_POST_VIEW_AS_BACKUP:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v5, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPostProcSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v4

    :goto_5
    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSaveExifJpegAsBackupImage:Z

    sget-object v2, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v5, Lcom/motorola/camera/AppFeatures$Feature;->USE_POST_VIEW_AS_BACKUP:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v2, v5, v1}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v4

    :goto_6
    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mShouldSavePostViewAsBackupImage:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result v2

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoEnhanceSupported()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getImagePreferenceSelectorValue()I

    move-result v6

    if-ne v6, v3, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoNVMode()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForSmoothSwitchCase()Z

    move-result v2

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    sget-object v1, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    if-eq v5, v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v4

    :goto_7
    sget v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    sget-object v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/provider/photos/AutoEnhanceManager;

    iget-object v5, v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_0
    iget-object v6, v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    sget-object v7, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    add-int/2addr v6, v7

    sget v7, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->BG_PROCESSING_LIMIT:I

    if-lt v6, v7, :cond_8

    move v6, v3

    goto :goto_8

    :cond_8
    move v6, v4

    :goto_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_9

    if-nez v6, :cond_9

    move v5, v3

    goto :goto_9

    :cond_9
    move v5, v4

    :goto_9
    iput-boolean v5, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAutoEnhance:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v5, v5, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v7, v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v7

    :try_start_1
    iget-object v2, v2, Lcom/motorola/camera/provider/photos/AutoEnhanceManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_a

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_a
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAutoEnhanceSupported()Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_d

    if-nez v2, :cond_d

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getImagePreferenceSelectorValue()I

    move-result v2

    if-ne v2, v3, :cond_c

    if-eqz v6, :cond_b

    move v1, v3

    goto :goto_b

    :cond_b
    if-nez v1, :cond_d

    move v1, v7

    goto :goto_b

    :cond_c
    move v1, v4

    goto :goto_b

    :cond_d
    move v1, v0

    :goto_b
    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v5, "ANALYTICS_AUTO_ENHANCE_STATE"

    invoke-virtual {v2, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_MODULE_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-virtual {p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->isCliDisplay()Z

    move-result p1

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotType:Lcom/motorola/camera/ShotType;

    if-nez v1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorTone()Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    if-ne v2, v1, :cond_f

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMeisheEffectsEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForKnifeSwitchCase()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabledForSmoothSwitchCase()Z

    move-result p1

    if-nez p1, :cond_f

    iget p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mAIPersonalColorToneModuleType:I

    sget-object v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    const-string v1, "AIPersonalColorToneManager"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :try_start_2
    sget-object v2, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v2}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->getPhotosProviderCaller()Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->canApplyColorTone(I)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v4

    :goto_c
    sget-boolean v8, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-nez v8, :cond_e

    goto :goto_d

    :cond_e
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Call canApplyColorTone with moduleType:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " dur:"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6, v8, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_d
    if-eqz v2, :cond_f

    move p1, v3

    goto :goto_e

    :cond_f
    move p1, v4

    :goto_e
    sget-object v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mWaitingCompletionSet:Ljava/util/HashSet;

    sget-object v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAIPersonalColorTone:Z

    if-eqz p1, :cond_10

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSeqId:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget v2, v2, Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;->mSeqId:I

    iget-object v5, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_3
    iget-object v1, v1, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->mSeqIdProcessingSet:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_f

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_10
    :goto_f
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorToneFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v1, :cond_12

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAIPersonalColorTone()Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez p1, :cond_12

    move v0, v7

    goto :goto_10

    :cond_11
    move v0, v4

    :cond_12
    :goto_10
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v1, "ANALYTICS_AI_PERSONAL_COLOR_TONE_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isAdobeScanMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScan:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v0, "IS_ADOBE_AUTO_CAPTURE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mIsAdobeScanAutoCapture:Z

    :cond_13
    iget-object p1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v7, :cond_14

    move p1, v3

    goto :goto_11

    :cond_14
    move p1, v4

    :goto_11
    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->TORCH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_15

    move v0, v3

    goto :goto_12

    :cond_15
    move v0, v4

    :goto_12
    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mSettingValues:Ljava/util/Map;

    sget-object v2, Lcom/motorola/camera/settings/SettingsManager;->AUTO_DISPLAY_FLASH_FIRE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v2, v2, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_16

    if-eqz p1, :cond_17

    :cond_16
    if-eqz v1, :cond_17

    goto :goto_13

    :cond_17
    move v3, v4

    :goto_13
    iput-boolean v3, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mDidSwFlashFire:Z

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final populateExtendedInfo()V
    .locals 6

    iget-boolean v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mRecordExtendedInfo:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->ROI:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const-string v5, "FOCUS_AREAS_SUPPORTED"

    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    const-string v2, "CAF_SUPPORTED"

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v5, "LOCATION"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    const-string v5, "TOUCH_LOCATION"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    array-length v2, v0

    if-ne v2, v3, :cond_2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v2, "ROI_TOUCH_RECT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mMetaData:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/record/CaptureRecord;->mShotBundle:Landroid/os/Bundle;

    const-string v2, "TIMER"

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "TIMER_CHECKIN"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isCurrentMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->PICTURE_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/util/Size;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_DISTORTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x5

    if-nez v2, :cond_4

    new-array v2, v3, [F

    :cond_4
    if-nez v1, :cond_5

    new-array v1, v3, [F

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord;->mMcfAuxData:Lcom/motorola/camera/mcf/McfAuxiliaryData;

    new-instance v3, Lcom/motorola/camera/mcf/McfImagingModelAuxData;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v3, v1, v2, v4, v0}, Lcom/motorola/camera/mcf/McfImagingModelAuxData;-><init>([F[FII)V

    invoke-virtual {p0, v3}, Lcom/motorola/camera/mcf/McfAuxiliaryData;->setImagingModel(Lcom/motorola/camera/mcf/McfImagingModelAuxData;)V

    return-void
.end method
