.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic f$1:Landroid/util/Size;

.field public final synthetic f$10:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

.field public final synthetic f$11:Lcom/motorola/camera/settings/CameraType;

.field public final synthetic f$3:I

.field public final synthetic f$5:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

.field public final synthetic f$6:Ljava/util/ArrayList;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/settings/CameraType;Landroid/util/Size;ILcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$0:Lcom/motorola/camera/settings/CameraType;

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$1:Landroid/util/Size;

    iput p3, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$3:I

    iput-object p4, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$5:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iput-object p5, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$6:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$7:Ljava/lang/String;

    iput-object p7, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$8:Ljava/lang/String;

    iput-object p8, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$9:Ljava/lang/String;

    iput-object p9, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$10:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    iput-object p10, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$11:Lcom/motorola/camera/settings/CameraType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 22

    move-object/from16 v0, p0

    sget-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    move-object/from16 v1, p1

    check-cast v1, Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->getPhotoScaleSizes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v9, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$0:Lcom/motorola/camera/settings/CameraType;

    iget-object v10, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$1:Landroid/util/Size;

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/motorola/camera/settings/SettingsHelper;->getYuvImageSize(Lcom/motorola/camera/settings/CameraType;Z)Landroid/util/Size;

    move-result-object v2

    :goto_0
    move-object v6, v2

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMultiYuvInputWithoutReproc()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v9}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsHelper;->getPhotoScaleSizes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v10

    goto :goto_2

    :cond_2
    :goto_1
    move-object v2, v11

    :goto_2
    invoke-static {v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->getOfflineReprocPictureSize(Landroid/util/Size;Lcom/motorola/camera/settings/CameraType;)Landroid/util/Size;

    move-result-object v2

    goto :goto_0

    :goto_3
    invoke-virtual {v1}, Lcom/motorola/camera/settings/CameraType;->getPhysicalCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x23

    iget v12, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$3:I

    invoke-static {v6, v7, v12, v9, v4}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v13, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$5:Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    iget-object v2, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    iget-object v14, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameReaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v5, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v2, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$7:Ljava/lang/String;

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    move-object/from16 v16, v6

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$6:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->isPhysicalIdBackMain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModePossible()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeSupportedBySat()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraId(Lcom/motorola/camera/settings/CameraType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsHelper;->getPhotoModeHighResSizes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/util/Size;

    new-instance v6, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v6, v11}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    new-instance v8, Lcom/motorola/camera/PreviewSize;

    invoke-direct {v8, v10}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    invoke-virtual {v6}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v6

    invoke-virtual {v8}, Lcom/motorola/camera/PreviewSize;->getTrueAspectRatio()F

    move-result v8

    invoke-static {v6, v8}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_4
    :goto_4
    move-object v6, v11

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/Size;

    goto :goto_4

    :goto_5
    invoke-static {v6, v7, v12, v9, v4}, Lcom/motorola/camera/utility/SurfaceUtil;->newImageReader(Landroid/util/Size;IILcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v5, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v5}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableListener()Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v5

    iget-object v8, v13, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameStream:Lcom/motorola/camera/mcf/McfInputStream;

    invoke-virtual {v8}, Lcom/motorola/camera/mcf/McfInputStream;->getStreamImageAvailableHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v1

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceHolder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Landroid/view/Surface;Landroid/util/Size;IZ)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v14, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$8:Ljava/lang/String;

    move/from16 v17, v12

    move-object v12, v13

    move-object v13, v15

    iget-object v15, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$9:Ljava/lang/String;

    iget-object v1, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$10:Lcom/motorola/camera/mcf/McfInputStream$StreamType;

    iget-object v0, v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda13;->f$11:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v19, v0

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-static/range {v12 .. v21}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->checkCreateRawStream(Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/util/Size;ILcom/motorola/camera/mcf/McfInputStream$StreamType;Lcom/motorola/camera/settings/CameraType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
