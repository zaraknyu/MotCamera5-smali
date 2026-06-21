.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;Lcom/motorola/camera/fsm/camera/FsmContext;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iput p3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$2:I

    iput-boolean p4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    move-object v4, p1

    check-cast v4, Lcom/motorola/camera/settings/CameraType;

    iget-object v0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, v4}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$1:Lcom/motorola/camera/fsm/camera/FsmContext;

    iget v3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$2:I

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda12;->f$3:Z

    if-eqz p0, :cond_0

    invoke-virtual {v4}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v9

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual/range {v5 .. v10}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->setupJpegImageReaderImpl(Lcom/motorola/camera/fsm/camera/FsmContext;Landroid/util/Size;ILcom/motorola/camera/settings/CameraType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
