.class public Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropConfidence"
.end annotation


# instance fields
.field public mCornersAreCloseThreshold:D

.field public mLastStableFrames:D

.field public mNumInvalidations:I

.field public mTotalStableFrames:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;->mNumInvalidations:I

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;->mLastStableFrames:D

    const-wide v0, 0x4052c00000000000L    # 75.0

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;->mTotalStableFrames:D

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CropConfidence;->mCornersAreCloseThreshold:D

    return-void
.end method
