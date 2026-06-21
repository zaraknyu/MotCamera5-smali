.class public Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DewarpInput"
.end annotation


# instance fields
.field public mAreCornersUpdatedManually:Z

.field public mCleaningLevel:I

.field public mDewarpCurveInput:Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;

.field public mDewarpCurveOutput:Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;

.field public mEnableBetaFeatures:Z

.field public mIsTextSpaceIncreaseReq:Z

.field public mPadSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mDewarpCurveInput:Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveInput;

    new-instance v0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;

    invoke-direct {v0}, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;-><init>()V

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mDewarpCurveOutput:Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mCleaningLevel:I

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mAreCornersUpdatedManually:Z

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mPadSize:I

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mIsTextSpaceIncreaseReq:Z

    iput-boolean v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpInput;->mEnableBetaFeatures:Z

    return-void
.end method
