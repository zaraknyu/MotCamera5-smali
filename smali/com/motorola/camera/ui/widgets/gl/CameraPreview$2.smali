.class public final Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;
.super Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;->$r8$classId:I

    invoke-direct/range {p0 .. p5}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;ZLcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    return-void
.end method


# virtual methods
.method public final processPreview(Landroid/media/Image;Z[JZ)Z
    .locals 0

    iget p4, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$2;->$r8$classId:I

    packed-switch p4, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;->mSurfaceMcfSupport:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->ZOOM_CROP_REGION_SLV:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    sget-object p4, Lcom/motorola/camera/settings/SettingsManager;->ZOOM:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p4}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p4

    iget-object p4, p4, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    if-eqz p2, :cond_0

    sget-object p2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_MONO_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;->MCF_COLOR_0:Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;

    :goto_0
    invoke-static {p1, p2, p4, p0, p3}, Lcom/motorola/camera/mcf/Mcf;->processPreviewImage(Landroid/media/Image;Lcom/motorola/camera/mcf/McfPreview$PreviewChanType;FLandroid/graphics/Rect;[J)Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
