.class public Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DewarpCurveOutput"
.end annotation


# instance fields
.field public mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

.field public mNNMaskForProcessing:[B

.field public mNumPointsInEachSide:I

.field public mPointDeviationThreshold:D

.field public mPointsVecBottom:[Landroid/graphics/PointF;

.field public mPointsVecLeft:[Landroid/graphics/PointF;

.field public mPointsVecRight:[Landroid/graphics/PointF;

.field public mPointsVecTop:[Landroid/graphics/PointF;

.field public mRevisedCornersInfo:[Landroid/graphics/PointF;

.field public mStdevBottom:D

.field public mStdevLeft:D

.field public mStdevRight:D

.field public mStdevTop:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;->kCameraResultSuccess:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mErrorCode:Lcom/adobe/magic_clean/CameraCleanUtils$CameraResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mNumPointsInEachSide:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mStdevTop:D

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mStdevBottom:D

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mStdevLeft:D

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mStdevRight:D

    iput-wide v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mPointDeviationThreshold:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mNNMaskForProcessing:[B

    invoke-virtual {p0}, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->recycleData()V

    return-void
.end method


# virtual methods
.method public recycleData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mRevisedCornersInfo:[Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mPointsVecTop:[Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mPointsVecBottom:[Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mPointsVecLeft:[Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$DewarpCurveOutput;->mPointsVecRight:[Landroid/graphics/PointF;

    return-void
.end method
