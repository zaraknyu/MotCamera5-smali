.class public final Lcom/motorola/camera/ui/widgets/gl/textures/SmallCliModeTexture$2;
.super Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;
.source "SourceFile"


# virtual methods
.method public final onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraApp;->getCameraActivityWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    instance-of p1, p0, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
