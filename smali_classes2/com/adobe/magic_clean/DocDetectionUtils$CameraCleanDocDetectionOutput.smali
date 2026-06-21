.class public Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/DocDetectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraCleanDocDetectionOutput"
.end annotation


# instance fields
.field public mDocType:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

.field public mError:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNone:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    iput-object v0, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;->mDocType:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    .line 3
    sget-object v0, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->kDocDetectionErrCodeSuccess:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    iput-object v0, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;->mError:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;->kDetectedDocTypeNone:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    :cond_0
    iput-object p1, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;->mDocType:Lcom/adobe/magic_clean/DocDetectionUtils$DetectedDocType;

    if-nez p2, :cond_1

    .line 6
    sget-object p2, Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;->kDocDetectionErrCodeSuccess:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    :cond_1
    iput-object p2, p0, Lcom/adobe/magic_clean/DocDetectionUtils$CameraCleanDocDetectionOutput;->mError:Lcom/adobe/magic_clean/DocDetectionUtils$DocDetectionErrCode;

    return-void
.end method
