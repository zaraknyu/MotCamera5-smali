.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/16 v2, 0x3e8

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v9

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v8, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    const/16 v10, 0x3e8

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureMode()Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mDualCapturePreviewTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DualCapturePreviewTexture;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mCameraPreviewDisplayTex:Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewUpdate(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
