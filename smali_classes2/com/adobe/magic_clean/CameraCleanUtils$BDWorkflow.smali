.class public Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BDWorkflow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;,
        Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;
    }
.end annotation


# instance fields
.field public mCaptureType:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

.field public mWorkflow:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;->kWorkflowCombined:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;->mWorkflow:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$Workflow;

    sget-object v0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;->kCaptureTypePost:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    iput-object v0, p0, Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow;->mCaptureType:Lcom/adobe/magic_clean/CameraCleanUtils$BDWorkflow$CaptureType;

    return-void
.end method
